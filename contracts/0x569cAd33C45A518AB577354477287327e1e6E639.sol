contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#
const sub_01d0216c(?) = 0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint256 balanceOf;
mapping of uint8 stor102;
array of struct stor103;
address owner;
mapping of struct roleAdmin;
array of struct roleMember;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function owner() payable {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 >= roleMember[arg1].field_0:
        revert with 'NH{q', 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleMember[arg1].field_0
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
    if Mask(32, 224, arg1) == 0x5a05180f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
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

function grantMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not roleAdmin[0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf][address(arg1)].field_0:
        roleAdmin[0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf][address(arg1)].field_0 = 1
        emit RoleGranted(0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf, arg1, msg.sender);
    if not roleMember[0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf][1][address(arg1)].field_0:
        roleMember[0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf].field_0++
        roleMember[0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf][roleMember[0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf].field_0].field_0 = arg1
        roleMember[0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf][roleMember[0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf].field_0].field_160 = 0
        roleMember[0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf][1][address(arg1)].field_0 = roleMember[0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf].field_0
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

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 < 1:
            revert with 'NH{q', 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 'NH{q', 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 'NH{q', 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
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

function initialize(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 'NH{q', 65
    require arg1 + arg1.length + 36 <= calldata.size
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
    owner = msg.sender
    emit OwnershipTransferred(owner, msg.sender);
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
}

function mint(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf][address(msg.sender)].field_0:
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 'NH{q', 50
            if idx >= 42:
                revert with 'NH{q', 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if not msg.sender + 10240:
            idx = 65
            s = 0x1f0426c2589e5c3ea5f5996e2a4371ca21edd86514b6679c9dd135d7c85b28bf
            while idx > 1:
                if s % 16 >= 16:
                    revert with 'NH{q', 50
                if idx >= 66:
                    revert with 'NH{q', 50
                mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 'NH{q', 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
        revert with 0, 'Strings: hex length insufficient'
    if arg2 <= 0:
        revert with 0, 'Token id error.'
    if arg2 >= 7:
        revert with 0, 'Token id error.'
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if balanceOf[arg2][address(arg1)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if ext_code.size(arg1) > 0:
        require ext_code.size(arg1)
        call arg1.0xf23a6e61 with:
             gas gas_remaining wei
            args msg.sender, 0, arg2, arg3, 160, 0
        if not ext_call.success:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
            roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
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

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
        if roleMember[arg1][1][address(arg2)].field_0:
            if roleMember[arg1][1][address(arg2)].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
                if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                    revert with 'NH{q', 50
                roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
                roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
            if not roleMember[arg1].field_0:
                revert with 'NH{q', 49
            roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
            roleMember[arg1].field_0--
            roleMember[arg1][1][address(arg2)].field_0 = 0
    mem[128 len 42] = call.data[calldata.size len 42]
    mem[129 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 42:
            revert with 'NH{q', 50
        mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[224 len 66] = call.data[calldata.size len 66]
    mem[225 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, "'x'"), 0) + 256, 0) << (('mask_shl', 8, 248, -3, "'x'"), 0) - 256
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 'NH{q', 50
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    mem[352] = 'AccessControl: account '
    mem[375 len 64] = 0, mem[129 len 63]
    mem[417] = ' is missing role '
    mem[434 len 96] = 0, mem[225 len 95]
    mem[500] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[504] = 32
    mem[536] = mem[320]
    mem[568 len ceil32(mem[320])] = mem[352 len ceil32(mem[320])]
    if ceil32(mem[320]) > mem[320]:
        mem[mem[320] + 568] = 0
    revert with 0, 32, mem[320], mem[568 len ceil32(mem[320])]
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



}
