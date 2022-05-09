contract main {




// =====================  Runtime code  =====================


#
#  - safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5)
#  - safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5)
#
const DEFAULT_ADMIN_ROLE = 0

const PAUSER_ROLE = 0x65d7a28e3265b37a6474929f336521b332c1681b933f6cb9f3376673440d862a


mapping of uint256 balance;
mapping of uint8 stor1;
array of uint256 stor2;
mapping of struct roleAdmin;
address owner;
address stor5;
mapping of uint256 supply;
uint256 nextId;

function balanceOf(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balance[arg2][address(arg1)]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function getBalance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balance[arg2][address(arg1)]
}

function supply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return supply[arg1]
}

function sub_4e2297ec(?) payable {
    return nextId
}

function owner() payable {
    return owner
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getNextId() payable {
    return nextId
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
}

function getSupply(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return supply[arg1]
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

function setAddressRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5 = arg1
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

function burn(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor5)
    staticcall stor5.0xf97e7d74 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'E017'
    if supply[arg2] < arg3:
        revert with 0, 17
    supply[arg2] -= arg3
    if not arg1:
        revert with 0, 'ERC1155: burn from the zero address'
    if balance[arg2][address(arg1)] < arg3:
        revert with 0, 'ERC1155: burn amount exceeds balance'
    balance[arg2][address(arg1)] -= arg3
    emit TransferSingle(arg2, arg3, msg.sender, arg1, 0);
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function setURI(string arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 > test266151307() or ceil32(ceil32(arg1.length)) + 97 < 96:
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor5)
    staticcall stor5.0xf97e7d74 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'E017'
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

function balanceOfBatch(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
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
    if ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307() or ceil32(32 * arg2.length) + 98 < 97:
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
        mem[(32 * idx) + ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = balance[mem[(32 * idx) + ceil32(32 * arg1.length) + 129]][address(mem[(32 * idx) + 128])]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return Array(len=arg1.length, data=mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130 len 32 * arg1.length])
}

function uri(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor5)
    staticcall stor5.getMetadataHandler() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0x3bb3a24d00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg1
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x3bb3a24d with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _9
    require _8 + _9 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)] = mem[ceil32(return_data.size) + _8 + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[_9 + (2 * ceil32(return_data.size)) + 128] = 0
    mem[mem[64]] = 32
    mem[mem[64] + 32] = _9
    mem[mem[64] + 64 len ceil32(_9)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)]
    if ceil32(_9) > _9:
        mem[_9 + mem[64] + 64] = 0
    return Array(len=_9, data=mem[mem[64] + 64 len ceil32(_9)])
}

function burnBatch(address arg1, uint256[] arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 > test266151307() or ceil32(32 * arg2.length) + 97 < 96:
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
    if ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98 > test266151307() or ceil32(32 * arg3.length) + 98 < 97:
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
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor5)
    staticcall stor5.0xf97e7d74 with:
            gas gas_remaining wei
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'E017'
    if not arg1:
        revert with 0, 'ERC1155: burn from the zero address'
    if arg2.length != arg3.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(return_data.size) + 98] = 0
    idx = 0
    while idx < arg2.length:
        if idx >= arg2.length:
            revert with 0, 50
        if idx >= arg3.length:
            revert with 0, 50
        if balance[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 0, 'ERC1155: burn amount exceeds balance'
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        balance[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if not arg1:
    else:
        var62001 = arg2.length
    emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, arg1, 0);
}

function mint(address arg1, uint256 arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg4.length)) + 97 > test266151307() or ceil32(ceil32(arg4.length)) + 97 < 96:
        revert with 0, 65
    require arg4 + arg4.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor5)
    staticcall stor5.0xf97e7d74 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'E017'
    if supply[arg2] > !arg3:
        revert with 0, 17
    supply[arg2] += arg3
    if not arg1:
        revert with 0, 'ERC1155: mint to the zero address'
    if balance[arg2][address(arg1)] > !arg3:
        revert with 0, 17
    balance[arg2][address(arg1)] += arg3
    emit TransferSingle(arg2, arg3, msg.sender, 0, arg1);
    if not ext_code.size(arg1):
        if nextId > -2:
            revert with 0, 17
        nextId++
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 229] = msg.sender
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 261] = 0
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 293] = arg2
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 325] = arg3
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 357] = 160
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 389] = arg4.length
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 421 len ceil32(arg4.length)] = arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
    if ceil32(arg4.length) > arg4.length:
        mem[arg4.length + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 421] = 0
    require ext_code.size(arg1)
    call arg1.onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, arg2, arg3, 160, arg4.length, arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
    mem[ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 225] = ext_call.return_data[0]
    if not ext_call.success:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    require return_data.size >= 32
    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
    if 0xf23a6e6100000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0]):
        if nextId > -2:
            revert with 0, 17
        nextId++
    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 225] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 229] = 32
    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 261] = 40
    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 293] = 'ERC1155: ERC1155Receiver rejecte'
    mem[ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 325] = 'd tokens'
    revert with memory
      from ceil32(ceil32(arg4.length)) + (2 * ceil32(return_data.size)) + 225
       len ceil32(return_data.size) + 132
}

function sub_9a46cd5d(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 132).length)) + 97 > test266151307() or ceil32(ceil32(('cd', 132).length)) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 132).length
    require cd[132] + ('cd', 132).length + 36 <= calldata.size
    mem[128 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[('cd', 132).length + 128] = 0
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor5)
    staticcall stor5.0xf97e7d74 with:
            gas gas_remaining wei
    mem[ceil32(ceil32(('cd', 132).length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(ceil32(('cd', 132).length)) + ceil32(return_data.size) + 97
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'E017'
    mem[0] = cd[68]
    mem[32] = 6
    if supply[cd[68]] > !cd[100]:
        revert with 0, 17
    supply[cd[68]] += cd[100]
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0, 'ERC1155: mint to the zero address'
        _81 = mem[64]
        mem[mem[64]] = 1
        mem[64] = mem[64] + 64
        if 0 >= mem[_81]:
            revert with 0, 50
        mem[_81 + 32] = cd[68]
        mem[_81 + 64] = 1
        mem[64] = _81 + 128
        mem[_81 + 96] = cd[((32 * idx) + cd[36] + 36)]
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = sha3(cd[68], 0)
        if balance[cd[68]][address(cd[((32 * idx) + cd[4] + 36)])] > !cd[((32 * idx) + cd[36] + 36)]:
            revert with 0, 17
        balance[cd[68]][address(cd[((32 * idx) + cd[4] + 36)])] += cd[((32 * idx) + cd[36] + 36)]
        mem[_81 + 128] = cd[68]
        mem[_81 + 160] = cd[((32 * idx) + cd[36] + 36)]
        emit TransferSingle(cd[68], cd[((32 * idx) + cd[36] + 36)], msg.sender, 0, address(cd[((32 * idx) + cd[4] + 36)]));
        if ext_code.size(address(cd[((32 * idx) + cd[4] + 36)])):
            mem[_81 + 128] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
            mem[_81 + 132] = msg.sender
            mem[_81 + 164] = 0
            mem[_81 + 196] = cd[68]
            mem[_81 + 228] = cd[((32 * idx) + cd[36] + 36)]
            mem[_81 + 260] = 160
            mem[_81 + 292] = mem[96]
            s = 0
            while s < mem[96]:
                mem[s + _81 + 324] = mem[s + 128]
                s = s + 32
                continue 
            if ceil32(mem[96]) > mem[96]:
                mem[mem[96] + _81 + 324] = 0
            require ext_code.size(address(cd[((32 * idx) + cd[4] + 36)]))
            call address(cd[((32 * idx) + cd[4] + 36)]).onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, cd[68], cd[((32 * idx) + cd[36] + 36)], 160, mem[96], mem[_81 + 324 len ceil32(mem[96])]
            mem[_81 + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[64] = _81 + ceil32(return_data.size) + 128
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    if nextId > -2:
        revert with 0, 17
    nextId++
}

function renderTokenURI(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    require ext_code.size(stor5)
    staticcall stor5.getMetadataHandler() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 96] = 0x827bffb500000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 100] = arg1
    mem[ceil32(return_data.size) + 132] = arg2
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x827bffb5 with:
            gas gas_remaining wei
           args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 64
    _8 = mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32
    require mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 127 < ceil32(return_data.size) + return_data.size + 96
    _9 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    if mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96] > test266151307():
        revert with 0, 65
    if (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97 > test266151307() or ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 1 < 0:
        revert with 0, 65
    mem[64] = (2 * ceil32(return_data.size)) + ceil32(ceil32(mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 96 len 4], Mask(224, 32, arg1) >> 32 + 96])) + 97
    mem[(2 * ceil32(return_data.size)) + 96] = _9
    require _8 + _9 + 32 <= return_data.size
    mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_9)] = mem[ceil32(return_data.size) + _8 + 128 len ceil32(_9)]
    if ceil32(_9) <= _9:
        require uint32(arg1), address(arg2) << 64 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 127
        _55 = mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 96]
        if mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 96] > test266151307():
            revert with 0, 65
        _57 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 96]) + 1 > test266151307() or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 96]) + 1 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 96]) + 1
        mem[_57] = _55
        require return_data.size >= uint32(arg1), address(arg2) << 64 + (32 * _55) + 32
        idx = 0
        s = ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 128
        t = _57 + 32
        while idx < _55:
            _93 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _96 = mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + mem[s] + 128]
            if mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _101 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + mem[s] + 128])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + mem[s] + 128])) + 1 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + mem[s] + 128])) + 1
            mem[_101] = _96
            require uint32(arg1), address(arg2) << 64 + _93 + _96 + 64 <= return_data.size
            u = 0
            while u < _96:
                mem[u + _101 + 32] = mem[u + ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + _93 + 160]
                u = u + 32
                continue 
            if ceil32(_96) > _96:
                mem[_96 + _101 + 32] = 0
            mem[t] = _101
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _95 = mem[64]
        mem[mem[64]] = 64
        _99 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 96 len ceil32(_99)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_99)]
        if ceil32(_99) <= _99:
            mem[mem[64] + 32] = ceil32(_99) + 96
            _131 = mem[_57]
            mem[ceil32(_99) + _95 + 96] = mem[_57]
            idx = 0
            s = _57 + 32
            t = ceil32(_99) + _95 + (32 * _131) + 128
            u = ceil32(_99) + _95 + 128
            while idx < _131:
                mem[u] = t + -ceil32(_99) + -_95 - 128
                _151 = mem[s]
                _156 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _156:
                    mem[v + t + 32] = mem[v + _151 + 32]
                    v = v + 32
                    continue 
                if ceil32(_156) > _156:
                    mem[_156 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_156) + t + 32
                u = u + 32
                continue 
        else:
            mem[_99 + mem[64] + 96] = 0
            mem[mem[64] + 32] = ceil32(_99) + 96
            _132 = mem[_57]
            mem[ceil32(_99) + _95 + 96] = mem[_57]
            idx = 0
            s = _57 + 32
            t = ceil32(_99) + _95 + (32 * _132) + 128
            u = ceil32(_99) + _95 + 128
            while idx < _132:
                mem[u] = t + -ceil32(_99) + -_95 - 128
                _152 = mem[s]
                _158 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _158:
                    mem[v + t + 32] = mem[v + _152 + 32]
                    v = v + 32
                    continue 
                if ceil32(_158) > _158:
                    mem[_158 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_158) + t + 32
                u = u + 32
                continue 
    else:
        mem[_9 + (2 * ceil32(return_data.size)) + 128] = 0
        require uint32(arg1), address(arg2) << 64 <= test266151307()
        require ceil32(return_data.size) + return_data.size + 96 > ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 127
        _56 = mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 96]
        if mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 96] > test266151307():
            revert with 0, 65
        _58 = mem[64]
        if mem[64] + ceil32(32 * mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 96]) + 1 > test266151307() or mem[64] + ceil32(32 * mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 96]) + 1 < mem[64]:
            revert with 0, 65
        mem[64] = mem[64] + ceil32(32 * mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 96]) + 1
        mem[_58] = _56
        require return_data.size >= uint32(arg1), address(arg2) << 64 + (32 * _56) + 32
        idx = 0
        s = ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + 128
        t = _58 + 32
        while idx < _56:
            _94 = mem[s]
            require mem[s] <= test266151307()
            require ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + mem[s] + 159 < ceil32(return_data.size) + return_data.size + 96
            _98 = mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + mem[s] + 128]
            if mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + mem[s] + 128] > test266151307():
                revert with 0, 65
            _102 = mem[64]
            if mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + mem[s] + 128])) + 1 > test266151307() or mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + mem[s] + 128])) + 1 < mem[64]:
                revert with 0, 65
            mem[64] = mem[64] + ceil32(ceil32(mem[ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + mem[s] + 128])) + 1
            mem[_102] = _98
            require uint32(arg1), address(arg2) << 64 + _94 + _98 + 64 <= return_data.size
            u = 0
            while u < _98:
                mem[u + _102 + 32] = mem[u + ceil32(return_data.size) + uint32(arg1), address(arg2) << 64 + _94 + 160]
                u = u + 32
                continue 
            if ceil32(_98) > _98:
                mem[_98 + _102 + 32] = 0
            mem[t] = _102
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        _97 = mem[64]
        mem[mem[64]] = 64
        _100 = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 64] = mem[(2 * ceil32(return_data.size)) + 96]
        mem[mem[64] + 96 len ceil32(_100)] = mem[(2 * ceil32(return_data.size)) + 128 len ceil32(_100)]
        if ceil32(_100) <= _100:
            mem[mem[64] + 32] = ceil32(_100) + 96
            _133 = mem[_58]
            mem[ceil32(_100) + _97 + 96] = mem[_58]
            idx = 0
            s = _58 + 32
            t = ceil32(_100) + _97 + (32 * _133) + 128
            u = ceil32(_100) + _97 + 128
            while idx < _133:
                mem[u] = t + -ceil32(_100) + -_97 - 128
                _153 = mem[s]
                _160 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _160:
                    mem[v + t + 32] = mem[v + _153 + 32]
                    v = v + 32
                    continue 
                if ceil32(_160) > _160:
                    mem[_160 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_160) + t + 32
                u = u + 32
                continue 
        else:
            mem[_100 + mem[64] + 96] = 0
            mem[mem[64] + 32] = ceil32(_100) + 96
            _134 = mem[_58]
            mem[ceil32(_100) + _97 + 96] = mem[_58]
            idx = 0
            s = _58 + 32
            t = ceil32(_100) + _97 + (32 * _134) + 128
            u = ceil32(_100) + _97 + 128
            while idx < _134:
                mem[u] = t + -ceil32(_100) + -_97 - 128
                _154 = mem[s]
                _162 = mem[mem[s]]
                mem[t] = mem[mem[s]]
                v = 0
                while v < _162:
                    mem[v + t + 32] = mem[v + _154 + 32]
                    v = v + 32
                    continue 
                if ceil32(_162) > _162:
                    mem[_162 + t + 32] = 0
                idx = idx + 1
                s = s + 32
                t = ceil32(_162) + t + 32
                u = u + 32
                continue 
    return memory
      from mem[64]
       len t - mem[64]
}

function mintBatch(address arg1, uint256[] arg2, uint256[] arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 97 > test266151307() or ceil32(32 * arg2.length) + 97 < 96:
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
    if ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98 > test266151307() or ceil32(32 * arg3.length) + 98 < 97:
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
    if ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99 > test266151307() or ceil32(ceil32(arg4.length)) + 99 < 98:
        revert with 0, 65
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 98] = arg4.length
    require arg4 + arg4.length + 36 <= calldata.size
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + 130 len arg4.length] = arg4[all]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + arg4.length + 130] = 0
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor5)
    staticcall stor5.0xf97e7d74 with:
            gas gas_remaining wei
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + 99] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'E017'
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
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balance[mem[(32 * idx) + 128]][address(arg1)] > !mem[(32 * idx) + ceil32(32 * arg2.length) + 129]:
            revert with 0, 17
        balance[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + ceil32(32 * arg2.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 99] = 64
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 195 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + (32 * arg2.length) + 195] = arg3.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + (32 * arg2.length) + 227 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
    emit TransferBatch(Array(len=arg2.length, data=mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]), (32 * arg2.length) + 96, msg.sender, 0, arg1);
    if not ext_code.size(arg1):
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 103] = msg.sender
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 135] = 0
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 167] = 160
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 263] = arg2.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 295 len 32 * arg2.length] = mem[128 len 32 * arg2.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 199] = (32 * arg2.length) + 192
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + (32 * arg2.length) + 295] = arg3.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + (32 * arg2.length) + 327 len 32 * arg3.length] = mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 231] = (32 * arg2.length) + (32 * arg3.length) + 224
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + (32 * arg2.length) + (32 * arg3.length) + 327] = arg4.length
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + (32 * arg2.length) + (32 * arg3.length) + 359 len ceil32(arg4.length)] = arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
    if ceil32(arg4.length) <= arg4.length:
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length], arg4.length, arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
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
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
            revert with 0, 65
        mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 31) + 100
        if not ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99:
            mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _648 = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 31) + 100
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _652 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99]
        mem[mem[64] + 36] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99]
        mem[mem[64] + 68 len ceil32(_652)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 131 len ceil32(_652)]
        if ceil32(_652) <= _652:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_652) + 32]
        mem[_652 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_652) + _648 + -mem[64] + 68
    mem[arg4.length + ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + (32 * arg2.length) + (32 * arg3.length) + 359] = 0
    require ext_code.size(arg1)
    call arg1.onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) with:
         gas gas_remaining wei
        args msg.sender, 0, 160, (32 * arg2.length) + 192, (32 * arg2.length) + (32 * arg3.length) + 224, arg2.length, mem[128 len 32 * arg2.length], arg3.length, mem[ceil32(32 * arg2.length) + 129 len 32 * arg3.length], arg4.length, arg4[all], ext_call.return_data[arg4.length + -ceil32(ceil32(arg4.length)) + 31 len ceil32(arg4.length) - arg4.length]
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 99] = ext_call.return_data[0]
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
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307() or floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 31) + 100 < 99:
        revert with 0, 65
    mem[64] = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 31) + 100
    if not ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99:
        mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _649 = ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 31) + 100
    mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _654 = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99]
    mem[mem[64] + 36] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 99]
    mem[mem[64] + 68 len ceil32(_654)] = mem[ceil32(32 * arg2.length) + ceil32(32 * arg3.length) + ceil32(ceil32(arg4.length)) + ceil32(return_data.size) + ext_call.return_data[0] + 131 len ceil32(_654)]
    if ceil32(_654) <= _654:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_654) + 32]
    mem[_654 + mem[64] + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_654) + _649 + -mem[64] + 68
}



}
