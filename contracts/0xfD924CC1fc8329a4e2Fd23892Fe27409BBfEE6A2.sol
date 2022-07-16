contract main {




// =====================  Runtime code  =====================


const name = 'Mones Hero Mystery Chest', 0

const symbol = '', 0

const DEFAULT_ADMIN_ROLE = 0

const MINTER_ROLE = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6


mapping of uint256 balanceOf;
mapping of uint8 stor1;
array of struct stor2;
mapping of struct roleAdmin;
mapping of uint256 totalSupply;
array of struct stor6;
mapping of struct stor7;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function exists(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(totalSupply[arg1])
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
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

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
    stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_bf43a8e8(?) payable {
    require calldata.size - 4 >= 64
    if stor6[arg1][arg2].field_0:
        mem[128] = stor6[arg1][arg2].field_0
        idx = 128
        s = 0
        while (32 * stor6[arg1][arg2].field_0) + 96 > idx:
            mem[idx + 32] = stor6[arg1][arg2][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor6[arg1][arg2].field_0, data=mem[128 len 32 * stor6[arg1][arg2].field_0])
    mem[(32 * stor6[arg1][arg2].field_0) + 128] = 32
    mem[(32 * stor6[arg1][arg2].field_0) + 160] = stor6[arg1][arg2].field_0
    mem[(32 * stor6[arg1][arg2].field_0) + 192 len 32 * stor6[arg1][arg2].field_0] = mem[128 len 32 * stor6[arg1][arg2].field_0]
    return memory
      from (32 * stor6[arg1][arg2].field_0) + 128
       len (96 * stor6[arg1][arg2].field_0) + 64
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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

function sub_cdd2f9b1(?) payable {
    require calldata.size - 4 >= 96
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if roleAdmin[0][address(msg.sender)].field_0:
        if not stor7[cd[4]].field_0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MonesChest: Chest was NOT available!'
        stor6[cd[4]][cd[36]].field_0 = ('cd', 68).length
        if not ('cd', 68).length:
            idx = 0
            while stor6[cd[4]][cd[36]].field_0 > idx:
                stor6[cd[4]][cd[36]][idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = cd[68] + 36
            while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
                stor6[cd[4]][cd[36]][s].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
            while stor6[cd[4]][cd[36]].field_0 > idx:
                stor6[cd[4]][cd[36]][idx].field_0 = 0
                idx = idx + 1
                continue 
    mem[128 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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

function sub_7d3af2e6(?) payable {
    require calldata.size - 4 >= 160
    require arg2 == bool(arg2)
    require arg3 == address(arg3)
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    mem[256 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 256] = arg5.length
    mem[(32 * arg4.length) + 288 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg4.length) + (32 * arg5.length) + 288] = 0
    stor7[arg1].field_0 = uint8(bool(arg2))
    stor7[arg1].field_8 = address(arg3)
    stor7[arg1].field_168 = Mask(88, 168, bool(arg2)) >> 168
    stor7[arg1].field_256 = arg4.length
    if not arg4.length:
        idx = 0
        while stor7[arg1].field_256 > idx:
            stor7[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = 256
        while (32 * arg4.length) + 256 > idx:
            stor7[arg1][s + 1].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg4.length) + 31) >> 5
        while stor7[arg1].field_256 > idx:
            stor7[arg1][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    stor7[arg1].field_512 = arg5.length
    if not arg5.length:
        idx = 0
        while stor7[arg1].field_512 > idx:
            stor7[arg1][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = (32 * arg4.length) + 288
        while (32 * arg4.length) + (32 * arg5.length) + 288 > idx:
            stor7[arg1][s + 2].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg5.length) + 31) >> 5
        while stor7[arg1].field_512 > idx:
            stor7[arg1][idx + 2].field_0 = 0
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

function setURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[ceil32(ceil32(arg1.length)) + 129 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(ceil32(arg1.length)) + 225 len 66] = call.data[calldata.size len 66]
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg1.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(ceil32(arg1.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg1.length)) + 289 len 66], 0, 0 >> 928,
                    0
    if bool(stor2.length):
        if bool(stor2.length) == uint255(stor2.length) * 0.5 < 32:
            revert with 0, 34
        if not arg1.length:
            stor2.length = 0
            idx = 0
            while (uint255(stor2.length) * 0.5) + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor2.length = (2 * arg1.length) + 1
            if arg1.length <= 0:
                idx = 0
                while (uint255(stor2.length) * 0.5) + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor2.field_0) = mem[128]
                s = 1
                idx = 160
                while arg1.length + 128 > idx:
                    stor2[s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
                while (uint255(stor2.length) * 0.5) + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    else:
        if bool(stor2.length) == stor2.length.field_1 < 32:
            revert with 0, 34
        if not arg1.length:
            stor2.length = 0
            idx = 0
            while stor2.length.field_1 + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            stor2.length = (2 * arg1.length) + 1
            if arg1.length <= 0:
                idx = 0
                while stor2.length.field_1 + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                uint256(stor2.field_0) = mem[128]
                s = 1
                idx = 160
                while arg1.length + 128 > idx:
                    stor2[s].field_0 = mem[idx]
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = (Mask(251, 0, arg1.length - 1) >> 5) + 1
                while stor2.length.field_1 + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
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
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        mem[ceil32(ceil32(arg4.length)) + 129 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg4.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(ceil32(arg4.length)) + 225 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg4.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(ceil32(arg4.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg4.length)) + 289 len 66], 0, 0 >> 928,
                    0
    if not stor7[arg2].field_0:
        revert with 0, 'MonesChest: Chest was NOT available!'
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
        mem[32] = 4
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
            mem[32] = 4
            if totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] < mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]:
                revert with 0, 17
            totalSupply[mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 129]] -= mem[(32 * idx) + ceil32(ceil32(arg4.length)) + 193]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    if balanceOf[arg2][address(arg1)] > !arg3:
        revert with 0, 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1):
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
            var58001 = arg2.length
            var63001 = arg3.length
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
            var62001 = arg2.length
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
            var60001 = arg2.length
            var65001 = arg3.length
    emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
}

function mintBatch(address arg1, uint256[] arg2, uint256[] arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
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
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 99 < 98 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len arg4.length] = arg4[all]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + arg4.length + 130] = 0
    mem[0] = msg.sender
    if not roleAdmin[0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6][address(msg.sender)].field_0:
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 131 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 131 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 227 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = 0x9f2df0fed2c77648de5860a4cc508cd0818c85b8b8a1ab4ceeef8d981c8956a6
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 227 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 163 len 42], 8297, mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 291 len 66], 0, 0 >> 928,
                    0
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
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 4
        if totalSupply[mem[(32 * idx) + 128]] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 0, 17
        totalSupply[mem[(32 * idx) + 128]] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
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
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99] = 64
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 195 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 195] = arg3.length
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 227 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
        emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
        if not ext_code.size(arg1):
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 103] = msg.sender
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 135] = 0
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 167] = 160
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 263] = arg2.length
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 295 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 199] = (32 * arg2.length) + 192
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 295] = arg3.length
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 327 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 231] = (32 * arg2.length) + (32 * arg3.length) + 224
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + 327] = arg4.length
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + 359 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
        if ceil32(arg4.length) <= arg4.length:
            require ext_code.size(arg1)
            call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length], arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99] = ext_call.return_data[0]
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
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _1543 = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _1553 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_1553)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 131 len ceil32(_1553)]
            if ceil32(_1553) <= _1553:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1553) + 32]
            mem[mem[64] + _1553 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_1553) + _1543 + -mem[64] + 68
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + arg4.length + 359] = 0
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length], arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99] = ext_call.return_data[0]
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
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1548 = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1560 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1560)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 131 len ceil32(_1560)]
        if ceil32(_1560) <= _1560:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1560) + 32]
        mem[mem[64] + _1560 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1560) + _1548 + -mem[64] + 68
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
        if idx >= arg3.length:
            revert with 0, 50
        if idx >= arg2.length:
            revert with 0, 50
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99] = 64
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 195 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    var76001 = arg2.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 195] = arg3.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 227 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
    emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
    if not ext_code.size(arg1):
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 103] = msg.sender
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 135] = 0
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 167] = 160
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 263] = arg2.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 295 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 199] = (32 * arg2.length) + 192
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 295] = arg3.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + 327 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 231] = (32 * arg2.length) + (32 * arg3.length) + 224
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + 327] = arg4.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + 359 len ceil32(arg4.length)] = arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
    if ceil32(arg4.length) <= arg4.length:
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length], arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99] = ext_call.return_data[0]
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
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _1638 = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _1642 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_1642)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 131 len ceil32(_1642)]
        if ceil32(_1642) <= _1642:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1642) + 32]
        mem[mem[64] + _1642 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_1642) + _1638 + -mem[64] + 68
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + (32 * arg2.length) + (32 * arg3.length) + arg4.length + 359] = 0
    require ext_code.size(arg1)
    call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length], arg4.length, arg4[all], Mask(8 * ceil32(arg4.length) - arg4.length, -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256, msg.sender) >> -(8 * ceil32(arg4.length) + -ceil32(ceil32(arg4.length)) + 27) + 256
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99] = ext_call.return_data[0]
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
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
    if not ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99:
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _1641 = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _1645 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_1645)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ext_call.return_data[0] + 131 len ceil32(_1645)]
    if ceil32(_1645) <= _1645:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_1645) + 32]
    mem[mem[64] + _1645 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_1645) + _1641 + -mem[64] + 68
}

function openChest(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if msg.sender != tx.origin:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MonesChest: You should start from yourself!'
    if not stor7[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MonesChest: Chest was NOT available!'
    if msg.sender == msg.sender:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        mem[96] = 1
        mem[128] = arg1
        mem[160] = 1
        mem[192] = 1
        mem[224] = 0
        if msg.sender:
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
            if balanceOf[arg1][address(msg.sender)] < 1:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            mem[32] = sha3(arg1, 0)
            balanceOf[arg1][address(msg.sender)]--
            mem[288] = 1
            emit TransferSingle(arg1, 1, msg.sender, msg.sender, 0);
            mem[64] = (32 * stor7[arg1].field_512) + 288
            mem[256] = stor7[arg1].field_512
            if not stor7[arg1].field_512:
                idx = 0
                s = 0
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + 288]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + 288]
                    continue 
                if block.number < 1:
                    revert with 0, 17
                mem[(32 * stor7[arg1].field_512) + 288] = 148
                if not s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512:
                    revert with 0, 18
                idx = 0
                t = sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, address(msg.sender), s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512) % s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if t >= mem[(32 * idx) + 288]:
                        if idx >= stor7[arg1].field_512:
                            revert with 0, 50
                        if t < mem[(32 * idx) + 288]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t - mem[(32 * idx) + 288]
                        continue 
                    if block.number < 1:
                        revert with 0, 17
                    if idx >= stor7[arg1].field_256:
                        revert with 0, 50
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if stor7[arg1][idx + 2].field_0 < 1:
                        revert with 0, 17
                    stor7[arg1][idx + 2].field_0--
                    if not stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 18
                    if sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0 >= stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 50
                    require ext_code.size(stor7[arg1].field_8)
                    call stor7[arg1].field_8.mintHero(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor6[arg1][stor7[arg1][idx + 1].field_0][sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = sha3(arg1, 7) + 2
                mem[288] = stor7[arg1][2].field_0
                s = 288
                s = 0
                while (32 * stor7[arg1].field_512) + 256 > 1:
                    mem[33] = stor7[arg1][s + 2].field_256
                    s = 33
                    s = s + 1
                    continue 
                idx = 0
                s = 0
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + 288]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + 288]
                    continue 
                if block.number < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.hash(block.number - 1)
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = gas_remaining
                mem[mem[64] + 128] = address(msg.sender)
                mem[mem[64] + 148] = s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512
                _518 = mem[64]
                mem[mem[64]] = 148
                mem[64] = mem[64] + 180
                if not s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512:
                    revert with 0, 18
                idx = 0
                t = sha3(mem[_518 + 32 len mem[_518]]) % s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if t >= mem[(32 * idx) + 288]:
                        if idx >= stor7[arg1].field_512:
                            revert with 0, 50
                        if t < mem[(32 * idx) + 288]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t - mem[(32 * idx) + 288]
                        continue 
                    if block.number < 1:
                        revert with 0, 17
                    if idx >= stor7[arg1].field_256:
                        revert with 0, 50
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if stor7[arg1][idx + 2].field_0 < 1:
                        revert with 0, 17
                    stor7[arg1][idx + 2].field_0--
                    if not stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 18
                    if sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0 >= stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 50
                    require ext_code.size(stor7[arg1].field_8)
                    call stor7[arg1].field_8.mintHero(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor6[arg1][stor7[arg1][idx + 1].field_0][sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
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
            if balanceOf[arg1][address(msg.sender)] < 1:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            mem[32] = sha3(arg1, 0)
            balanceOf[arg1][address(msg.sender)]--
            mem[288] = 1
            emit TransferSingle(arg1, 1, msg.sender, msg.sender, 0);
            mem[64] = (32 * stor7[arg1].field_512) + 288
            mem[256] = stor7[arg1].field_512
            if not stor7[arg1].field_512:
                idx = 0
                s = 0
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + 288]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + 288]
                    continue 
                if block.number < 1:
                    revert with 0, 17
                mem[(32 * stor7[arg1].field_512) + 288] = 148
                if not s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512:
                    revert with 0, 18
                idx = 0
                t = sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, address(msg.sender), s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512) % s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if t >= mem[(32 * idx) + 288]:
                        if idx >= stor7[arg1].field_512:
                            revert with 0, 50
                        if t < mem[(32 * idx) + 288]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t - mem[(32 * idx) + 288]
                        continue 
                    if block.number < 1:
                        revert with 0, 17
                    if idx >= stor7[arg1].field_256:
                        revert with 0, 50
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if stor7[arg1][idx + 2].field_0 < 1:
                        revert with 0, 17
                    stor7[arg1][idx + 2].field_0--
                    if not stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 18
                    if sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0 >= stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 50
                    require ext_code.size(stor7[arg1].field_8)
                    call stor7[arg1].field_8.mintHero(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor6[arg1][stor7[arg1][idx + 1].field_0][sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = sha3(arg1, 7) + 2
                mem[288] = stor7[arg1][2].field_0
                s = 288
                s = 0
                while (32 * stor7[arg1].field_512) + 256 > 1:
                    mem[33] = stor7[arg1][s + 2].field_256
                    s = 33
                    s = s + 1
                    continue 
                idx = 0
                s = 0
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + 288]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + 288]
                    continue 
                if block.number < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.hash(block.number - 1)
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = gas_remaining
                mem[mem[64] + 128] = address(msg.sender)
                mem[mem[64] + 148] = s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512
                _658 = mem[64]
                mem[mem[64]] = 148
                mem[64] = mem[64] + 180
                if not s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512:
                    revert with 0, 18
                idx = 0
                t = sha3(mem[_658 + 32 len mem[_658]]) % s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if t >= mem[(32 * idx) + 288]:
                        if idx >= stor7[arg1].field_512:
                            revert with 0, 50
                        if t < mem[(32 * idx) + 288]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t - mem[(32 * idx) + 288]
                        continue 
                    if block.number < 1:
                        revert with 0, 17
                    if idx >= stor7[arg1].field_256:
                        revert with 0, 50
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if stor7[arg1][idx + 2].field_0 < 1:
                        revert with 0, 17
                    stor7[arg1][idx + 2].field_0--
                    if not stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 18
                    if sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0 >= stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 50
                    require ext_code.size(stor7[arg1].field_8)
                    call stor7[arg1].field_8.mintHero(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor6[arg1][stor7[arg1][idx + 1].field_0][sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    else:
        if not stor1[address(msg.sender)][address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: caller is not owner nor approved'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        mem[96] = 1
        mem[128] = arg1
        mem[160] = 1
        mem[192] = 1
        mem[224] = 0
        if msg.sender:
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
            if balanceOf[arg1][address(msg.sender)] < 1:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            mem[32] = sha3(arg1, 0)
            balanceOf[arg1][address(msg.sender)]--
            mem[288] = 1
            emit TransferSingle(arg1, 1, msg.sender, msg.sender, 0);
            mem[64] = (32 * stor7[arg1].field_512) + 288
            mem[256] = stor7[arg1].field_512
            if not stor7[arg1].field_512:
                idx = 0
                s = 0
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + 288]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + 288]
                    continue 
                if block.number < 1:
                    revert with 0, 17
                mem[(32 * stor7[arg1].field_512) + 288] = 148
                if not s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512:
                    revert with 0, 18
                idx = 0
                t = sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, address(msg.sender), s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512) % s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if t >= mem[(32 * idx) + 288]:
                        if idx >= stor7[arg1].field_512:
                            revert with 0, 50
                        if t < mem[(32 * idx) + 288]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t - mem[(32 * idx) + 288]
                        continue 
                    if block.number < 1:
                        revert with 0, 17
                    if idx >= stor7[arg1].field_256:
                        revert with 0, 50
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if stor7[arg1][idx + 2].field_0 < 1:
                        revert with 0, 17
                    stor7[arg1][idx + 2].field_0--
                    if not stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 18
                    if sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0 >= stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 50
                    require ext_code.size(stor7[arg1].field_8)
                    call stor7[arg1].field_8.mintHero(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor6[arg1][stor7[arg1][idx + 1].field_0][sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = sha3(arg1, 7) + 2
                mem[288] = stor7[arg1][2].field_0
                s = 288
                s = 0
                while (32 * stor7[arg1].field_512) + 256 > 1:
                    mem[33] = stor7[arg1][s + 2].field_256
                    s = 33
                    s = s + 1
                    continue 
                idx = 0
                s = 0
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + 288]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + 288]
                    continue 
                if block.number < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.hash(block.number - 1)
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = gas_remaining
                mem[mem[64] + 128] = address(msg.sender)
                mem[mem[64] + 148] = s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512
                _522 = mem[64]
                mem[mem[64]] = 148
                mem[64] = mem[64] + 180
                if not s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512:
                    revert with 0, 18
                idx = 0
                t = sha3(mem[_522 + 32 len mem[_522]]) % s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if t >= mem[(32 * idx) + 288]:
                        if idx >= stor7[arg1].field_512:
                            revert with 0, 50
                        if t < mem[(32 * idx) + 288]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t - mem[(32 * idx) + 288]
                        continue 
                    if block.number < 1:
                        revert with 0, 17
                    if idx >= stor7[arg1].field_256:
                        revert with 0, 50
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if stor7[arg1][idx + 2].field_0 < 1:
                        revert with 0, 17
                    stor7[arg1][idx + 2].field_0--
                    if not stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 18
                    if sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0 >= stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 50
                    require ext_code.size(stor7[arg1].field_8)
                    call stor7[arg1].field_8.mintHero(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor6[arg1][stor7[arg1][idx + 1].field_0][sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        else:
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
            if balanceOf[arg1][address(msg.sender)] < 1:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            mem[32] = sha3(arg1, 0)
            balanceOf[arg1][address(msg.sender)]--
            mem[288] = 1
            emit TransferSingle(arg1, 1, msg.sender, msg.sender, 0);
            mem[64] = (32 * stor7[arg1].field_512) + 288
            mem[256] = stor7[arg1].field_512
            if not stor7[arg1].field_512:
                idx = 0
                s = 0
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + 288]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + 288]
                    continue 
                if block.number < 1:
                    revert with 0, 17
                mem[(32 * stor7[arg1].field_512) + 288] = 148
                if not s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512:
                    revert with 0, 18
                idx = 0
                t = sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, address(msg.sender), s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512) % s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if t >= mem[(32 * idx) + 288]:
                        if idx >= stor7[arg1].field_512:
                            revert with 0, 50
                        if t < mem[(32 * idx) + 288]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t - mem[(32 * idx) + 288]
                        continue 
                    if block.number < 1:
                        revert with 0, 17
                    if idx >= stor7[arg1].field_256:
                        revert with 0, 50
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if stor7[arg1][idx + 2].field_0 < 1:
                        revert with 0, 17
                    stor7[arg1][idx + 2].field_0--
                    if not stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 18
                    if sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0 >= stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 50
                    require ext_code.size(stor7[arg1].field_8)
                    call stor7[arg1].field_8.mintHero(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor6[arg1][stor7[arg1][idx + 1].field_0][sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = sha3(arg1, 7) + 2
                mem[288] = stor7[arg1][2].field_0
                s = 288
                s = 0
                while (32 * stor7[arg1].field_512) + 256 > 1:
                    mem[33] = stor7[arg1][s + 2].field_256
                    s = 33
                    s = s + 1
                    continue 
                idx = 0
                s = 0
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if s > !mem[(32 * idx) + 288]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[(32 * idx) + 288]
                    continue 
                if block.number < 1:
                    revert with 0, 17
                mem[mem[64] + 32] = block.hash(block.number - 1)
                mem[mem[64] + 64] = block.timestamp
                mem[mem[64] + 96] = gas_remaining
                mem[mem[64] + 128] = address(msg.sender)
                mem[mem[64] + 148] = s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512
                _661 = mem[64]
                mem[mem[64]] = 148
                mem[64] = mem[64] + 180
                if not s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512:
                    revert with 0, 18
                idx = 0
                t = sha3(mem[_661 + 32 len mem[_661]]) % s * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512 * stor7[arg1].field_512
                while idx < stor7[arg1].field_512:
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if t >= mem[(32 * idx) + 288]:
                        if idx >= stor7[arg1].field_512:
                            revert with 0, 50
                        if t < mem[(32 * idx) + 288]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = t - mem[(32 * idx) + 288]
                        continue 
                    if block.number < 1:
                        revert with 0, 17
                    if idx >= stor7[arg1].field_256:
                        revert with 0, 50
                    if idx >= stor7[arg1].field_512:
                        revert with 0, 50
                    if stor7[arg1][idx + 2].field_0 < 1:
                        revert with 0, 17
                    stor7[arg1][idx + 2].field_0--
                    if not stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 18
                    if sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0 >= stor6[arg1][stor7[arg1][idx + 1].field_0].field_0:
                        revert with 0, 50
                    require ext_code.size(stor7[arg1].field_8)
                    call stor7[arg1].field_8.mintHero(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, stor6[arg1][stor7[arg1][idx + 1].field_0][sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, idx) % stor6[arg1][stor7[arg1][idx + 1].field_0].field_0].field_0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
    if block.number < 1:
        revert with 0, 17
    if 0 >= stor7[arg1].field_256:
        revert with 0, 50
    if 0 >= stor7[arg1].field_512:
        revert with 0, 50
    if stor7[arg1][2].field_0 < 1:
        revert with 0, 17
    stor7[arg1][2].field_0--
    if not stor6[arg1][stor7[arg1][1].field_0].field_0:
        revert with 0, 18
    if sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, 0) % stor6[arg1][stor7[arg1][1].field_0].field_0 >= stor6[arg1][stor7[arg1][1].field_0].field_0:
        revert with 0, 50
    require ext_code.size(stor7[arg1].field_8)
    call stor7[arg1].field_8.mintHero(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, stor6[arg1][stor7[arg1][1].field_0][sha3(block.hash(block.number - 1), block.timestamp, gas_remaining, msg.sender, 0) % stor6[arg1][stor7[arg1][1].field_0].field_0].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    require calldata.size >= arg3 + (32 * arg3.length) + 36
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg4.length) + 98 < 97 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg3.length) + 97] = arg4.length
    require calldata.size >= arg4 + (32 * arg4.length) + 36
    idx = 0
    s = arg4 + 36
    t = ceil32(32 * arg3.length) + 129
    while idx < arg4.length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
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
                var69001 = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                var74001 = arg4.length
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
                    _5211 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _5259 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_5259)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5259)]
                    if ceil32(_5259) <= _5259:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5259) + 32]
                    mem[mem[64] + _5259 + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_5259) + _5211 + -mem[64] + 68
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
                _5230 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5291 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_5291)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5291)]
                if ceil32(_5291) <= _5291:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5291) + 32]
                mem[mem[64] + _5291 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5291) + _5230 + -mem[64] + 68
            idx = 0
            while idx < arg3.length:
                if idx >= arg4.length:
                    revert with 0, 50
                if idx >= arg3.length:
                    revert with 0, 50
                mem[0] = mem[(32 * idx) + 128]
                mem[32] = 4
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
            var72001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var77001 = arg4.length
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
                _5697 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5725 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_5725)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5725)]
                if ceil32(_5725) <= _5725:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5725) + 32]
                mem[mem[64] + _5725 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5725) + _5697 + -mem[64] + 68
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
            _5710 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5745 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_5745)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5745)]
            if ceil32(_5745) <= _5745:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5745) + 32]
            mem[mem[64] + _5745 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5745) + _5710 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= arg4.length:
                revert with 0, 50
            if idx >= arg3.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
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
            var73001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var78001 = arg4.length
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
                _5699 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5728 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_5728)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5728)]
                if ceil32(_5728) <= _5728:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5728) + 32]
                mem[mem[64] + _5728 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5728) + _5699 + -mem[64] + 68
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
            _5712 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5747 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_5747)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5747)]
            if ceil32(_5747) <= _5747:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5747) + 32]
            mem[mem[64] + _5747 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5747) + _5712 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= arg4.length:
                revert with 0, 50
            if idx >= arg3.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
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
            _5929 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5937 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_5937)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5937)]
            if ceil32(_5937) <= _5937:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5937) + 32]
            mem[mem[64] + _5937 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5937) + _5929 + -mem[64] + 68
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
        _5934 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5943 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_5943)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5943)]
        if ceil32(_5943) <= _5943:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5943) + 32]
        mem[mem[64] + _5943 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5943) + _5934 + -mem[64] + 68
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
            var71001 = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            var76001 = arg4.length
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
                _5220 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _5275 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_5275)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5275)]
                if ceil32(_5275) <= _5275:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5275) + 32]
                mem[mem[64] + _5275 + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_5275) + _5220 + -mem[64] + 68
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
            _5245 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5303 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_5303)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5303)]
            if ceil32(_5303) <= _5303:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5303) + 32]
            mem[mem[64] + _5303 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5303) + _5245 + -mem[64] + 68
        idx = 0
        while idx < arg3.length:
            if idx >= arg4.length:
                revert with 0, 50
            if idx >= arg3.length:
                revert with 0, 50
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 4
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
            _5703 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5735 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_5735)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5735)]
            if ceil32(_5735) <= _5735:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5735) + 32]
            mem[mem[64] + _5735 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5735) + _5703 + -mem[64] + 68
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
        _5718 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5753 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_5753)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5753)]
        if ceil32(_5753) <= _5753:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5753) + 32]
        mem[mem[64] + _5753 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5753) + _5718 + -mem[64] + 68
    idx = 0
    while idx < arg3.length:
        if idx >= arg4.length:
            revert with 0, 50
        if idx >= arg3.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 4
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
        var75001 = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 195] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + 227 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        var80001 = arg4.length
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
            _5705 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _5738 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_5738)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5738)]
            if ceil32(_5738) <= _5738:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5738) + 32]
            mem[mem[64] + _5738 + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_5738) + _5705 + -mem[64] + 68
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
        _5720 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5755 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_5755)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5755)]
        if ceil32(_5755) <= _5755:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5755) + 32]
        mem[mem[64] + _5755 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5755) + _5720 + -mem[64] + 68
    idx = 0
    while idx < arg3.length:
        if idx >= arg4.length:
            revert with 0, 50
        if idx >= arg3.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 4
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
        _5931 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _5940 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_5940)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5940)]
        if ceil32(_5940) <= _5940:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5940) + 32]
        mem[mem[64] + _5940 + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_5940) + _5931 + -mem[64] + 68
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
    _5936 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _5945 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_5945)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_5945)]
    if ceil32(_5945) <= _5945:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_5945) + 32]
    mem[mem[64] + _5945 + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_5945) + _5936 + -mem[64] + 68
}



}
