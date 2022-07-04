contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const sub_361ce97e(?) = 3

const sub_5925e211(?) = 21

const sub_89c3cbae(?) = 12

const sub_c446d550(?) = 9

const sub_cb431e76(?) = 6

const sub_d5e5e062(?) = 24

const sub_df435be8(?) = 15

const year = ((100 * block.timestamp / 876600 * 24 * 3600) + 1970)

const EXA = 18

const UNIT = 0


mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
mapping of uint256 totalSupply;
address owner;
uint8 stor5; offset 160
address stor5;
address stor6;

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

function seal() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor5.field_160) = 0
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
        revert with 0, 'invalid level'
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
            revert with 0, 'invalid level'
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
            mem[32] = 3
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
        mem[32] = 3
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

function migrate(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor5.field_160):
        revert with 0, 'migration sealed'
    require ext_code.size(address(stor5.field_0))
    call address(stor5.field_0).0xf5298aca with:
         gas gas_remaining wei
        args msg.sender, arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    mem[160] = arg1
    mem[192] = 1
    mem[224] = arg2
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if idx >= 1:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 160]
        mem[32] = 3
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
            mem[32] = 3
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
    if not arg1:
        idx = 0
        while idx < 1:
            if idx >= 1:
                revert with 0, 50
            if idx >= 1:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(ceil32(arg5.length)) + 129]
            mem[32] = 3
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
            mem[32] = 3
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

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if arg2 % 3:
        revert with 0, 'non-ternary level'
    if not arg2:
        if arg3 and 1 > -1 / arg3:
            revert with 0, 17
        if arg3 <= 0:
            revert with 0, 'non-positive amount'
        require ext_code.size(stor6)
        call stor6.burnFrom(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), arg3
    else:
        if bool(bool(arg2 < 78)) or bool(bool(arg2 < 32)):
            if arg3 and 10^arg2 > -1 / arg3:
                revert with 0, 17
            if arg3 * 10^arg2 <= 0:
                revert with 0, 'non-positive amount'
            require ext_code.size(stor6)
            call stor6.burnFrom(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg3 * 10^arg2
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
            require ext_code.size(stor6)
            call stor6.burnFrom(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), arg3 * s * t
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if 100 * block.timestamp / 876600 * 24 * 3600 <= 0:
        revert with 0, 'invalid year'
    if 1970 > !(100 * block.timestamp / 876600 * 24 * 3600):
        revert with 0, 17
    if arg2 >= 100:
        revert with 0, 'invalid level'
    if (100 * block.timestamp / 876600 * 24 * 3600) + 1970 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if (100 * 100 * block.timestamp / 876600 * 24 * 3600) + 197000 > !arg2:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    mem[160] = (100 * 100 * block.timestamp / 876600 * 24 * 3600) + arg2 + 197000
    mem[192] = 1
    mem[224] = arg3
    idx = 0
    while idx < 1:
        if idx >= 1:
            revert with 0, 50
        if idx >= 1:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 160]
        mem[32] = 3
        if totalSupply[mem[(32 * idx) + 160]] > !mem[(32 * idx) + 224]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 160]] += mem[(32 * idx) + 224]
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
            mem[0] = mem[(32 * idx) + 160]
            mem[32] = 3
            if totalSupply[mem[(32 * idx) + 160]] < mem[(32 * idx) + 224]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + 160]] -= mem[(32 * idx) + 224]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if balanceOf[(100 * 100 * block.timestamp / 876600 * 24 * 3600) + arg2 + 197000][address(arg1)] > !arg3:
        revert with 0, 17
    balanceOf[(100 * 100 * block.timestamp / 876600 * 24 * 3600) + arg2 + 197000][address(arg1)] += arg3
    emit TransferSingle((100 * 100 * block.timestamp / 876600 * 24 * 3600) + arg2 + 197000, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1):
        require ext_code.size(arg1)
        call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, (100 * 100 * block.timestamp / 876600 * 24 * 3600) + arg2 + 197000, arg3, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
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
                mem[32] = 3
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
            var59001 = arg2.length
            var64001 = arg3.length
        else:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 3
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
                mem[32] = 3
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
            var63001 = arg2.length
    else:
        if not stor1[address(arg1)][address(msg.sender)]:
            revert with 0, 'ERC1155: caller is not owner nor approved'
        if not arg1:
            revert with 0, 'ERC1155: burn from the zero address'
        if arg2.length != arg3.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = 0
        if not arg1:
            idx = 0
            while idx < arg2.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 3
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
                mem[32] = 3
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
                mem[32] = 3
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
            var61001 = arg2.length
            var66001 = arg3.length
    emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
}

function sub_2ffa2d76(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    if not uint8(stor5.field_160):
        revert with 0, 'migration sealed'
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0x6b20c45400000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 102] = msg.sender
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = 96
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 198] = ('cd', 4).length
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 230 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 166] = (32 * ('cd', 4).length) + 128
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 230] = ('cd', 36).length
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 262 len 32 * ('cd', 36).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length]
    require ext_code.size(address(stor5.field_0))
    call address(stor5.field_0).0x6b20c454 with:
         gas gas_remaining wei
        args msg.sender, Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length]), (32 * ('cd', 4).length) + 128
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98] = 0
    if not msg.sender:
        revert with 0, 'ERC1155: mint to the zero address'
    if ('cd', 4).length != ('cd', 36).length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if msg.sender:
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 4).length:
                revert with 0, 50
            mem[0] = msg.sender
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 226 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 226] = ('cd', 36).length
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 258 len 32 * ('cd', 36).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length]
        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length]), (32 * ('cd', 4).length) + 96, msg.sender, 0, msg.sender);
        if not ext_code.size(msg.sender):
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = msg.sender
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 166] = 0
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 198] = 160
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 294] = ('cd', 4).length
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 326 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 230] = (32 * ('cd', 4).length) + 192
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 326] = ('cd', 36).length
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 358 len 32 * ('cd', 36).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 262] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 358] = 0
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 390 len 0] = None
        require ext_code.size(msg.sender)
        call msg.sender.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * ('cd', 4).length) + 192, (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224, ('cd', 4).length, mem[128 len 32 * ('cd', 4).length], ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length], 0
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = ext_call.return_data[0]
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
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 31) + 131 < 130 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 31) + 131 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 31) + 131
        if not ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130:
            mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1803 = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 31) + 131
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1815 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130]
        mem[mem[64] + 36] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130]
        mem[mem[64] + 68 len ceil32(_1815)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 162 len ceil32(_1815)]
        if ceil32(_1815) <= _1815:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1815) + 32]
        mem[mem[64] + _1815 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1815) + _1803 + -mem[64] + 68
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 3
        if totalSupply[mem[(32 * idx) + 128]] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 128]] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = msg.sender
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] > !mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] += mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 226 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
    var73001 = ('cd', 4).length
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 226] = ('cd', 36).length
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 258 len 32 * ('cd', 36).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length]
    emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length]), (32 * ('cd', 4).length) + 96, msg.sender, 0, msg.sender);
    if not ext_code.size(msg.sender):
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 134] = msg.sender
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 166] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 198] = 160
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 294] = ('cd', 4).length
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 326 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 230] = (32 * ('cd', 4).length) + 192
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 326] = ('cd', 36).length
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + 358 len 32 * ('cd', 36).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length]
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 262] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 358] = 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 390 len 0] = None
    require ext_code.size(msg.sender)
    call msg.sender.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * ('cd', 4).length) + 192, (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224, ('cd', 4).length, mem[128 len 32 * ('cd', 4).length], ('cd', 36).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 36).length], 0
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130] = ext_call.return_data[0]
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
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 130 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 31) + 131 < 130 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 31) + 131 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 31) + 131
    if not ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1896 = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 31) + 131
    mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130] + 31) + 131] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1900 = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130]
    mem[mem[64] + 36] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 130]
    mem[mem[64] + 68 len ceil32(_1900)] = mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + ext_call.return_data[0] + 162 len ceil32(_1900)]
    if ceil32(_1900) <= _1900:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1900) + 32]
    mem[mem[64] + _1900 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_1900) + _1896 + -mem[64] + 68
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
            revert with 0, 'non-ternary level'
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
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 102] = arg1
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 134] = s
    require ext_code.size(stor6)
    call stor6.burnFrom(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.timestamp > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
        revert with 0, 17
    if 100 * block.timestamp / 876600 * 24 * 3600 <= 0:
        revert with 0, 'invalid year'
    if 1970 > !(100 * block.timestamp / 876600 * 24 * 3600):
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
                revert with 0, 'invalid level'
            if (100 * block.timestamp / 876600 * 24 * 3600) + 1970 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
                revert with 0, 17
            if (100 * 100 * block.timestamp / 876600 * 24 * 3600) + 197000 > !mem[(32 * idx) + 128]:
                revert with 0, 17
            if idx >= arg2.length:
                revert with 0, 50
            mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130] = (100 * 100 * block.timestamp / 876600 * 24 * 3600) + mem[(32 * idx) + 128] + 197000
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
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
            mem[0] = mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]
            mem[32] = 3
            if totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg1:
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
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 258 len 32 * arg2.length] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length]
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 258] = arg3.length
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 290 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
            emit TransferBatch(Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
            if not ext_code.size(arg1):
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 166] = msg.sender
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 198] = 0
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 230] = 160
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 326] = arg2.length
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 358 len 32 * arg2.length] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length]
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 262] = (32 * arg2.length) + 192
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 358] = arg3.length
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 390 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 294] = (32 * arg2.length) + (32 * arg3.length) + 224
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + (32 * arg3.length) + 390] = 0
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + (32 * arg3.length) + 422 len 0] = None
            require ext_code.size(arg1)
            call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length], 0
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162] = ext_call.return_data[0]
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
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163 < 162 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163
            if not ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            _3706 = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _3730 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162]
            mem[mem[64] + 36] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162]
            mem[mem[64] + 68 len ceil32(_3730)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 194 len ceil32(_3730)]
            if ceil32(_3730) <= _3730:
                revert with 0, 32, mem[mem[64] + 36 len ceil32(_3730) + 32]
            mem[mem[64] + _3730 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_3730) + _3706 + -mem[64] + 68
        idx = 0
        while idx < arg2.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg2.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]
            mem[32] = 3
            if totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
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
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130], 0)
            if balanceOf[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]][address(arg1)] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]][address(arg1)] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 258 len 32 * arg2.length] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length]
        var85001 = arg2.length
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 258] = arg3.length
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 290 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
        emit TransferBatch(Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
        if not ext_code.size(arg1):
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 166] = msg.sender
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 198] = 0
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 230] = 160
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 326] = arg2.length
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 358 len 32 * arg2.length] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length]
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 262] = (32 * arg2.length) + 192
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 358] = arg3.length
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 390 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 294] = (32 * arg2.length) + (32 * arg3.length) + 224
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + (32 * arg3.length) + 390] = 0
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + (32 * arg3.length) + 422 len 0] = None
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length], 0
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162] = ext_call.return_data[0]
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
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163 < 162 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163
        if not ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _3892 = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _3900 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162]
        mem[mem[64] + 36] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162]
        mem[mem[64] + 68 len ceil32(_3900)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 194 len ceil32(_3900)]
        if ceil32(_3900) <= _3900:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3900) + 32]
        mem[mem[64] + _3900 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_3900) + _3892 + -mem[64] + 68
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length] = call.data[calldata.size len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 0, 50
        if mem[(32 * idx) + 128] >= 100:
            revert with 0, 'invalid level'
        if (100 * block.timestamp / 876600 * 24 * 3600) + 1970 > 0x28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f5c28f:
            revert with 0, 17
        if (100 * 100 * block.timestamp / 876600 * 24 * 3600) + 197000 > !mem[(32 * idx) + 128]:
            revert with 0, 17
        if idx >= arg2.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130] = (100 * 100 * block.timestamp / 876600 * 24 * 3600) + mem[(32 * idx) + 128] + 197000
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
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
        mem[0] = mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]
        mem[32] = 3
        if totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if arg1:
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
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 258 len 32 * arg2.length] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length]
        var83001 = arg2.length
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 258] = arg3.length
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 290 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
        var88001 = arg3.length
        emit TransferBatch(Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
        if not ext_code.size(arg1):
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 166] = msg.sender
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 198] = 0
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 230] = 160
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 326] = arg2.length
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 358 len 32 * arg2.length] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length]
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 262] = (32 * arg2.length) + 192
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 358] = arg3.length
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 390 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 294] = (32 * arg2.length) + (32 * arg3.length) + 224
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + (32 * arg3.length) + 390] = 0
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + (32 * arg3.length) + 422 len 0] = None
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length], 0
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162] = ext_call.return_data[0]
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
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163 < 162 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163
        if not ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        _3712 = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _3737 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162]
        mem[mem[64] + 36] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162]
        mem[mem[64] + 68 len ceil32(_3737)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 194 len ceil32(_3737)]
        if ceil32(_3737) <= _3737:
            revert with 0, 32, mem[mem[64] + 36 len ceil32(_3737) + 32]
        mem[mem[64] + _3737 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_3737) + _3712 + -mem[64] + 68
    idx = 0
    while idx < arg2.length:
        if idx >= arg3.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]
        mem[32] = 3
        if totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
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
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130], 0)
        if balanceOf[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]][address(arg1)] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130]][address(arg1)] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 258 len 32 * arg2.length] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length]
    var86001 = arg2.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 258] = arg3.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 290 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
    emit TransferBatch(Array(len=arg2.length, data=mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
    if not ext_code.size(arg1):
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 166] = msg.sender
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 198] = 0
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 230] = 160
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 326] = arg2.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 358 len 32 * arg2.length] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 262] = (32 * arg2.length) + 192
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 358] = arg3.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + 390 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 294] = (32 * arg2.length) + (32 * arg3.length) + 224
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + (32 * arg3.length) + 390] = 0
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (64 * arg2.length) + (32 * arg3.length) + 422 len 0] = None
    require ext_code.size(arg1)
    call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length], 0
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162] = ext_call.return_data[0]
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
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + 162 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163 < 162 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163
    if not ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    _3894 = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162] + 31) + 163] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _3903 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162]
    mem[mem[64] + 36] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 162]
    mem[mem[64] + 68 len ceil32(_3903)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + (32 * arg2.length) + ext_call.return_data[0] + 194 len ceil32(_3903)]
    if ceil32(_3903) <= _3903:
        revert with 0, 32, mem[mem[64] + 36 len ceil32(_3903) + 32]
    mem[mem[64] + _3903 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_3903) + _3894 + -mem[64] + 68
}



}
