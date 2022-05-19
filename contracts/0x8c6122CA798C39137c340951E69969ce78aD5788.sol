contract main {




// =====================  Runtime code  =====================


const sub_361ce97e(?) = 3

const sub_5925e211(?) = 21

const sub_89c3cbae(?) = 12

const sub_c446d550(?) = 9

const sub_cb431e76(?) = 6

const sub_d5e5e062(?) = 24

const sub_df435be8(?) = 15

const year = ((block.timestamp / 8760 * 24 * 3600) + 1970)

const EXA = 18

const UNIT = 0


mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
mapping of uint256 totalSupply;
address owner;
address stor5;

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

function sub_6252e4e7(?) payable {
    require calldata.size - 4 >= 64
    if arg2 >= 100:
        revert with 0, 'invalid kind'
    if arg1 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if 100 * arg1 > !arg2:
        revert with 0, 17
    return ((100 * arg1) + arg2)
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
    if arg1 == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[msg.sender][address(arg1)] = uint8(arg2)
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
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
    if balanceOf[arg2][address(arg1)] < arg3:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balanceOf[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
    if totalSupply[arg2] < arg3:
        revert with 0, 17
    totalSupply[arg2] -= arg3
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

function sub_c7b8b19d(?) payable {
    require calldata.size - 4 >= 64
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = 128
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 36).length
    if ('cd', 36).length:
        mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * ('cd', 36).length] = call.data[calldata.size len 32 * ('cd', 36).length]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= 100:
            revert with 0, 'invalid kind'
        if cd[4] > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if 100 * cd[4] > !mem[(32 * idx) + 128]:
            revert with 0, 17
        if idx >= ('cd', 36).length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] = (100 * cd[4]) + mem[(32 * idx) + 128]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + 129 len 32 * ('cd', 36).length])
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
    if arg1 != msg.sender:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
    if not arg1:
        revert with 0, 'ERC1155: burn from the zero address'
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 0
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
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130] = 64
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 194] = arg2.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 226 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 162] = (32 * arg2.length) + 96
    emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg2 % 3:
        revert with 0, 'non-ternary kind'
    if not arg2:
        if arg3 and 1 > -1 / arg3:
            revert with 0, 17
        if arg3 <= 0:
            revert with 0, 'non-positive amount'
        require ext_code.size(stor5)
        call stor5.0x79cc6790 with:
             gas gas_remaining wei
            args msg.sender, arg3
    else:
        if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
            if arg3 and 10^arg2 > -1 / arg3:
                revert with 0, 17
            if arg3 * 10^arg2 <= 0:
                revert with 0, 'non-positive amount'
            require ext_code.size(stor5)
            call stor5.0x79cc6790 with:
                 gas gas_remaining wei
                args msg.sender, arg3 * 10^arg2
        else:
            s = 10
            t = 1
            idx = arg2
            while idx > 1:
                if s > -1 / s:
                    revert with 0, 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = s * t
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 0, 17
            if arg3 and s * t > -1 / arg3:
                revert with 0, 17
            if arg3 * s * t <= 0:
                revert with 0, 'non-positive amount'
            require ext_code.size(stor5)
            call stor5.0x79cc6790 with:
                 gas gas_remaining wei
                args msg.sender, arg3 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp / 8760 * 24 * 3600 <= 0:
        revert with 0, 'invalid year'
    if 1970 > !(block.timestamp / 8760 * 24 * 3600):
        revert with 0, 17
    if arg2 >= 100:
        revert with 0, 'invalid kind'
    if (block.timestamp / 8760 * 24 * 3600) + 1970 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if (100 * block.timestamp / 8760 * 24 * 3600) + 197000 > !arg2:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[(100 * block.timestamp / 8760 * 24 * 3600) + arg2 + 197000][address(arg1)] > !arg3:
        revert with 0, 17
    balanceOf[(100 * block.timestamp / 8760 * 24 * 3600) + arg2 + 197000][address(arg1)] += arg3
    emit TransferSingle((100 * block.timestamp / 8760 * 24 * 3600) + arg2 + 197000, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, (100 * block.timestamp / 8760 * 24 * 3600) + arg2 + 197000, arg3, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if totalSupply[(100 * block.timestamp / 8760 * 24 * 3600) + arg2 + 197000] > !arg3:
        revert with 0, 17
    totalSupply[(100 * block.timestamp / 8760 * 24 * 3600) + arg2 + 197000] += arg3
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
            require ext_code.size(arg2)
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
            _1291 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1299 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_1299)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1299)]
            if ceil32(_1299) <= _1299:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1299) + 32]
            mem[mem[64] + _1299 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1299) + _1291 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
        require ext_code.size(arg2)
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
        _1296 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1305 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1305)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1305)]
        if ceil32(_1305) <= _1305:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1305) + 32]
        mem[mem[64] + _1305 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1305) + _1296 + -mem[64] + 68
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
        require ext_code.size(arg2)
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
        _1293 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1302 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1302)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1302)]
        if ceil32(_1302) <= _1302:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1302) + 32]
        mem[mem[64] + _1302 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1302) + _1293 + -mem[64] + 68
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + arg5.length + 359] = 0
    require ext_code.size(arg2)
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
    _1298 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1307 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_1307)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_1307)]
    if ceil32(_1307) <= _1307:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1307) + 32]
    mem[mem[64] + _1307 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_1307) + _1298 + -mem[64] + 68
}

function mintBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
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
    idx = 0
    s = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 0, 50
        if mem[(32 * idx) + 128] % 3:
            revert with 0, 'non-ternary kind'
        if idx >= arg2.length:
            revert with 0, 50
        if not mem[(32 * idx) + 128]:
            if idx >= arg3.length:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 1 > -1 / mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                revert with 0, 17
            if mem[(32 * idx) + ceil32(32 * arg2.length) + 129] <= 0:
                revert with 0, 'non-positive amount'
            if s > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
            continue 
        if bool(bool(mem[(32 * idx) + 128] < 78)) or bool(bool(mem[(32 * idx) + 128] < 32)):
            if idx >= arg3.length:
                revert with 0, 50
            if mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and 10^mem[(32 * idx) + 128] > -1 / mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                revert with 0, 17
            if mem[(32 * idx) + ceil32(32 * arg2.length) + 129] * 10^mem[(32 * idx) + 128] <= 0:
                revert with 0, 'non-positive amount'
            if s > !(mem[(32 * idx) + ceil32(32 * arg2.length) + 129] * 10^mem[(32 * idx) + 128]):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (mem[(32 * idx) + ceil32(32 * arg2.length) + 129] * 10^mem[(32 * idx) + 128])
            continue 
        u = 10
        v = 1
        t = mem[(32 * idx) + 128]
        while t > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(t):
                u = u * u
                v = v
                t = uint255(t) * 0.5
                continue 
            u = u * u
            v = u * v
            t = uint255(t) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if idx >= arg3.length:
            revert with 0, 50
        if mem[(32 * idx) + ceil32(32 * arg2.length) + 129] and u * v > -1 / mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 0, 17
        if mem[(32 * idx) + ceil32(32 * arg2.length) + 129] * u * v <= 0:
            revert with 0, 'non-positive amount'
        if s > !(mem[(32 * idx) + ceil32(32 * arg2.length) + 129] * u * v):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (mem[(32 * idx) + ceil32(32 * arg2.length) + 129] * u * v)
        continue 
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 102] = msg.sender
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 134] = s
    require ext_code.size(stor5)
    call stor5.0x79cc6790 with:
         gas gas_remaining wei
        args msg.sender, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp / 8760 * 24 * 3600 <= 0:
        revert with 0, 'invalid year'
    if 1970 > !(block.timestamp / 8760 * 24 * 3600):
        revert with 0, 17
    if arg2.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = arg2.length
    if not arg2.length:
        idx = 0
        while idx < arg2.length:
            if idx >= arg2.length:
                revert with 0, 50
            if mem[(32 * idx) + 128] >= 100:
                revert with 0, 'invalid kind'
            if (block.timestamp / 8760 * 24 * 3600) + 1970 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (100 * block.timestamp / 8760 * 24 * 3600) + 197000 > !mem[(32 * idx) + 128]:
                revert with 0, 17
            if idx >= arg2.length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130] = (100 * block.timestamp / 8760 * 24 * 3600) + mem[(32 * idx) + 128] + 197000
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 130] = 0
        if not arg1:
            revert with 0, 'ERC1155: mint to the zero address'
        if arg2.length != arg3.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        idx = 0
        while idx < arg2.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg2.length:
                revert with 0, 50
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130], 0)
            if balanceOf[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]][address(arg1)] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]][address(arg1)] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162] = 64
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 226] = arg2.length
        s = 0
        s = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130
        t = mem[64] + 96
        while arg2.length < arg2.length:
            mem[t] = mem[s]
            s = arg2.length + 1
            s = s + 32
            t = t + 32
            continue 
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 194] = t + -ceil32(32 * arg2.length) + -ceil32(32 * arg3.length) + -(32 * arg2.length) - 162
        _1368 = mem[ceil32(32 * arg2.length) + 97]
        mem[t] = mem[ceil32(32 * arg2.length) + 97]
        mem[t + 32 len 32 * _1368] = mem[ceil32(32 * arg2.length) + 129 len 32 * _1368]
        emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                           mem[mem[64] len t + (32 * _1368) + -mem[64] + 32],
                           msg.sender,
                           0,
                           arg1,
        if not ext_code.size(arg1):
            idx = 0
            while idx < mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]:
                if idx >= mem[ceil32(32 * arg2.length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]
                mem[32] = 3
                if totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = msg.sender
        mem[mem[64] + 36] = 0
        mem[mem[64] + 68] = 160
        _1542 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]
        mem[mem[64] + 164] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]
        mem[mem[64] + 196 len 32 * _1542] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * _1542]
        mem[mem[64] + 100] = (32 * _1542) + 192
        _1714 = mem[ceil32(32 * arg2.length) + 97]
        mem[mem[64] + (32 * _1542) + 196] = mem[ceil32(32 * arg2.length) + 97]
        mem[mem[64] + (32 * _1542) + 228 len 32 * _1714] = mem[ceil32(32 * arg2.length) + 129 len 32 * _1714]
        mem[mem[64] + 132] = (32 * _1542) + (32 * _1714) + 224
        _1862 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 130]
        mem[mem[64] + (32 * _1542) + (32 * _1714) + 228] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 130]
        mem[mem[64] + (32 * _1542) + (32 * _1714) + 260 len ceil32(_1862)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162 len ceil32(_1862)]
        if ceil32(_1862) <= _1862:
            require ext_code.size(arg1)
            call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * _1542) + 192, (32 * _1542) + (32 * _1714) + 224, mem[mem[64] + 164 len ceil32(_1862) + (32 * _1542) + (32 * _1714) + 96]
            mem[mem[64]] = ext_call.return_data[0]
            if ext_call.success:
                _2008 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_2008] == Mask(32, 224, mem[_2008])
                if Mask(32, 224, mem[_2008]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                idx = 0
                while idx < mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]:
                    if idx >= mem[ceil32(32 * arg2.length) + 97]:
                        revert with 0, 50
                    if idx >= mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]:
                        revert with 0, 50
                    mem[0] = mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]
                    mem[32] = 3
                    if totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                        revert with 0, 17
                    totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _2029 = mem[64]
            mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[mem[64] + ext_call.return_data[0]] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64] or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307():
                revert with 0, 65
            mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
            if not _2029 + ext_call.return_data[0]:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2118 = mem[_2029 + ext_call.return_data[0]]
            mem[mem[64] + 36] = mem[_2029 + ext_call.return_data[0]]
            mem[mem[64] + 68 len ceil32(_2118)] = mem[_2029 + ext_call.return_data[0] + 32 len ceil32(_2118)]
            if ceil32(_2118) > _2118:
                mem[mem[64] + _2118 + 68] = 0
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_2118) + 32]
        mem[mem[64] + (32 * _1542) + (32 * _1714) + _1862 + 260] = 0
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * _1542) + 192, (32 * _1542) + (32 * _1714) + 224, mem[mem[64] + 164 len ceil32(_1862) + (32 * _1542) + (32 * _1714) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _2010 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2010] == Mask(32, 224, mem[_2010])
            if Mask(32, 224, mem[_2010]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            idx = 0
            while idx < mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]:
                if idx >= mem[ceil32(32 * arg2.length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]
                mem[32] = 3
                if totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _2041 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64] or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
        if not _2041 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2124 = mem[_2041 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_2041 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_2124)] = mem[_2041 + ext_call.return_data[0] + 32 len ceil32(_2124)]
        var121001 = ceil32(_2124)
        if ceil32(_2124) > _2124:
            mem[mem[64] + _2124 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_2124) + 32]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= 100:
            revert with 0, 'invalid kind'
        if (block.timestamp / 8760 * 24 * 3600) + 1970 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if (100 * block.timestamp / 8760 * 24 * 3600) + 197000 > !mem[(32 * idx) + 128]:
            revert with 0, 17
        if idx >= arg2.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130] = (100 * block.timestamp / 8760 * 24 * 3600) + mem[(32 * idx) + 128] + 197000
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 130] = 0
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130], 0)
        if balanceOf[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]][address(arg1)] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]][address(arg1)] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162] = 64
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 226] = arg2.length
    s = 0
    s = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130
    t = mem[64] + 96
    while arg2.length < arg2.length:
        mem[t] = mem[s]
        s = arg2.length + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 194] = t + -ceil32(32 * arg2.length) + -ceil32(32 * arg3.length) + -(32 * arg2.length) - 162
    _1369 = mem[ceil32(32 * arg2.length) + 97]
    mem[t] = mem[ceil32(32 * arg2.length) + 97]
    mem[t + 32 len 32 * _1369] = mem[ceil32(32 * arg2.length) + 129 len 32 * _1369]
    emit TransferBatch(address arg1, address arg2, address arg3, uint256[] arg4, uint256[] arg5):
                       mem[mem[64] len t + (32 * _1369) + -mem[64] + 32],
                       msg.sender,
                       0,
                       arg1,
    if not ext_code.size(arg1):
        idx = 0
        while idx < mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]:
            if idx >= mem[ceil32(32 * arg2.length) + 97]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]
            mem[32] = 3
            if totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    mem[mem[64]] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = 0
    mem[mem[64] + 68] = 160
    _1543 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]
    mem[mem[64] + 164] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]
    mem[mem[64] + 196 len 32 * _1543] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * _1543]
    mem[mem[64] + 100] = (32 * _1543) + 192
    _1717 = mem[ceil32(32 * arg2.length) + 97]
    mem[mem[64] + (32 * _1543) + 196] = mem[ceil32(32 * arg2.length) + 97]
    mem[mem[64] + (32 * _1543) + 228 len 32 * _1717] = mem[ceil32(32 * arg2.length) + 129 len 32 * _1717]
    mem[mem[64] + 132] = (32 * _1543) + (32 * _1717) + 224
    _1863 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 130]
    mem[mem[64] + (32 * _1543) + (32 * _1717) + 228] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 130]
    mem[mem[64] + (32 * _1543) + (32 * _1717) + 260 len ceil32(_1863)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162 len ceil32(_1863)]
    if ceil32(_1863) <= _1863:
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * _1543) + 192, (32 * _1543) + (32 * _1717) + 224, mem[mem[64] + 164 len ceil32(_1863) + (32 * _1543) + (32 * _1717) + 96]
        mem[mem[64]] = ext_call.return_data[0]
        if ext_call.success:
            _2009 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_2009] == Mask(32, 224, mem[_2009])
            if Mask(32, 224, mem[_2009]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            idx = 0
            while idx < mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]:
                if idx >= mem[ceil32(32 * arg2.length) + 97]:
                    revert with 0, 50
                if idx >= mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]
                mem[32] = 3
                if totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                    revert with 0, 17
                totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _2034 = mem[64]
        mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[mem[64] + ext_call.return_data[0]] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64] or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
        if not _2034 + ext_call.return_data[0]:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2121 = mem[_2034 + ext_call.return_data[0]]
        mem[mem[64] + 36] = mem[_2034 + ext_call.return_data[0]]
        mem[mem[64] + 68 len ceil32(_2121)] = mem[_2034 + ext_call.return_data[0] + 32 len ceil32(_2121)]
        var121001 = ceil32(_2121)
        if ceil32(_2121) > _2121:
            mem[mem[64] + _2121 + 68] = 0
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_2121) + 32]
    mem[mem[64] + (32 * _1543) + (32 * _1717) + _1863 + 260] = 0
    require ext_code.size(arg1)
    call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * _1543) + 192, (32 * _1543) + (32 * _1717) + 224, mem[mem[64] + 164 len ceil32(_1863) + (32 * _1543) + (32 * _1717) + 96]
    mem[mem[64]] = ext_call.return_data[0]
    if ext_call.success:
        _2011 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_2011] == Mask(32, 224, mem[_2011])
        if Mask(32, 224, mem[_2011]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        idx = 0
        while idx < mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]:
            if idx >= mem[ceil32(32 * arg2.length) + 97]:
                revert with 0, 50
            if idx >= mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98]:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]
            mem[32] = 3
            if totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string arg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    _2046 = mem[64]
    mem[mem[64] len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[mem[64] + ext_call.return_data[0]] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 < mem[64] or mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + floor32(ext_call.return_data[0] + mem[mem[64] + ext_call.return_data[0]] + 31) + 1
    if not _2046 + ext_call.return_data[0]:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    _2117 = mem[64]
    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _2126 = mem[_2046 + ext_call.return_data[0]]
    mem[mem[64] + 36] = mem[_2046 + ext_call.return_data[0]]
    mem[mem[64] + 68 len ceil32(_2126)] = mem[_2046 + ext_call.return_data[0] + 32 len ceil32(_2126)]
    var122001 = ceil32(_2126)
    if ceil32(_2126) <= _2126:
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_2126) + 32]
    mem[mem[64] + _2126 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_2126) + _2117 + -mem[64] + 68
}



}
