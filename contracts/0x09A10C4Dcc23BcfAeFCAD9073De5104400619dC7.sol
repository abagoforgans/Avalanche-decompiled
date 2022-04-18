contract main {




// =====================  Runtime code  =====================


#
#  - sub_14564cfb(?)
#  - sub_1aeab058(?)
#  - sub_fea6b5d2(?)
#
const getChainId = chainid

const ERC712_VERSION = '', 0

const DEFAULT_ADMIN_ROLE = 0

const DEPOSITOR_ROLE = 0x8f4f2da22e8ac8f11e15f9fc141cddbb5deea8800186560abb6e68c5496619a9


mapping of uint256 balanceOf;
mapping of uint8 stor1;
mapping of struct roleAdmin;
address owner;
uint256 domainSeperator;
mapping of uint8 stor6;
uint8 sub_7c638212;
mapping of uint256 sub_fc86b662;
mapping of uint256 sub_79920951;
mapping of uint256 sub_0f699e80;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint256 mintNumber;
mapping of struct stor15;
array of struct stor16;
array of struct stor17;
array of struct stor18;

function balanceOf(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: balance query for the zero address'
    return balanceOf[arg2][address(arg1)]
}

function sub_0f699e80(?) {
    require calldata.size - 4 >= 32
    return sub_0f699e80[arg1]
}

function getDomainSeperator() {
    return domainSeperator
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function getNonce(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonce[address(arg1)].field_0
}

function sub_3199da02(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor6[address(arg1)])
}

function sub_79920951(?) {
    require calldata.size - 4 >= 32
    return sub_79920951[arg1]
}

function sub_7c638212(?) {
    return bool(sub_7c638212)
}

function owner() {
    return owner
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_aed0ddf2(?) {
    require calldata.size - 4 >= 32
    return bool(stor12[arg1])
}

function sub_bb720188(?) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function sub_d3d57d89(?) {
    require calldata.size - 4 >= 32
    return bool(stor13[arg1])
}

function mintNumber(uint256 arg1) {
    require calldata.size - 4 >= 32
    return mintNumber[arg1]
}

function sub_fc86b662(?) {
    require calldata.size - 4 >= 32
    return sub_fc86b662[arg1]
}

function _fallback() payable {
    revert
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor1[address(arg1)][address(arg2)]:
        return bool(stor1[address(arg1)][address(arg2)])
    return (1 == bool(stor6[address(arg2)]))
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x1ffc9a700000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xd9b67a2600000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0xe89341c00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (0xf79f20b500000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1))
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if msg.sender != this.address:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + 108 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg2 != mem[calldata.size + 108 len 20]:
            revert with 0, 'AccessControl: can only renounce roles for self'
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if msg.sender != this.address:
        if msg.sender == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: setting approval status for self'
        if msg.sender != this.address:
            stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
            emit ApprovalForAll(arg2, msg.sender, arg1);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            stor1[mem[calldata.size + 108 len 20]][address(arg1)] = uint8(arg2)
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            emit ApprovalForAll(arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg1);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if mem[calldata.size + 108 len 20] == arg1:
            revert with 0, 'ERC1155: setting approval status for self'
        if msg.sender != this.address:
            stor1[address(msg.sender)][address(arg1)] = uint8(arg2)
            emit ApprovalForAll(arg2, msg.sender, arg1);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            stor1[mem[calldata.size + ceil32(calldata.size) + 140 len 20]][address(arg1)] = uint8(arg2)
            mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
            mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
            emit ApprovalForAll(arg2, mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20], arg1);
}

function withdrawSingle(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if msg.sender != this.address:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
        if msg.sender != this.address:
            if balanceOf[arg1][address(msg.sender)] < arg2:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            balanceOf[arg1][address(msg.sender)] -= arg2
            emit TransferSingle(arg1, arg2, msg.sender, msg.sender, 0);
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if balanceOf[arg1][address(msg.sender)] < arg2:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            balanceOf[arg1][address(msg.sender)] -= arg2
            emit TransferSingle(arg1, arg2, mem[calldata.size + 108 len 20], msg.sender, 0);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 'ERC1155: burn from the zero address'
        if msg.sender != this.address:
            if balanceOf[arg1][address(mem[calldata.size + 96])] < arg2:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            balanceOf[arg1][address(mem[calldata.size + 96])] -= arg2
            emit TransferSingle(arg1, arg2, msg.sender, mem[calldata.size + 108 len 20], 0);
        else:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            mem[(2 * ceil32(calldata.size)) + 192] = arg1
            mem[(2 * ceil32(calldata.size)) + 224] = 1
            mem[(2 * ceil32(calldata.size)) + 256] = arg2
            mem[(2 * ceil32(calldata.size)) + 288] = 0
            if balanceOf[arg1][address(mem[calldata.size + 96])] < arg2:
                revert with 0, 'ERC1155: burn amount exceeds balance'
            balanceOf[arg1][address(mem[calldata.size + 96])] -= arg2
            mem[(2 * ceil32(calldata.size)) + 320] = arg1
            mem[(2 * ceil32(calldata.size)) + 352] = arg2
            emit TransferSingle(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20], mem[calldata.size + 108 len 20], 0);
}

function balanceOfBatch(address[] arg1, uint256[] arg2) {
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

function renounceOwnership() {
    if msg.sender != this.address:
        if uint8(roleAdmin[0][address(msg.sender)].field_0):
            owner = 0
            emit OwnershipTransferred(owner, 0);
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
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
        owner = 0
        emit OwnershipTransferred(owner, 0);
    mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = mem[calldata.size + 108 len 20]
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if mem[calldata.size + 108 len 20] + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                0
}

function executeMetaTransaction(address arg1, bytes arg2, bytes32 arg3, bytes32 arg4, uint8 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg5 == arg5
    if not arg1:
        revert with 0, 'NativeMetaTransaction: INVALID_SIGNER'
    signer = erecover(sha3(0, domainSeperator, sha3(sha3(0xfe4d6574615472616e73616374696f6e2875696e74323536206e6f6e63652c616464726573732066726f6d2c62797465732066756e6374696f6e5369676e6174757265), nonce[address(arg1)].field_0, address(arg1), sha3(arg2[all]))), arg5 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if arg1 != address(signer):
        revert with 0, 'Signer and signature do not match'
    if nonce[address(arg1)].field_0 > -2:
        revert with 0, 17
    nonce[address(arg1)].field_0++
    mem[ceil32(ceil32(arg2.length)) + 675] = 96
    mem[ceil32(ceil32(arg2.length)) + 707] = arg2.length
    mem[ceil32(ceil32(arg2.length)) + 739 len ceil32(arg2.length)] = arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, 0, nonce[address(arg1)].field_-(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256)
    if ceil32(arg2.length) > arg2.length:
        mem[arg2.length + ceil32(ceil32(arg2.length)) + 739] = 0
    emit MetaTransactionExecuted(address(arg1), msg.sender, Array(len=arg2.length, data=arg2[all]));
    mem[arg2.length + ceil32(ceil32(arg2.length)) + 663 len floor32(arg2.length + 51)] = Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], Mask(8 * ceil32(arg2.length) - arg2.length, 0, nonce[address(arg1)].field_-(8 * ceil32(arg2.length) + -ceil32(ceil32(arg2.length)) + 31) + 256)) << (8 * ceil32(arg2.length)) - 256, Mask((8 * -ceil32(arg2.length) + arg2.length + 32) - 96, 0, arg1) << 96, mem[ceil32(ceil32(arg2.length)) + arg2.length + 675 len floor32(arg2.length + 51) + -arg2.length - 32]
    if floor32(arg2.length + 51) > arg2.length + 20:
        mem[(2 * arg2.length) + ceil32(ceil32(arg2.length)) + 683] = 0
    call this.address.mem[arg2.length + ceil32(ceil32(arg2.length)) + 663 len 4] with:
         gas gas_remaining wei
        args mem[arg2.length + ceil32(ceil32(arg2.length)) + 667 len arg2.length + 16]
    if not ext_call.success:
        revert with 0, 'Function call not successful'
    if not return_data.size:
        return Array(len=arg2.length, data=arg2[all])
    return Array(len=return_data.size, data=ext_call.return_data[0 len return_data.size])
}

function sub_fcb440b6(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if msg.sender != this.address:
        if uint8(roleAdmin[0][address(msg.sender)].field_0):
            if sub_7c638212:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Auto-approved addresses are locked'
            sub_7c638212 = uint8(bool(arg1))
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
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
        if sub_7c638212:
            revert with 0, 'Auto-approved addresses are locked'
        sub_7c638212 = uint8(bool(arg1))
    mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = mem[calldata.size + 108 len 20]
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if mem[calldata.size + 108 len 20] + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        if uint8(roleAdmin[0][address(msg.sender)].field_0):
            if not arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
            owner = arg1
            emit OwnershipTransferred(owner, arg1);
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
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
        if not arg1:
            revert with 0, 'Ownable: new owner is the zero address'
        owner = arg1
        emit OwnershipTransferred(owner, arg1);
    mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = mem[calldata.size + 108 len 20]
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if mem[calldata.size + 108 len 20] + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                0
}

function sub_64c58994(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    if msg.sender != this.address:
        if uint8(roleAdmin[0][address(msg.sender)].field_0):
            if sub_7c638212:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Auto-approved addresses are locked'
            stor6[address(arg1)] = uint8(bool(arg2))
            emit 0xf945d041: address(arg1), bool(arg2)
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
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
        if sub_7c638212:
            revert with 0, 'Auto-approved addresses are locked'
        stor6[address(arg1)] = uint8(bool(arg2))
        emit 0xf945d041: address(arg1), bool(arg2)
    mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = mem[calldata.size + 108 len 20]
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if mem[calldata.size + 108 len 20] + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                0
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if msg.sender != this.address:
        if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
            if uint8(roleAdmin[arg1][address(arg2)].field_0):
                uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
                if msg.sender != this.address:
                    emit RoleRevoked(arg1, arg2, msg.sender);
                else:
                    mem[96] = calldata.size
                    mem[128 len calldata.size] = call.data[0 len calldata.size]
                    emit RoleRevoked(arg1, arg2, mem[calldata.size + 108 len 20]);
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
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(mem[calldata.size + 96])].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
    mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = mem[calldata.size + 108 len 20]
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if mem[calldata.size + 108 len 20] + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if msg.sender != this.address:
        if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
            if not uint8(roleAdmin[arg1][address(arg2)].field_0):
                uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
                if msg.sender != this.address:
                    emit RoleGranted(arg1, arg2, msg.sender);
                else:
                    mem[96] = calldata.size
                    mem[128 len calldata.size] = call.data[0 len calldata.size]
                    emit RoleGranted(arg1, arg2, mem[calldata.size + 108 len 20]);
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
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(mem[calldata.size + 96])].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
            if msg.sender != this.address:
                emit RoleGranted(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleGranted(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
    mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = mem[calldata.size + 108 len 20]
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if mem[calldata.size + 108 len 20] + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
    idx = 65
    s = roleAdmin[arg1].field_256
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if roleAdmin[arg1].field_256 + 16384:
        revert with 0, 'Strings: hex length insufficient'
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                0
}

function name() {
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor16.length):
            if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor16.length):
                if 31 < uint255(stor16.length) * 0.5:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor16.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor16.length.field_8)
        else:
            if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor16.length.field_1 % 128:
                if 31 < stor16.length.field_1 % 128:
                    mem[128] = uint256(stor16.field_0)
                    idx = 128
                    s = 0
                    while stor16.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor16[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor16.length.field_8)
        mem[ceil32(uint255(stor16.length) * 0.5) + 192 len ceil32(uint255(stor16.length) * 0.5)] = mem[128 len ceil32(uint255(stor16.length) * 0.5)]
        if ceil32(uint255(stor16.length) * 0.5) > uint255(stor16.length) * 0.5:
            mem[(uint255(stor16.length) * 0.5) + ceil32(uint255(stor16.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor16.length), data=mem[128 len ceil32(uint255(stor16.length) * 0.5)], mem[(2 * ceil32(uint255(stor16.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor16.length) * 0.5)]), 
    if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor16.length):
        if bool(stor16.length) == uint255(stor16.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor16.length):
            if 31 < uint255(stor16.length) * 0.5:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while (uint255(stor16.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor16.length.field_8)
    else:
        if bool(stor16.length) == stor16.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor16.length.field_1 % 128:
            if 31 < stor16.length.field_1 % 128:
                mem[128] = uint256(stor16.field_0)
                idx = 128
                s = 0
                while stor16.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor16[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor16.length.field_8)
    mem[ceil32(stor16.length.field_1 % 128) + 192 len ceil32(stor16.length.field_1 % 128)] = mem[128 len ceil32(stor16.length.field_1 % 128)]
    if ceil32(stor16.length.field_1 % 128) > stor16.length.field_1 % 128:
        mem[stor16.length.field_1 % 128 + ceil32(stor16.length.field_1 % 128) + 192] = 0
    return Array(len=stor16.length % 128, data=mem[128 len ceil32(stor16.length.field_1 % 128)], mem[(2 * ceil32(stor16.length.field_1 % 128)) + 192 len 2 * ceil32(stor16.length.field_1 % 128)]), 
}

function symbol() {
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor17.length):
            if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor17.length):
                if 31 < uint255(stor17.length) * 0.5:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor17.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor17.length.field_8)
        else:
            if bool(stor17.length) == stor17.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor17.length.field_1 % 128:
                if 31 < stor17.length.field_1 % 128:
                    mem[128] = uint256(stor17.field_0)
                    idx = 128
                    s = 0
                    while stor17.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor17[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor17.length.field_8)
        mem[ceil32(uint255(stor17.length) * 0.5) + 192 len ceil32(uint255(stor17.length) * 0.5)] = mem[128 len ceil32(uint255(stor17.length) * 0.5)]
        if ceil32(uint255(stor17.length) * 0.5) > uint255(stor17.length) * 0.5:
            mem[(uint255(stor17.length) * 0.5) + ceil32(uint255(stor17.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor17.length), data=mem[128 len ceil32(uint255(stor17.length) * 0.5)], mem[(2 * ceil32(uint255(stor17.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor17.length) * 0.5)]), 
    if bool(stor17.length) == stor17.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor17.length):
        if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor17.length):
            if 31 < uint255(stor17.length) * 0.5:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while (uint255(stor17.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor17.length.field_8)
    else:
        if bool(stor17.length) == stor17.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor17.length.field_1 % 128:
            if 31 < stor17.length.field_1 % 128:
                mem[128] = uint256(stor17.field_0)
                idx = 128
                s = 0
                while stor17.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor17[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor17.length.field_8)
    mem[ceil32(stor17.length.field_1 % 128) + 192 len ceil32(stor17.length.field_1 % 128)] = mem[128 len ceil32(stor17.length.field_1 % 128)]
    if ceil32(stor17.length.field_1 % 128) > stor17.length.field_1 % 128:
        mem[stor17.length.field_1 % 128 + ceil32(stor17.length.field_1 % 128) + 192] = 0
    return Array(len=stor17.length % 128, data=mem[128 len ceil32(stor17.length.field_1 % 128)], mem[(2 * ceil32(stor17.length.field_1 % 128)) + 192 len 2 * ceil32(stor17.length.field_1 % 128)]), 
}

function contractURI() {
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor18.length):
                if 31 < uint255(stor18.length) * 0.5:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor18.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor18.length.field_8)
        else:
            if bool(stor18.length) == stor18.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor18.length.field_1 % 128:
                if 31 < stor18.length.field_1 % 128:
                    mem[128] = uint256(stor18.field_0)
                    idx = 128
                    s = 0
                    while stor18.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor18[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor18.length.field_8)
        mem[ceil32(uint255(stor18.length) * 0.5) + 192 len ceil32(uint255(stor18.length) * 0.5)] = mem[128 len ceil32(uint255(stor18.length) * 0.5)]
        if ceil32(uint255(stor18.length) * 0.5) > uint255(stor18.length) * 0.5:
            mem[(uint255(stor18.length) * 0.5) + ceil32(uint255(stor18.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor18.length), data=mem[128 len ceil32(uint255(stor18.length) * 0.5)], mem[(2 * ceil32(uint255(stor18.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor18.length) * 0.5)]), 
    if bool(stor18.length) == stor18.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor18.length):
        if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor18.length):
            if 31 < uint255(stor18.length) * 0.5:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while (uint255(stor18.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor18.length.field_8)
    else:
        if bool(stor18.length) == stor18.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor18.length.field_1 % 128:
            if 31 < stor18.length.field_1 % 128:
                mem[128] = uint256(stor18.field_0)
                idx = 128
                s = 0
                while stor18.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor18[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor18.length.field_8)
    mem[ceil32(stor18.length.field_1 % 128) + 192 len ceil32(stor18.length.field_1 % 128)] = mem[128 len ceil32(stor18.length.field_1 % 128)]
    if ceil32(stor18.length.field_1 % 128) > stor18.length.field_1 % 128:
        mem[stor18.length.field_1 % 128 + ceil32(stor18.length.field_1 % 128) + 192] = 0
    return Array(len=stor18.length % 128, data=mem[128 len ceil32(stor18.length.field_1 % 128)], mem[(2 * ceil32(stor18.length.field_1 % 128)) + 192 len 2 * ceil32(stor18.length.field_1 % 128)]), 
}

function uri(uint256 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor15[stor10[arg1]].field_0):
        if bool(stor15[stor10[arg1]].field_0) == uint255(stor15[stor10[arg1]].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15[stor10[arg1]].field_0):
            if bool(stor15[stor10[arg1]].field_0) == uint255(stor15[stor10[arg1]].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15[stor10[arg1]].field_0):
                if 31 < uint255(stor15[stor10[arg1]].field_0) * 0.5:
                    mem[128] = stor15[stor10[arg1]].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor15[stor10[arg1]].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[stor10[arg1]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15[stor10[arg1]].field_0), data=mem[128 len ceil32(uint255(stor15[stor10[arg1]].field_0) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor15[stor10[arg1]].field_8)
        else:
            if bool(stor15[stor10[arg1]].field_0) == stor15[stor10[arg1]].field_1 % 128 < 32:
                revert with 0, 34
            if stor15[stor10[arg1]].field_1 % 128:
                if 31 < stor15[stor10[arg1]].field_1 % 128:
                    mem[128] = stor15[stor10[arg1]].field_0
                    idx = 128
                    s = 0
                    while stor15[stor10[arg1]].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor15[stor10[arg1]][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15[stor10[arg1]].field_0), data=mem[128 len ceil32(uint255(stor15[stor10[arg1]].field_0) * 0.5)]), 
                mem[128] = 256 * Mask(248, 0, stor15[stor10[arg1]].field_8)
        mem[ceil32(uint255(stor15[stor10[arg1]].field_0) * 0.5) + 192 len ceil32(uint255(stor15[stor10[arg1]].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor15[stor10[arg1]].field_0) * 0.5)]
        if ceil32(uint255(stor15[stor10[arg1]].field_0) * 0.5) > uint255(stor15[stor10[arg1]].field_0) * 0.5:
            mem[(uint255(stor15[stor10[arg1]].field_0) * 0.5) + ceil32(uint255(stor15[stor10[arg1]].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15[stor10[arg1]].field_0), data=mem[128 len ceil32(uint255(stor15[stor10[arg1]].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor15[stor10[arg1]].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor15[stor10[arg1]].field_0) * 0.5)]), 
    if bool(stor15[stor10[arg1]].field_0) == stor15[stor10[arg1]].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor15[stor10[arg1]].field_0):
        if bool(stor15[stor10[arg1]].field_0) == uint255(stor15[stor10[arg1]].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15[stor10[arg1]].field_0):
            if 31 < uint255(stor15[stor10[arg1]].field_0) * 0.5:
                mem[128] = stor15[stor10[arg1]].field_0
                idx = 128
                s = 0
                while (uint255(stor15[stor10[arg1]].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[stor10[arg1]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[stor10[arg1]].field_0 % 128, data=mem[128 len ceil32(stor15[stor10[arg1]].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15[stor10[arg1]].field_8)
    else:
        if bool(stor15[stor10[arg1]].field_0) == stor15[stor10[arg1]].field_1 % 128 < 32:
            revert with 0, 34
        if stor15[stor10[arg1]].field_1 % 128:
            if 31 < stor15[stor10[arg1]].field_1 % 128:
                mem[128] = stor15[stor10[arg1]].field_0
                idx = 128
                s = 0
                while stor15[stor10[arg1]].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor15[stor10[arg1]][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15[stor10[arg1]].field_0 % 128, data=mem[128 len ceil32(stor15[stor10[arg1]].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15[stor10[arg1]].field_8)
    mem[ceil32(stor15[stor10[arg1]].field_1 % 128) + 192 len ceil32(stor15[stor10[arg1]].field_1 % 128)] = mem[128 len ceil32(stor15[stor10[arg1]].field_1 % 128)]
    if ceil32(stor15[stor10[arg1]].field_1 % 128) > stor15[stor10[arg1]].field_1 % 128:
        mem[stor15[stor10[arg1]].field_1 % 128 + ceil32(stor15[stor10[arg1]].field_1 % 128) + 192] = 0
    return Array(len=stor15[stor10[arg1]].field_0 % 128, data=mem[128 len ceil32(stor15[stor10[arg1]].field_1 % 128)], mem[(2 * ceil32(stor15[stor10[arg1]].field_1 % 128)) + 192 len 2 * ceil32(stor15[stor10[arg1]].field_1 % 128)]), 
}

function setContractURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if msg.sender != this.address:
        if uint8(roleAdmin[0][address(msg.sender)].field_0):
            if bool(stor18.length):
                if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                    revert with 0, 34
                if arg1.length:
                    stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor18.length = 0
                    idx = 0
                    while (uint255(stor18.length) * 0.5) + 31 / 32 > idx:
                        stor18[idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor18.length) == stor18.length.field_1 % 128 < 32:
                    revert with 0, 34
                if arg1.length:
                    stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor18.length = 0
                    idx = 0
                    while stor18.length.field_1 % 128 + 31 / 32 > idx:
                        stor18[idx].field_0 = 0
                        idx = idx + 1
                        continue 
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
    mem[ceil32(ceil32(arg1.length)) + 97] = calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
    if uint8(roleAdmin[0][address(mem[calldata.size + ceil32(ceil32(arg1.length)) + 97])].field_0):
        if bool(stor18.length):
            if bool(stor18.length) == uint255(stor18.length) * 0.5 < 32:
                revert with 0, 34
            if arg1.length:
                stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor18.length = 0
                idx = 0
                while (uint255(stor18.length) * 0.5) + 31 / 32 > idx:
                    stor18[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor18.length) == stor18.length.field_1 % 128 < 32:
                revert with 0, 34
            if arg1.length:
                stor18[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor18.length = 0
                idx = 0
                while stor18.length.field_1 % 128 + 31 / 32 > idx:
                    stor18[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 161 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = mem[calldata.size + ceil32(ceil32(arg1.length)) + 109 len 20]
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if mem[calldata.size + ceil32(ceil32(arg1.length)) + 109 len 20] + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 257 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 193 len 42], 8297, mem[ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 321 len 66], 0, 0 >> 928,
                0
}

function sub_a582e8f8(?) {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if msg.sender != this.address:
        if uint8(roleAdmin[0][address(msg.sender)].field_0):
            if bool(stor15[arg1].field_0):
                if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_0) * 0.5 < 32:
                    revert with 0, 34
                if arg2.length:
                    stor15[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor15[arg1].field_0 = 0
                    idx = 0
                    while (uint255(stor15[arg1].field_0) * 0.5) + 31 / 32 > idx:
                        stor15[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
                    revert with 0, 34
                if arg2.length:
                    stor15[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor15[arg1].field_0 = 0
                    idx = 0
                    while stor15[arg1].field_1 % 128 + 31 / 32 > idx:
                        stor15[arg1][idx].field_0 = 0
                        idx = idx + 1
                        continue 
        mem[ceil32(ceil32(arg2.length)) + 129 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(ceil32(arg2.length)) + 225 len 66] = call.data[calldata.size len 66]
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(ceil32(arg2.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg2.length)) + 289 len 66], 0, 0 >> 928,
                    0
    mem[ceil32(ceil32(arg2.length)) + 97] = calldata.size
    mem[ceil32(ceil32(arg2.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
    if uint8(roleAdmin[0][address(mem[calldata.size + ceil32(ceil32(arg2.length)) + 97])].field_0):
        if bool(stor15[arg1].field_0):
            if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if arg2.length:
                stor15[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor15[arg1].field_0 = 0
                idx = 0
                while (uint255(stor15[arg1].field_0) * 0.5) + 31 / 32 > idx:
                    stor15[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if arg2.length:
                stor15[arg1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor15[arg1].field_0 = 0
                idx = 0
                while stor15[arg1].field_1 % 128 + 31 / 32 > idx:
                    stor15[arg1][idx].field_0 = 0
                    idx = idx + 1
                    continue 
    mem[ceil32(ceil32(arg2.length)) + ceil32(calldata.size) + 161 len 42] = call.data[calldata.size len 42]
    idx = 41
    s = mem[calldata.size + ceil32(ceil32(arg2.length)) + 109 len 20]
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= 42:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(calldata.size) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if mem[calldata.size + ceil32(ceil32(arg2.length)) + 109 len 20] + 10240:
        revert with 0, 'Strings: hex length insufficient'
    mem[ceil32(ceil32(arg2.length)) + ceil32(calldata.size) + 257 len 66] = call.data[calldata.size len 66]
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 0, 50
        mem[idx + ceil32(ceil32(arg2.length)) + ceil32(calldata.size) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    revert with 0, 
                32,
                148,
                'AccessControl: account ', mem[ceil32(ceil32(arg2.length)) + ceil32(calldata.size) + 193 len 42], 8297, mem[ceil32(ceil32(arg2.length)) + ceil32(calldata.size) + 321 len 66], 0, 0 >> 928,
                0
}

function burn(uint256 arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 == arg2
    if bool(stor11[stor10[arg1]]) != 1:
        revert with 0, 'Type of token must be burnable'
    if msg.sender != this.address:
        if arg2 == msg.sender:
            if not arg2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
            if msg.sender != this.address:
                if balanceOf[arg1][address(arg2)] < arg3:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                balanceOf[arg1][address(arg2)] -= arg3
                emit TransferSingle(arg1, arg3, msg.sender, arg2, 0);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                if balanceOf[arg1][address(arg2)] < arg3:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                balanceOf[arg1][address(arg2)] -= arg3
                emit TransferSingle(arg1, arg3, mem[calldata.size + 108 len 20], arg2, 0);
        else:
            if msg.sender != this.address:
                if not stor1[address(arg2)][address(msg.sender)]:
                    if bool(stor6[address(msg.sender)]) != 1:
                        revert with 0, 'Caller is not owner nor approved'
                if not arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC1155: burn from the zero address'
                if msg.sender != this.address:
                    if balanceOf[arg1][address(arg2)] < arg3:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    balanceOf[arg1][address(arg2)] -= arg3
                    emit TransferSingle(arg1, arg3, msg.sender, arg2, 0);
                else:
                    mem[96] = calldata.size
                    mem[128 len calldata.size] = call.data[0 len calldata.size]
                    if balanceOf[arg1][address(arg2)] < arg3:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    balanceOf[arg1][address(arg2)] -= arg3
                    emit TransferSingle(arg1, arg3, mem[calldata.size + 108 len 20], arg2, 0);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                if not stor1[address(arg2)][address(mem[calldata.size + 96])]:
                    if bool(stor6[address(mem[calldata.size + 96])]) != 1:
                        revert with 0, 'Caller is not owner nor approved'
                if not arg2:
                    revert with 0, 'ERC1155: burn from the zero address'
                if msg.sender != this.address:
                    if balanceOf[arg1][address(arg2)] < arg3:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    balanceOf[arg1][address(arg2)] -= arg3
                    emit TransferSingle(arg1, arg3, msg.sender, arg2, 0);
                else:
                    mem[ceil32(calldata.size) + 128] = calldata.size
                    mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                    mem[(2 * ceil32(calldata.size)) + 192] = arg1
                    mem[(2 * ceil32(calldata.size)) + 224] = 1
                    mem[(2 * ceil32(calldata.size)) + 256] = arg3
                    mem[(2 * ceil32(calldata.size)) + 288] = 0
                    if balanceOf[arg1][address(arg2)] < arg3:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    balanceOf[arg1][address(arg2)] -= arg3
                    mem[(2 * ceil32(calldata.size)) + 320] = arg1
                    mem[(2 * ceil32(calldata.size)) + 352] = arg3
                    emit TransferSingle(arg1, arg3, mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg2, 0);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if arg2 == mem[calldata.size + 108 len 20]:
            if not arg2:
                revert with 0, 'ERC1155: burn from the zero address'
            if msg.sender != this.address:
                if balanceOf[arg1][address(arg2)] < arg3:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                balanceOf[arg1][address(arg2)] -= arg3
                emit TransferSingle(arg1, arg3, msg.sender, arg2, 0);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                mem[(2 * ceil32(calldata.size)) + 192] = arg1
                mem[(2 * ceil32(calldata.size)) + 224] = 1
                mem[(2 * ceil32(calldata.size)) + 256] = arg3
                mem[(2 * ceil32(calldata.size)) + 288] = 0
                if balanceOf[arg1][address(arg2)] < arg3:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                balanceOf[arg1][address(arg2)] -= arg3
                mem[(2 * ceil32(calldata.size)) + 320] = arg1
                mem[(2 * ceil32(calldata.size)) + 352] = arg3
                emit TransferSingle(arg1, arg3, mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg2, 0);
        else:
            if this.address == msg.sender:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                if not stor1[address(arg2)][address(mem[calldata.size + ceil32(calldata.size) + 128])]:
                    if bool(stor6[address(mem[calldata.size + ceil32(calldata.size) + 128])]) != 1:
                        revert with 0, 'Caller is not owner nor approved'
                if not arg2:
                    revert with 0, 'ERC1155: burn from the zero address'
                if msg.sender != this.address:
                    if balanceOf[arg1][address(arg2)] < arg3:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    balanceOf[arg1][address(arg2)] -= arg3
                    emit TransferSingle(arg1, arg3, msg.sender, arg2, 0);
                else:
                    mem[(2 * ceil32(calldata.size)) + 160] = calldata.size
                    mem[(2 * ceil32(calldata.size)) + 192 len calldata.size] = call.data[0 len calldata.size]
                    if balanceOf[arg1][address(arg2)] < arg3:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    balanceOf[arg1][address(arg2)] -= arg3
                    mem[(4 * ceil32(calldata.size)) + 352] = arg1
                    mem[(4 * ceil32(calldata.size)) + 384] = arg3
                    emit TransferSingle(arg1, arg3, mem[calldata.size + (2 * ceil32(calldata.size)) + 172 len 20], arg2, 0);
            else:
                if not stor1[address(arg2)][address(msg.sender)]:
                    if bool(stor6[address(msg.sender)]) != 1:
                        revert with 0, 'Caller is not owner nor approved'
                if not arg2:
                    revert with 0, 'ERC1155: burn from the zero address'
                if msg.sender != this.address:
                    if balanceOf[arg1][address(arg2)] < arg3:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    balanceOf[arg1][address(arg2)] -= arg3
                    emit TransferSingle(arg1, arg3, msg.sender, arg2, 0);
                else:
                    mem[ceil32(calldata.size) + 128] = calldata.size
                    mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                    mem[(2 * ceil32(calldata.size)) + 192] = arg1
                    mem[(2 * ceil32(calldata.size)) + 224] = 1
                    mem[(2 * ceil32(calldata.size)) + 256] = arg3
                    mem[(2 * ceil32(calldata.size)) + 288] = 0
                    if balanceOf[arg1][address(arg2)] < arg3:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    balanceOf[arg1][address(arg2)] -= arg3
                    mem[(2 * ceil32(calldata.size)) + 320] = arg1
                    mem[(2 * ceil32(calldata.size)) + 352] = arg3
                    emit TransferSingle(arg1, arg3, mem[calldata.size + ceil32(calldata.size) + 140 len 20], arg2, 0);
}

function withdrawBatch(uint256[] arg1, uint256[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    if msg.sender != this.address:
        mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        mem[(32 * arg1.length) + 128] = arg2.length
        mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        if not msg.sender:
            revert with 0, 'ERC1155: burn from the zero address'
        if arg1.length != arg2.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        if msg.sender != this.address:
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = 0
            idx = 0
            while idx < arg1.length:
                if idx >= arg1.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] < mem[(32 * idx) + (32 * arg1.length) + 160]:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(32 * arg2.length) + (32 * arg1.length) + 192] = 64
            mem[(32 * arg2.length) + (32 * arg1.length) + 256] = arg1.length
            mem[(32 * arg2.length) + (32 * arg1.length) + 288 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[(32 * arg2.length) + (32 * arg1.length) + 224] = (32 * arg1.length) + 96
            mem[(32 * arg2.length) + (64 * arg1.length) + 288] = arg2.length
            mem[(32 * arg2.length) + (64 * arg1.length) + 320 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                               mem[(32 * arg2.length) + (32 * arg1.length) + 192 len (96 * arg2.length) + (96 * arg1.length) + 128],
                               msg.sender,
                               msg.sender,
                               0,
        else:
            mem[(32 * arg2.length) + (32 * arg1.length) + 160] = calldata.size
            mem[(32 * arg2.length) + (32 * arg1.length) + 192 len calldata.size] = call.data[0 len calldata.size]
            mem[(32 * arg2.length) + (32 * arg1.length) + calldata.size + 192] = 0
            mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(calldata.size) + 192] = 0
            idx = 0
            while idx < arg1.length:
                if idx >= arg1.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] < mem[(32 * idx) + (32 * arg1.length) + 160]:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                mem[0] = msg.sender
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                balanceOf[mem[(32 * idx) + 128]][address(msg.sender)] -= mem[(32 * idx) + (32 * arg1.length) + 160]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(calldata.size) + 224] = 64
            mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(calldata.size) + 288] = arg1.length
            mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(calldata.size) + 320 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(calldata.size) + 256] = (32 * arg1.length) + 96
            mem[(32 * arg2.length) + (64 * arg1.length) + ceil32(calldata.size) + 320] = arg2.length
            mem[(32 * arg2.length) + (64 * arg1.length) + ceil32(calldata.size) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                               mem[(32 * arg2.length) + (32 * arg1.length) + ceil32(calldata.size) + 224 len (96 * arg2.length) + (96 * arg1.length) + 128],
                               mem[calldata.size + (32 * arg2.length) + (32 * arg1.length) + 172 len 20],
                               msg.sender,
                               0,
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(calldata.size) + 160 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
        mem[ceil32(calldata.size) + (32 * arg1.length) + 160] = arg2.length
        mem[ceil32(calldata.size) + (32 * arg1.length) + 192 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
        if not mem[calldata.size + 108 len 20]:
            revert with 0, 'ERC1155: burn from the zero address'
        if arg1.length != arg2.length:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        if msg.sender != this.address:
            mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 192] = 0
            idx = 0
            while idx < arg1.length:
                if idx >= arg1.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(mem[calldata.size + 96])] < mem[(32 * idx) + ceil32(calldata.size) + (32 * arg1.length) + 192]:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                mem[0] = mem[calldata.size + 108 len 20]
                mem[32] = sha3(mem[(32 * idx) + ceil32(calldata.size) + 160], 0)
                balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(mem[calldata.size + 96])] -= mem[(32 * idx) + ceil32(calldata.size) + (32 * arg1.length) + 192]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 224] = 64
            mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 288] = arg1.length
            mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 320 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 256] = (32 * arg1.length) + 96
            mem[(32 * arg2.length) + ceil32(calldata.size) + (64 * arg1.length) + 320] = arg2.length
            mem[(32 * arg2.length) + ceil32(calldata.size) + (64 * arg1.length) + 352 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                               mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 224 len (96 * arg2.length) + (96 * arg1.length) + 128],
                               msg.sender,
                               mem[calldata.size + 108 len 20],
                               0,
        else:
            mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 192] = calldata.size
            mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 224 len calldata.size] = call.data[0 len calldata.size]
            mem[(32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + calldata.size + 224] = 0
            mem[(32 * arg2.length) + (2 * ceil32(calldata.size)) + (32 * arg1.length) + 224] = 0
            idx = 0
            while idx < arg1.length:
                if idx >= arg1.length:
                    revert with 0, 50
                if idx >= arg2.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(mem[calldata.size + 96])] < mem[(32 * idx) + ceil32(calldata.size) + (32 * arg1.length) + 192]:
                    revert with 0, 'ERC1155: burn amount exceeds balance'
                mem[0] = mem[calldata.size + 108 len 20]
                mem[32] = sha3(mem[(32 * idx) + ceil32(calldata.size) + 160], 0)
                balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(mem[calldata.size + 96])] -= mem[(32 * idx) + ceil32(calldata.size) + (32 * arg1.length) + 192]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[(32 * arg2.length) + (2 * ceil32(calldata.size)) + (32 * arg1.length) + 256] = 64
            mem[(32 * arg2.length) + (2 * ceil32(calldata.size)) + (32 * arg1.length) + 320] = arg1.length
            mem[(32 * arg2.length) + (2 * ceil32(calldata.size)) + (32 * arg1.length) + 352 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
            mem[(32 * arg2.length) + (2 * ceil32(calldata.size)) + (32 * arg1.length) + 288] = (32 * arg1.length) + 96
            mem[(32 * arg2.length) + (2 * ceil32(calldata.size)) + (64 * arg1.length) + 352] = arg2.length
            mem[(32 * arg2.length) + (2 * ceil32(calldata.size)) + (64 * arg1.length) + 384 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
            emit TransferBatch(address rg1, address rg2, address rg3, uint256[] rg4, uint256[] rg5):
                               mem[(32 * arg2.length) + (2 * ceil32(calldata.size)) + (32 * arg1.length) + 256 len (96 * arg2.length) + (96 * arg1.length) + 128],
                               mem[calldata.size + (32 * arg2.length) + ceil32(calldata.size) + (32 * arg1.length) + 204 len 20],
                               mem[calldata.size + 108 len 20],
                               0,
}

function sub_1f55a2bc(?) {
    require calldata.size - 4 >= 160
    require arg3 == bool(arg3)
    require arg4 == bool(arg4)
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if msg.sender != this.address:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            mem[ceil32(ceil32(arg5.length)) + 129 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg5.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(ceil32(arg5.length)) + 225 len 66] = call.data[calldata.size len 66]
            idx = 65
            while idx > 1:
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg5.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                continue 
            revert with 0, 
                        32,
                        148,
                        'AccessControl: account ', mem[ceil32(ceil32(arg5.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg5.length)) + 289 len 66], 0, 0 >> 928,
                        0
        if msg.sender != this.address:
            if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                mem[ceil32(ceil32(arg5.length)) + 129 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + ceil32(ceil32(arg5.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if msg.sender + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[ceil32(ceil32(arg5.length)) + 225 len 66] = call.data[calldata.size len 66]
                idx = 65
                while idx > 1:
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + ceil32(ceil32(arg5.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                revert with 0, 
                            32,
                            148,
                            'AccessControl: account ', mem[ceil32(ceil32(arg5.length)) + 161 len 42], 8297, mem[ceil32(ceil32(arg5.length)) + 289 len 66], 0, 0 >> 928,
                            0
        else:
            mem[ceil32(ceil32(arg5.length)) + 97] = calldata.size
            mem[ceil32(ceil32(arg5.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
            if not uint8(roleAdmin[0][address(mem[calldata.size + ceil32(ceil32(arg5.length)) + 97])].field_0):
                mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 161 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = mem[calldata.size + ceil32(ceil32(arg5.length)) + 109 len 20]
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if mem[calldata.size + ceil32(ceil32(arg5.length)) + 109 len 20] + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 257 len 66] = call.data[calldata.size len 66]
                idx = 65
                while idx > 1:
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                revert with 0, 
                            32,
                            148,
                            'AccessControl: account ', mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 193 len 42], 8297, mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 321 len 66], 0, 0 >> 928,
                            0
    else:
        mem[ceil32(ceil32(arg5.length)) + 97] = calldata.size
        mem[ceil32(ceil32(arg5.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
        if not uint8(roleAdmin[0][address(mem[calldata.size + ceil32(ceil32(arg5.length)) + 97])].field_0):
            mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 161 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = mem[calldata.size + ceil32(ceil32(arg5.length)) + 109 len 20]
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if mem[calldata.size + ceil32(ceil32(arg5.length)) + 109 len 20] + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 257 len 66] = call.data[calldata.size len 66]
            idx = 65
            while idx > 1:
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                continue 
            revert with 0, 
                        32,
                        148,
                        'AccessControl: account ', mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 193 len 42], 8297, mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 321 len 66], 0, 0 >> 928,
                        0
        if msg.sender != this.address:
            if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 161 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 161 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if msg.sender + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 257 len 66] = call.data[calldata.size len 66]
                idx = 65
                while idx > 1:
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 257 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                revert with 0, 
                            32,
                            148,
                            'AccessControl: account ', mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 193 len 42], 8297, mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 321 len 66], 0, 0 >> 928,
                            0
        else:
            mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 129] = calldata.size
            mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 161 len calldata.size] = call.data[0 len calldata.size]
            _11 = mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 129]
            if not uint8(roleAdmin[0][address(mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 129])].field_0):
                mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 193 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 141 len 20]
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 193 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if address(_11) + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 289 len 66] = call.data[calldata.size len 66]
                idx = 65
                while idx > 1:
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 289 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                revert with 0, 
                            32,
                            148,
                            'AccessControl: account ', mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 225 len 42], 8297, mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 353 len 66], 0, 0 >> 928,
                            0
    if stor13[arg1]:
        revert with 0, 'Supplied typeId is already used'
    if arg2 <= 0:
        revert with 0, 'max supply must be > 0'
    sub_fc86b662[arg1] = arg2
    stor12[arg1] = uint8(bool(arg3))
    stor11[arg1] = uint8(bool(arg4))
    stor13[arg1] = 1
    if arg3:
        sub_0f699e80[arg1] = arg1
    if bool(stor15[arg1].field_0):
        if bool(stor15[arg1].field_0) == uint255(stor15[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if arg5.length:
            stor15[arg1][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor15[arg1].field_0 = 0
            idx = 0
            while (uint255(stor15[arg1].field_0) * 0.5) + 31 / 32 > idx:
                stor15[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if bool(stor15[arg1].field_0) == stor15[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if arg5.length:
            stor15[arg1][].field_0 = Array(len=arg5.length, data=arg5[all])
        else:
            stor15[arg1].field_0 = 0
            idx = 0
            while stor15[arg1].field_1 % 128 + 31 / 32 > idx:
                stor15[arg1][idx].field_0 = 0
                idx = idx + 1
                continue 
    emit 0xdd645363: arg1, arg2, bool(arg3), bool(arg4), Array(len=arg5.length, data=arg5[all])
}

function sub_f807393a(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if msg.sender != this.address:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
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
        if msg.sender != this.address:
            if not uint8(roleAdmin[0][address(msg.sender)].field_0):
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
            require arg1 > 0
            if arg3 <= 0:
                revert with 0, 'Amount should be > 0'
            if sub_79920951[arg1] > !arg3:
                revert with 0, 17
            if sub_79920951[arg1] + arg3 > sub_fc86b662[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Minting would exceed the max number of items for given type'
            if bool(stor12[arg1]) != 1:
                revert with 0, 'typeId is not fungible.'
            if sub_79920951[arg1] > !arg3:
                revert with 0, 17
            sub_79920951[arg1] += arg3
            if not address(arg2):
                revert with 0, 'ERC1155: mint to the zero address'
            if msg.sender != this.address:
                if balanceOf[arg1][address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[arg1][address(arg2)] += arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, address(arg2));
                if ext_code.size(address(arg2)):
                    require ext_code.size(address(arg2))
                    call address(arg2).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg1, arg3, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[128] = calldata.size
                mem[160 len calldata.size] = call.data[0 len calldata.size]
                if balanceOf[arg1][address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[arg1][address(arg2)] += arg3
                emit TransferSingle(arg1, arg3, mem[calldata.size + 140 len 20], 0, address(arg2));
                if ext_code.size(address(arg2)):
                    require ext_code.size(address(arg2))
                    call address(arg2).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args mem[calldata.size + 140 len 20], 0, arg1, arg3, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if not uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
                mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = mem[calldata.size + 108 len 20]
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if mem[calldata.size + 108 len 20] + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
                idx = 65
                while idx > 1:
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                revert with 0, 
                            32,
                            148,
                            'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                            0
            require arg1 > 0
            if arg3 <= 0:
                revert with 0, 'Amount should be > 0'
            if sub_79920951[arg1] > !arg3:
                revert with 0, 17
            if sub_79920951[arg1] + arg3 > sub_fc86b662[arg1]:
                revert with 0, 'Minting would exceed the max number of items for given type'
            if bool(stor12[arg1]) != 1:
                revert with 0, 'typeId is not fungible.'
            if sub_79920951[arg1] > !arg3:
                revert with 0, 17
            sub_79920951[arg1] += arg3
            if not address(arg2):
                revert with 0, 'ERC1155: mint to the zero address'
            if msg.sender != this.address:
                if balanceOf[arg1][address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[arg1][address(arg2)] += arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, address(arg2));
                if ext_code.size(address(arg2)):
                    require ext_code.size(address(arg2))
                    call address(arg2).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg1, arg3, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                mem[(2 * ceil32(calldata.size)) + 224] = arg1
                mem[(2 * ceil32(calldata.size)) + 256] = 1
                mem[(2 * ceil32(calldata.size)) + 288] = arg3
                if balanceOf[arg1][address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[arg1][address(arg2)] += arg3
                mem[(2 * ceil32(calldata.size)) + 320] = arg1
                mem[(2 * ceil32(calldata.size)) + 352] = arg3
                emit TransferSingle(arg1, arg3, mem[calldata.size + ceil32(calldata.size) + 172 len 20], 0, address(arg2));
                if ext_code.size(address(arg2)):
                    mem[(2 * ceil32(calldata.size)) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(calldata.size)) + 324] = mem[calldata.size + ceil32(calldata.size) + 172 len 20]
                    mem[(2 * ceil32(calldata.size)) + 356] = 0
                    mem[(2 * ceil32(calldata.size)) + 388] = arg1
                    mem[(2 * ceil32(calldata.size)) + 420] = arg3
                    mem[(2 * ceil32(calldata.size)) + 452] = 160
                    mem[(2 * ceil32(calldata.size)) + 484] = 0
                    mem[(2 * ceil32(calldata.size)) + 516 len 0] = None
                    require ext_code.size(address(arg2))
                    call address(arg2).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args mem[calldata.size + ceil32(calldata.size) + 172 len 20], 0, arg1, arg3, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
            mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = mem[calldata.size + 108 len 20]
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if mem[calldata.size + 108 len 20] + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
            idx = 65
            while idx > 1:
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                continue 
            revert with 0, 
                        32,
                        148,
                        'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                        0
        if this.address == msg.sender:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            _10 = mem[calldata.size + ceil32(calldata.size) + 128]
            if not uint8(roleAdmin[0][address(mem[calldata.size + ceil32(calldata.size) + 128])].field_0):
                mem[(2 * ceil32(calldata.size)) + 192 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = mem[calldata.size + ceil32(calldata.size) + 140 len 20]
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + (2 * ceil32(calldata.size)) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if address(_10) + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[(2 * ceil32(calldata.size)) + 288 len 66] = call.data[calldata.size len 66]
                idx = 65
                while idx > 1:
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + (2 * ceil32(calldata.size)) + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                revert with 0, 
                            32,
                            148,
                            'AccessControl: account ', mem[(2 * ceil32(calldata.size)) + 224 len 42], 8297, mem[(2 * ceil32(calldata.size)) + 352 len 66], 0, 0 >> 928,
                            0
            require arg1 > 0
            if arg3 <= 0:
                revert with 0, 'Amount should be > 0'
            if sub_79920951[arg1] > !arg3:
                revert with 0, 17
            if sub_79920951[arg1] + arg3 > sub_fc86b662[arg1]:
                revert with 0, 'Minting would exceed the max number of items for given type'
            if bool(stor12[arg1]) != 1:
                revert with 0, 'typeId is not fungible.'
            if sub_79920951[arg1] > !arg3:
                revert with 0, 17
            sub_79920951[arg1] += arg3
            if not address(arg2):
                revert with 0, 'ERC1155: mint to the zero address'
            if msg.sender != this.address:
                if balanceOf[arg1][address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[arg1][address(arg2)] += arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, address(arg2));
                if ext_code.size(address(arg2)):
                    require ext_code.size(address(arg2))
                    call address(arg2).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg1, arg3, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[(2 * ceil32(calldata.size)) + 192] = calldata.size
                mem[(2 * ceil32(calldata.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
                if balanceOf[arg1][address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[arg1][address(arg2)] += arg3
                mem[(4 * ceil32(calldata.size)) + 384] = arg3
                emit TransferSingle(arg1, arg3, mem[calldata.size + (2 * ceil32(calldata.size)) + 204 len 20], 0, address(arg2));
                if ext_code.size(address(arg2)):
                    mem[(4 * ceil32(calldata.size)) + 388] = 0
                    mem[(4 * ceil32(calldata.size)) + 420] = arg1
                    mem[(4 * ceil32(calldata.size)) + 452] = arg3
                    mem[(4 * ceil32(calldata.size)) + 484] = 160
                    mem[(4 * ceil32(calldata.size)) + 516] = 0
                    mem[(4 * ceil32(calldata.size)) + 548 len 0] = None
                    require ext_code.size(address(arg2))
                    call address(arg2).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args mem[calldata.size + (2 * ceil32(calldata.size)) + 204 len 20], 0, arg1, arg3, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if msg.sender + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
                idx = 65
                while idx > 1:
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                revert with 0, 
                            32,
                            148,
                            'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                            0
            require arg1 > 0
            if arg3 <= 0:
                revert with 0, 'Amount should be > 0'
            if sub_79920951[arg1] > !arg3:
                revert with 0, 17
            if sub_79920951[arg1] + arg3 > sub_fc86b662[arg1]:
                revert with 0, 'Minting would exceed the max number of items for given type'
            if bool(stor12[arg1]) != 1:
                revert with 0, 'typeId is not fungible.'
            if sub_79920951[arg1] > !arg3:
                revert with 0, 17
            sub_79920951[arg1] += arg3
            if not address(arg2):
                revert with 0, 'ERC1155: mint to the zero address'
            if msg.sender != this.address:
                if balanceOf[arg1][address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[arg1][address(arg2)] += arg3
                emit TransferSingle(arg1, arg3, msg.sender, 0, address(arg2));
                if ext_code.size(address(arg2)):
                    require ext_code.size(address(arg2))
                    call address(arg2).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg1, arg3, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                mem[(2 * ceil32(calldata.size)) + 224] = arg1
                mem[(2 * ceil32(calldata.size)) + 256] = 1
                mem[(2 * ceil32(calldata.size)) + 288] = arg3
                if balanceOf[arg1][address(arg2)] > !arg3:
                    revert with 0, 17
                balanceOf[arg1][address(arg2)] += arg3
                mem[(2 * ceil32(calldata.size)) + 320] = arg1
                mem[(2 * ceil32(calldata.size)) + 352] = arg3
                emit TransferSingle(arg1, arg3, mem[calldata.size + ceil32(calldata.size) + 172 len 20], 0, address(arg2));
                if ext_code.size(address(arg2)):
                    mem[(2 * ceil32(calldata.size)) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(calldata.size)) + 324] = mem[calldata.size + ceil32(calldata.size) + 172 len 20]
                    mem[(2 * ceil32(calldata.size)) + 356] = 0
                    mem[(2 * ceil32(calldata.size)) + 388] = arg1
                    mem[(2 * ceil32(calldata.size)) + 420] = arg3
                    mem[(2 * ceil32(calldata.size)) + 452] = 160
                    mem[(2 * ceil32(calldata.size)) + 484] = 0
                    mem[(2 * ceil32(calldata.size)) + 516 len 0] = None
                    require ext_code.size(address(arg2))
                    call address(arg2).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args mem[calldata.size + ceil32(calldata.size) + 172 len 20], 0, arg1, arg3, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    emit 0x6a47e9a7: arg1, address(arg2), arg3
}

function sub_b88cbbd2(?) {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if msg.sender != this.address:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
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
        if msg.sender != this.address:
            if not uint8(roleAdmin[0][address(msg.sender)].field_0):
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
            require arg2 > 0
            if sub_79920951[arg1] > -2:
                revert with 0, 17
            if sub_79920951[arg1] + 1 > sub_fc86b662[arg1]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            'Minting would exceed the max number of items for given type'
            if stor13[arg2]:
                revert with 0, 'Supplied id is already used'
            if stor12[arg1]:
                revert with 0, 'Given type is fungible'
            stor13[arg2] = 1
            if sub_79920951[arg1] > -2:
                revert with 0, 17
            sub_79920951[arg1]++
            sub_0f699e80[arg2] = arg1
            mintNumber[arg2] = sub_79920951[arg1]
            if not address(arg3):
                revert with 0, 'ERC1155: mint to the zero address'
            if msg.sender != this.address:
                if balanceOf[arg2][address(arg3)] > -2:
                    revert with 0, 17
                balanceOf[arg2][address(arg3)]++
                emit TransferSingle(arg2, 1, msg.sender, 0, address(arg3));
                if ext_code.size(address(arg3)):
                    require ext_code.size(address(arg3))
                    call address(arg3).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg2, 1, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[128] = calldata.size
                mem[160 len calldata.size] = call.data[0 len calldata.size]
                if balanceOf[arg2][address(arg3)] > -2:
                    revert with 0, 17
                balanceOf[arg2][address(arg3)]++
                emit TransferSingle(arg2, 1, mem[calldata.size + 140 len 20], 0, address(arg3));
                if ext_code.size(address(arg3)):
                    require ext_code.size(address(arg3))
                    call address(arg3).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args mem[calldata.size + 140 len 20], 0, arg2, 1, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            mem[96] = calldata.size
            mem[128 len calldata.size] = call.data[0 len calldata.size]
            if not uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
                mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = mem[calldata.size + 108 len 20]
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if mem[calldata.size + 108 len 20] + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
                idx = 65
                while idx > 1:
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                revert with 0, 
                            32,
                            148,
                            'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                            0
            require arg2 > 0
            if sub_79920951[arg1] > -2:
                revert with 0, 17
            if sub_79920951[arg1] + 1 > sub_fc86b662[arg1]:
                revert with 0, 'Minting would exceed the max number of items for given type'
            if stor13[arg2]:
                revert with 0, 'Supplied id is already used'
            if stor12[arg1]:
                revert with 0, 'Given type is fungible'
            stor13[arg2] = 1
            if sub_79920951[arg1] > -2:
                revert with 0, 17
            sub_79920951[arg1]++
            sub_0f699e80[arg2] = arg1
            mintNumber[arg2] = sub_79920951[arg1]
            if not address(arg3):
                revert with 0, 'ERC1155: mint to the zero address'
            if msg.sender != this.address:
                if balanceOf[arg2][address(arg3)] > -2:
                    revert with 0, 17
                balanceOf[arg2][address(arg3)]++
                emit TransferSingle(arg2, 1, msg.sender, 0, address(arg3));
                if ext_code.size(address(arg3)):
                    require ext_code.size(address(arg3))
                    call address(arg3).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg2, 1, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                mem[(2 * ceil32(calldata.size)) + 224] = arg2
                mem[(2 * ceil32(calldata.size)) + 256] = 1
                mem[(2 * ceil32(calldata.size)) + 288] = 1
                if balanceOf[arg2][address(arg3)] > -2:
                    revert with 0, 17
                balanceOf[arg2][address(arg3)]++
                mem[(2 * ceil32(calldata.size)) + 320] = arg2
                mem[(2 * ceil32(calldata.size)) + 352] = 1
                emit TransferSingle(arg2, 1, mem[calldata.size + ceil32(calldata.size) + 172 len 20], 0, address(arg3));
                if ext_code.size(address(arg3)):
                    mem[(2 * ceil32(calldata.size)) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(calldata.size)) + 324] = mem[calldata.size + ceil32(calldata.size) + 172 len 20]
                    mem[(2 * ceil32(calldata.size)) + 356] = 0
                    mem[(2 * ceil32(calldata.size)) + 388] = arg2
                    mem[(2 * ceil32(calldata.size)) + 420] = 1
                    mem[(2 * ceil32(calldata.size)) + 452] = 160
                    mem[(2 * ceil32(calldata.size)) + 484] = 0
                    mem[(2 * ceil32(calldata.size)) + 516 len 0] = None
                    require ext_code.size(address(arg3))
                    call address(arg3).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args mem[calldata.size + ceil32(calldata.size) + 172 len 20], 0, arg2, 1, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
            mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = mem[calldata.size + 108 len 20]
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if mem[calldata.size + 108 len 20] + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
            idx = 65
            while idx > 1:
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                continue 
            revert with 0, 
                        32,
                        148,
                        'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                        0
        if this.address == msg.sender:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            _10 = mem[calldata.size + ceil32(calldata.size) + 128]
            if not uint8(roleAdmin[0][address(mem[calldata.size + ceil32(calldata.size) + 128])].field_0):
                mem[(2 * ceil32(calldata.size)) + 192 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = mem[calldata.size + ceil32(calldata.size) + 140 len 20]
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + (2 * ceil32(calldata.size)) + 192 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if address(_10) + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[(2 * ceil32(calldata.size)) + 288 len 66] = call.data[calldata.size len 66]
                idx = 65
                while idx > 1:
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + (2 * ceil32(calldata.size)) + 288 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                revert with 0, 
                            32,
                            148,
                            'AccessControl: account ', mem[(2 * ceil32(calldata.size)) + 224 len 42], 8297, mem[(2 * ceil32(calldata.size)) + 352 len 66], 0, 0 >> 928,
                            0
            require arg2 > 0
            if sub_79920951[arg1] > -2:
                revert with 0, 17
            if sub_79920951[arg1] + 1 > sub_fc86b662[arg1]:
                revert with 0, 'Minting would exceed the max number of items for given type'
            if stor13[arg2]:
                revert with 0, 'Supplied id is already used'
            if stor12[arg1]:
                revert with 0, 'Given type is fungible'
            stor13[arg2] = 1
            if sub_79920951[arg1] > -2:
                revert with 0, 17
            sub_79920951[arg1]++
            sub_0f699e80[arg2] = arg1
            mintNumber[arg2] = sub_79920951[arg1]
            if not address(arg3):
                revert with 0, 'ERC1155: mint to the zero address'
            if msg.sender != this.address:
                if balanceOf[arg2][address(arg3)] > -2:
                    revert with 0, 17
                balanceOf[arg2][address(arg3)]++
                emit TransferSingle(arg2, 1, msg.sender, 0, address(arg3));
                if ext_code.size(address(arg3)):
                    require ext_code.size(address(arg3))
                    call address(arg3).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg2, 1, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[(2 * ceil32(calldata.size)) + 192] = calldata.size
                mem[(2 * ceil32(calldata.size)) + 224 len calldata.size] = call.data[0 len calldata.size]
                if balanceOf[arg2][address(arg3)] > -2:
                    revert with 0, 17
                balanceOf[arg2][address(arg3)]++
                mem[(4 * ceil32(calldata.size)) + 384] = 1
                emit TransferSingle(arg2, 1, mem[calldata.size + (2 * ceil32(calldata.size)) + 204 len 20], 0, address(arg3));
                if ext_code.size(address(arg3)):
                    mem[(4 * ceil32(calldata.size)) + 388] = 0
                    mem[(4 * ceil32(calldata.size)) + 420] = arg2
                    mem[(4 * ceil32(calldata.size)) + 452] = 1
                    mem[(4 * ceil32(calldata.size)) + 484] = 160
                    mem[(4 * ceil32(calldata.size)) + 516] = 0
                    mem[(4 * ceil32(calldata.size)) + 548 len 0] = None
                    require ext_code.size(address(arg3))
                    call address(arg3).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args mem[calldata.size + (2 * ceil32(calldata.size)) + 204 len 20], 0, arg2, 1, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= 42:
                        revert with 0, 50
                    mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if msg.sender + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
                idx = 65
                while idx > 1:
                    if idx >= 66:
                        revert with 0, 50
                    mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                revert with 0, 
                            32,
                            148,
                            'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                            0
            require arg2 > 0
            if sub_79920951[arg1] > -2:
                revert with 0, 17
            if sub_79920951[arg1] + 1 > sub_fc86b662[arg1]:
                revert with 0, 'Minting would exceed the max number of items for given type'
            if stor13[arg2]:
                revert with 0, 'Supplied id is already used'
            if stor12[arg1]:
                revert with 0, 'Given type is fungible'
            stor13[arg2] = 1
            if sub_79920951[arg1] > -2:
                revert with 0, 17
            sub_79920951[arg1]++
            sub_0f699e80[arg2] = arg1
            mintNumber[arg2] = sub_79920951[arg1]
            if not address(arg3):
                revert with 0, 'ERC1155: mint to the zero address'
            if msg.sender != this.address:
                if balanceOf[arg2][address(arg3)] > -2:
                    revert with 0, 17
                balanceOf[arg2][address(arg3)]++
                emit TransferSingle(arg2, 1, msg.sender, 0, address(arg3));
                if ext_code.size(address(arg3)):
                    require ext_code.size(address(arg3))
                    call address(arg3).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, 0, arg2, 1, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[ceil32(calldata.size) + 160] = calldata.size
                mem[ceil32(calldata.size) + 192 len calldata.size] = call.data[0 len calldata.size]
                mem[(2 * ceil32(calldata.size)) + 224] = arg2
                mem[(2 * ceil32(calldata.size)) + 256] = 1
                mem[(2 * ceil32(calldata.size)) + 288] = 1
                if balanceOf[arg2][address(arg3)] > -2:
                    revert with 0, 17
                balanceOf[arg2][address(arg3)]++
                mem[(2 * ceil32(calldata.size)) + 320] = arg2
                mem[(2 * ceil32(calldata.size)) + 352] = 1
                emit TransferSingle(arg2, 1, mem[calldata.size + ceil32(calldata.size) + 172 len 20], 0, address(arg3));
                if ext_code.size(address(arg3)):
                    mem[(2 * ceil32(calldata.size)) + 320] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                    mem[(2 * ceil32(calldata.size)) + 324] = mem[calldata.size + ceil32(calldata.size) + 172 len 20]
                    mem[(2 * ceil32(calldata.size)) + 356] = 0
                    mem[(2 * ceil32(calldata.size)) + 388] = arg2
                    mem[(2 * ceil32(calldata.size)) + 420] = 1
                    mem[(2 * ceil32(calldata.size)) + 452] = 160
                    mem[(2 * ceil32(calldata.size)) + 484] = 0
                    mem[(2 * ceil32(calldata.size)) + 516 len 0] = None
                    require ext_code.size(address(arg3))
                    call address(arg3).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args mem[calldata.size + ceil32(calldata.size) + 172 len 20], 0, arg2, 1, 160, 0
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    emit 0xaa31d15d: arg1, arg2, address(arg3)
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
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
    mem[128 len arg5.length] = arg5[all]
    mem[arg5.length + 128] = 0
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if msg.sender != this.address:
        if arg1 == msg.sender:
            if msg.sender != this.address:
                if balanceOf[arg3][address(arg1)] < arg4:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][arg2] > !arg4:
                    revert with 0, 17
                balanceOf[arg3][arg2] += arg4
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.size(arg2):
                    require ext_code.size(arg2)
                    call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[ceil32(ceil32(arg5.length)) + 97] = calldata.size
                mem[ceil32(ceil32(arg5.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
                if balanceOf[arg3][address(arg1)] < arg4:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][arg2] > !arg4:
                    revert with 0, 17
                balanceOf[arg3][arg2] += arg4
                emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(ceil32(arg5.length)) + 109 len 20], arg1, arg2);
                if ext_code.size(arg2):
                    require ext_code.size(arg2)
                    call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args mem[calldata.size + ceil32(ceil32(arg5.length)) + 109 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            if msg.sender != this.address:
                if not stor1[address(arg1)][address(msg.sender)]:
                    if bool(stor6[address(msg.sender)]) != 1:
                        revert with 0, 'ERC1155: caller is not owner nor approved'
                if msg.sender != this.address:
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 0, 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[ceil32(ceil32(arg5.length)) + 97] = calldata.size
                    mem[ceil32(ceil32(arg5.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 0, 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(ceil32(arg5.length)) + 109 len 20], arg1, arg2);
                    if ext_code.size(arg2):
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(ceil32(arg5.length)) + 109 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[ceil32(ceil32(arg5.length)) + 97] = calldata.size
                mem[ceil32(ceil32(arg5.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
                if not stor1[address(arg1)][address(mem[calldata.size + ceil32(ceil32(arg5.length)) + 97])]:
                    if bool(stor6[address(mem[calldata.size + ceil32(ceil32(arg5.length)) + 97])]) != 1:
                        revert with 0, 'ERC1155: caller is not owner nor approved'
                if msg.sender != this.address:
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 0, 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 129] = calldata.size
                    mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 161 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 193] = arg3
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 225] = 1
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 257] = arg4
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 0, 17
                    balanceOf[arg3][arg2] += arg4
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 289] = arg3
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 321] = arg4
                    emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 141 len 20], arg1, arg2);
                    if ext_code.size(arg2):
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 289] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 293] = mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 141 len 20]
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 325] = arg1
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 357] = arg3
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 389] = arg4
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 421] = 160
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 453] = arg5.length
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 485 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
                        if ceil32(arg5.length) > arg5.length:
                            mem[arg5.length + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 485] = 0
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 141 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    else:
        mem[ceil32(ceil32(arg5.length)) + 97] = calldata.size
        mem[ceil32(ceil32(arg5.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
        if arg1 == mem[calldata.size + ceil32(ceil32(arg5.length)) + 109 len 20]:
            if msg.sender != this.address:
                if balanceOf[arg3][address(arg1)] < arg4:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][arg2] > !arg4:
                    revert with 0, 17
                balanceOf[arg3][arg2] += arg4
                emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                if ext_code.size(arg2):
                    require ext_code.size(arg2)
                    call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 129] = calldata.size
                mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 161 len calldata.size] = call.data[0 len calldata.size]
                mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 193] = arg3
                mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 225] = 1
                mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 257] = arg4
                if balanceOf[arg3][address(arg1)] < arg4:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[arg3][address(arg1)] -= arg4
                if balanceOf[arg3][arg2] > !arg4:
                    revert with 0, 17
                balanceOf[arg3][arg2] += arg4
                mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 289] = arg3
                mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 321] = arg4
                emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 141 len 20], arg1, arg2);
                if ext_code.size(arg2):
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 289] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 293] = mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 141 len 20]
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 325] = arg1
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 357] = arg3
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 389] = arg4
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 421] = 160
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 453] = arg5.length
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 485 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
                    if ceil32(arg5.length) > arg5.length:
                        mem[arg5.length + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 485] = 0
                    require ext_code.size(arg2)
                    call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 141 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                    if not ext_call.success:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        else:
            if this.address == msg.sender:
                mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 129] = calldata.size
                mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 161 len calldata.size] = call.data[0 len calldata.size]
                if not stor1[address(arg1)][address(mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 129])]:
                    if bool(stor6[address(mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 129])]) != 1:
                        revert with 0, 'ERC1155: caller is not owner nor approved'
                if msg.sender != this.address:
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 0, 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 161] = calldata.size
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 193 len calldata.size] = call.data[0 len calldata.size]
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 0, 17
                    balanceOf[arg3][arg2] += arg4
                    mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 353] = arg4
                    emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 173 len 20], arg1, arg2);
                    if ext_code.size(arg2):
                        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 357] = arg1
                        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 389] = arg3
                        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 421] = arg4
                        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 453] = 160
                        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 485] = arg5.length
                        mem[ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 517 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
                        if ceil32(arg5.length) > arg5.length:
                            mem[arg5.length + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 517] = 0
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 173 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                if not stor1[address(arg1)][address(msg.sender)]:
                    if bool(stor6[address(msg.sender)]) != 1:
                        revert with 0, 'ERC1155: caller is not owner nor approved'
                if msg.sender != this.address:
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 0, 17
                    balanceOf[arg3][arg2] += arg4
                    emit TransferSingle(arg3, arg4, msg.sender, arg1, arg2);
                    if ext_code.size(arg2):
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 129] = calldata.size
                    mem[ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 161 len calldata.size] = call.data[0 len calldata.size]
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 193] = arg3
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 225] = 1
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 257] = arg4
                    if balanceOf[arg3][address(arg1)] < arg4:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[arg3][address(arg1)] -= arg4
                    if balanceOf[arg3][arg2] > !arg4:
                        revert with 0, 17
                    balanceOf[arg3][arg2] += arg4
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 289] = arg3
                    mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 321] = arg4
                    emit TransferSingle(arg3, arg4, mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 141 len 20], arg1, arg2);
                    if ext_code.size(arg2):
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 289] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 293] = mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 141 len 20]
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 325] = arg1
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 357] = arg3
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 389] = arg4
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 421] = 160
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 453] = arg5.length
                        mem[ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 485 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
                        if ceil32(arg5.length) > arg5.length:
                            mem[arg5.length + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 485] = 0
                        require ext_code.size(arg2)
                        call arg2.onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args mem[calldata.size + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 141 len 20], address(arg1), arg3, arg4, Array(len=arg5.length, data=arg5[all])
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
}

function sub_93f7d6c7(?) {
    require calldata.size - 4 >= 96
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 68).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    idx = 0
    s = cd[68] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender != this.address:
        if address(cd[36]) == msg.sender:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[0] = sub_0f699e80[mem[(32 * idx) + 128]]
                mem[32] = 11
                if bool(stor11[stor10[mem[(32 * idx) + 128]]]) != 1:
                    revert with 0, 'Type of token must be burnable'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not address(cd[36]):
                revert with 0, 'ERC1155: burn from the zero address'
            if ('cd', 4).length != ('cd', 68).length:
                revert with 0, 'ERC1155: ids and amounts length mismatch'
            if msg.sender != this.address:
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98] = 0
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = address(cd[36])
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, msg.sender, address(cd[36]), 0);
            else:
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98] = calldata.size
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 130 len calldata.size] = call.data[0 len calldata.size]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + calldata.size + 130] = 0
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = 0
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = address(cd[36])
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 110 len 20], address(cd[36]), 0);
        else:
            if msg.sender != this.address:
                if stor1[address(cd[36])][address(msg.sender)]:
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = sub_0f699e80[mem[(32 * idx) + 128]]
                        mem[32] = 11
                        if bool(stor11[stor10[mem[(32 * idx) + 128]]]) != 1:
                            revert with 0, 'Type of token must be burnable'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not address(cd[36]):
                        revert with 0, 'ERC1155: burn from the zero address'
                    if ('cd', 4).length != ('cd', 68).length:
                        revert with 0, 'ERC1155: ids and amounts length mismatch'
                    if msg.sender != this.address:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        var79001 = ('cd', 68).length
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, msg.sender, address(cd[36]), 0);
                    else:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98] = calldata.size
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 130 len calldata.size] = call.data[0 len calldata.size]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + calldata.size + 130] = 0
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        var79001 = ('cd', 68).length
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 110 len 20], address(cd[36]), 0);
                else:
                    if bool(stor6[address(msg.sender)]) != 1:
                        revert with 0, 'Caller is not owner nor approved'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = sub_0f699e80[mem[(32 * idx) + 128]]
                        mem[32] = 11
                        if bool(stor11[stor10[mem[(32 * idx) + 128]]]) != 1:
                            revert with 0, 'Type of token must be burnable'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not address(cd[36]):
                        revert with 0, 'ERC1155: burn from the zero address'
                    if ('cd', 4).length != ('cd', 68).length:
                        revert with 0, 'ERC1155: ids and amounts length mismatch'
                    if msg.sender != this.address:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, msg.sender, address(cd[36]), 0);
                    else:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98] = calldata.size
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 130 len calldata.size] = call.data[0 len calldata.size]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + calldata.size + 130] = 0
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 110 len 20], address(cd[36]), 0);
            else:
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98] = calldata.size
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 130 len calldata.size] = call.data[0 len calldata.size]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + calldata.size + 130] = 0
                if stor1[address(cd[36])][address(mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98])]:
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = sub_0f699e80[mem[(32 * idx) + 128]]
                        mem[32] = 11
                        if bool(stor11[stor10[mem[(32 * idx) + 128]]]) != 1:
                            revert with 0, 'Type of token must be burnable'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not address(cd[36]):
                        revert with 0, 'ERC1155: burn from the zero address'
                    if ('cd', 4).length != ('cd', 68).length:
                        revert with 0, 'ERC1155: ids and amounts length mismatch'
                    if msg.sender != this.address:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        var79001 = ('cd', 68).length
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, msg.sender, address(cd[36]), 0);
                    else:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = calldata.size
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 162 len calldata.size] = call.data[0 len calldata.size]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + calldata.size + 162] = 0
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 162] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 194] = 64
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 258] = ('cd', 4).length
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 290 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 226] = (32 * ('cd', 4).length) + 96
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 290] = ('cd', 68).length
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 322 len 32 * ('cd', 68).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]
                        var79001 = ('cd', 68).length
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 142 len 20], address(cd[36]), 0);
                else:
                    if bool(stor6[address(mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98])]) != 1:
                        revert with 0, 'Caller is not owner nor approved'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = sub_0f699e80[mem[(32 * idx) + 128]]
                        mem[32] = 11
                        if bool(stor11[stor10[mem[(32 * idx) + 128]]]) != 1:
                            revert with 0, 'Type of token must be burnable'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not address(cd[36]):
                        revert with 0, 'ERC1155: burn from the zero address'
                    if ('cd', 4).length != ('cd', 68).length:
                        revert with 0, 'ERC1155: ids and amounts length mismatch'
                    if msg.sender != this.address:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, msg.sender, address(cd[36]), 0);
                    else:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = calldata.size
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 162 len calldata.size] = call.data[0 len calldata.size]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + calldata.size + 162] = 0
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 162] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 194] = 64
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 258] = ('cd', 4).length
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 290 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 226] = (32 * ('cd', 4).length) + 96
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 290] = ('cd', 68).length
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 322 len 32 * ('cd', 68).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 142 len 20], address(cd[36]), 0);
    else:
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98] = calldata.size
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 130 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + calldata.size + 130] = 0
        if address(cd[36]) == mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 110 len 20]:
            idx = 0
            while idx < ('cd', 4).length:
                if idx >= ('cd', 4).length:
                    revert with 0, 50
                mem[0] = sub_0f699e80[mem[(32 * idx) + 128]]
                mem[32] = 11
                if bool(stor11[stor10[mem[(32 * idx) + 128]]]) != 1:
                    revert with 0, 'Type of token must be burnable'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not address(cd[36]):
                revert with 0, 'ERC1155: burn from the zero address'
            if ('cd', 4).length != ('cd', 68).length:
                revert with 0, 'ERC1155: ids and amounts length mismatch'
            if msg.sender != this.address:
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = 0
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = address(cd[36])
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, msg.sender, address(cd[36]), 0);
            else:
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = calldata.size
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 162 len calldata.size] = call.data[0 len calldata.size]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + calldata.size + 162] = 0
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 162] = 0
                idx = 0
                while idx < ('cd', 4).length:
                    if idx >= ('cd', 4).length:
                        revert with 0, 50
                    if idx >= ('cd', 68).length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                        revert with 0, 'ERC1155: burn amount exceeds balance'
                    mem[0] = address(cd[36])
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 194] = 64
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 258] = ('cd', 4).length
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 290 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 226] = (32 * ('cd', 4).length) + 96
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 290] = ('cd', 68).length
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 322 len 32 * ('cd', 68).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]
                emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 142 len 20], address(cd[36]), 0);
        else:
            if msg.sender != this.address:
                if stor1[address(cd[36])][address(msg.sender)]:
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = sub_0f699e80[mem[(32 * idx) + 128]]
                        mem[32] = 11
                        if bool(stor11[stor10[mem[(32 * idx) + 128]]]) != 1:
                            revert with 0, 'Type of token must be burnable'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not address(cd[36]):
                        revert with 0, 'ERC1155: burn from the zero address'
                    if ('cd', 4).length != ('cd', 68).length:
                        revert with 0, 'ERC1155: ids and amounts length mismatch'
                    if msg.sender != this.address:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        var79001 = ('cd', 68).length
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, msg.sender, address(cd[36]), 0);
                    else:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = calldata.size
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 162 len calldata.size] = call.data[0 len calldata.size]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + calldata.size + 162] = 0
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 162] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 194] = 64
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 258] = ('cd', 4).length
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 290 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 226] = (32 * ('cd', 4).length) + 96
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 290] = ('cd', 68).length
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 322 len 32 * ('cd', 68).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]
                        var79001 = ('cd', 68).length
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 142 len 20], address(cd[36]), 0);
                else:
                    if bool(stor6[address(msg.sender)]) != 1:
                        revert with 0, 'Caller is not owner nor approved'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = sub_0f699e80[mem[(32 * idx) + 128]]
                        mem[32] = 11
                        if bool(stor11[stor10[mem[(32 * idx) + 128]]]) != 1:
                            revert with 0, 'Type of token must be burnable'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not address(cd[36]):
                        revert with 0, 'ERC1155: burn from the zero address'
                    if ('cd', 4).length != ('cd', 68).length:
                        revert with 0, 'ERC1155: ids and amounts length mismatch'
                    if msg.sender != this.address:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, msg.sender, address(cd[36]), 0);
                    else:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = calldata.size
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 162 len calldata.size] = call.data[0 len calldata.size]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + calldata.size + 162] = 0
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 162] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 194] = 64
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 258] = ('cd', 4).length
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 290 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 226] = (32 * ('cd', 4).length) + 96
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 290] = ('cd', 68).length
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 322 len 32 * ('cd', 68).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 142 len 20], address(cd[36]), 0);
            else:
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130] = calldata.size
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 162 len calldata.size] = call.data[0 len calldata.size]
                mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + calldata.size + 162] = 0
                if stor1[address(cd[36])][address(mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130])]:
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = sub_0f699e80[mem[(32 * idx) + 128]]
                        mem[32] = 11
                        if bool(stor11[stor10[mem[(32 * idx) + 128]]]) != 1:
                            revert with 0, 'Type of token must be burnable'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not address(cd[36]):
                        revert with 0, 'ERC1155: burn from the zero address'
                    if ('cd', 4).length != ('cd', 68).length:
                        revert with 0, 'ERC1155: ids and amounts length mismatch'
                    if msg.sender != this.address:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 162] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        var79001 = ('cd', 68).length
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, msg.sender, address(cd[36]), 0);
                    else:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 162] = calldata.size
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 194 len calldata.size] = call.data[0 len calldata.size]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + calldata.size + 194] = 0
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (4 * ceil32(calldata.size)) + 194] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (4 * ceil32(calldata.size)) + 322 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (4 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 322] = ('cd', 68).length
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (4 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 354 len 32 * ('cd', 68).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]
                        var79001 = ('cd', 68).length
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 174 len 20], address(cd[36]), 0);
                else:
                    if bool(stor6[address(mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130])]) != 1:
                        revert with 0, 'Caller is not owner nor approved'
                    idx = 0
                    while idx < ('cd', 4).length:
                        if idx >= ('cd', 4).length:
                            revert with 0, 50
                        mem[0] = sub_0f699e80[mem[(32 * idx) + 128]]
                        mem[32] = 11
                        if bool(stor11[stor10[mem[(32 * idx) + 128]]]) != 1:
                            revert with 0, 'Type of token must be burnable'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    if not address(cd[36]):
                        revert with 0, 'ERC1155: burn from the zero address'
                    if ('cd', 4).length != ('cd', 68).length:
                        revert with 0, 'ERC1155: ids and amounts length mismatch'
                    if msg.sender != this.address:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 162] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, msg.sender, address(cd[36]), 0);
                    else:
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 162] = calldata.size
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 194 len calldata.size] = call.data[0 len calldata.size]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + calldata.size + 194] = 0
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (4 * ceil32(calldata.size)) + 194] = 0
                        idx = 0
                        while idx < ('cd', 4).length:
                            if idx >= ('cd', 4).length:
                                revert with 0, 50
                            if idx >= ('cd', 68).length:
                                revert with 0, 50
                            if balanceOf[mem[(32 * idx) + 128]][address(cd[36])] < mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]:
                                revert with 0, 'ERC1155: burn amount exceeds balance'
                            mem[0] = address(cd[36])
                            mem[32] = sha3(mem[(32 * idx) + 128], 0)
                            balanceOf[mem[(32 * idx) + 128]][address(cd[36])] -= mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (4 * ceil32(calldata.size)) + 322 len 32 * ('cd', 4).length] = mem[128 len 32 * ('cd', 4).length]
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (4 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 322] = ('cd', 68).length
                        mem[ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (4 * ceil32(calldata.size)) + (32 * ('cd', 4).length) + 354 len 32 * ('cd', 68).length] = mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]
                        emit TransferBatch(Array(len=('cd', 4).length, data=mem[128 len 32 * ('cd', 4).length], ('cd', 68).length, mem[ceil32(32 * ('cd', 4).length) + 129 len 32 * ('cd', 68).length]), (32 * ('cd', 4).length) + 96, mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + (2 * ceil32(calldata.size)) + 174 len 20], address(cd[36]), 0);
}

function sub_bd378c71(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if msg.sender != this.address:
        mem[0] = msg.sender
        mem[32] = sha3(0, 2)
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
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
        if ('cd', 68).length != ('cd', 36).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'number of ids must equal number of accounts'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if msg.sender != this.address:
                mem[0] = msg.sender
                mem[32] = sha3(0, 2)
                if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                    _707 = mem[64]
                    mem[mem[64]] = 42
                    mem[64] = mem[64] + 96
                    mem[_707 + 32 len 42] = call.data[calldata.size len 42]
                    if 0 >= mem[_707]:
                        revert with 0, 50
                    mem[_707 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_707]:
                        revert with 0, 50
                    mem[_707 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_707]:
                            revert with 0, 50
                        mem[idx + _707 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    _1427 = mem[64]
                    mem[mem[64]] = 66
                    mem[64] = mem[64] + 128
                    mem[_1427 + 32 len 66] = call.data[calldata.size len 66]
                    if 0 >= mem[_1427]:
                        revert with 0, 50
                    mem[_1427 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_1427]:
                        revert with 0, 50
                    mem[_1427 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 65
                    while idx > 1:
                        if idx >= mem[_1427]:
                            revert with 0, 50
                        mem[idx + _1427 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        continue 
                    _1893 = mem[64]
                    mem[mem[64] + 32] = 'AccessControl: account '
                    _1901 = mem[_707]
                    idx = 0
                    while idx < _1901:
                        mem[idx + _1893 + 55] = mem[idx + _707 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1893 + _1901 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                    if ceil32(_1901) <= _1901:
                        _2089 = mem[_1427]
                        idx = 0
                        while idx < _2089:
                            mem[idx + _1893 + _1901 + 72] = mem[idx + _1427 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2089) <= _2089:
                            _2241 = mem[64]
                            mem[mem[64]] = _2089 + _1893 + _1901 + -mem[64] + 40
                            mem[64] = _2089 + _1893 + _1901 + 72
                            mem[_2089 + _1893 + _1901 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2089 + _1893 + _1901 + 76] = 32
                            _2273 = mem[_2241]
                            mem[_2089 + _1893 + _1901 + 108] = mem[_2241]
                            idx = 0
                            while idx < _2273:
                                mem[idx + _2089 + _1893 + _1901 + 140] = mem[idx + _2241 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_2273) > _2273:
                                mem[_2273 + _2089 + _1893 + _1901 + 140] = 0
                            revert with 0, 32, mem[_2089 + _1893 + _1901 + 108 len ceil32(_2273) + 32]
                        mem[_2089 + _1893 + _1901 + 72] = 0
                        _2242 = mem[64]
                        mem[mem[64]] = _2089 + _1893 + _1901 + -mem[64] + 40
                        mem[64] = _2089 + _1893 + _1901 + 72
                        mem[_2089 + _1893 + _1901 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2089 + _1893 + _1901 + 76] = 32
                        _2274 = mem[_2242]
                        mem[_2089 + _1893 + _1901 + 108] = mem[_2242]
                        idx = 0
                        while idx < _2274:
                            mem[idx + _2089 + _1893 + _1901 + 140] = mem[idx + _2242 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2274) > _2274:
                            mem[_2274 + _2089 + _1893 + _1901 + 140] = 0
                        revert with 0, 32, mem[_2089 + _1893 + _1901 + 108 len ceil32(_2274) + 32]
                    _2090 = mem[_1427]
                    idx = 0
                    while idx < _2090:
                        mem[idx + _1893 + _1901 + 72] = mem[idx + _1427 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2090) <= _2090:
                        _2243 = mem[64]
                        mem[mem[64]] = _2090 + _1893 + _1901 + -mem[64] + 40
                        mem[64] = _2090 + _1893 + _1901 + 72
                        mem[_2090 + _1893 + _1901 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2090 + _1893 + _1901 + 76] = 32
                        _2275 = mem[_2243]
                        mem[_2090 + _1893 + _1901 + 108] = mem[_2243]
                        idx = 0
                        while idx < _2275:
                            mem[idx + _2090 + _1893 + _1901 + 140] = mem[idx + _2243 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2275) > _2275:
                            mem[_2275 + _2090 + _1893 + _1901 + 140] = 0
                        revert with 0, 32, mem[_2090 + _1893 + _1901 + 108 len ceil32(_2275) + 32]
                    mem[_2090 + _1893 + _1901 + 72] = 0
                    _2244 = mem[64]
                    mem[mem[64]] = _2090 + _1893 + _1901 + -mem[64] + 40
                    mem[64] = _2090 + _1893 + _1901 + 72
                    mem[_2090 + _1893 + _1901 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2090 + _1893 + _1901 + 76] = 32
                    _2276 = mem[_2244]
                    mem[_2090 + _1893 + _1901 + 108] = mem[_2244]
                    idx = 0
                    while idx < _2276:
                        mem[idx + _2090 + _1893 + _1901 + 140] = mem[idx + _2244 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2276) > _2276:
                        mem[_2276 + _2090 + _1893 + _1901 + 140] = 0
                    revert with 0, 32, mem[_2090 + _1893 + _1901 + 108 len ceil32(_2276) + 32]
                require cd[((32 * idx) + cd[36] + 36)] > 0
                if sub_79920951[cd[4]] > -2:
                    revert with 0, 17
                if sub_79920951[cd[4]] + 1 > sub_fc86b662[cd[4]]:
                    revert with 0, 'Minting would exceed the max number of items for given type'
                if stor13[cd[((32 * idx) + cd[36] + 36)]]:
                    revert with 0, 'Supplied id is already used'
                if stor12[cd[4]]:
                    revert with 0, 'Given type is fungible'
                stor13[cd[((32 * idx) + cd[36] + 36)]] = 1
                if sub_79920951[cd[4]] > -2:
                    revert with 0, 17
                sub_79920951[cd[4]]++
                sub_0f699e80[cd[((32 * idx) + cd[36] + 36)]] = cd[4]
                mem[32] = 14
                mintNumber[cd[((32 * idx) + cd[36] + 36)]] = sub_79920951[cd[4]]
                _769 = mem[64]
                mem[mem[64]] = 0
                if not address(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 0, 'ERC1155: mint to the zero address'
                if msg.sender != this.address:
                    mem[mem[64] + 32] = 1
                    mem[64] = mem[64] + 96
                    mem[_769 + 64] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_769 + 96] = 1
                    mem[64] = _769 + 160
                    mem[_769 + 128] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_769 + 160] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_769 + 192] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, msg.sender, 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_769 + 160] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_769 + 164] = msg.sender
                        mem[_769 + 196] = 0
                        mem[_769 + 228] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_769 + 260] = 1
                        mem[_769 + 292] = 160
                        mem[_769 + 324] = mem[_769]
                        s = 0
                        while s < mem[_769]:
                            mem[s + _769 + 356] = mem[s + _769 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_769]) > mem[_769]:
                            mem[mem[_769] + _769 + 356] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_769], mem[_769 + 356 len ceil32(mem[_769])]
                        mem[_769 + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _769 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[64] = mem[64] + ceil32(calldata.size) + 64
                    mem[_769 + 32] = calldata.size
                    mem[_769 + 64 len calldata.size] = call.data[0 len calldata.size]
                    mem[_769 + calldata.size + 64] = 0
                    _786 = mem[calldata.size + _769 + 32]
                    mem[_769 + ceil32(calldata.size) + 64] = 1
                    mem[_769 + ceil32(calldata.size) + 96] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_769 + ceil32(calldata.size) + 128] = 1
                    mem[64] = _769 + ceil32(calldata.size) + 192
                    mem[_769 + ceil32(calldata.size) + 160] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_769 + ceil32(calldata.size) + 192] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_769 + ceil32(calldata.size) + 224] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, address(_786), 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_769 + ceil32(calldata.size) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_769 + ceil32(calldata.size) + 196] = address(_786)
                        mem[_769 + ceil32(calldata.size) + 228] = 0
                        mem[_769 + ceil32(calldata.size) + 260] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_769 + ceil32(calldata.size) + 292] = 1
                        mem[_769 + ceil32(calldata.size) + 324] = 160
                        mem[_769 + ceil32(calldata.size) + 356] = mem[_769]
                        s = 0
                        while s < mem[_769]:
                            mem[s + _769 + ceil32(calldata.size) + 388] = mem[s + _769 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_769]) > mem[_769]:
                            mem[mem[_769] + _769 + ceil32(calldata.size) + 388] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_786), 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_769], mem[_769 + ceil32(calldata.size) + 388 len ceil32(mem[_769])]
                        mem[_769 + ceil32(calldata.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _769 + ceil32(calldata.size) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                _679 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_679] = calldata.size
                mem[_679 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_679 + calldata.size + 32] = 0
                _680 = mem[calldata.size + _679]
                mem[0] = mem[calldata.size + _679 + 12 len 20]
                mem[32] = sha3(0, 2)
                if not uint8(roleAdmin[0][address(_680)].field_0):
                    _710 = mem[64]
                    mem[mem[64]] = 42
                    mem[64] = mem[64] + 96
                    mem[_710 + 32 len 42] = call.data[calldata.size len 42]
                    if 0 >= mem[_710]:
                        revert with 0, 50
                    mem[_710 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_710]:
                        revert with 0, 50
                    mem[_710 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 41
                    s = address(_680)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_710]:
                            revert with 0, 50
                        mem[idx + _710 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if address(_680) + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    _1428 = mem[64]
                    mem[mem[64]] = 66
                    mem[64] = mem[64] + 128
                    mem[_1428 + 32 len 66] = call.data[calldata.size len 66]
                    if 0 >= mem[_1428]:
                        revert with 0, 50
                    mem[_1428 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_1428]:
                        revert with 0, 50
                    mem[_1428 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 65
                    while idx > 1:
                        if idx >= mem[_1428]:
                            revert with 0, 50
                        mem[idx + _1428 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        continue 
                    _1894 = mem[64]
                    mem[mem[64] + 32] = 'AccessControl: account '
                    _1902 = mem[_710]
                    idx = 0
                    while idx < _1902:
                        mem[idx + _1894 + 55] = mem[idx + _710 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1894 + _1902 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                    if ceil32(_1902) <= _1902:
                        _2091 = mem[_1428]
                        idx = 0
                        while idx < _2091:
                            mem[idx + _1894 + _1902 + 72] = mem[idx + _1428 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2091) <= _2091:
                            _2245 = mem[64]
                            mem[mem[64]] = _2091 + _1894 + _1902 + -mem[64] + 40
                            mem[64] = _2091 + _1894 + _1902 + 72
                            mem[_2091 + _1894 + _1902 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2091 + _1894 + _1902 + 76] = 32
                            _2277 = mem[_2245]
                            mem[_2091 + _1894 + _1902 + 108] = mem[_2245]
                            idx = 0
                            while idx < _2277:
                                mem[idx + _2091 + _1894 + _1902 + 140] = mem[idx + _2245 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_2277) > _2277:
                                mem[_2277 + _2091 + _1894 + _1902 + 140] = 0
                            revert with 0, 32, mem[_2091 + _1894 + _1902 + 108 len ceil32(_2277) + 32]
                        mem[_2091 + _1894 + _1902 + 72] = 0
                        _2246 = mem[64]
                        mem[mem[64]] = _2091 + _1894 + _1902 + -mem[64] + 40
                        mem[64] = _2091 + _1894 + _1902 + 72
                        mem[_2091 + _1894 + _1902 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2091 + _1894 + _1902 + 76] = 32
                        _2278 = mem[_2246]
                        mem[_2091 + _1894 + _1902 + 108] = mem[_2246]
                        idx = 0
                        while idx < _2278:
                            mem[idx + _2091 + _1894 + _1902 + 140] = mem[idx + _2246 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2278) > _2278:
                            mem[_2278 + _2091 + _1894 + _1902 + 140] = 0
                        revert with 0, 32, mem[_2091 + _1894 + _1902 + 108 len ceil32(_2278) + 32]
                    _2092 = mem[_1428]
                    idx = 0
                    while idx < _2092:
                        mem[idx + _1894 + _1902 + 72] = mem[idx + _1428 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2092) <= _2092:
                        _2247 = mem[64]
                        mem[mem[64]] = _2092 + _1894 + _1902 + -mem[64] + 40
                        mem[64] = _2092 + _1894 + _1902 + 72
                        mem[_2092 + _1894 + _1902 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2092 + _1894 + _1902 + 76] = 32
                        _2279 = mem[_2247]
                        mem[_2092 + _1894 + _1902 + 108] = mem[_2247]
                        idx = 0
                        while idx < _2279:
                            mem[idx + _2092 + _1894 + _1902 + 140] = mem[idx + _2247 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2279) > _2279:
                            mem[_2279 + _2092 + _1894 + _1902 + 140] = 0
                        revert with 0, 32, mem[_2092 + _1894 + _1902 + 108 len ceil32(_2279) + 32]
                    mem[_2092 + _1894 + _1902 + 72] = 0
                    _2248 = mem[64]
                    mem[mem[64]] = _2092 + _1894 + _1902 + -mem[64] + 40
                    mem[64] = _2092 + _1894 + _1902 + 72
                    mem[_2092 + _1894 + _1902 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2092 + _1894 + _1902 + 76] = 32
                    _2280 = mem[_2248]
                    mem[_2092 + _1894 + _1902 + 108] = mem[_2248]
                    idx = 0
                    while idx < _2280:
                        mem[idx + _2092 + _1894 + _1902 + 140] = mem[idx + _2248 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2280) > _2280:
                        mem[_2280 + _2092 + _1894 + _1902 + 140] = 0
                    revert with 0, 32, mem[_2092 + _1894 + _1902 + 108 len ceil32(_2280) + 32]
                require cd[((32 * idx) + cd[36] + 36)] > 0
                if sub_79920951[cd[4]] > -2:
                    revert with 0, 17
                if sub_79920951[cd[4]] + 1 > sub_fc86b662[cd[4]]:
                    revert with 0, 'Minting would exceed the max number of items for given type'
                if stor13[cd[((32 * idx) + cd[36] + 36)]]:
                    revert with 0, 'Supplied id is already used'
                if stor12[cd[4]]:
                    revert with 0, 'Given type is fungible'
                stor13[cd[((32 * idx) + cd[36] + 36)]] = 1
                if sub_79920951[cd[4]] > -2:
                    revert with 0, 17
                sub_79920951[cd[4]]++
                sub_0f699e80[cd[((32 * idx) + cd[36] + 36)]] = cd[4]
                mem[32] = 14
                mintNumber[cd[((32 * idx) + cd[36] + 36)]] = sub_79920951[cd[4]]
                _770 = mem[64]
                mem[mem[64]] = 0
                if not address(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 0, 'ERC1155: mint to the zero address'
                if msg.sender != this.address:
                    mem[mem[64] + 32] = 1
                    mem[64] = mem[64] + 96
                    mem[_770 + 64] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_770 + 96] = 1
                    mem[64] = _770 + 160
                    mem[_770 + 128] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_770 + 160] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_770 + 192] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, msg.sender, 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_770 + 160] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_770 + 164] = msg.sender
                        mem[_770 + 196] = 0
                        mem[_770 + 228] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_770 + 260] = 1
                        mem[_770 + 292] = 160
                        mem[_770 + 324] = mem[_770]
                        s = 0
                        while s < mem[_770]:
                            mem[s + _770 + 356] = mem[s + _770 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_770]) > mem[_770]:
                            mem[mem[_770] + _770 + 356] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_770], mem[_770 + 356 len ceil32(mem[_770])]
                        mem[_770 + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _770 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[64] = mem[64] + ceil32(calldata.size) + 64
                    mem[_770 + 32] = calldata.size
                    mem[_770 + 64 len calldata.size] = call.data[0 len calldata.size]
                    mem[_770 + calldata.size + 64] = 0
                    _788 = mem[calldata.size + _770 + 32]
                    mem[_770 + ceil32(calldata.size) + 64] = 1
                    mem[_770 + ceil32(calldata.size) + 96] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_770 + ceil32(calldata.size) + 128] = 1
                    mem[64] = _770 + ceil32(calldata.size) + 192
                    mem[_770 + ceil32(calldata.size) + 160] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_770 + ceil32(calldata.size) + 192] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_770 + ceil32(calldata.size) + 224] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, address(_788), 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_770 + ceil32(calldata.size) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_770 + ceil32(calldata.size) + 196] = address(_788)
                        mem[_770 + ceil32(calldata.size) + 228] = 0
                        mem[_770 + ceil32(calldata.size) + 260] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_770 + ceil32(calldata.size) + 292] = 1
                        mem[_770 + ceil32(calldata.size) + 324] = 160
                        mem[_770 + ceil32(calldata.size) + 356] = mem[_770]
                        s = 0
                        while s < mem[_770]:
                            mem[s + _770 + ceil32(calldata.size) + 388] = mem[s + _770 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_770]) > mem[_770]:
                            mem[mem[_770] + _770 + ceil32(calldata.size) + 388] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_788), 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_770], mem[_770 + ceil32(calldata.size) + 388 len ceil32(mem[_770])]
                        mem[_770 + ceil32(calldata.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _770 + ceil32(calldata.size) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _667 = mem[64]
        mem[mem[64]] = cd[4]
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = ('cd', 36).length
        require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[mem[64] + 64] = (32 * ('cd', 36).length) + 128
        mem[_667 + (32 * ('cd', 36).length) + 128] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = _667 + (32 * ('cd', 36).length) + 160
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x16a6af95: mem[mem[64] len _667 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + -mem[64] + 160]
    else:
        mem[64] = ceil32(calldata.size) + 128
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        mem[0] = mem[calldata.size + 108 len 20]
        mem[32] = sha3(0, 2)
        if not uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
            mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = mem[calldata.size + 108 len 20]
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if mem[calldata.size + 108 len 20] + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
            idx = 65
            while idx > 1:
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                continue 
            revert with 0, 
                        32,
                        148,
                        'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                        0
        if ('cd', 68).length != ('cd', 36).length:
            revert with 0, 'number of ids must equal number of accounts'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if msg.sender != this.address:
                mem[0] = msg.sender
                mem[32] = sha3(0, 2)
                if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                    _713 = mem[64]
                    mem[mem[64]] = 42
                    mem[64] = mem[64] + 96
                    mem[_713 + 32 len 42] = call.data[calldata.size len 42]
                    if 0 >= mem[_713]:
                        revert with 0, 50
                    mem[_713 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_713]:
                        revert with 0, 50
                    mem[_713 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_713]:
                            revert with 0, 50
                        mem[idx + _713 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    _1429 = mem[64]
                    mem[mem[64]] = 66
                    mem[64] = mem[64] + 128
                    mem[_1429 + 32 len 66] = call.data[calldata.size len 66]
                    if 0 >= mem[_1429]:
                        revert with 0, 50
                    mem[_1429 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_1429]:
                        revert with 0, 50
                    mem[_1429 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 65
                    while idx > 1:
                        if idx >= mem[_1429]:
                            revert with 0, 50
                        mem[idx + _1429 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        continue 
                    _1897 = mem[64]
                    mem[mem[64] + 32] = 'AccessControl: account '
                    _1903 = mem[_713]
                    idx = 0
                    while idx < _1903:
                        mem[idx + _1897 + 55] = mem[idx + _713 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1897 + _1903 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                    if ceil32(_1903) <= _1903:
                        _2093 = mem[_1429]
                        idx = 0
                        while idx < _2093:
                            mem[idx + _1897 + _1903 + 72] = mem[idx + _1429 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2093) <= _2093:
                            _2249 = mem[64]
                            mem[mem[64]] = _2093 + _1897 + _1903 + -mem[64] + 40
                            mem[64] = _2093 + _1897 + _1903 + 72
                            mem[_2093 + _1897 + _1903 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2093 + _1897 + _1903 + 76] = 32
                            _2281 = mem[_2249]
                            mem[_2093 + _1897 + _1903 + 108] = mem[_2249]
                            idx = 0
                            while idx < _2281:
                                mem[idx + _2093 + _1897 + _1903 + 140] = mem[idx + _2249 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_2281) > _2281:
                                mem[_2281 + _2093 + _1897 + _1903 + 140] = 0
                            revert with 0, 32, mem[_2093 + _1897 + _1903 + 108 len ceil32(_2281) + 32]
                        mem[_2093 + _1897 + _1903 + 72] = 0
                        _2250 = mem[64]
                        mem[mem[64]] = _2093 + _1897 + _1903 + -mem[64] + 40
                        mem[64] = _2093 + _1897 + _1903 + 72
                        mem[_2093 + _1897 + _1903 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2093 + _1897 + _1903 + 76] = 32
                        _2282 = mem[_2250]
                        mem[_2093 + _1897 + _1903 + 108] = mem[_2250]
                        idx = 0
                        while idx < _2282:
                            mem[idx + _2093 + _1897 + _1903 + 140] = mem[idx + _2250 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2282) > _2282:
                            mem[_2282 + _2093 + _1897 + _1903 + 140] = 0
                        revert with 0, 32, mem[_2093 + _1897 + _1903 + 108 len ceil32(_2282) + 32]
                    _2094 = mem[_1429]
                    idx = 0
                    while idx < _2094:
                        mem[idx + _1897 + _1903 + 72] = mem[idx + _1429 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2094) <= _2094:
                        _2251 = mem[64]
                        mem[mem[64]] = _2094 + _1897 + _1903 + -mem[64] + 40
                        mem[64] = _2094 + _1897 + _1903 + 72
                        mem[_2094 + _1897 + _1903 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2094 + _1897 + _1903 + 76] = 32
                        _2283 = mem[_2251]
                        mem[_2094 + _1897 + _1903 + 108] = mem[_2251]
                        idx = 0
                        while idx < _2283:
                            mem[idx + _2094 + _1897 + _1903 + 140] = mem[idx + _2251 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2283) > _2283:
                            mem[_2283 + _2094 + _1897 + _1903 + 140] = 0
                        revert with 0, 32, mem[_2094 + _1897 + _1903 + 108 len ceil32(_2283) + 32]
                    mem[_2094 + _1897 + _1903 + 72] = 0
                    _2252 = mem[64]
                    mem[mem[64]] = _2094 + _1897 + _1903 + -mem[64] + 40
                    mem[64] = _2094 + _1897 + _1903 + 72
                    mem[_2094 + _1897 + _1903 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2094 + _1897 + _1903 + 76] = 32
                    _2284 = mem[_2252]
                    mem[_2094 + _1897 + _1903 + 108] = mem[_2252]
                    idx = 0
                    while idx < _2284:
                        mem[idx + _2094 + _1897 + _1903 + 140] = mem[idx + _2252 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2284) > _2284:
                        mem[_2284 + _2094 + _1897 + _1903 + 140] = 0
                    revert with 0, 32, mem[_2094 + _1897 + _1903 + 108 len ceil32(_2284) + 32]
                require cd[((32 * idx) + cd[36] + 36)] > 0
                if sub_79920951[cd[4]] > -2:
                    revert with 0, 17
                if sub_79920951[cd[4]] + 1 > sub_fc86b662[cd[4]]:
                    revert with 0, 'Minting would exceed the max number of items for given type'
                if stor13[cd[((32 * idx) + cd[36] + 36)]]:
                    revert with 0, 'Supplied id is already used'
                if stor12[cd[4]]:
                    revert with 0, 'Given type is fungible'
                stor13[cd[((32 * idx) + cd[36] + 36)]] = 1
                if sub_79920951[cd[4]] > -2:
                    revert with 0, 17
                sub_79920951[cd[4]]++
                sub_0f699e80[cd[((32 * idx) + cd[36] + 36)]] = cd[4]
                mem[32] = 14
                mintNumber[cd[((32 * idx) + cd[36] + 36)]] = sub_79920951[cd[4]]
                _771 = mem[64]
                mem[mem[64]] = 0
                if not address(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 0, 'ERC1155: mint to the zero address'
                if msg.sender != this.address:
                    mem[mem[64] + 32] = 1
                    mem[64] = mem[64] + 96
                    mem[_771 + 64] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_771 + 96] = 1
                    mem[64] = _771 + 160
                    mem[_771 + 128] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_771 + 160] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_771 + 192] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, msg.sender, 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_771 + 160] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_771 + 164] = msg.sender
                        mem[_771 + 196] = 0
                        mem[_771 + 228] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_771 + 260] = 1
                        mem[_771 + 292] = 160
                        mem[_771 + 324] = mem[_771]
                        s = 0
                        while s < mem[_771]:
                            mem[s + _771 + 356] = mem[s + _771 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_771]) > mem[_771]:
                            mem[mem[_771] + _771 + 356] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_771], mem[_771 + 356 len ceil32(mem[_771])]
                        mem[_771 + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _771 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[64] = mem[64] + ceil32(calldata.size) + 64
                    mem[_771 + 32] = calldata.size
                    mem[_771 + 64 len calldata.size] = call.data[0 len calldata.size]
                    mem[_771 + calldata.size + 64] = 0
                    _790 = mem[calldata.size + _771 + 32]
                    mem[_771 + ceil32(calldata.size) + 64] = 1
                    mem[_771 + ceil32(calldata.size) + 96] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_771 + ceil32(calldata.size) + 128] = 1
                    mem[64] = _771 + ceil32(calldata.size) + 192
                    mem[_771 + ceil32(calldata.size) + 160] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_771 + ceil32(calldata.size) + 192] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_771 + ceil32(calldata.size) + 224] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, address(_790), 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_771 + ceil32(calldata.size) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_771 + ceil32(calldata.size) + 196] = address(_790)
                        mem[_771 + ceil32(calldata.size) + 228] = 0
                        mem[_771 + ceil32(calldata.size) + 260] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_771 + ceil32(calldata.size) + 292] = 1
                        mem[_771 + ceil32(calldata.size) + 324] = 160
                        mem[_771 + ceil32(calldata.size) + 356] = mem[_771]
                        s = 0
                        while s < mem[_771]:
                            mem[s + _771 + ceil32(calldata.size) + 388] = mem[s + _771 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_771]) > mem[_771]:
                            mem[mem[_771] + _771 + ceil32(calldata.size) + 388] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_790), 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_771], mem[_771 + ceil32(calldata.size) + 388 len ceil32(mem[_771])]
                        mem[_771 + ceil32(calldata.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _771 + ceil32(calldata.size) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                _682 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_682] = calldata.size
                mem[_682 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_682 + calldata.size + 32] = 0
                _683 = mem[calldata.size + _682]
                mem[0] = mem[calldata.size + _682 + 12 len 20]
                mem[32] = sha3(0, 2)
                if not uint8(roleAdmin[0][address(_683)].field_0):
                    _716 = mem[64]
                    mem[mem[64]] = 42
                    mem[64] = mem[64] + 96
                    mem[_716 + 32 len 42] = call.data[calldata.size len 42]
                    if 0 >= mem[_716]:
                        revert with 0, 50
                    mem[_716 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_716]:
                        revert with 0, 50
                    mem[_716 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 41
                    s = address(_683)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_716]:
                            revert with 0, 50
                        mem[idx + _716 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if address(_683) + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    _1430 = mem[64]
                    mem[mem[64]] = 66
                    mem[64] = mem[64] + 128
                    mem[_1430 + 32 len 66] = call.data[calldata.size len 66]
                    if 0 >= mem[_1430]:
                        revert with 0, 50
                    mem[_1430 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_1430]:
                        revert with 0, 50
                    mem[_1430 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 65
                    while idx > 1:
                        if idx >= mem[_1430]:
                            revert with 0, 50
                        mem[idx + _1430 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        continue 
                    _1898 = mem[64]
                    mem[mem[64] + 32] = 'AccessControl: account '
                    _1904 = mem[_716]
                    idx = 0
                    while idx < _1904:
                        mem[idx + _1898 + 55] = mem[idx + _716 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1898 + _1904 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                    if ceil32(_1904) <= _1904:
                        _2095 = mem[_1430]
                        idx = 0
                        while idx < _2095:
                            mem[idx + _1898 + _1904 + 72] = mem[idx + _1430 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2095) <= _2095:
                            _2253 = mem[64]
                            mem[mem[64]] = _2095 + _1898 + _1904 + -mem[64] + 40
                            mem[64] = _2095 + _1898 + _1904 + 72
                            mem[_2095 + _1898 + _1904 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_2095 + _1898 + _1904 + 76] = 32
                            _2285 = mem[_2253]
                            mem[_2095 + _1898 + _1904 + 108] = mem[_2253]
                            idx = 0
                            while idx < _2285:
                                mem[idx + _2095 + _1898 + _1904 + 140] = mem[idx + _2253 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_2285) > _2285:
                                mem[_2285 + _2095 + _1898 + _1904 + 140] = 0
                            revert with 0, 32, mem[_2095 + _1898 + _1904 + 108 len ceil32(_2285) + 32]
                        mem[_2095 + _1898 + _1904 + 72] = 0
                        _2254 = mem[64]
                        mem[mem[64]] = _2095 + _1898 + _1904 + -mem[64] + 40
                        mem[64] = _2095 + _1898 + _1904 + 72
                        mem[_2095 + _1898 + _1904 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2095 + _1898 + _1904 + 76] = 32
                        _2286 = mem[_2254]
                        mem[_2095 + _1898 + _1904 + 108] = mem[_2254]
                        idx = 0
                        while idx < _2286:
                            mem[idx + _2095 + _1898 + _1904 + 140] = mem[idx + _2254 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2286) > _2286:
                            mem[_2286 + _2095 + _1898 + _1904 + 140] = 0
                        revert with 0, 32, mem[_2095 + _1898 + _1904 + 108 len ceil32(_2286) + 32]
                    _2096 = mem[_1430]
                    idx = 0
                    while idx < _2096:
                        mem[idx + _1898 + _1904 + 72] = mem[idx + _1430 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2096) <= _2096:
                        _2255 = mem[64]
                        mem[mem[64]] = _2096 + _1898 + _1904 + -mem[64] + 40
                        mem[64] = _2096 + _1898 + _1904 + 72
                        mem[_2096 + _1898 + _1904 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_2096 + _1898 + _1904 + 76] = 32
                        _2287 = mem[_2255]
                        mem[_2096 + _1898 + _1904 + 108] = mem[_2255]
                        idx = 0
                        while idx < _2287:
                            mem[idx + _2096 + _1898 + _1904 + 140] = mem[idx + _2255 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_2287) > _2287:
                            mem[_2287 + _2096 + _1898 + _1904 + 140] = 0
                        revert with 0, 32, mem[_2096 + _1898 + _1904 + 108 len ceil32(_2287) + 32]
                    mem[_2096 + _1898 + _1904 + 72] = 0
                    _2256 = mem[64]
                    mem[mem[64]] = _2096 + _1898 + _1904 + -mem[64] + 40
                    mem[64] = _2096 + _1898 + _1904 + 72
                    mem[_2096 + _1898 + _1904 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_2096 + _1898 + _1904 + 76] = 32
                    _2288 = mem[_2256]
                    mem[_2096 + _1898 + _1904 + 108] = mem[_2256]
                    idx = 0
                    while idx < _2288:
                        mem[idx + _2096 + _1898 + _1904 + 140] = mem[idx + _2256 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_2288) > _2288:
                        mem[_2288 + _2096 + _1898 + _1904 + 140] = 0
                    revert with 0, 32, mem[_2096 + _1898 + _1904 + 108 len ceil32(_2288) + 32]
                require cd[((32 * idx) + cd[36] + 36)] > 0
                if sub_79920951[cd[4]] > -2:
                    revert with 0, 17
                if sub_79920951[cd[4]] + 1 > sub_fc86b662[cd[4]]:
                    revert with 0, 'Minting would exceed the max number of items for given type'
                if stor13[cd[((32 * idx) + cd[36] + 36)]]:
                    revert with 0, 'Supplied id is already used'
                if stor12[cd[4]]:
                    revert with 0, 'Given type is fungible'
                stor13[cd[((32 * idx) + cd[36] + 36)]] = 1
                if sub_79920951[cd[4]] > -2:
                    revert with 0, 17
                sub_79920951[cd[4]]++
                sub_0f699e80[cd[((32 * idx) + cd[36] + 36)]] = cd[4]
                mem[32] = 14
                mintNumber[cd[((32 * idx) + cd[36] + 36)]] = sub_79920951[cd[4]]
                _772 = mem[64]
                mem[mem[64]] = 0
                if not address(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 0, 'ERC1155: mint to the zero address'
                if msg.sender != this.address:
                    mem[mem[64] + 32] = 1
                    mem[64] = mem[64] + 96
                    mem[_772 + 64] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_772 + 96] = 1
                    mem[64] = _772 + 160
                    mem[_772 + 128] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_772 + 160] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_772 + 192] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, msg.sender, 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_772 + 160] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_772 + 164] = msg.sender
                        mem[_772 + 196] = 0
                        mem[_772 + 228] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_772 + 260] = 1
                        mem[_772 + 292] = 160
                        mem[_772 + 324] = mem[_772]
                        s = 0
                        while s < mem[_772]:
                            mem[s + _772 + 356] = mem[s + _772 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_772]) > mem[_772]:
                            mem[mem[_772] + _772 + 356] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_772], mem[_772 + 356 len ceil32(mem[_772])]
                        mem[_772 + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _772 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[64] = mem[64] + ceil32(calldata.size) + 64
                    mem[_772 + 32] = calldata.size
                    mem[_772 + 64 len calldata.size] = call.data[0 len calldata.size]
                    mem[_772 + calldata.size + 64] = 0
                    _792 = mem[calldata.size + _772 + 32]
                    mem[_772 + ceil32(calldata.size) + 64] = 1
                    mem[_772 + ceil32(calldata.size) + 96] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_772 + ceil32(calldata.size) + 128] = 1
                    mem[64] = _772 + ceil32(calldata.size) + 192
                    mem[_772 + ceil32(calldata.size) + 160] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_772 + ceil32(calldata.size) + 192] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_772 + ceil32(calldata.size) + 224] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, address(_792), 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_772 + ceil32(calldata.size) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_772 + ceil32(calldata.size) + 196] = address(_792)
                        mem[_772 + ceil32(calldata.size) + 228] = 0
                        mem[_772 + ceil32(calldata.size) + 260] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_772 + ceil32(calldata.size) + 292] = 1
                        mem[_772 + ceil32(calldata.size) + 324] = 160
                        mem[_772 + ceil32(calldata.size) + 356] = mem[_772]
                        s = 0
                        while s < mem[_772]:
                            mem[s + _772 + ceil32(calldata.size) + 388] = mem[s + _772 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_772]) > mem[_772]:
                            mem[mem[_772] + _772 + ceil32(calldata.size) + 388] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_792), 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_772], mem[_772 + ceil32(calldata.size) + 388 len ceil32(mem[_772])]
                        mem[_772 + ceil32(calldata.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _772 + ceil32(calldata.size) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _668 = mem[64]
        mem[mem[64]] = cd[4]
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = ('cd', 36).length
        require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[mem[64] + 64] = (32 * ('cd', 36).length) + 128
        mem[_668 + (32 * ('cd', 36).length) + 128] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = _668 + (32 * ('cd', 36).length) + 160
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x16a6af95: mem[mem[64] len _668 + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + -mem[64] + 160]
}

function deposit(address arg1, bytes arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if msg.sender != this.address:
        mem[0] = msg.sender
        if not uint8(roleAdmin[0x8f4f2da22e8ac8f11e15f9fc141cddbb5deea8800186560abb6e68c5496619a9][address(msg.sender)].field_0):
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
            s = 0x8f4f2da22e8ac8f11e15f9fc141cddbb5deea8800186560abb6e68c5496619a9
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
            revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
        require arg2.length >= 96
        require cd[(arg2 + 36)] <= test266151307()
        require arg2 + cd[(arg2 + 36)] + 67 < arg2 + arg2.length + 36
        if cd[(arg2 + cd[(arg2 + 36)] + 36)] > test266151307():
            revert with 0, 65
        if ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 97 < 96 or ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 97 > test266151307():
            revert with 0, 65
        mem[96] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
        require arg2.length + 36 >= cd[(arg2 + 36)] + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 68
        idx = 0
        s = arg2 + cd[(arg2 + 36)] + 68
        t = 128
        while idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]:
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require cd[(arg2 + 68)] <= test266151307()
        require arg2 + cd[(arg2 + 68)] + 67 < arg2 + arg2.length + 36
        if cd[(arg2 + cd[(arg2 + 68)] + 36)] > test266151307():
            revert with 0, 65
        if ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 98 < 97 or ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 98 > test266151307():
            revert with 0, 65
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 97] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
        require arg2.length + 36 >= cd[(arg2 + 68)] + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 68
        idx = 0
        s = arg2 + cd[(arg2 + 68)] + 68
        t = ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129
        while idx < cd[(arg2 + cd[(arg2 + 68)] + 36)]:
            mem[t] = cd[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require cd[(arg2 + 100)] <= test266151307()
        require arg2 + cd[(arg2 + 100)] + 67 < arg2 + arg2.length + 36
        if cd[(arg2 + cd[(arg2 + 100)] + 36)] > test266151307():
            revert with 0, 65
        if ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 99 < 98 or ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 99 > test266151307():
            revert with 0, 65
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 98] = cd[(arg2 + cd[(arg2 + 100)] + 36)]
        require cd[(arg2 + 100)] + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 68 <= arg2.length + 36
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 130 len cd[(arg2 + cd[(arg2 + 100)] + 36)]] = call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]]
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 130] = 0
        if not arg1:
            revert with 0, 'ChildMintableERC1155: INVALID_DEPOSIT_USER'
        if cd[(arg2 + cd[(arg2 + 36)] + 36)] != cd[(arg2 + cd[(arg2 + 68)] + 36)]:
            revert with 0, 'ERC1155: ids and amounts length mismatch'
        if msg.sender != this.address:
            idx = 0
            while idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]:
                if idx >= cd[(arg2 + cd[(arg2 + 68)] + 36)]:
                    revert with 0, 50
                if idx >= cd[(arg2 + cd[(arg2 + 36)] + 36)]:
                    revert with 0, 50
                mem[0] = arg1
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > !mem[(32 * idx) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 99] = 64
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 195 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]] = mem[128 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]]
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 195] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 227 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]
            emit TransferBatch(Array(len=cd[(arg2 + cd[(arg2 + 36)] + 36)], data=mem[128 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]], cd[(arg2 + cd[(arg2 + 68)] + 36)], mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]), (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96, msg.sender, 0, arg1);
            if not ext_code.size(arg1):
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 99] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 103] = msg.sender
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 135] = 0
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 167] = 160
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 263] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 295 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]] = mem[128 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]]
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 199] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 295] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 327 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 231] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 327] = cd[(arg2 + cd[(arg2 + 100)] + 36)]
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 359 len ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])] = call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 27) + 256, msg.sender) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 27) + 256
            if ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) <= cd[(arg2 + cd[(arg2 + 100)] + 36)]:
                require ext_code.size(arg1)
                call arg1.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], mem[128 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]], cd[(arg2 + cd[(arg2 + 68)] + 36)], mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]], cd[(arg2 + cd[(arg2 + 100)] + 36)], call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 27) + 256, msg.sender) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 27) + 256
                mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 99] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100
                if not ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99:
                    mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _2663 = ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _2679 = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_2679)] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131 len ceil32(_2679)]
                if ceil32(_2679) <= _2679:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2679) + 32]
                mem[_2679 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_2679) + _2663 + -mem[64] + 68
            mem[cd[(arg2 + cd[(arg2 + 100)] + 36)] + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 359] = 0
            require ext_code.size(arg1)
            call arg1.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], mem[128 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]], cd[(arg2 + cd[(arg2 + 68)] + 36)], mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]], cd[(arg2 + cd[(arg2 + 100)] + 36)], call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 27) + 256, msg.sender) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 27) + 256
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 99] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 99 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100 < 99 or ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100
            if not ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99:
                mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _2664 = ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2681 = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_2681)] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131 len ceil32(_2681)]
            if ceil32(_2681) <= _2681:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2681) + 32]
            mem[_2681 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_2681) + _2664 + -mem[64] + 68
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 99] = calldata.size
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 131 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + calldata.size + 131] = 0
        idx = 0
        while idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]:
            if idx >= cd[(arg2 + cd[(arg2 + 68)] + 36)]:
                revert with 0, 50
            if idx >= cd[(arg2 + cd[(arg2 + 36)] + 36)]:
                revert with 0, 50
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] > !mem[(32 * idx) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] += mem[(32 * idx) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + 227 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]] = mem[128 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]]
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 227] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 259 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]
        emit TransferBatch(Array(len=cd[(arg2 + cd[(arg2 + 36)] + 36)], data=mem[128 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]], cd[(arg2 + cd[(arg2 + 68)] + 36)], mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]), (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96, mem[calldata.size + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 111 len 20], 0, arg1);
        if not ext_code.size(arg1):
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + 135] = mem[calldata.size + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 111 len 20]
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + 167] = 0
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + 199] = 160
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + 295] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + 327 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]] = mem[128 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]]
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + 231] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 327] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 359 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + 263] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 359] = cd[(arg2 + cd[(arg2 + 100)] + 36)]
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 391 len ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])] = call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 31) + 256, calldata.size) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 31) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) <= cd[(arg2 + cd[(arg2 + 100)] + 36)]:
            require ext_code.size(arg1)
            call arg1.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args address(mem[calldata.size + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 99]), 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], mem[128 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]], cd[(arg2 + cd[(arg2 + 68)] + 36)], mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]], cd[(arg2 + cd[(arg2 + 100)] + 36)], call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 31) + 256, calldata.size) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 31) + 256
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            if not ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _2665 = ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2683 = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_2683)] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_2683)]
            if ceil32(_2683) <= _2683:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2683) + 32]
            mem[_2683 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_2683) + _2665 + -mem[64] + 68
        mem[cd[(arg2 + cd[(arg2 + 100)] + 36)] + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 391] = 0
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(mem[calldata.size + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 99]), 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], mem[128 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]], cd[(arg2 + cd[(arg2 + 68)] + 36)], mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]], cd[(arg2 + cd[(arg2 + 100)] + 36)], call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 31) + 256, calldata.size) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 31) + 256
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
        if not ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _2666 = ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2685 = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
        mem[mem[64] + 36] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
        mem[mem[64] + 68 len ceil32(_2685)] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_2685)]
        if ceil32(_2685) <= _2685:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2685) + 32]
        mem[_2685 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_2685) + _2666 + -mem[64] + 68
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 128] = 0
    mem[0] = mem[calldata.size + 108 len 20]
    if not uint8(roleAdmin[0x8f4f2da22e8ac8f11e15f9fc141cddbb5deea8800186560abb6e68c5496619a9][address(mem[calldata.size + 96])].field_0):
        mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = mem[calldata.size + 108 len 20]
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if mem[calldata.size + 108 len 20] + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = 0x8f4f2da22e8ac8f11e15f9fc141cddbb5deea8800186560abb6e68c5496619a9
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                    0
    require arg2.length >= 96
    require cd[(arg2 + 36)] <= test266151307()
    require arg2 + cd[(arg2 + 36)] + 67 < arg2 + arg2.length + 36
    if cd[(arg2 + cd[(arg2 + 36)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129 < 128 or ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129 > test266151307():
        revert with 0, 65
    mem[ceil32(calldata.size) + 128] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
    require arg2.length + 36 >= cd[(arg2 + 36)] + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 68
    idx = 0
    s = arg2 + cd[(arg2 + 36)] + 68
    t = ceil32(calldata.size) + 160
    while idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg2 + 68)] <= test266151307()
    require arg2 + cd[(arg2 + 68)] + 67 < arg2 + arg2.length + 36
    if cd[(arg2 + cd[(arg2 + 68)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 130 < 129 or ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 130 > test266151307():
        revert with 0, 65
    mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 129] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
    require arg2.length + 36 >= cd[(arg2 + 68)] + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 68
    idx = 0
    s = arg2 + cd[(arg2 + 68)] + 68
    t = ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161
    while idx < cd[(arg2 + cd[(arg2 + 68)] + 36)]:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[(arg2 + 100)] <= test266151307()
    require arg2 + cd[(arg2 + 100)] + 67 < arg2 + arg2.length + 36
    if cd[(arg2 + cd[(arg2 + 100)] + 36)] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 131 < 130 or ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 131 > test266151307():
        revert with 0, 65
    mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 130] = cd[(arg2 + cd[(arg2 + 100)] + 36)]
    require cd[(arg2 + 100)] + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 68 <= arg2.length + 36
    mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 162 len cd[(arg2 + cd[(arg2 + 100)] + 36)]] = call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]]
    mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + cd[(arg2 + cd[(arg2 + 100)] + 36)] + 162] = 0
    if not arg1:
        revert with 0, 'ChildMintableERC1155: INVALID_DEPOSIT_USER'
    if cd[(arg2 + cd[(arg2 + 36)] + 36)] != cd[(arg2 + cd[(arg2 + 68)] + 36)]:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if msg.sender != this.address:
        idx = 0
        while idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]:
            if idx >= cd[(arg2 + cd[(arg2 + 68)] + 36)]:
                revert with 0, 50
            if idx >= cd[(arg2 + cd[(arg2 + 36)] + 36)]:
                revert with 0, 50
            mem[0] = arg1
            mem[32] = sha3(mem[(32 * idx) + ceil32(calldata.size) + 160], 0)
            if balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(arg1)] > !mem[(32 * idx) + ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(arg1)] += mem[(32 * idx) + ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 131] = 64
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 227 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]] = mem[ceil32(calldata.size) + 160 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]]
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 227] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 259 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]] = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]
        emit TransferBatch(Array(len=cd[(arg2 + cd[(arg2 + 36)] + 36)], data=mem[ceil32(calldata.size) + 160 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]], cd[(arg2 + cd[(arg2 + 68)] + 36)], mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]), (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96, msg.sender, 0, arg1);
        if not ext_code.size(arg1):
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 131] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 135] = msg.sender
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 167] = 0
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 199] = 160
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 295] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 327 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]] = mem[ceil32(calldata.size) + 160 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]]
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 231] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 327] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 359 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]] = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 263] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 359] = cd[(arg2 + cd[(arg2 + 100)] + 36)]
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 391 len ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])] = call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 27) + 256, msg.sender) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 27) + 256
        if ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) <= cd[(arg2 + cd[(arg2 + 100)] + 36)]:
            require ext_code.size(arg1)
            call arg1.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], mem[ceil32(calldata.size) + 160 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]], cd[(arg2 + cd[(arg2 + 68)] + 36)], mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]], cd[(arg2 + cd[(arg2 + 100)] + 36)], call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 27) + 256, msg.sender) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 27) + 256
            mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 131] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132
            if not ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131:
                mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _2667 = ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2687 = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_2687)] = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163 len ceil32(_2687)]
            if ceil32(_2687) <= _2687:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2687) + 32]
            mem[_2687 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_2687) + _2667 + -mem[64] + 68
        mem[cd[(arg2 + cd[(arg2 + 100)] + 36)] + ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 391] = 0
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], mem[ceil32(calldata.size) + 160 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]], cd[(arg2 + cd[(arg2 + 68)] + 36)], mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]], cd[(arg2 + cd[(arg2 + 100)] + 36)], call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 27) + 256, msg.sender) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 27) + 256
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 131] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132
        if not ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131:
            mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _2668 = ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2689 = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131]
        mem[mem[64] + 36] = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131]
        mem[mem[64] + 68 len ceil32(_2689)] = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163 len ceil32(_2689)]
        if ceil32(_2689) <= _2689:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2689) + 32]
        mem[_2689 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_2689) + _2668 + -mem[64] + 68
    mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 131] = calldata.size
    mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 163 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + calldata.size + 163] = 0
    idx = 0
    while idx < cd[(arg2 + cd[(arg2 + 36)] + 36)]:
        if idx >= cd[(arg2 + cd[(arg2 + 68)] + 36)]:
            revert with 0, 50
        if idx >= cd[(arg2 + cd[(arg2 + 36)] + 36)]:
            revert with 0, 50
        mem[0] = arg1
        mem[32] = sha3(mem[(32 * idx) + ceil32(calldata.size) + 160], 0)
        if balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(arg1)] > !mem[(32 * idx) + ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + ceil32(calldata.size) + 160]][address(arg1)] += mem[(32 * idx) + ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 163] = 64
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 227] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 259 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]] = mem[ceil32(calldata.size) + 160 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]]
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 195] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 259] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 291 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]] = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]
    emit TransferBatch(Array(len=cd[(arg2 + cd[(arg2 + 36)] + 36)], data=mem[ceil32(calldata.size) + 160 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]], cd[(arg2 + cd[(arg2 + 68)] + 36)], mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]), (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 96, mem[calldata.size + ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 143 len 20], 0, arg1);
    if not ext_code.size(arg1):
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 163] = 0xbc197c8100000000000000000000000000000000000000000000000000000000
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 167] = mem[calldata.size + ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 143 len 20]
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 199] = 0
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 231] = 160
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 327] = cd[(arg2 + cd[(arg2 + 36)] + 36)]
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 359 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]] = mem[ceil32(calldata.size) + 160 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]]
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 263] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 359] = cd[(arg2 + cd[(arg2 + 68)] + 36)]
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 391 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]] = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]]
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 295] = (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 391] = cd[(arg2 + cd[(arg2 + 100)] + 36)]
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 423 len ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])] = call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 31) + 256, calldata.size) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 31) + 256
    if ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) <= cd[(arg2 + cd[(arg2 + 100)] + 36)]:
        require ext_code.size(arg1)
        call arg1.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(mem[calldata.size + ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 131]), 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], mem[ceil32(calldata.size) + 160 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]], cd[(arg2 + cd[(arg2 + 68)] + 36)], mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]], cd[(arg2 + cd[(arg2 + 100)] + 36)], call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 31) + 256, calldata.size) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 31) + 256
        mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 163] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or (2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
            revert with 0, 65
        mem[64] = (2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164
        if not (2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163:
            mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _2669 = (2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164
        mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2691 = mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163]
        mem[mem[64] + 36] = mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163]
        mem[mem[64] + 68 len ceil32(_2691)] = mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 195 len ceil32(_2691)]
        if ceil32(_2691) <= _2691:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2691) + 32]
        mem[_2691 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_2691) + _2669 + -mem[64] + 68
    mem[cd[(arg2 + cd[(arg2 + 100)] + 36)] + (2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 423] = 0
    require ext_code.size(arg1)
    call arg1.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
         gas gas_remaining wei
        args address(mem[calldata.size + ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 131]), 0, 160, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 192, (32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + (32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + 224, cd[(arg2 + cd[(arg2 + 36)] + 36)], mem[ceil32(calldata.size) + 160 len 32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]], cd[(arg2 + cd[(arg2 + 68)] + 36)], mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + 161 len 32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]], cd[(arg2 + cd[(arg2 + 100)] + 36)], call.data[arg2 + cd[(arg2 + 100)] + 68 len cd[(arg2 + cd[(arg2 + 100)] + 36)]], Mask(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) - cd[(arg2 + cd[(arg2 + 100)] + 36)], -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 31) + 256, calldata.size) >> -(8 * ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)]) + -ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 31) + 256
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 163] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or (2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
        revert with 0, 65
    mem[64] = (2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164
    if not (2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163:
        mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _2670 = (2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _2693 = mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163]
    mem[mem[64] + 36] = mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163]
    mem[mem[64] + 68 len ceil32(_2693)] = mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 195 len ceil32(_2693)]
    if ceil32(_2693) <= _2693:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2693) + 32]
    mem[_2693 + mem[64] + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_2693) + _2670 + -mem[64] + 68
}

function sub_f44b8158(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    if msg.sender != this.address:
        mem[0] = msg.sender
        mem[32] = sha3(0, 2)
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
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
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Array arguments must have same length'
        if ('cd', 68).length != ('cd', 4).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Array arguments must have same length'
        if ('cd', 100).length != ('cd', 4).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Array arguments must have same length'
        if ('cd', 132).length != ('cd', 4).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Array arguments must have same length'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == bool(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == bool(cd[((32 * idx) + cd[100] + 36)])
            if idx >= ('cd', 132).length:
                revert with 0, 50
            require cd[(cd[132] + (32 * idx) + 36)] < calldata.size + -cd[132] - 67
            require cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
            _985 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 32
            mem[_985] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
            mem[_985 + 32 len cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]] = call.data[cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 68 len cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]]
            mem[_985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32] = 0
            if msg.sender != this.address:
                mem[0] = msg.sender
                mem[32] = sha3(0, 2)
                if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                    _1009 = mem[64]
                    mem[mem[64]] = 42
                    mem[64] = mem[64] + 96
                    mem[_1009 + 32 len 42] = call.data[calldata.size len 42]
                    if 0 >= mem[_1009]:
                        revert with 0, 50
                    mem[_1009 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_1009]:
                        revert with 0, 50
                    mem[_1009 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_1009]:
                            revert with 0, 50
                        mem[idx + _1009 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    _2357 = mem[64]
                    mem[mem[64]] = 66
                    mem[64] = mem[64] + 128
                    mem[_2357 + 32 len 66] = call.data[calldata.size len 66]
                    if 0 >= mem[_2357]:
                        revert with 0, 50
                    mem[_2357 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_2357]:
                        revert with 0, 50
                    mem[_2357 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 65
                    while idx > 1:
                        if idx >= mem[_2357]:
                            revert with 0, 50
                        mem[idx + _2357 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        continue 
                    _2847 = mem[64]
                    mem[mem[64] + 32] = 'AccessControl: account '
                    _2871 = mem[_1009]
                    idx = 0
                    while idx < _2871:
                        mem[idx + _2847 + 55] = mem[idx + _1009 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2847 + _2871 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                    if ceil32(_2871) <= _2871:
                        _3625 = mem[_2357]
                        idx = 0
                        while idx < _3625:
                            mem[idx + _2847 + _2871 + 72] = mem[idx + _2357 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_3625) <= _3625:
                            _4053 = mem[64]
                            mem[mem[64]] = _3625 + _2847 + _2871 + -mem[64] + 40
                            mem[64] = _3625 + _2847 + _2871 + 72
                            mem[_3625 + _2847 + _2871 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3625 + _2847 + _2871 + 76] = 32
                            _4117 = mem[_4053]
                            mem[_3625 + _2847 + _2871 + 108] = mem[_4053]
                            idx = 0
                            while idx < _4117:
                                mem[idx + _3625 + _2847 + _2871 + 140] = mem[idx + _4053 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_4117) > _4117:
                                mem[_4117 + _3625 + _2847 + _2871 + 140] = 0
                            revert with 0, 32, mem[_3625 + _2847 + _2871 + 108 len ceil32(_4117) + 32]
                        mem[_3625 + _2847 + _2871 + 72] = 0
                        _4054 = mem[64]
                        mem[mem[64]] = _3625 + _2847 + _2871 + -mem[64] + 40
                        mem[64] = _3625 + _2847 + _2871 + 72
                        mem[_3625 + _2847 + _2871 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3625 + _2847 + _2871 + 76] = 32
                        _4118 = mem[_4054]
                        mem[_3625 + _2847 + _2871 + 108] = mem[_4054]
                        idx = 0
                        while idx < _4118:
                            mem[idx + _3625 + _2847 + _2871 + 140] = mem[idx + _4054 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4118) > _4118:
                            mem[_4118 + _3625 + _2847 + _2871 + 140] = 0
                        revert with 0, 32, mem[_3625 + _2847 + _2871 + 108 len ceil32(_4118) + 32]
                    _3626 = mem[_2357]
                    idx = 0
                    while idx < _3626:
                        mem[idx + _2847 + _2871 + 72] = mem[idx + _2357 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3626) <= _3626:
                        _4055 = mem[64]
                        mem[mem[64]] = _3626 + _2847 + _2871 + -mem[64] + 40
                        mem[64] = _3626 + _2847 + _2871 + 72
                        mem[_3626 + _2847 + _2871 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3626 + _2847 + _2871 + 76] = 32
                        _4119 = mem[_4055]
                        mem[_3626 + _2847 + _2871 + 108] = mem[_4055]
                        idx = 0
                        while idx < _4119:
                            mem[idx + _3626 + _2847 + _2871 + 140] = mem[idx + _4055 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4119) > _4119:
                            mem[_4119 + _3626 + _2847 + _2871 + 140] = 0
                        revert with 0, 32, mem[_3626 + _2847 + _2871 + 108 len ceil32(_4119) + 32]
                    mem[_3626 + _2847 + _2871 + 72] = 0
                    _4056 = mem[64]
                    mem[mem[64]] = _3626 + _2847 + _2871 + -mem[64] + 40
                    mem[64] = _3626 + _2847 + _2871 + 72
                    mem[_3626 + _2847 + _2871 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3626 + _2847 + _2871 + 76] = 32
                    _4120 = mem[_4056]
                    mem[_3626 + _2847 + _2871 + 108] = mem[_4056]
                    idx = 0
                    while idx < _4120:
                        mem[idx + _3626 + _2847 + _2871 + 140] = mem[idx + _4056 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4120) > _4120:
                        mem[_4120 + _3626 + _2847 + _2871 + 140] = 0
                    revert with 0, 32, mem[_3626 + _2847 + _2871 + 108 len ceil32(_4120) + 32]
                if msg.sender != this.address:
                    mem[0] = msg.sender
                    mem[32] = sha3(0, 2)
                    if uint8(roleAdmin[0][address(msg.sender)].field_0):
                        if stor13[cd[((32 * idx) + cd[4] + 36)]]:
                            revert with 0, 'Supplied typeId is already used'
                        if cd[((32 * idx) + cd[36] + 36)] <= 0:
                            revert with 0, 'max supply must be > 0'
                        sub_fc86b662[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
                        stor12[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[68] + 36)]))
                        stor11[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[100] + 36)]))
                        stor13[cd[((32 * idx) + cd[4] + 36)]] = 1
                        if not cd[((32 * idx) + cd[68] + 36)]:
                            mem[32] = 15
                            if not bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                                if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                                if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    t = _985 + 32
                                    while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                mem[mem[64] + 128] = 160
                                mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                s = 0
                                while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[s + mem[64] + 192] = mem[s + _985 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                                emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                            else:
                                if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                                if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                    mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                    mem[mem[64] + 128] = 160
                                    mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                    s = 0
                                    while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                        mem[s + mem[64] + 192] = mem[s + _985 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                        mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                                    emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                                else:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    t = _985 + 32
                                    while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    _2861 = mem[64]
                                    mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                    mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                    mem[mem[64] + 128] = 160
                                    mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                    s = 0
                                    while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                        mem[s + mem[64] + 192] = mem[s + _985 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                        mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + _2861 + 192] = 0
                                    emit 0xdd645363: mem[mem[64] len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + _2861 + -mem[64] + 192]
                        else:
                            sub_0f699e80[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[4] + 36)]
                            mem[32] = 15
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                                if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                                if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    t = _985 + 32
                                    while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                                if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    t = _985 + 32
                                    while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                            mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                            mem[mem[64] + 128] = 160
                            mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                            s = 0
                            while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[s + mem[64] + 192] = mem[s + _985 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                            emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1149 = mem[64]
                    mem[mem[64]] = 42
                    mem[64] = mem[64] + 96
                    mem[_1149 + 32 len 42] = call.data[calldata.size len 42]
                    if 0 >= mem[_1149]:
                        revert with 0, 50
                    mem[_1149 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_1149]:
                        revert with 0, 50
                    mem[_1149 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_1149]:
                            revert with 0, 50
                        mem[idx + _1149 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    _2355 = mem[64]
                    mem[mem[64]] = 66
                    mem[64] = mem[64] + 128
                    mem[_2355 + 32 len 66] = call.data[calldata.size len 66]
                    if 0 >= mem[_2355]:
                        revert with 0, 50
                    mem[_2355 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_2355]:
                        revert with 0, 50
                    mem[_2355 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 65
                    while idx > 1:
                        if idx >= mem[_2355]:
                            revert with 0, 50
                        mem[idx + _2355 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        continue 
                    _2845 = mem[64]
                    mem[mem[64] + 32] = 'AccessControl: account '
                    _2865 = mem[_1149]
                    idx = 0
                    while idx < _2865:
                        mem[idx + _2845 + 55] = mem[idx + _1149 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2845 + _2865 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                    if ceil32(_2865) <= _2865:
                        _3621 = mem[_2355]
                        idx = 0
                        while idx < _3621:
                            mem[idx + _2845 + _2865 + 72] = mem[idx + _2355 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_3621) <= _3621:
                            _4045 = mem[64]
                            mem[mem[64]] = _3621 + _2845 + _2865 + -mem[64] + 40
                            mem[64] = _3621 + _2845 + _2865 + 72
                            mem[_3621 + _2845 + _2865 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3621 + _2845 + _2865 + 76] = 32
                            _4109 = mem[_4045]
                            mem[_3621 + _2845 + _2865 + 108] = mem[_4045]
                            idx = 0
                            while idx < _4109:
                                mem[idx + _3621 + _2845 + _2865 + 140] = mem[idx + _4045 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_4109) > _4109:
                                mem[_4109 + _3621 + _2845 + _2865 + 140] = 0
                            revert with 0, 32, mem[_3621 + _2845 + _2865 + 108 len ceil32(_4109) + 32]
                        mem[_3621 + _2845 + _2865 + 72] = 0
                        _4046 = mem[64]
                        mem[mem[64]] = _3621 + _2845 + _2865 + -mem[64] + 40
                        mem[64] = _3621 + _2845 + _2865 + 72
                        mem[_3621 + _2845 + _2865 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3621 + _2845 + _2865 + 76] = 32
                        _4110 = mem[_4046]
                        mem[_3621 + _2845 + _2865 + 108] = mem[_4046]
                        idx = 0
                        while idx < _4110:
                            mem[idx + _3621 + _2845 + _2865 + 140] = mem[idx + _4046 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4110) > _4110:
                            mem[_4110 + _3621 + _2845 + _2865 + 140] = 0
                        revert with 0, 32, mem[_3621 + _2845 + _2865 + 108 len ceil32(_4110) + 32]
                    _3622 = mem[_2355]
                    idx = 0
                    while idx < _3622:
                        mem[idx + _2845 + _2865 + 72] = mem[idx + _2355 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3622) <= _3622:
                        _4047 = mem[64]
                        mem[mem[64]] = _3622 + _2845 + _2865 + -mem[64] + 40
                        mem[64] = _3622 + _2845 + _2865 + 72
                        mem[_3622 + _2845 + _2865 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3622 + _2845 + _2865 + 76] = 32
                        _4111 = mem[_4047]
                        mem[_3622 + _2845 + _2865 + 108] = mem[_4047]
                        idx = 0
                        while idx < _4111:
                            mem[idx + _3622 + _2845 + _2865 + 140] = mem[idx + _4047 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4111) > _4111:
                            mem[_4111 + _3622 + _2845 + _2865 + 140] = 0
                        revert with 0, 32, mem[_3622 + _2845 + _2865 + 108 len ceil32(_4111) + 32]
                    mem[_3622 + _2845 + _2865 + 72] = 0
                    _4048 = mem[64]
                    mem[mem[64]] = _3622 + _2845 + _2865 + -mem[64] + 40
                    mem[64] = _3622 + _2845 + _2865 + 72
                    mem[_3622 + _2845 + _2865 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3622 + _2845 + _2865 + 76] = 32
                    _4112 = mem[_4048]
                    mem[_3622 + _2845 + _2865 + 108] = mem[_4048]
                    idx = 0
                    while idx < _4112:
                        mem[idx + _3622 + _2845 + _2865 + 140] = mem[idx + _4048 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4112) > _4112:
                        mem[_4112 + _3622 + _2845 + _2865 + 140] = 0
                    revert with 0, 32, mem[_3622 + _2845 + _2865 + 108 len ceil32(_4112) + 32]
                _1001 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_1001] = calldata.size
                mem[_1001 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_1001 + calldata.size + 32] = 0
                _1002 = mem[calldata.size + _1001]
                mem[0] = mem[calldata.size + _1001 + 12 len 20]
                mem[32] = sha3(0, 2)
                if uint8(roleAdmin[0][address(_1002)].field_0):
                    if stor13[cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 0, 'Supplied typeId is already used'
                    if cd[((32 * idx) + cd[36] + 36)] <= 0:
                        revert with 0, 'max supply must be > 0'
                    sub_fc86b662[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
                    stor12[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[68] + 36)]))
                    stor11[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[100] + 36)]))
                    stor13[cd[((32 * idx) + cd[4] + 36)]] = 1
                    if not cd[((32 * idx) + cd[68] + 36)]:
                        mem[32] = 15
                        if not bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _985 + 32
                                while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                            mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                            mem[mem[64] + 128] = 160
                            mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                            s = 0
                            while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[s + mem[64] + 192] = mem[s + _985 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                            emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                        else:
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                mem[mem[64] + 128] = 160
                                mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                s = 0
                                while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[s + mem[64] + 192] = mem[s + _985 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                                emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _985 + 32
                                while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2866 = mem[64]
                                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                mem[mem[64] + 128] = 160
                                mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                s = 0
                                while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[s + mem[64] + 192] = mem[s + _985 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + _2866 + 192] = 0
                                emit 0xdd645363: mem[mem[64] len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + _2866 + -mem[64] + 192]
                    else:
                        sub_0f699e80[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 15
                        if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _985 + 32
                                while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _985 + 32
                                while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                        mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                        mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                        mem[mem[64] + 128] = 160
                        mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                        s = 0
                        while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            mem[s + mem[64] + 192] = mem[s + _985 + 32]
                            s = s + 32
                            continue 
                        if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                        emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1150 = mem[64]
                mem[mem[64]] = 42
                mem[64] = mem[64] + 96
                mem[_1150 + 32 len 42] = call.data[calldata.size len 42]
                if 0 >= mem[_1150]:
                    revert with 0, 50
                mem[_1150 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_1150]:
                    revert with 0, 50
                mem[_1150 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 41
                s = address(_1002)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_1150]:
                        revert with 0, 50
                    mem[idx + _1150 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if address(_1002) + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                _2356 = mem[64]
                mem[mem[64]] = 66
                mem[64] = mem[64] + 128
                mem[_2356 + 32 len 66] = call.data[calldata.size len 66]
                if 0 >= mem[_2356]:
                    revert with 0, 50
                mem[_2356 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_2356]:
                    revert with 0, 50
                mem[_2356 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 65
                while idx > 1:
                    if idx >= mem[_2356]:
                        revert with 0, 50
                    mem[idx + _2356 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                _2846 = mem[64]
                mem[mem[64] + 32] = 'AccessControl: account '
                _2870 = mem[_1150]
                idx = 0
                while idx < _2870:
                    mem[idx + _2846 + 55] = mem[idx + _1150 + 32]
                    idx = idx + 32
                    continue 
                mem[_2846 + _2870 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                if ceil32(_2870) <= _2870:
                    _3623 = mem[_2356]
                    idx = 0
                    while idx < _3623:
                        mem[idx + _2846 + _2870 + 72] = mem[idx + _2356 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3623) <= _3623:
                        _4049 = mem[64]
                        mem[mem[64]] = _3623 + _2846 + _2870 + -mem[64] + 40
                        mem[64] = _3623 + _2846 + _2870 + 72
                        mem[_3623 + _2846 + _2870 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3623 + _2846 + _2870 + 76] = 32
                        _4113 = mem[_4049]
                        mem[_3623 + _2846 + _2870 + 108] = mem[_4049]
                        idx = 0
                        while idx < _4113:
                            mem[idx + _3623 + _2846 + _2870 + 140] = mem[idx + _4049 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4113) > _4113:
                            mem[_4113 + _3623 + _2846 + _2870 + 140] = 0
                        revert with 0, 32, mem[_3623 + _2846 + _2870 + 108 len ceil32(_4113) + 32]
                    mem[_3623 + _2846 + _2870 + 72] = 0
                    _4050 = mem[64]
                    mem[mem[64]] = _3623 + _2846 + _2870 + -mem[64] + 40
                    mem[64] = _3623 + _2846 + _2870 + 72
                    mem[_3623 + _2846 + _2870 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3623 + _2846 + _2870 + 76] = 32
                    _4114 = mem[_4050]
                    mem[_3623 + _2846 + _2870 + 108] = mem[_4050]
                    idx = 0
                    while idx < _4114:
                        mem[idx + _3623 + _2846 + _2870 + 140] = mem[idx + _4050 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4114) > _4114:
                        mem[_4114 + _3623 + _2846 + _2870 + 140] = 0
                    revert with 0, 32, mem[_3623 + _2846 + _2870 + 108 len ceil32(_4114) + 32]
                _3624 = mem[_2356]
                idx = 0
                while idx < _3624:
                    mem[idx + _2846 + _2870 + 72] = mem[idx + _2356 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3624) <= _3624:
                    _4051 = mem[64]
                    mem[mem[64]] = _3624 + _2846 + _2870 + -mem[64] + 40
                    mem[64] = _3624 + _2846 + _2870 + 72
                    mem[_3624 + _2846 + _2870 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3624 + _2846 + _2870 + 76] = 32
                    _4115 = mem[_4051]
                    mem[_3624 + _2846 + _2870 + 108] = mem[_4051]
                    idx = 0
                    while idx < _4115:
                        mem[idx + _3624 + _2846 + _2870 + 140] = mem[idx + _4051 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4115) > _4115:
                        mem[_4115 + _3624 + _2846 + _2870 + 140] = 0
                    revert with 0, 32, mem[_3624 + _2846 + _2870 + 108 len ceil32(_4115) + 32]
                mem[_3624 + _2846 + _2870 + 72] = 0
                _4052 = mem[64]
                mem[mem[64]] = _3624 + _2846 + _2870 + -mem[64] + 40
                mem[64] = _3624 + _2846 + _2870 + 72
                mem[_3624 + _2846 + _2870 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3624 + _2846 + _2870 + 76] = 32
                _4116 = mem[_4052]
                mem[_3624 + _2846 + _2870 + 108] = mem[_4052]
                idx = 0
                while idx < _4116:
                    mem[idx + _3624 + _2846 + _2870 + 140] = mem[idx + _4052 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4116) > _4116:
                    mem[_4116 + _3624 + _2846 + _2870 + 140] = 0
                revert with 0, 32, mem[_3624 + _2846 + _2870 + 108 len ceil32(_4116) + 32]
            _989 = mem[64]
            mem[64] = mem[64] + ceil32(calldata.size) + 32
            mem[_989] = calldata.size
            mem[_989 + 32 len calldata.size] = call.data[0 len calldata.size]
            mem[_989 + calldata.size + 32] = 0
            _990 = mem[calldata.size + _989]
            mem[0] = mem[calldata.size + _989 + 12 len 20]
            mem[32] = sha3(0, 2)
            if not uint8(roleAdmin[0][address(_990)].field_0):
                _1010 = mem[64]
                mem[mem[64]] = 42
                mem[64] = mem[64] + 96
                mem[_1010 + 32 len 42] = call.data[calldata.size len 42]
                if 0 >= mem[_1010]:
                    revert with 0, 50
                mem[_1010 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_1010]:
                    revert with 0, 50
                mem[_1010 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 41
                s = address(_990)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_1010]:
                        revert with 0, 50
                    mem[idx + _1010 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if address(_990) + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                _2360 = mem[64]
                mem[mem[64]] = 66
                mem[64] = mem[64] + 128
                mem[_2360 + 32 len 66] = call.data[calldata.size len 66]
                if 0 >= mem[_2360]:
                    revert with 0, 50
                mem[_2360 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_2360]:
                    revert with 0, 50
                mem[_2360 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 65
                while idx > 1:
                    if idx >= mem[_2360]:
                        revert with 0, 50
                    mem[idx + _2360 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                _2850 = mem[64]
                mem[mem[64] + 32] = 'AccessControl: account '
                _2882 = mem[_1010]
                idx = 0
                while idx < _2882:
                    mem[idx + _2850 + 55] = mem[idx + _1010 + 32]
                    idx = idx + 32
                    continue 
                mem[_2850 + _2882 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                if ceil32(_2882) <= _2882:
                    _3631 = mem[_2360]
                    idx = 0
                    while idx < _3631:
                        mem[idx + _2850 + _2882 + 72] = mem[idx + _2360 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3631) <= _3631:
                        _4065 = mem[64]
                        mem[mem[64]] = _3631 + _2850 + _2882 + -mem[64] + 40
                        mem[64] = _3631 + _2850 + _2882 + 72
                        mem[_3631 + _2850 + _2882 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3631 + _2850 + _2882 + 76] = 32
                        _4129 = mem[_4065]
                        mem[_3631 + _2850 + _2882 + 108] = mem[_4065]
                        idx = 0
                        while idx < _4129:
                            mem[idx + _3631 + _2850 + _2882 + 140] = mem[idx + _4065 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4129) > _4129:
                            mem[_4129 + _3631 + _2850 + _2882 + 140] = 0
                        revert with 0, 32, mem[_3631 + _2850 + _2882 + 108 len ceil32(_4129) + 32]
                    mem[_3631 + _2850 + _2882 + 72] = 0
                    _4066 = mem[64]
                    mem[mem[64]] = _3631 + _2850 + _2882 + -mem[64] + 40
                    mem[64] = _3631 + _2850 + _2882 + 72
                    mem[_3631 + _2850 + _2882 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3631 + _2850 + _2882 + 76] = 32
                    _4130 = mem[_4066]
                    mem[_3631 + _2850 + _2882 + 108] = mem[_4066]
                    idx = 0
                    while idx < _4130:
                        mem[idx + _3631 + _2850 + _2882 + 140] = mem[idx + _4066 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4130) > _4130:
                        mem[_4130 + _3631 + _2850 + _2882 + 140] = 0
                    revert with 0, 32, mem[_3631 + _2850 + _2882 + 108 len ceil32(_4130) + 32]
                _3632 = mem[_2360]
                idx = 0
                while idx < _3632:
                    mem[idx + _2850 + _2882 + 72] = mem[idx + _2360 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3632) <= _3632:
                    _4067 = mem[64]
                    mem[mem[64]] = _3632 + _2850 + _2882 + -mem[64] + 40
                    mem[64] = _3632 + _2850 + _2882 + 72
                    mem[_3632 + _2850 + _2882 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3632 + _2850 + _2882 + 76] = 32
                    _4131 = mem[_4067]
                    mem[_3632 + _2850 + _2882 + 108] = mem[_4067]
                    idx = 0
                    while idx < _4131:
                        mem[idx + _3632 + _2850 + _2882 + 140] = mem[idx + _4067 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4131) > _4131:
                        mem[_4131 + _3632 + _2850 + _2882 + 140] = 0
                    revert with 0, 32, mem[_3632 + _2850 + _2882 + 108 len ceil32(_4131) + 32]
                mem[_3632 + _2850 + _2882 + 72] = 0
                _4068 = mem[64]
                mem[mem[64]] = _3632 + _2850 + _2882 + -mem[64] + 40
                mem[64] = _3632 + _2850 + _2882 + 72
                mem[_3632 + _2850 + _2882 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3632 + _2850 + _2882 + 76] = 32
                _4132 = mem[_4068]
                mem[_3632 + _2850 + _2882 + 108] = mem[_4068]
                idx = 0
                while idx < _4132:
                    mem[idx + _3632 + _2850 + _2882 + 140] = mem[idx + _4068 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4132) > _4132:
                    mem[_4132 + _3632 + _2850 + _2882 + 140] = 0
                revert with 0, 32, mem[_3632 + _2850 + _2882 + 108 len ceil32(_4132) + 32]
            if msg.sender != this.address:
                mem[0] = msg.sender
                mem[32] = sha3(0, 2)
                if uint8(roleAdmin[0][address(msg.sender)].field_0):
                    if stor13[cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 0, 'Supplied typeId is already used'
                    if cd[((32 * idx) + cd[36] + 36)] <= 0:
                        revert with 0, 'max supply must be > 0'
                    sub_fc86b662[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
                    stor12[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[68] + 36)]))
                    stor11[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[100] + 36)]))
                    stor13[cd[((32 * idx) + cd[4] + 36)]] = 1
                    if not cd[((32 * idx) + cd[68] + 36)]:
                        mem[32] = 15
                        if not bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _985 + 32
                                while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                            mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                            mem[mem[64] + 128] = 160
                            mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                            s = 0
                            while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[s + mem[64] + 192] = mem[s + _985 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                            emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                        else:
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                mem[mem[64] + 128] = 160
                                mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                s = 0
                                while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[s + mem[64] + 192] = mem[s + _985 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                                emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _985 + 32
                                while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2872 = mem[64]
                                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                mem[mem[64] + 128] = 160
                                mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                s = 0
                                while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[s + mem[64] + 192] = mem[s + _985 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + _2872 + 192] = 0
                                emit 0xdd645363: mem[mem[64] len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + _2872 + -mem[64] + 192]
                    else:
                        sub_0f699e80[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 15
                        if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _985 + 32
                                while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _985 + 32
                                while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                        mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                        mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                        mem[mem[64] + 128] = 160
                        mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                        s = 0
                        while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            mem[s + mem[64] + 192] = mem[s + _985 + 32]
                            s = s + 32
                            continue 
                        if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                        emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1151 = mem[64]
                mem[mem[64]] = 42
                mem[64] = mem[64] + 96
                mem[_1151 + 32 len 42] = call.data[calldata.size len 42]
                if 0 >= mem[_1151]:
                    revert with 0, 50
                mem[_1151 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_1151]:
                    revert with 0, 50
                mem[_1151 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_1151]:
                        revert with 0, 50
                    mem[idx + _1151 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if msg.sender + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                _2358 = mem[64]
                mem[mem[64]] = 66
                mem[64] = mem[64] + 128
                mem[_2358 + 32 len 66] = call.data[calldata.size len 66]
                if 0 >= mem[_2358]:
                    revert with 0, 50
                mem[_2358 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_2358]:
                    revert with 0, 50
                mem[_2358 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 65
                while idx > 1:
                    if idx >= mem[_2358]:
                        revert with 0, 50
                    mem[idx + _2358 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                _2848 = mem[64]
                mem[mem[64] + 32] = 'AccessControl: account '
                _2876 = mem[_1151]
                idx = 0
                while idx < _2876:
                    mem[idx + _2848 + 55] = mem[idx + _1151 + 32]
                    idx = idx + 32
                    continue 
                mem[_2848 + _2876 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                if ceil32(_2876) <= _2876:
                    _3627 = mem[_2358]
                    idx = 0
                    while idx < _3627:
                        mem[idx + _2848 + _2876 + 72] = mem[idx + _2358 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3627) <= _3627:
                        _4057 = mem[64]
                        mem[mem[64]] = _3627 + _2848 + _2876 + -mem[64] + 40
                        mem[64] = _3627 + _2848 + _2876 + 72
                        mem[_3627 + _2848 + _2876 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3627 + _2848 + _2876 + 76] = 32
                        _4121 = mem[_4057]
                        mem[_3627 + _2848 + _2876 + 108] = mem[_4057]
                        idx = 0
                        while idx < _4121:
                            mem[idx + _3627 + _2848 + _2876 + 140] = mem[idx + _4057 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4121) > _4121:
                            mem[_4121 + _3627 + _2848 + _2876 + 140] = 0
                        revert with 0, 32, mem[_3627 + _2848 + _2876 + 108 len ceil32(_4121) + 32]
                    mem[_3627 + _2848 + _2876 + 72] = 0
                    _4058 = mem[64]
                    mem[mem[64]] = _3627 + _2848 + _2876 + -mem[64] + 40
                    mem[64] = _3627 + _2848 + _2876 + 72
                    mem[_3627 + _2848 + _2876 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3627 + _2848 + _2876 + 76] = 32
                    _4122 = mem[_4058]
                    mem[_3627 + _2848 + _2876 + 108] = mem[_4058]
                    idx = 0
                    while idx < _4122:
                        mem[idx + _3627 + _2848 + _2876 + 140] = mem[idx + _4058 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4122) > _4122:
                        mem[_4122 + _3627 + _2848 + _2876 + 140] = 0
                    revert with 0, 32, mem[_3627 + _2848 + _2876 + 108 len ceil32(_4122) + 32]
                _3628 = mem[_2358]
                idx = 0
                while idx < _3628:
                    mem[idx + _2848 + _2876 + 72] = mem[idx + _2358 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3628) <= _3628:
                    _4059 = mem[64]
                    mem[mem[64]] = _3628 + _2848 + _2876 + -mem[64] + 40
                    mem[64] = _3628 + _2848 + _2876 + 72
                    mem[_3628 + _2848 + _2876 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3628 + _2848 + _2876 + 76] = 32
                    _4123 = mem[_4059]
                    mem[_3628 + _2848 + _2876 + 108] = mem[_4059]
                    idx = 0
                    while idx < _4123:
                        mem[idx + _3628 + _2848 + _2876 + 140] = mem[idx + _4059 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4123) > _4123:
                        mem[_4123 + _3628 + _2848 + _2876 + 140] = 0
                    revert with 0, 32, mem[_3628 + _2848 + _2876 + 108 len ceil32(_4123) + 32]
                mem[_3628 + _2848 + _2876 + 72] = 0
                _4060 = mem[64]
                mem[mem[64]] = _3628 + _2848 + _2876 + -mem[64] + 40
                mem[64] = _3628 + _2848 + _2876 + 72
                mem[_3628 + _2848 + _2876 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3628 + _2848 + _2876 + 76] = 32
                _4124 = mem[_4060]
                mem[_3628 + _2848 + _2876 + 108] = mem[_4060]
                idx = 0
                while idx < _4124:
                    mem[idx + _3628 + _2848 + _2876 + 140] = mem[idx + _4060 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4124) > _4124:
                    mem[_4124 + _3628 + _2848 + _2876 + 140] = 0
                revert with 0, 32, mem[_3628 + _2848 + _2876 + 108 len ceil32(_4124) + 32]
            _1003 = mem[64]
            mem[64] = mem[64] + ceil32(calldata.size) + 32
            mem[_1003] = calldata.size
            mem[_1003 + 32 len calldata.size] = call.data[0 len calldata.size]
            mem[_1003 + calldata.size + 32] = 0
            _1004 = mem[calldata.size + _1003]
            mem[0] = mem[calldata.size + _1003 + 12 len 20]
            mem[32] = sha3(0, 2)
            if uint8(roleAdmin[0][address(_1004)].field_0):
                if stor13[cd[((32 * idx) + cd[4] + 36)]]:
                    revert with 0, 'Supplied typeId is already used'
                if cd[((32 * idx) + cd[36] + 36)] <= 0:
                    revert with 0, 'max supply must be > 0'
                sub_fc86b662[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
                stor12[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[68] + 36)]))
                stor11[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[100] + 36)]))
                stor13[cd[((32 * idx) + cd[4] + 36)]] = 1
                if not cd[((32 * idx) + cd[68] + 36)]:
                    mem[32] = 15
                    if not bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                        if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                        if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            t = _985 + 32
                            while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                        mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                        mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                        mem[mem[64] + 128] = 160
                        mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                        s = 0
                        while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            mem[s + mem[64] + 192] = mem[s + _985 + 32]
                            s = s + 32
                            continue 
                        if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                        emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                    else:
                        if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                        if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                            mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                            mem[mem[64] + 128] = 160
                            mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                            s = 0
                            while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[s + mem[64] + 192] = mem[s + _985 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                            emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                        else:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            t = _985 + 32
                            while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            _2877 = mem[64]
                            mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                            mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                            mem[mem[64] + 128] = 160
                            mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                            s = 0
                            while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[s + mem[64] + 192] = mem[s + _985 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + _2877 + 192] = 0
                            emit 0xdd645363: mem[mem[64] len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + _2877 + -mem[64] + 192]
                else:
                    sub_0f699e80[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 15
                    if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                        if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                        if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            t = _985 + 32
                            while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                        if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            t = _985 + 32
                            while _985 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                    mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                    mem[mem[64] + 128] = 160
                    mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                    s = 0
                    while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                        mem[s + mem[64] + 192] = mem[s + _985 + 32]
                        s = s + 32
                        continue 
                    if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                        mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                    emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1152 = mem[64]
            mem[mem[64]] = 42
            mem[64] = mem[64] + 96
            mem[_1152 + 32 len 42] = call.data[calldata.size len 42]
            if 0 >= mem[_1152]:
                revert with 0, 50
            mem[_1152 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_1152]:
                revert with 0, 50
            mem[_1152 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            idx = 41
            s = address(_1004)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_1152]:
                    revert with 0, 50
                mem[idx + _1152 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if address(_1004) + 10240:
                revert with 0, 'Strings: hex length insufficient'
            _2359 = mem[64]
            mem[mem[64]] = 66
            mem[64] = mem[64] + 128
            mem[_2359 + 32 len 66] = call.data[calldata.size len 66]
            if 0 >= mem[_2359]:
                revert with 0, 50
            mem[_2359 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_2359]:
                revert with 0, 50
            mem[_2359 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            idx = 65
            while idx > 1:
                if idx >= mem[_2359]:
                    revert with 0, 50
                mem[idx + _2359 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                continue 
            _2849 = mem[64]
            mem[mem[64] + 32] = 'AccessControl: account '
            _2881 = mem[_1152]
            idx = 0
            while idx < _2881:
                mem[idx + _2849 + 55] = mem[idx + _1152 + 32]
                idx = idx + 32
                continue 
            mem[_2849 + _2881 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
            if ceil32(_2881) <= _2881:
                _3629 = mem[_2359]
                idx = 0
                while idx < _3629:
                    mem[idx + _2849 + _2881 + 72] = mem[idx + _2359 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3629) <= _3629:
                    _4061 = mem[64]
                    mem[mem[64]] = _3629 + _2849 + _2881 + -mem[64] + 40
                    mem[64] = _3629 + _2849 + _2881 + 72
                    mem[_3629 + _2849 + _2881 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3629 + _2849 + _2881 + 76] = 32
                    _4125 = mem[_4061]
                    mem[_3629 + _2849 + _2881 + 108] = mem[_4061]
                    idx = 0
                    while idx < _4125:
                        mem[idx + _3629 + _2849 + _2881 + 140] = mem[idx + _4061 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4125) > _4125:
                        mem[_4125 + _3629 + _2849 + _2881 + 140] = 0
                    revert with 0, 32, mem[_3629 + _2849 + _2881 + 108 len ceil32(_4125) + 32]
                mem[_3629 + _2849 + _2881 + 72] = 0
                _4062 = mem[64]
                mem[mem[64]] = _3629 + _2849 + _2881 + -mem[64] + 40
                mem[64] = _3629 + _2849 + _2881 + 72
                mem[_3629 + _2849 + _2881 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3629 + _2849 + _2881 + 76] = 32
                _4126 = mem[_4062]
                mem[_3629 + _2849 + _2881 + 108] = mem[_4062]
                idx = 0
                while idx < _4126:
                    mem[idx + _3629 + _2849 + _2881 + 140] = mem[idx + _4062 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4126) > _4126:
                    mem[_4126 + _3629 + _2849 + _2881 + 140] = 0
                revert with 0, 32, mem[_3629 + _2849 + _2881 + 108 len ceil32(_4126) + 32]
            _3630 = mem[_2359]
            idx = 0
            while idx < _3630:
                mem[idx + _2849 + _2881 + 72] = mem[idx + _2359 + 32]
                idx = idx + 32
                continue 
            if ceil32(_3630) <= _3630:
                _4063 = mem[64]
                mem[mem[64]] = _3630 + _2849 + _2881 + -mem[64] + 40
                mem[64] = _3630 + _2849 + _2881 + 72
                mem[_3630 + _2849 + _2881 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3630 + _2849 + _2881 + 76] = 32
                _4127 = mem[_4063]
                mem[_3630 + _2849 + _2881 + 108] = mem[_4063]
                idx = 0
                while idx < _4127:
                    mem[idx + _3630 + _2849 + _2881 + 140] = mem[idx + _4063 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4127) > _4127:
                    mem[_4127 + _3630 + _2849 + _2881 + 140] = 0
                revert with 0, 32, mem[_3630 + _2849 + _2881 + 108 len ceil32(_4127) + 32]
            mem[_3630 + _2849 + _2881 + 72] = 0
            _4064 = mem[64]
            mem[mem[64]] = _3630 + _2849 + _2881 + -mem[64] + 40
            mem[64] = _3630 + _2849 + _2881 + 72
            mem[_3630 + _2849 + _2881 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3630 + _2849 + _2881 + 76] = 32
            _4128 = mem[_4064]
            mem[_3630 + _2849 + _2881 + 108] = mem[_4064]
            idx = 0
            while idx < _4128:
                mem[idx + _3630 + _2849 + _2881 + 140] = mem[idx + _4064 + 32]
                idx = idx + 32
                continue 
            if ceil32(_4128) > _4128:
                mem[_4128 + _3630 + _2849 + _2881 + 140] = 0
            revert with 0, 32, mem[_3630 + _2849 + _2881 + 108 len ceil32(_4128) + 32]
        _969 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = ('cd', 4).length
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + 192 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[mem[64] + 32] = (32 * ('cd', 4).length) + 192
        mem[mem[64] + (32 * ('cd', 4).length) + 192] = ('cd', 36).length
        require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + (32 * ('cd', 4).length) + 224 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[mem[64] + 64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
        mem[mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256
        while idx < ('cd', 68).length:
            require cd[s] == bool(cd[s])
            mem[t] = bool(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256
        mem[mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288
        while idx < ('cd', 100).length:
            require cd[s] == bool(cd[s])
            mem[t] = bool(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 128] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288
        mem[mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = ('cd', 132).length
        idx = 0
        s = cd[132] + 36
        t = mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320
        u = mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320
        while idx < ('cd', 132).length:
            mem[u] = t + -mem[64] + -(32 * ('cd', 4).length) + -(32 * ('cd', 36).length) + -(32 * ('cd', 68).length) + -(32 * ('cd', 100).length) - 320
            require cd[s] < calldata.size + -cd[132] - 67
            require cd[(cd[132] + cd[s] + 36)] <= test266151307()
            require cd[132] + 36 <= calldata.size - cd[(cd[132] + cd[s] + 36)]
            mem[t] = cd[(cd[132] + cd[s] + 36)]
            mem[t + 32 len cd[(cd[132] + cd[s] + 36)]] = call.data[cd[132] + cd[s] + 68 len cd[(cd[132] + cd[s] + 36)]]
            mem[cd[(cd[132] + cd[s] + 36)] + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[132] + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        emit 0x33bdc44e: mem[mem[64] len _969 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 132).length) + -mem[64] + 320]
    else:
        mem[64] = ceil32(calldata.size) + 128
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        mem[0] = mem[calldata.size + 108 len 20]
        mem[32] = sha3(0, 2)
        if not uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
            mem[ceil32(calldata.size) + 160 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = mem[calldata.size + 108 len 20]
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + ceil32(calldata.size) + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if mem[calldata.size + 108 len 20] + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(calldata.size) + 256 len 66] = call.data[calldata.size len 66]
            idx = 65
            while idx > 1:
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(calldata.size) + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                continue 
            revert with 0, 
                        32,
                        148,
                        'AccessControl: account ', mem[ceil32(calldata.size) + 192 len 42], 8297, mem[ceil32(calldata.size) + 320 len 66], 0, 0 >> 928,
                        0
        if ('cd', 36).length != ('cd', 4).length:
            revert with 0, 'Array arguments must have same length'
        if ('cd', 68).length != ('cd', 4).length:
            revert with 0, 'Array arguments must have same length'
        if ('cd', 100).length != ('cd', 4).length:
            revert with 0, 'Array arguments must have same length'
        if ('cd', 132).length != ('cd', 4).length:
            revert with 0, 'Array arguments must have same length'
        idx = 0
        while idx < ('cd', 4).length:
            if idx >= ('cd', 36).length:
                revert with 0, 50
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == bool(cd[((32 * idx) + cd[68] + 36)])
            if idx >= ('cd', 100).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[100] + 36)] == bool(cd[((32 * idx) + cd[100] + 36)])
            if idx >= ('cd', 132).length:
                revert with 0, 50
            require cd[(cd[132] + (32 * idx) + 36)] < calldata.size + -cd[132] - 67
            require cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] <= test266151307()
            require cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 68 <= calldata.size - cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
            _986 = mem[64]
            mem[64] = mem[64] + ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 32
            mem[_986] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
            mem[_986 + 32 len cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]] = call.data[cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 68 len cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]]
            mem[_986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32] = 0
            if msg.sender != this.address:
                mem[0] = msg.sender
                mem[32] = sha3(0, 2)
                if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                    _1011 = mem[64]
                    mem[mem[64]] = 42
                    mem[64] = mem[64] + 96
                    mem[_1011 + 32 len 42] = call.data[calldata.size len 42]
                    if 0 >= mem[_1011]:
                        revert with 0, 50
                    mem[_1011 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_1011]:
                        revert with 0, 50
                    mem[_1011 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_1011]:
                            revert with 0, 50
                        mem[idx + _1011 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    _2363 = mem[64]
                    mem[mem[64]] = 66
                    mem[64] = mem[64] + 128
                    mem[_2363 + 32 len 66] = call.data[calldata.size len 66]
                    if 0 >= mem[_2363]:
                        revert with 0, 50
                    mem[_2363 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_2363]:
                        revert with 0, 50
                    mem[_2363 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 65
                    while idx > 1:
                        if idx >= mem[_2363]:
                            revert with 0, 50
                        mem[idx + _2363 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        continue 
                    _2855 = mem[64]
                    mem[mem[64] + 32] = 'AccessControl: account '
                    _2893 = mem[_1011]
                    idx = 0
                    while idx < _2893:
                        mem[idx + _2855 + 55] = mem[idx + _1011 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2855 + _2893 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                    if ceil32(_2893) <= _2893:
                        _3637 = mem[_2363]
                        idx = 0
                        while idx < _3637:
                            mem[idx + _2855 + _2893 + 72] = mem[idx + _2363 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_3637) <= _3637:
                            _4077 = mem[64]
                            mem[mem[64]] = _3637 + _2855 + _2893 + -mem[64] + 40
                            mem[64] = _3637 + _2855 + _2893 + 72
                            mem[_3637 + _2855 + _2893 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3637 + _2855 + _2893 + 76] = 32
                            _4141 = mem[_4077]
                            mem[_3637 + _2855 + _2893 + 108] = mem[_4077]
                            idx = 0
                            while idx < _4141:
                                mem[idx + _3637 + _2855 + _2893 + 140] = mem[idx + _4077 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_4141) > _4141:
                                mem[_4141 + _3637 + _2855 + _2893 + 140] = 0
                            revert with 0, 32, mem[_3637 + _2855 + _2893 + 108 len ceil32(_4141) + 32]
                        mem[_3637 + _2855 + _2893 + 72] = 0
                        _4078 = mem[64]
                        mem[mem[64]] = _3637 + _2855 + _2893 + -mem[64] + 40
                        mem[64] = _3637 + _2855 + _2893 + 72
                        mem[_3637 + _2855 + _2893 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3637 + _2855 + _2893 + 76] = 32
                        _4142 = mem[_4078]
                        mem[_3637 + _2855 + _2893 + 108] = mem[_4078]
                        idx = 0
                        while idx < _4142:
                            mem[idx + _3637 + _2855 + _2893 + 140] = mem[idx + _4078 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4142) > _4142:
                            mem[_4142 + _3637 + _2855 + _2893 + 140] = 0
                        revert with 0, 32, mem[_3637 + _2855 + _2893 + 108 len ceil32(_4142) + 32]
                    _3638 = mem[_2363]
                    idx = 0
                    while idx < _3638:
                        mem[idx + _2855 + _2893 + 72] = mem[idx + _2363 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3638) <= _3638:
                        _4079 = mem[64]
                        mem[mem[64]] = _3638 + _2855 + _2893 + -mem[64] + 40
                        mem[64] = _3638 + _2855 + _2893 + 72
                        mem[_3638 + _2855 + _2893 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3638 + _2855 + _2893 + 76] = 32
                        _4143 = mem[_4079]
                        mem[_3638 + _2855 + _2893 + 108] = mem[_4079]
                        idx = 0
                        while idx < _4143:
                            mem[idx + _3638 + _2855 + _2893 + 140] = mem[idx + _4079 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4143) > _4143:
                            mem[_4143 + _3638 + _2855 + _2893 + 140] = 0
                        revert with 0, 32, mem[_3638 + _2855 + _2893 + 108 len ceil32(_4143) + 32]
                    mem[_3638 + _2855 + _2893 + 72] = 0
                    _4080 = mem[64]
                    mem[mem[64]] = _3638 + _2855 + _2893 + -mem[64] + 40
                    mem[64] = _3638 + _2855 + _2893 + 72
                    mem[_3638 + _2855 + _2893 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3638 + _2855 + _2893 + 76] = 32
                    _4144 = mem[_4080]
                    mem[_3638 + _2855 + _2893 + 108] = mem[_4080]
                    idx = 0
                    while idx < _4144:
                        mem[idx + _3638 + _2855 + _2893 + 140] = mem[idx + _4080 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4144) > _4144:
                        mem[_4144 + _3638 + _2855 + _2893 + 140] = 0
                    revert with 0, 32, mem[_3638 + _2855 + _2893 + 108 len ceil32(_4144) + 32]
                if msg.sender != this.address:
                    mem[0] = msg.sender
                    mem[32] = sha3(0, 2)
                    if uint8(roleAdmin[0][address(msg.sender)].field_0):
                        if stor13[cd[((32 * idx) + cd[4] + 36)]]:
                            revert with 0, 'Supplied typeId is already used'
                        if cd[((32 * idx) + cd[36] + 36)] <= 0:
                            revert with 0, 'max supply must be > 0'
                        sub_fc86b662[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
                        stor12[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[68] + 36)]))
                        stor11[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[100] + 36)]))
                        stor13[cd[((32 * idx) + cd[4] + 36)]] = 1
                        if not cd[((32 * idx) + cd[68] + 36)]:
                            mem[32] = 15
                            if not bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                                if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                                if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    t = _986 + 32
                                    while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                mem[mem[64] + 128] = 160
                                mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                s = 0
                                while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[s + mem[64] + 192] = mem[s + _986 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                                emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                            else:
                                if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                                if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                    mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                    mem[mem[64] + 128] = 160
                                    mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                    s = 0
                                    while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                        mem[s + mem[64] + 192] = mem[s + _986 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                        mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                                    emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                                else:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    t = _986 + 32
                                    while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    _2883 = mem[64]
                                    mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                    mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                    mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                    mem[mem[64] + 128] = 160
                                    mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                    s = 0
                                    while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                        mem[s + mem[64] + 192] = mem[s + _986 + 32]
                                        s = s + 32
                                        continue 
                                    if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                        mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + _2883 + 192] = 0
                                    emit 0xdd645363: mem[mem[64] len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + _2883 + -mem[64] + 192]
                        else:
                            sub_0f699e80[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[4] + 36)]
                            mem[32] = 15
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                                if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                                if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    t = _986 + 32
                                    while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            else:
                                if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                                if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                    t = _986 + 32
                                    while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                        stor[s] = mem[t]
                                        s = s + 1
                                        t = t + 32
                                        continue 
                                    s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                    while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                            mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                            mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                            mem[mem[64] + 128] = 160
                            mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                            s = 0
                            while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[s + mem[64] + 192] = mem[s + _986 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                            emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _1153 = mem[64]
                    mem[mem[64]] = 42
                    mem[64] = mem[64] + 96
                    mem[_1153 + 32 len 42] = call.data[calldata.size len 42]
                    if 0 >= mem[_1153]:
                        revert with 0, 50
                    mem[_1153 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_1153]:
                        revert with 0, 50
                    mem[_1153 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 41
                    s = address(msg.sender)
                    while idx > 1:
                        if s % 16 >= 16:
                            revert with 0, 50
                        if idx >= mem[_1153]:
                            revert with 0, 50
                        mem[idx + _1153 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        s = Mask(252, 0, s) * 0.0625
                        continue 
                    if msg.sender + 10240:
                        revert with 0, 'Strings: hex length insufficient'
                    _2361 = mem[64]
                    mem[mem[64]] = 66
                    mem[64] = mem[64] + 128
                    mem[_2361 + 32 len 66] = call.data[calldata.size len 66]
                    if 0 >= mem[_2361]:
                        revert with 0, 50
                    mem[_2361 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                    if 1 >= mem[_2361]:
                        revert with 0, 50
                    mem[_2361 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                    idx = 65
                    while idx > 1:
                        if idx >= mem[_2361]:
                            revert with 0, 50
                        mem[idx + _2361 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                        if not idx:
                            revert with 0, 17
                        idx = idx - 1
                        continue 
                    _2853 = mem[64]
                    mem[mem[64] + 32] = 'AccessControl: account '
                    _2887 = mem[_1153]
                    idx = 0
                    while idx < _2887:
                        mem[idx + _2853 + 55] = mem[idx + _1153 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2853 + _2887 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                    if ceil32(_2887) <= _2887:
                        _3633 = mem[_2361]
                        idx = 0
                        while idx < _3633:
                            mem[idx + _2853 + _2887 + 72] = mem[idx + _2361 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_3633) <= _3633:
                            _4069 = mem[64]
                            mem[mem[64]] = _3633 + _2853 + _2887 + -mem[64] + 40
                            mem[64] = _3633 + _2853 + _2887 + 72
                            mem[_3633 + _2853 + _2887 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_3633 + _2853 + _2887 + 76] = 32
                            _4133 = mem[_4069]
                            mem[_3633 + _2853 + _2887 + 108] = mem[_4069]
                            idx = 0
                            while idx < _4133:
                                mem[idx + _3633 + _2853 + _2887 + 140] = mem[idx + _4069 + 32]
                                idx = idx + 32
                                continue 
                            if ceil32(_4133) > _4133:
                                mem[_4133 + _3633 + _2853 + _2887 + 140] = 0
                            revert with 0, 32, mem[_3633 + _2853 + _2887 + 108 len ceil32(_4133) + 32]
                        mem[_3633 + _2853 + _2887 + 72] = 0
                        _4070 = mem[64]
                        mem[mem[64]] = _3633 + _2853 + _2887 + -mem[64] + 40
                        mem[64] = _3633 + _2853 + _2887 + 72
                        mem[_3633 + _2853 + _2887 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3633 + _2853 + _2887 + 76] = 32
                        _4134 = mem[_4070]
                        mem[_3633 + _2853 + _2887 + 108] = mem[_4070]
                        idx = 0
                        while idx < _4134:
                            mem[idx + _3633 + _2853 + _2887 + 140] = mem[idx + _4070 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4134) > _4134:
                            mem[_4134 + _3633 + _2853 + _2887 + 140] = 0
                        revert with 0, 32, mem[_3633 + _2853 + _2887 + 108 len ceil32(_4134) + 32]
                    _3634 = mem[_2361]
                    idx = 0
                    while idx < _3634:
                        mem[idx + _2853 + _2887 + 72] = mem[idx + _2361 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3634) <= _3634:
                        _4071 = mem[64]
                        mem[mem[64]] = _3634 + _2853 + _2887 + -mem[64] + 40
                        mem[64] = _3634 + _2853 + _2887 + 72
                        mem[_3634 + _2853 + _2887 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3634 + _2853 + _2887 + 76] = 32
                        _4135 = mem[_4071]
                        mem[_3634 + _2853 + _2887 + 108] = mem[_4071]
                        idx = 0
                        while idx < _4135:
                            mem[idx + _3634 + _2853 + _2887 + 140] = mem[idx + _4071 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4135) > _4135:
                            mem[_4135 + _3634 + _2853 + _2887 + 140] = 0
                        revert with 0, 32, mem[_3634 + _2853 + _2887 + 108 len ceil32(_4135) + 32]
                    mem[_3634 + _2853 + _2887 + 72] = 0
                    _4072 = mem[64]
                    mem[mem[64]] = _3634 + _2853 + _2887 + -mem[64] + 40
                    mem[64] = _3634 + _2853 + _2887 + 72
                    mem[_3634 + _2853 + _2887 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3634 + _2853 + _2887 + 76] = 32
                    _4136 = mem[_4072]
                    mem[_3634 + _2853 + _2887 + 108] = mem[_4072]
                    idx = 0
                    while idx < _4136:
                        mem[idx + _3634 + _2853 + _2887 + 140] = mem[idx + _4072 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4136) > _4136:
                        mem[_4136 + _3634 + _2853 + _2887 + 140] = 0
                    revert with 0, 32, mem[_3634 + _2853 + _2887 + 108 len ceil32(_4136) + 32]
                _1005 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_1005] = calldata.size
                mem[_1005 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_1005 + calldata.size + 32] = 0
                _1006 = mem[calldata.size + _1005]
                mem[0] = mem[calldata.size + _1005 + 12 len 20]
                mem[32] = sha3(0, 2)
                if uint8(roleAdmin[0][address(_1006)].field_0):
                    if stor13[cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 0, 'Supplied typeId is already used'
                    if cd[((32 * idx) + cd[36] + 36)] <= 0:
                        revert with 0, 'max supply must be > 0'
                    sub_fc86b662[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
                    stor12[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[68] + 36)]))
                    stor11[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[100] + 36)]))
                    stor13[cd[((32 * idx) + cd[4] + 36)]] = 1
                    if not cd[((32 * idx) + cd[68] + 36)]:
                        mem[32] = 15
                        if not bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _986 + 32
                                while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                            mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                            mem[mem[64] + 128] = 160
                            mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                            s = 0
                            while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[s + mem[64] + 192] = mem[s + _986 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                            emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                        else:
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                mem[mem[64] + 128] = 160
                                mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                s = 0
                                while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[s + mem[64] + 192] = mem[s + _986 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                                emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _986 + 32
                                while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2888 = mem[64]
                                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                mem[mem[64] + 128] = 160
                                mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                s = 0
                                while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[s + mem[64] + 192] = mem[s + _986 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + _2888 + 192] = 0
                                emit 0xdd645363: mem[mem[64] len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + _2888 + -mem[64] + 192]
                    else:
                        sub_0f699e80[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 15
                        if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _986 + 32
                                while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _986 + 32
                                while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                        mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                        mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                        mem[mem[64] + 128] = 160
                        mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                        s = 0
                        while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            mem[s + mem[64] + 192] = mem[s + _986 + 32]
                            s = s + 32
                            continue 
                        if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                        emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1154 = mem[64]
                mem[mem[64]] = 42
                mem[64] = mem[64] + 96
                mem[_1154 + 32 len 42] = call.data[calldata.size len 42]
                if 0 >= mem[_1154]:
                    revert with 0, 50
                mem[_1154 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_1154]:
                    revert with 0, 50
                mem[_1154 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 41
                s = address(_1006)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_1154]:
                        revert with 0, 50
                    mem[idx + _1154 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if address(_1006) + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                _2362 = mem[64]
                mem[mem[64]] = 66
                mem[64] = mem[64] + 128
                mem[_2362 + 32 len 66] = call.data[calldata.size len 66]
                if 0 >= mem[_2362]:
                    revert with 0, 50
                mem[_2362 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_2362]:
                    revert with 0, 50
                mem[_2362 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 65
                while idx > 1:
                    if idx >= mem[_2362]:
                        revert with 0, 50
                    mem[idx + _2362 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                _2854 = mem[64]
                mem[mem[64] + 32] = 'AccessControl: account '
                _2892 = mem[_1154]
                idx = 0
                while idx < _2892:
                    mem[idx + _2854 + 55] = mem[idx + _1154 + 32]
                    idx = idx + 32
                    continue 
                mem[_2854 + _2892 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                if ceil32(_2892) <= _2892:
                    _3635 = mem[_2362]
                    idx = 0
                    while idx < _3635:
                        mem[idx + _2854 + _2892 + 72] = mem[idx + _2362 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3635) <= _3635:
                        _4073 = mem[64]
                        mem[mem[64]] = _3635 + _2854 + _2892 + -mem[64] + 40
                        mem[64] = _3635 + _2854 + _2892 + 72
                        mem[_3635 + _2854 + _2892 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3635 + _2854 + _2892 + 76] = 32
                        _4137 = mem[_4073]
                        mem[_3635 + _2854 + _2892 + 108] = mem[_4073]
                        idx = 0
                        while idx < _4137:
                            mem[idx + _3635 + _2854 + _2892 + 140] = mem[idx + _4073 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4137) > _4137:
                            mem[_4137 + _3635 + _2854 + _2892 + 140] = 0
                        revert with 0, 32, mem[_3635 + _2854 + _2892 + 108 len ceil32(_4137) + 32]
                    mem[_3635 + _2854 + _2892 + 72] = 0
                    _4074 = mem[64]
                    mem[mem[64]] = _3635 + _2854 + _2892 + -mem[64] + 40
                    mem[64] = _3635 + _2854 + _2892 + 72
                    mem[_3635 + _2854 + _2892 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3635 + _2854 + _2892 + 76] = 32
                    _4138 = mem[_4074]
                    mem[_3635 + _2854 + _2892 + 108] = mem[_4074]
                    idx = 0
                    while idx < _4138:
                        mem[idx + _3635 + _2854 + _2892 + 140] = mem[idx + _4074 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4138) > _4138:
                        mem[_4138 + _3635 + _2854 + _2892 + 140] = 0
                    revert with 0, 32, mem[_3635 + _2854 + _2892 + 108 len ceil32(_4138) + 32]
                _3636 = mem[_2362]
                idx = 0
                while idx < _3636:
                    mem[idx + _2854 + _2892 + 72] = mem[idx + _2362 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3636) <= _3636:
                    _4075 = mem[64]
                    mem[mem[64]] = _3636 + _2854 + _2892 + -mem[64] + 40
                    mem[64] = _3636 + _2854 + _2892 + 72
                    mem[_3636 + _2854 + _2892 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3636 + _2854 + _2892 + 76] = 32
                    _4139 = mem[_4075]
                    mem[_3636 + _2854 + _2892 + 108] = mem[_4075]
                    idx = 0
                    while idx < _4139:
                        mem[idx + _3636 + _2854 + _2892 + 140] = mem[idx + _4075 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4139) > _4139:
                        mem[_4139 + _3636 + _2854 + _2892 + 140] = 0
                    revert with 0, 32, mem[_3636 + _2854 + _2892 + 108 len ceil32(_4139) + 32]
                mem[_3636 + _2854 + _2892 + 72] = 0
                _4076 = mem[64]
                mem[mem[64]] = _3636 + _2854 + _2892 + -mem[64] + 40
                mem[64] = _3636 + _2854 + _2892 + 72
                mem[_3636 + _2854 + _2892 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3636 + _2854 + _2892 + 76] = 32
                _4140 = mem[_4076]
                mem[_3636 + _2854 + _2892 + 108] = mem[_4076]
                idx = 0
                while idx < _4140:
                    mem[idx + _3636 + _2854 + _2892 + 140] = mem[idx + _4076 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4140) > _4140:
                    mem[_4140 + _3636 + _2854 + _2892 + 140] = 0
                revert with 0, 32, mem[_3636 + _2854 + _2892 + 108 len ceil32(_4140) + 32]
            _991 = mem[64]
            mem[64] = mem[64] + ceil32(calldata.size) + 32
            mem[_991] = calldata.size
            mem[_991 + 32 len calldata.size] = call.data[0 len calldata.size]
            mem[_991 + calldata.size + 32] = 0
            _992 = mem[calldata.size + _991]
            mem[0] = mem[calldata.size + _991 + 12 len 20]
            mem[32] = sha3(0, 2)
            if not uint8(roleAdmin[0][address(_992)].field_0):
                _1012 = mem[64]
                mem[mem[64]] = 42
                mem[64] = mem[64] + 96
                mem[_1012 + 32 len 42] = call.data[calldata.size len 42]
                if 0 >= mem[_1012]:
                    revert with 0, 50
                mem[_1012 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_1012]:
                    revert with 0, 50
                mem[_1012 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 41
                s = address(_992)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_1012]:
                        revert with 0, 50
                    mem[idx + _1012 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if address(_992) + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                _2366 = mem[64]
                mem[mem[64]] = 66
                mem[64] = mem[64] + 128
                mem[_2366 + 32 len 66] = call.data[calldata.size len 66]
                if 0 >= mem[_2366]:
                    revert with 0, 50
                mem[_2366 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_2366]:
                    revert with 0, 50
                mem[_2366 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 65
                while idx > 1:
                    if idx >= mem[_2366]:
                        revert with 0, 50
                    mem[idx + _2366 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                _2858 = mem[64]
                mem[mem[64] + 32] = 'AccessControl: account '
                _2904 = mem[_1012]
                idx = 0
                while idx < _2904:
                    mem[idx + _2858 + 55] = mem[idx + _1012 + 32]
                    idx = idx + 32
                    continue 
                mem[_2858 + _2904 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                if ceil32(_2904) <= _2904:
                    _3643 = mem[_2366]
                    idx = 0
                    while idx < _3643:
                        mem[idx + _2858 + _2904 + 72] = mem[idx + _2366 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3643) <= _3643:
                        _4089 = mem[64]
                        mem[mem[64]] = _3643 + _2858 + _2904 + -mem[64] + 40
                        mem[64] = _3643 + _2858 + _2904 + 72
                        mem[_3643 + _2858 + _2904 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3643 + _2858 + _2904 + 76] = 32
                        _4153 = mem[_4089]
                        mem[_3643 + _2858 + _2904 + 108] = mem[_4089]
                        idx = 0
                        while idx < _4153:
                            mem[idx + _3643 + _2858 + _2904 + 140] = mem[idx + _4089 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4153) > _4153:
                            mem[_4153 + _3643 + _2858 + _2904 + 140] = 0
                        revert with 0, 32, mem[_3643 + _2858 + _2904 + 108 len ceil32(_4153) + 32]
                    mem[_3643 + _2858 + _2904 + 72] = 0
                    _4090 = mem[64]
                    mem[mem[64]] = _3643 + _2858 + _2904 + -mem[64] + 40
                    mem[64] = _3643 + _2858 + _2904 + 72
                    mem[_3643 + _2858 + _2904 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3643 + _2858 + _2904 + 76] = 32
                    _4154 = mem[_4090]
                    mem[_3643 + _2858 + _2904 + 108] = mem[_4090]
                    idx = 0
                    while idx < _4154:
                        mem[idx + _3643 + _2858 + _2904 + 140] = mem[idx + _4090 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4154) > _4154:
                        mem[_4154 + _3643 + _2858 + _2904 + 140] = 0
                    revert with 0, 32, mem[_3643 + _2858 + _2904 + 108 len ceil32(_4154) + 32]
                _3644 = mem[_2366]
                idx = 0
                while idx < _3644:
                    mem[idx + _2858 + _2904 + 72] = mem[idx + _2366 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3644) <= _3644:
                    _4091 = mem[64]
                    mem[mem[64]] = _3644 + _2858 + _2904 + -mem[64] + 40
                    mem[64] = _3644 + _2858 + _2904 + 72
                    mem[_3644 + _2858 + _2904 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3644 + _2858 + _2904 + 76] = 32
                    _4155 = mem[_4091]
                    mem[_3644 + _2858 + _2904 + 108] = mem[_4091]
                    idx = 0
                    while idx < _4155:
                        mem[idx + _3644 + _2858 + _2904 + 140] = mem[idx + _4091 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4155) > _4155:
                        mem[_4155 + _3644 + _2858 + _2904 + 140] = 0
                    revert with 0, 32, mem[_3644 + _2858 + _2904 + 108 len ceil32(_4155) + 32]
                mem[_3644 + _2858 + _2904 + 72] = 0
                _4092 = mem[64]
                mem[mem[64]] = _3644 + _2858 + _2904 + -mem[64] + 40
                mem[64] = _3644 + _2858 + _2904 + 72
                mem[_3644 + _2858 + _2904 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3644 + _2858 + _2904 + 76] = 32
                _4156 = mem[_4092]
                mem[_3644 + _2858 + _2904 + 108] = mem[_4092]
                idx = 0
                while idx < _4156:
                    mem[idx + _3644 + _2858 + _2904 + 140] = mem[idx + _4092 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4156) > _4156:
                    mem[_4156 + _3644 + _2858 + _2904 + 140] = 0
                revert with 0, 32, mem[_3644 + _2858 + _2904 + 108 len ceil32(_4156) + 32]
            if msg.sender != this.address:
                mem[0] = msg.sender
                mem[32] = sha3(0, 2)
                if uint8(roleAdmin[0][address(msg.sender)].field_0):
                    if stor13[cd[((32 * idx) + cd[4] + 36)]]:
                        revert with 0, 'Supplied typeId is already used'
                    if cd[((32 * idx) + cd[36] + 36)] <= 0:
                        revert with 0, 'max supply must be > 0'
                    sub_fc86b662[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
                    stor12[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[68] + 36)]))
                    stor11[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[100] + 36)]))
                    stor13[cd[((32 * idx) + cd[4] + 36)]] = 1
                    if not cd[((32 * idx) + cd[68] + 36)]:
                        mem[32] = 15
                        if not bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _986 + 32
                                while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                            mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                            mem[mem[64] + 128] = 160
                            mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                            s = 0
                            while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[s + mem[64] + 192] = mem[s + _986 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                            emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                        else:
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                mem[mem[64] + 128] = 160
                                mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                s = 0
                                while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[s + mem[64] + 192] = mem[s + _986 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                                emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _986 + 32
                                while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                _2894 = mem[64]
                                mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                                mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                                mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                                mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                                mem[mem[64] + 128] = 160
                                mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                                s = 0
                                while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[s + mem[64] + 192] = mem[s + _986 + 32]
                                    s = s + 32
                                    continue 
                                if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                    mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + _2894 + 192] = 0
                                emit 0xdd645363: mem[mem[64] len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + _2894 + -mem[64] + 192]
                    else:
                        sub_0f699e80[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[4] + 36)]
                        mem[32] = 15
                        if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _986 + 32
                                while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                            if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                                t = _986 + 32
                                while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                    stor[s] = mem[t]
                                    s = s + 1
                                    t = t + 32
                                    continue 
                                s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                                while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                        mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                        mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                        mem[mem[64] + 128] = 160
                        mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                        s = 0
                        while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            mem[s + mem[64] + 192] = mem[s + _986 + 32]
                            s = s + 32
                            continue 
                        if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                        emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _1155 = mem[64]
                mem[mem[64]] = 42
                mem[64] = mem[64] + 96
                mem[_1155 + 32 len 42] = call.data[calldata.size len 42]
                if 0 >= mem[_1155]:
                    revert with 0, 50
                mem[_1155 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_1155]:
                    revert with 0, 50
                mem[_1155 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_1155]:
                        revert with 0, 50
                    mem[idx + _1155 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if msg.sender + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                _2364 = mem[64]
                mem[mem[64]] = 66
                mem[64] = mem[64] + 128
                mem[_2364 + 32 len 66] = call.data[calldata.size len 66]
                if 0 >= mem[_2364]:
                    revert with 0, 50
                mem[_2364 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_2364]:
                    revert with 0, 50
                mem[_2364 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 65
                while idx > 1:
                    if idx >= mem[_2364]:
                        revert with 0, 50
                    mem[idx + _2364 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                _2856 = mem[64]
                mem[mem[64] + 32] = 'AccessControl: account '
                _2898 = mem[_1155]
                idx = 0
                while idx < _2898:
                    mem[idx + _2856 + 55] = mem[idx + _1155 + 32]
                    idx = idx + 32
                    continue 
                mem[_2856 + _2898 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                if ceil32(_2898) <= _2898:
                    _3639 = mem[_2364]
                    idx = 0
                    while idx < _3639:
                        mem[idx + _2856 + _2898 + 72] = mem[idx + _2364 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_3639) <= _3639:
                        _4081 = mem[64]
                        mem[mem[64]] = _3639 + _2856 + _2898 + -mem[64] + 40
                        mem[64] = _3639 + _2856 + _2898 + 72
                        mem[_3639 + _2856 + _2898 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3639 + _2856 + _2898 + 76] = 32
                        _4145 = mem[_4081]
                        mem[_3639 + _2856 + _2898 + 108] = mem[_4081]
                        idx = 0
                        while idx < _4145:
                            mem[idx + _3639 + _2856 + _2898 + 140] = mem[idx + _4081 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_4145) > _4145:
                            mem[_4145 + _3639 + _2856 + _2898 + 140] = 0
                        revert with 0, 32, mem[_3639 + _2856 + _2898 + 108 len ceil32(_4145) + 32]
                    mem[_3639 + _2856 + _2898 + 72] = 0
                    _4082 = mem[64]
                    mem[mem[64]] = _3639 + _2856 + _2898 + -mem[64] + 40
                    mem[64] = _3639 + _2856 + _2898 + 72
                    mem[_3639 + _2856 + _2898 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3639 + _2856 + _2898 + 76] = 32
                    _4146 = mem[_4082]
                    mem[_3639 + _2856 + _2898 + 108] = mem[_4082]
                    idx = 0
                    while idx < _4146:
                        mem[idx + _3639 + _2856 + _2898 + 140] = mem[idx + _4082 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4146) > _4146:
                        mem[_4146 + _3639 + _2856 + _2898 + 140] = 0
                    revert with 0, 32, mem[_3639 + _2856 + _2898 + 108 len ceil32(_4146) + 32]
                _3640 = mem[_2364]
                idx = 0
                while idx < _3640:
                    mem[idx + _2856 + _2898 + 72] = mem[idx + _2364 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3640) <= _3640:
                    _4083 = mem[64]
                    mem[mem[64]] = _3640 + _2856 + _2898 + -mem[64] + 40
                    mem[64] = _3640 + _2856 + _2898 + 72
                    mem[_3640 + _2856 + _2898 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3640 + _2856 + _2898 + 76] = 32
                    _4147 = mem[_4083]
                    mem[_3640 + _2856 + _2898 + 108] = mem[_4083]
                    idx = 0
                    while idx < _4147:
                        mem[idx + _3640 + _2856 + _2898 + 140] = mem[idx + _4083 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4147) > _4147:
                        mem[_4147 + _3640 + _2856 + _2898 + 140] = 0
                    revert with 0, 32, mem[_3640 + _2856 + _2898 + 108 len ceil32(_4147) + 32]
                mem[_3640 + _2856 + _2898 + 72] = 0
                _4084 = mem[64]
                mem[mem[64]] = _3640 + _2856 + _2898 + -mem[64] + 40
                mem[64] = _3640 + _2856 + _2898 + 72
                mem[_3640 + _2856 + _2898 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3640 + _2856 + _2898 + 76] = 32
                _4148 = mem[_4084]
                mem[_3640 + _2856 + _2898 + 108] = mem[_4084]
                idx = 0
                while idx < _4148:
                    mem[idx + _3640 + _2856 + _2898 + 140] = mem[idx + _4084 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4148) > _4148:
                    mem[_4148 + _3640 + _2856 + _2898 + 140] = 0
                revert with 0, 32, mem[_3640 + _2856 + _2898 + 108 len ceil32(_4148) + 32]
            _1007 = mem[64]
            mem[64] = mem[64] + ceil32(calldata.size) + 32
            mem[_1007] = calldata.size
            mem[_1007 + 32 len calldata.size] = call.data[0 len calldata.size]
            mem[_1007 + calldata.size + 32] = 0
            _1008 = mem[calldata.size + _1007]
            mem[0] = mem[calldata.size + _1007 + 12 len 20]
            mem[32] = sha3(0, 2)
            if uint8(roleAdmin[0][address(_1008)].field_0):
                if stor13[cd[((32 * idx) + cd[4] + 36)]]:
                    revert with 0, 'Supplied typeId is already used'
                if cd[((32 * idx) + cd[36] + 36)] <= 0:
                    revert with 0, 'max supply must be > 0'
                sub_fc86b662[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
                stor12[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[68] + 36)]))
                stor11[cd[((32 * idx) + cd[4] + 36)]] = uint8(bool(cd[((32 * idx) + cd[100] + 36)]))
                stor13[cd[((32 * idx) + cd[4] + 36)]] = 1
                if not cd[((32 * idx) + cd[68] + 36)]:
                    mem[32] = 15
                    if not bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                        if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                        if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            t = _986 + 32
                            while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                        mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                        mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                        mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                        mem[mem[64] + 128] = 160
                        mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                        s = 0
                        while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            mem[s + mem[64] + 192] = mem[s + _986 + 32]
                            s = s + 32
                            continue 
                        if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                        emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                    else:
                        if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                        if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                            mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                            mem[mem[64] + 128] = 160
                            mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                            s = 0
                            while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[s + mem[64] + 192] = mem[s + _986 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                            emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                        else:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            t = _986 + 32
                            while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            _2899 = mem[64]
                            mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                            mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                            mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                            mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                            mem[mem[64] + 128] = 160
                            mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                            s = 0
                            while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[s + mem[64] + 192] = mem[s + _986 + 32]
                                s = s + 32
                                continue 
                            if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                                mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + _2899 + 192] = 0
                            emit 0xdd645363: mem[mem[64] len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + _2899 + -mem[64] + 192]
                else:
                    sub_0f699e80[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[4] + 36)]
                    mem[32] = 15
                    if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0):
                        if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                        if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            t = _986 + 32
                            while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + ((uint255(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor15[cd[((32 * idx) + cd[4] + 36)]].field_0) == stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(cd[((32 * idx) + cd[4] + 36)], 15)
                        if not cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                        else:
                            stor15[cd[((32 * idx) + cd[4] + 36)]].field_0 = (2 * cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) + 1
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15))
                            t = _986 + 32
                            while _986 + cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 32 > t:
                                stor[s] = mem[t]
                                s = s + 1
                                t = t + 32
                                continue 
                            s = sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (Mask(251, 0, cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + 31) >> 5)
                            while sha3(sha3(cd[((32 * idx) + cd[4] + 36)], 15)) + (stor15[cd[((32 * idx) + cd[4] + 36)]].field_1 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    mem[mem[64]] = cd[((32 * idx) + cd[4] + 36)]
                    mem[mem[64] + 32] = cd[((32 * idx) + cd[36] + 36)]
                    mem[mem[64] + 64] = bool(cd[((32 * idx) + cd[68] + 36)])
                    mem[mem[64] + 96] = bool(cd[((32 * idx) + cd[100] + 36)])
                    mem[mem[64] + 128] = 160
                    mem[mem[64] + 160] = cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]
                    s = 0
                    while s < cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                        mem[s + mem[64] + 192] = mem[s + _986 + 32]
                        s = s + 32
                        continue 
                    if ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]) > cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)]:
                        mem[cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)] + mem[64] + 192] = 0
                    emit 0xdd645363: cd[((32 * idx) + cd[4] + 36)], cd[((32 * idx) + cd[36] + 36)], bool(cd[((32 * idx) + cd[68] + 36)]), bool(cd[((32 * idx) + cd[100] + 36)]), Array(len=cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)], data=mem[mem[64] + 192 len ceil32(cd[(cd[132] + cd[(cd[132] + (32 * idx) + 36)] + 36)])])
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _1156 = mem[64]
            mem[mem[64]] = 42
            mem[64] = mem[64] + 96
            mem[_1156 + 32 len 42] = call.data[calldata.size len 42]
            if 0 >= mem[_1156]:
                revert with 0, 50
            mem[_1156 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_1156]:
                revert with 0, 50
            mem[_1156 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            idx = 41
            s = address(_1008)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= mem[_1156]:
                    revert with 0, 50
                mem[idx + _1156 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if address(_1008) + 10240:
                revert with 0, 'Strings: hex length insufficient'
            _2365 = mem[64]
            mem[mem[64]] = 66
            mem[64] = mem[64] + 128
            mem[_2365 + 32 len 66] = call.data[calldata.size len 66]
            if 0 >= mem[_2365]:
                revert with 0, 50
            mem[_2365 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
            if 1 >= mem[_2365]:
                revert with 0, 50
            mem[_2365 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
            idx = 65
            while idx > 1:
                if idx >= mem[_2365]:
                    revert with 0, 50
                mem[idx + _2365 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                continue 
            _2857 = mem[64]
            mem[mem[64] + 32] = 'AccessControl: account '
            _2903 = mem[_1156]
            idx = 0
            while idx < _2903:
                mem[idx + _2857 + 55] = mem[idx + _1156 + 32]
                idx = idx + 32
                continue 
            mem[_2857 + _2903 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
            if ceil32(_2903) <= _2903:
                _3641 = mem[_2365]
                idx = 0
                while idx < _3641:
                    mem[idx + _2857 + _2903 + 72] = mem[idx + _2365 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_3641) <= _3641:
                    _4085 = mem[64]
                    mem[mem[64]] = _3641 + _2857 + _2903 + -mem[64] + 40
                    mem[64] = _3641 + _2857 + _2903 + 72
                    mem[_3641 + _2857 + _2903 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_3641 + _2857 + _2903 + 76] = 32
                    _4149 = mem[_4085]
                    mem[_3641 + _2857 + _2903 + 108] = mem[_4085]
                    idx = 0
                    while idx < _4149:
                        mem[idx + _3641 + _2857 + _2903 + 140] = mem[idx + _4085 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_4149) > _4149:
                        mem[_4149 + _3641 + _2857 + _2903 + 140] = 0
                    revert with 0, 32, mem[_3641 + _2857 + _2903 + 108 len ceil32(_4149) + 32]
                mem[_3641 + _2857 + _2903 + 72] = 0
                _4086 = mem[64]
                mem[mem[64]] = _3641 + _2857 + _2903 + -mem[64] + 40
                mem[64] = _3641 + _2857 + _2903 + 72
                mem[_3641 + _2857 + _2903 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3641 + _2857 + _2903 + 76] = 32
                _4150 = mem[_4086]
                mem[_3641 + _2857 + _2903 + 108] = mem[_4086]
                idx = 0
                while idx < _4150:
                    mem[idx + _3641 + _2857 + _2903 + 140] = mem[idx + _4086 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4150) > _4150:
                    mem[_4150 + _3641 + _2857 + _2903 + 140] = 0
                revert with 0, 32, mem[_3641 + _2857 + _2903 + 108 len ceil32(_4150) + 32]
            _3642 = mem[_2365]
            idx = 0
            while idx < _3642:
                mem[idx + _2857 + _2903 + 72] = mem[idx + _2365 + 32]
                idx = idx + 32
                continue 
            if ceil32(_3642) <= _3642:
                _4087 = mem[64]
                mem[mem[64]] = _3642 + _2857 + _2903 + -mem[64] + 40
                mem[64] = _3642 + _2857 + _2903 + 72
                mem[_3642 + _2857 + _2903 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_3642 + _2857 + _2903 + 76] = 32
                _4151 = mem[_4087]
                mem[_3642 + _2857 + _2903 + 108] = mem[_4087]
                idx = 0
                while idx < _4151:
                    mem[idx + _3642 + _2857 + _2903 + 140] = mem[idx + _4087 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_4151) > _4151:
                    mem[_4151 + _3642 + _2857 + _2903 + 140] = 0
                revert with 0, 32, mem[_3642 + _2857 + _2903 + 108 len ceil32(_4151) + 32]
            mem[_3642 + _2857 + _2903 + 72] = 0
            _4088 = mem[64]
            mem[mem[64]] = _3642 + _2857 + _2903 + -mem[64] + 40
            mem[64] = _3642 + _2857 + _2903 + 72
            mem[_3642 + _2857 + _2903 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_3642 + _2857 + _2903 + 76] = 32
            _4152 = mem[_4088]
            mem[_3642 + _2857 + _2903 + 108] = mem[_4088]
            idx = 0
            while idx < _4152:
                mem[idx + _3642 + _2857 + _2903 + 140] = mem[idx + _4088 + 32]
                idx = idx + 32
                continue 
            if ceil32(_4152) > _4152:
                mem[_4152 + _3642 + _2857 + _2903 + 140] = 0
            revert with 0, 32, mem[_3642 + _2857 + _2903 + 108 len ceil32(_4152) + 32]
        _970 = mem[64]
        mem[mem[64]] = 160
        mem[mem[64] + 160] = ('cd', 4).length
        require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + 192 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
        mem[mem[64] + 32] = (32 * ('cd', 4).length) + 192
        mem[mem[64] + (32 * ('cd', 4).length) + 192] = ('cd', 36).length
        require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + (32 * ('cd', 4).length) + 224 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[mem[64] + 64] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224
        mem[mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 224] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 256
        while idx < ('cd', 68).length:
            require cd[s] == bool(cd[s])
            mem[t] = bool(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 96] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256
        mem[mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 256] = ('cd', 100).length
        idx = 0
        s = cd[100] + 36
        t = mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + 288
        while idx < ('cd', 100).length:
            require cd[s] == bool(cd[s])
            mem[t] = bool(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[mem[64] + 128] = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288
        mem[mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 288] = ('cd', 132).length
        idx = 0
        s = cd[132] + 36
        t = mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 320
        u = mem[64] + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + 320
        while idx < ('cd', 132).length:
            mem[u] = t + -mem[64] + -(32 * ('cd', 4).length) + -(32 * ('cd', 36).length) + -(32 * ('cd', 68).length) + -(32 * ('cd', 100).length) - 320
            require cd[s] < calldata.size + -cd[132] - 67
            require cd[(cd[132] + cd[s] + 36)] <= test266151307()
            require cd[132] + 36 <= calldata.size - cd[(cd[132] + cd[s] + 36)]
            mem[t] = cd[(cd[132] + cd[s] + 36)]
            mem[t + 32 len cd[(cd[132] + cd[s] + 36)]] = call.data[cd[132] + cd[s] + 68 len cd[(cd[132] + cd[s] + 36)]]
            mem[cd[(cd[132] + cd[s] + 36)] + t + 32] = 0
            idx = idx + 1
            s = s + 32
            t = t + ceil32(cd[(cd[132] + cd[s] + 36)]) + 32
            u = u + 32
            continue 
        emit 0x33bdc44e: mem[mem[64] len _970 + (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 68).length) + (32 * ('cd', 100).length) + (32 * ('cd', 132).length) + (32 * ('cd', 132).length) + -mem[64] + 320]
}

function safeBatchTransferFrom(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
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
    if arg3.length != arg4.length:
        revert with 0, 'ERC1155: ids and amounts length mismatch'
    if not arg2:
        revert with 0, 'ERC1155: transfer to the zero address'
    if msg.sender != this.address:
        if arg1 == msg.sender:
            if msg.sender != this.address:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
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
                    call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
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
                    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
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
                    _12623 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _12703 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_12703)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_12703)]
                    if ceil32(_12703) <= _12703:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12703) + 32]
                    mem[_12703 + mem[64] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_12703) + _12623 + -mem[64] + 68
                mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359] = 0
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
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
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
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
                _12624 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _12705 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_12705)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_12705)]
                if ceil32(_12705) <= _12705:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12705) + 32]
                mem[_12705 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_12705) + _12624 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = calldata.size
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 131 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + calldata.size + 131] = 0
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 227 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 227] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 259 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 111 len 20], arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 135] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 111 len 20]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 167] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 199] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 295] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 327 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 231] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 327] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 359 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 263] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 359] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _12625 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _12707 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 68 len ceil32(_12707)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12707)]
                if ceil32(_12707) <= _12707:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12707) + 32]
                mem[_12707 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_12707) + _12625 + -mem[64] + 68
            mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391] = 0
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _12626 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _12709 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_12709)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12709)]
            if ceil32(_12709) <= _12709:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12709) + 32]
            mem[_12709 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_12709) + _12626 + -mem[64] + 68
        if msg.sender != this.address:
            mem[0] = msg.sender
            if stor1[address(arg1)][address(msg.sender)]:
                if msg.sender != this.address:
                    idx = 0
                    while idx < arg3.length:
                        if idx >= arg3.length:
                            revert with 0, 50
                        if idx >= arg4.length:
                            revert with 0, 50
                        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 'ERC1155: insufficient balance for transfer'
                        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                        mem[0] = arg2
                        mem[32] = sha3(mem[(32 * idx) + 128], 0)
                        if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                            revert with 0, 17
                        balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
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
                        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
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
                        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
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
                        _12627 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        _12711 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                        mem[mem[64] + 68 len ceil32(_12711)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_12711)]
                        if ceil32(_12711) <= _12711:
                            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12711) + 32]
                        mem[_12711 + mem[64] + 68] = 0
                        revert with memory
                          from mem[64]
                           len ceil32(_12711) + _12627 + -mem[64] + 68
                    mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359] = 0
                    require ext_code.size(arg2)
                    call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
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
                    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
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
                    _12628 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _12713 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_12713)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_12713)]
                    if ceil32(_12713) <= _12713:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12713) + 32]
                    mem[_12713 + mem[64] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_12713) + _12628 + -mem[64] + 68
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = calldata.size
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 131 len calldata.size] = call.data[0 len calldata.size]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + calldata.size + 131] = 0
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 227 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 227] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 259 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 111 len 20], arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 135] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 111 len 20]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 167] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 199] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 295] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 327 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 231] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 327] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 359 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 263] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 359] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
                if ceil32(arg5.length) <= arg5.length:
                    require ext_code.size(arg2)
                    call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _12629 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _12715 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                    mem[mem[64] + 68 len ceil32(_12715)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12715)]
                    if ceil32(_12715) <= _12715:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12715) + 32]
                    mem[_12715 + mem[64] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_12715) + _12629 + -mem[64] + 68
                mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391] = 0
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _12630 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _12717 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 68 len ceil32(_12717)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12717)]
                if ceil32(_12717) <= _12717:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12717) + 32]
                mem[_12717 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_12717) + _12630 + -mem[64] + 68
            mem[0] = msg.sender
            if bool(stor6[address(msg.sender)]) != 1:
                revert with 0, 'ERC1155: transfer caller is not owner nor approved'
            if msg.sender != this.address:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
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
                    call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
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
                    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
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
                    _12631 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _12719 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_12719)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_12719)]
                    if ceil32(_12719) <= _12719:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12719) + 32]
                    mem[_12719 + mem[64] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_12719) + _12631 + -mem[64] + 68
                mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (32 * arg3.length) + (32 * arg4.length) + 359] = 0
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
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
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
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
                _12632 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _12721 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_12721)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_12721)]
                if ceil32(_12721) <= _12721:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12721) + 32]
                mem[_12721 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_12721) + _12632 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = calldata.size
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 131 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + calldata.size + 131] = 0
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 227 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 227] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 259 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 111 len 20], arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 135] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 111 len 20]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 167] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 199] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 295] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 327 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 231] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 327] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 359 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 263] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 359] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _12633 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _12723 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 68 len ceil32(_12723)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12723)]
                if ceil32(_12723) <= _12723:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12723) + 32]
                mem[_12723 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_12723) + _12633 + -mem[64] + 68
            mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391] = 0
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _12634 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _12725 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_12725)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12725)]
            if ceil32(_12725) <= _12725:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12725) + 32]
            mem[_12725 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_12725) + _12634 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = calldata.size
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 131 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + calldata.size + 131] = 0
        mem[0] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 111 len 20]
        if stor1[address(arg1)][address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99])]:
            if msg.sender != this.address:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 227 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 227] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 259 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 135] = msg.sender
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 167] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 199] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 295] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 327 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 231] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 327] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 359 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 263] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 359] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
                if ceil32(arg5.length) <= arg5.length:
                    require ext_code.size(arg2)
                    call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _12635 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _12727 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                    mem[mem[64] + 68 len ceil32(_12727)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12727)]
                    if ceil32(_12727) <= _12727:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12727) + 32]
                    mem[_12727 + mem[64] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_12727) + _12635 + -mem[64] + 68
                mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391] = 0
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _12636 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _12729 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 68 len ceil32(_12729)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12729)]
                if ceil32(_12729) <= _12729:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12729) + 32]
                mem[_12729 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_12729) + _12636 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = calldata.size
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 163 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + calldata.size + 163] = 0
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 227] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 259 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 195] = (32 * arg3.length) + 96
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 259] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 291 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 143 len 20], arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 167] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 143 len 20]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 199] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 231] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 327] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 359 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 263] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 359] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 391 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 295] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 391] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _12637 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _12731 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
                mem[mem[64] + 68 len ceil32(_12731)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12731)]
                if ceil32(_12731) <= _12731:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12731) + 32]
                mem[_12731 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_12731) + _12637 + -mem[64] + 68
            mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423] = 0
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _12638 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _12733 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 68 len ceil32(_12733)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12733)]
            if ceil32(_12733) <= _12733:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12733) + 32]
            mem[_12733 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_12733) + _12638 + -mem[64] + 68
        mem[0] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 111 len 20]
        if bool(stor6[address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99])]) != 1:
            revert with 0, 'ERC1155: transfer caller is not owner nor approved'
        if msg.sender != this.address:
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 227 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 227] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 259 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 135] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 167] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 199] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 295] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 327 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 231] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 327] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 359 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 263] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 359] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _12639 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _12735 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 68 len ceil32(_12735)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12735)]
                if ceil32(_12735) <= _12735:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12735) + 32]
                mem[_12735 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_12735) + _12639 + -mem[64] + 68
            mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391] = 0
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _12640 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _12737 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_12737)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12737)]
            if ceil32(_12737) <= _12737:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12737) + 32]
            mem[_12737 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_12737) + _12640 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = calldata.size
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 163 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + calldata.size + 163] = 0
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 227] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 259 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 195] = (32 * arg3.length) + 96
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 259] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 291 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 143 len 20], arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 167] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 143 len 20]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 199] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 231] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 327] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 359 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 263] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 359] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 391 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 295] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 391] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _12641 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _12739 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 68 len ceil32(_12739)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12739)]
            if ceil32(_12739) <= _12739:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12739) + 32]
            mem[_12739 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_12739) + _12641 + -mem[64] + 68
        mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _12642 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _12741 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 68 len ceil32(_12741)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12741)]
        if ceil32(_12741) <= _12741:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12741) + 32]
        mem[_12741 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_12741) + _12642 + -mem[64] + 68
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = calldata.size
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 131 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + calldata.size + 131] = 0
    if arg1 == mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 111 len 20]:
        if msg.sender != this.address:
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 227 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 227] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 259 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 135] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 167] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 199] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 295] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 327 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 231] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 327] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 359 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 263] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 359] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _12643 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _12743 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 68 len ceil32(_12743)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12743)]
                if ceil32(_12743) <= _12743:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12743) + 32]
                mem[_12743 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_12743) + _12643 + -mem[64] + 68
            mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391] = 0
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _12644 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _12745 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_12745)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12745)]
            if ceil32(_12745) <= _12745:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12745) + 32]
            mem[_12745 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_12745) + _12644 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = calldata.size
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 163 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + calldata.size + 163] = 0
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 227] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 259 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 195] = (32 * arg3.length) + 96
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 259] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 291 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 143 len 20], arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 167] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 143 len 20]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 199] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 231] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 327] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 359 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 263] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 359] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 391 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 295] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 391] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _12645 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _12747 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 68 len ceil32(_12747)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12747)]
            if ceil32(_12747) <= _12747:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12747) + 32]
            mem[_12747 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_12747) + _12645 + -mem[64] + 68
        mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _12646 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _12749 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 68 len ceil32(_12749)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12749)]
        if ceil32(_12749) <= _12749:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12749) + 32]
        mem[_12749 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_12749) + _12646 + -mem[64] + 68
    if msg.sender != this.address:
        mem[0] = msg.sender
        if stor1[address(arg1)][address(msg.sender)]:
            if msg.sender != this.address:
                idx = 0
                while idx < arg3.length:
                    if idx >= arg3.length:
                        revert with 0, 50
                    if idx >= arg4.length:
                        revert with 0, 50
                    if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 'ERC1155: insufficient balance for transfer'
                    balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    mem[0] = arg2
                    mem[32] = sha3(mem[(32 * idx) + 128], 0)
                    if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                        revert with 0, 17
                    balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 227 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 227] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 259 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
                if not ext_code.size(arg2):
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 135] = msg.sender
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 167] = arg1
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 199] = 160
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 295] = arg3.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 327 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 231] = (32 * arg3.length) + 192
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 327] = arg4.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 359 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 263] = (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 359] = arg5.length
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
                if ceil32(arg5.length) <= arg5.length:
                    require ext_code.size(arg2)
                    call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
                    if ext_call.success:
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                    if return_data.size <= 3:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[0 len 4] = ext_call.return_data[0 len 4]
                    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if return_data.size < 68:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                        revert with 0, 65
                    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                    _12647 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _12751 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                    mem[mem[64] + 68 len ceil32(_12751)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12751)]
                    if ceil32(_12751) <= _12751:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12751) + 32]
                    mem[_12751 + mem[64] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_12751) + _12647 + -mem[64] + 68
                mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391] = 0
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _12648 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _12753 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 68 len ceil32(_12753)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12753)]
                if ceil32(_12753) <= _12753:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12753) + 32]
                mem[_12753 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_12753) + _12648 + -mem[64] + 68
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = calldata.size
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 163 len calldata.size] = call.data[0 len calldata.size]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + calldata.size + 163] = 0
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 227] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 259 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 195] = (32 * arg3.length) + 96
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 259] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 291 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 143 len 20], arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 167] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 143 len 20]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 199] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 231] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 327] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 359 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 263] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 359] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 391 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 295] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 391] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _12649 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _12755 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
                mem[mem[64] + 68 len ceil32(_12755)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12755)]
                if ceil32(_12755) <= _12755:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12755) + 32]
                mem[_12755 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_12755) + _12649 + -mem[64] + 68
            mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423] = 0
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _12650 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _12757 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 68 len ceil32(_12757)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12757)]
            if ceil32(_12757) <= _12757:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12757) + 32]
            mem[_12757 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_12757) + _12650 + -mem[64] + 68
        mem[0] = msg.sender
        if bool(stor6[address(msg.sender)]) != 1:
            revert with 0, 'ERC1155: transfer caller is not owner nor approved'
        if msg.sender != this.address:
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 227 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 227] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 259 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 135] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 167] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 199] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 295] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 327 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 231] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 327] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + 359 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 263] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 359] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _12651 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _12759 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 68 len ceil32(_12759)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12759)]
                if ceil32(_12759) <= _12759:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12759) + 32]
                mem[_12759 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_12759) + _12651 + -mem[64] + 68
            mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + (32 * arg3.length) + (32 * arg4.length) + 391] = 0
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 < 131 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _12652 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _12761 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_12761)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_12761)]
            if ceil32(_12761) <= _12761:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12761) + 32]
            mem[_12761 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_12761) + _12652 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = calldata.size
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 163 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + calldata.size + 163] = 0
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 227] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 259 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 195] = (32 * arg3.length) + 96
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 259] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 291 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 143 len 20], arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 167] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 143 len 20]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 199] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 231] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 327] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 359 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 263] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 359] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 391 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 295] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 391] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _12653 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _12763 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 68 len ceil32(_12763)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12763)]
            if ceil32(_12763) <= _12763:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12763) + 32]
            mem[_12763 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_12763) + _12653 + -mem[64] + 68
        mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _12654 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _12765 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 68 len ceil32(_12765)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12765)]
        if ceil32(_12765) <= _12765:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12765) + 32]
        mem[_12765 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_12765) + _12654 + -mem[64] + 68
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = calldata.size
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 163 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + calldata.size + 163] = 0
    mem[0] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 143 len 20]
    if stor1[address(arg1)][address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131])]:
        if msg.sender != this.address:
            idx = 0
            while idx < arg3.length:
                if idx >= arg3.length:
                    revert with 0, 50
                if idx >= arg4.length:
                    revert with 0, 50
                if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 'ERC1155: insufficient balance for transfer'
                balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                mem[0] = arg2
                mem[32] = sha3(mem[(32 * idx) + 128], 0)
                if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                    revert with 0, 17
                balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 259 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 259] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 291 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
            if not ext_code.size(arg2):
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 167] = msg.sender
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 199] = arg1
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 231] = 160
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 327] = arg3.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 359 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 263] = (32 * arg3.length) + 192
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 359] = arg4.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 391 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 295] = (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 391] = arg5.length
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
            if ceil32(arg5.length) <= arg5.length:
                require ext_code.size(arg2)
                call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                     gas gas_remaining wei
                    args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
                if ext_call.success:
                    require return_data.size >= 32
                    require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                    if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                if return_data.size <= 3:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[0 len 4] = ext_call.return_data[0 len 4]
                if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if return_data.size < 68:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
                if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
                    revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
                    revert with 0, 65
                mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
                if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
                _12655 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _12767 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
                mem[mem[64] + 68 len ceil32(_12767)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12767)]
                if ceil32(_12767) <= _12767:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12767) + 32]
                mem[_12767 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_12767) + _12655 + -mem[64] + 68
            mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423] = 0
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _12656 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _12769 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 68 len ceil32(_12769)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12769)]
            if ceil32(_12769) <= _12769:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12769) + 32]
            mem[_12769 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_12769) + _12656 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = calldata.size
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 195 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + calldata.size + 195] = 0
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 291 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + 291] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + 323 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 175 len 20], arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 199] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 175 len 20]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 231] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 263] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 359] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 391 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 295] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + 391] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + 423 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 327] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 455 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 195] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 195 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196 < 195 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _12657 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _12771 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195]
            mem[mem[64] + 68 len ceil32(_12771)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 227 len ceil32(_12771)]
            if ceil32(_12771) <= _12771:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12771) + 32]
            mem[_12771 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_12771) + _12657 + -mem[64] + 68
        mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 455] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 195] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 195 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196 < 195 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _12658 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _12773 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195]
        mem[mem[64] + 68 len ceil32(_12773)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 227 len ceil32(_12773)]
        if ceil32(_12773) <= _12773:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12773) + 32]
        mem[_12773 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_12773) + _12658 + -mem[64] + 68
    mem[0] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 143 len 20]
    if bool(stor6[address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131])]) != 1:
        revert with 0, 'ERC1155: transfer caller is not owner nor approved'
    if msg.sender != this.address:
        idx = 0
        while idx < arg3.length:
            if idx >= arg3.length:
                revert with 0, 50
            if idx >= arg4.length:
                revert with 0, 50
            if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 'ERC1155: insufficient balance for transfer'
            balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            mem[0] = arg2
            mem[32] = sha3(mem[(32 * idx) + 128], 0)
            if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
                revert with 0, 17
            balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 259 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 259] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 291 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, msg.sender, arg1, arg2);
        if not ext_code.size(arg2):
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 167] = msg.sender
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 199] = arg1
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 231] = 160
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 327] = arg3.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 359 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 263] = (32 * arg3.length) + 192
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 359] = arg4.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + 391 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 295] = (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 391] = arg5.length
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
        if ceil32(arg5.length) <= arg5.length:
            require ext_code.size(arg2)
            call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
            if ext_call.success:
                require return_data.size >= 32
                require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                    revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if return_data.size <= 3:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[0 len 4] = ext_call.return_data[0 len 4]
            if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if return_data.size < 68:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
            if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
                revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
            if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
            _12659 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _12775 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 68 len ceil32(_12775)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12775)]
            if ceil32(_12775) <= _12775:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12775) + 32]
            mem[_12775 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_12775) + _12659 + -mem[64] + 68
        mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423] = 0
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args msg.sender, address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 < 163 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _12660 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _12777 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 68 len ceil32(_12777)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_12777)]
        if ceil32(_12777) <= _12777:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12777) + 32]
        mem[_12777 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_12777) + _12660 + -mem[64] + 68
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163] = calldata.size
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 195 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + calldata.size + 195] = 0
    idx = 0
    while idx < arg3.length:
        if idx >= arg3.length:
            revert with 0, 50
        if idx >= arg4.length:
            revert with 0, 50
        if balanceOf[mem[(32 * idx) + 128]][address(arg1)] < mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 'ERC1155: insufficient balance for transfer'
        balanceOf[mem[(32 * idx) + 128]][address(arg1)] -= mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        mem[0] = arg2
        mem[32] = sha3(mem[(32 * idx) + 128], 0)
        if balanceOf[mem[(32 * idx) + 128]][address(arg2)] > !mem[(32 * idx) + ceil32(32 * arg3.length) + 129]:
            revert with 0, 17
        balanceOf[mem[(32 * idx) + 128]][address(arg2)] += mem[(32 * idx) + ceil32(32 * arg3.length) + 129]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 291 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + 291] = arg4.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + 323 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
    emit TransferBatch(Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]), (32 * arg3.length) + 96, mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 175 len 20], arg1, arg2);
    if not ext_code.size(arg2):
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 199] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 175 len 20]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 231] = arg1
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 263] = 160
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 359] = arg3.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 391 len 32 * arg3.length] = mem[128 len 32 * arg3.length]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 295] = (32 * arg3.length) + 192
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + 391] = arg4.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + 423 len 32 * arg4.length] = mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 327] = (32 * arg3.length) + (32 * arg4.length) + 224
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 423] = arg5.length
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 455 len ceil32(arg5.length)] = arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256
    if ceil32(arg5.length) <= arg5.length:
        require ext_code.size(arg2)
        call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 195] = ext_call.return_data[0]
        if ext_call.success:
            require return_data.size >= 32
            require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
            if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
                revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
        if return_data.size <= 3:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[0 len 4] = ext_call.return_data[0 len 4]
        if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if return_data.size < 68:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 195 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
        if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] > test266151307():
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 32 > return_data.size - 4:
            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
        if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196 < 195 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196
        if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195:
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
        _12661 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _12779 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195]
        mem[mem[64] + 68 len ceil32(_12779)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 227 len ceil32(_12779)]
        if ceil32(_12779) <= _12779:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12779) + 32]
        mem[_12779 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_12779) + _12661 + -mem[64] + 68
    mem[arg5.length + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + (32 * arg3.length) + (32 * arg4.length) + 455] = 0
    require ext_code.size(arg2)
    call arg2.onERC1155BatchReceived(address rg1, address rg2, uint256[] rg3, uint256[] rg4, bytes rg5) with:
         gas gas_remaining wei
        args address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + 163]), address(arg1), Array(len=arg3.length, data=mem[128 len 32 * arg3.length], arg4.length, mem[ceil32(32 * arg3.length) + 129 len 32 * arg4.length], arg5.length, arg5[all], Mask(8 * ceil32(arg5.length) - arg5.length, -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256, calldata.size) >> -(8 * ceil32(arg5.length) + -ceil32(ceil32(arg5.length)) + 31) + 256), (32 * arg3.length) + 192, (32 * arg3.length) + (32 * arg4.length) + 224
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 195] = ext_call.return_data[0]
    if ext_call.success:
        require return_data.size >= 32
        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
        if Mask(32, 224, ext_call.return_data[0]) != 0xbc197c8100000000000000000000000000000000000000000000000000000000:
            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
    if return_data.size <= 3:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[0 len 4] = ext_call.return_data[0 len 4]
    if uint32(mem[4 len 28]) >> 224 != Error(string rg1):
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if return_data.size < 68:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + 195 len return_data.size - 4] = ext_call.return_data[4 len return_data.size - 4]
    if ext_call.return_data[0] > test266151307() or ext_call.return_data[0] + 36 > return_data.size:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] > test266151307():
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 32 > return_data.size - 4:
        revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
    if floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196 < 195 or ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196
    if not ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195:
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        revert with mem[mem[64] len 4], 'ERC1155: transfer to non ERC1155Receiver implementer'
    _12662 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _12781 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195]
    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195]
    mem[mem[64] + 68 len ceil32(_12781)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 227 len ceil32(_12781)]
    if ceil32(_12781) <= _12781:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_12781) + 32]
    mem[_12781 + mem[64] + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_12781) + _12662 + -mem[64] + 68
}



}
