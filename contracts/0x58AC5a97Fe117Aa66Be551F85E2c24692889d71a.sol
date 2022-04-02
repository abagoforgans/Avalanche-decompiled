contract main {




// =====================  Runtime code  =====================


#
#  - uri(uint256 arg1)
#
const getChainId = chainid

const ERC712_VERSION = '', 0

const DEFAULT_ADMIN_ROLE = 0

const DEPOSITOR_ROLE = 0x8f4f2da22e8ac8f11e15f9fc141cddbb5deea8800186560abb6e68c5496619a9


mapping of uint256 balanceOf;
mapping of uint8 stor1;
mapping of struct roleAdmin;
array of uint256 stor4;
uint256 domainSeperator;
mapping of uint256 sub_fc86b662;
mapping of uint256 sub_79920951;
mapping of uint256 sub_0f699e80;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint256 mintNumber;
array of struct stor15;
array of struct stor16;
array of struct stor17;
array of struct stor18;
array of struct stor19;

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

function sub_79920951(?) {
    require calldata.size - 4 >= 32
    return sub_79920951[arg1]
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

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(stor1[address(arg1)][address(arg2)])
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

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if msg.sender != this.address:
        if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to revoke'
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
        if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(mem[calldata.size + 96])].field_0):
            revert with 0, 'AccessControl: sender must be an admin to revoke'
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
            if msg.sender != this.address:
                emit RoleRevoked(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleRevoked(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if msg.sender != this.address:
        if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: sender must be an admin to grant'
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
            if msg.sender != this.address:
                emit RoleGranted(arg1, arg2, msg.sender);
            else:
                mem[96] = calldata.size
                mem[128 len calldata.size] = call.data[0 len calldata.size]
                emit RoleGranted(arg1, arg2, mem[calldata.size + 108 len 20]);
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(mem[calldata.size + 96])].field_0):
            revert with 0, 'AccessControl: sender must be an admin to grant'
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
            if msg.sender != this.address:
                emit RoleGranted(arg1, arg2, msg.sender);
            else:
                mem[ceil32(calldata.size) + 128] = calldata.size
                mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
                emit RoleGranted(arg1, arg2, mem[calldata.size + ceil32(calldata.size) + 140 len 20]);
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

function sub_69fe14e6(?) {
    require calldata.size - 4 >= 128
    require arg3 == bool(arg3)
    require arg4 == bool(arg4)
    if msg.sender != this.address:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from 96
                       len -96
                idx = 0
                s = 0
                while idx < uint255(stor4.length) * 0.5:
                    mem[idx + 164] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[164 len ceil32(uint255(stor4.length) * 0.5)]
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor4.length.field_1 % 128:
                mem[idx + 164] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor4.length % 128, mem[164 len ceil32(stor4.length.field_1 % 128)]
    else:
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        if not uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from ceil32(calldata.size) + 128
                       len -ceil32(calldata.size) - 128
                idx = 0
                s = 0
                while idx < uint255(stor4.length) * 0.5:
                    mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[ceil32(calldata.size) + 196 len ceil32(uint255(stor4.length) * 0.5)]
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from ceil32(calldata.size) + 128
                   len -ceil32(calldata.size) - 128
            idx = 0
            s = 0
            while idx < stor4.length.field_1 % 128:
                mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor4.length % 128, mem[ceil32(calldata.size) + 196 len ceil32(stor4.length.field_1 % 128)]
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
    emit 0x4661e460: arg1, arg2, bool(arg3), bool(arg4)
}

function name() {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15.length):
                if 31 < uint255(stor15.length) * 0.5:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor15.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        else:
            if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor15.length.field_1 % 128:
                if 31 < stor15.length.field_1 % 128:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
        mem[ceil32(uint255(stor15.length) * 0.5) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
            mem[(uint255(stor15.length) * 0.5) + ceil32(uint255(stor15.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)], mem[(2 * ceil32(uint255(stor15.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor15.length) * 0.5)]), 
    if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15.length):
            if 31 < uint255(stor15.length) * 0.5:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while (uint255(stor15.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
    else:
        if bool(stor15.length) == stor15.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor15.length.field_1 % 128:
            if 31 < stor15.length.field_1 % 128:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor15.length.field_8)
    mem[ceil32(stor15.length.field_1 % 128) + 192 len ceil32(stor15.length.field_1 % 128)] = mem[128 len ceil32(stor15.length.field_1 % 128)]
    if ceil32(stor15.length.field_1 % 128) > stor15.length.field_1 % 128:
        mem[stor15.length.field_1 % 128 + ceil32(stor15.length.field_1 % 128) + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1 % 128)], mem[(2 * ceil32(stor15.length.field_1 % 128)) + 192 len 2 * ceil32(stor15.length.field_1 % 128)]), 
}

function symbol() {
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

function uriPrefix() {
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
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor19.length):
            if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor19.length):
                if 31 < uint255(stor19.length) * 0.5:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor19.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor19.length.field_8)
        else:
            if bool(stor19.length) == stor19.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor19.length.field_1 % 128:
                if 31 < stor19.length.field_1 % 128:
                    mem[128] = uint256(stor19.field_0)
                    idx = 128
                    s = 0
                    while stor19.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor19[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor19.length.field_8)
        mem[ceil32(uint255(stor19.length) * 0.5) + 192 len ceil32(uint255(stor19.length) * 0.5)] = mem[128 len ceil32(uint255(stor19.length) * 0.5)]
        if ceil32(uint255(stor19.length) * 0.5) > uint255(stor19.length) * 0.5:
            mem[(uint255(stor19.length) * 0.5) + ceil32(uint255(stor19.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor19.length), data=mem[128 len ceil32(uint255(stor19.length) * 0.5)], mem[(2 * ceil32(uint255(stor19.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor19.length) * 0.5)]), 
    if bool(stor19.length) == stor19.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor19.length):
        if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor19.length):
            if 31 < uint255(stor19.length) * 0.5:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while (uint255(stor19.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor19.length.field_8)
    else:
        if bool(stor19.length) == stor19.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor19.length.field_1 % 128:
            if 31 < stor19.length.field_1 % 128:
                mem[128] = uint256(stor19.field_0)
                idx = 128
                s = 0
                while stor19.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor19[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor19.length.field_8)
    mem[ceil32(stor19.length.field_1 % 128) + 192 len ceil32(stor19.length.field_1 % 128)] = mem[128 len ceil32(stor19.length.field_1 % 128)]
    if ceil32(stor19.length.field_1 % 128) > stor19.length.field_1 % 128:
        mem[stor19.length.field_1 % 128 + ceil32(stor19.length.field_1 % 128) + 192] = 0
    return Array(len=stor19.length % 128, data=mem[128 len ceil32(stor19.length.field_1 % 128)], mem[(2 * ceil32(stor19.length.field_1 % 128)) + 192 len 2 * ceil32(stor19.length.field_1 % 128)]), 
}

function sub_5503a0e8(?) {
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

function sub_16ba10e0(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
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
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from ceil32(ceil32(arg1.length)) + 97
                   len -ceil32(ceil32(arg1.length)) - 97
            idx = 0
            s = 0
            while idx < uint255(stor4.length) * 0.5:
                mem[idx + ceil32(ceil32(arg1.length)) + 165] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[ceil32(ceil32(arg1.length)) + 165 len ceil32(uint255(stor4.length) * 0.5)]
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor4.length):
            revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
        if bool(stor4.length) != 1:
            revert with memory
              from ceil32(ceil32(arg1.length)) + 97
               len -ceil32(ceil32(arg1.length)) - 97
        idx = 0
        s = 0
        while idx < stor4.length.field_1 % 128:
            mem[idx + ceil32(ceil32(arg1.length)) + 165] = stor4[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor4.length % 128, mem[ceil32(ceil32(arg1.length)) + 165 len ceil32(stor4.length.field_1 % 128)]
    mem[ceil32(ceil32(arg1.length)) + 97] = calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(ceil32(arg1.length)) + calldata.size + 129] = 0
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
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor4.length):
            revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
        if bool(stor4.length) != 1:
            revert with memory
              from ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 129
               len -ceil32(ceil32(arg1.length)) + -ceil32(calldata.size) - 129
        idx = 0
        s = 0
        while idx < uint255(stor4.length) * 0.5:
            mem[idx + ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 197] = stor4[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 
                    32,
                    2 * Mask(256, -1, stor4.length),
                    mem[ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 197 len ceil32(uint255(stor4.length) * 0.5)]
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor4.length):
        revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
    if bool(stor4.length) != 1:
        revert with memory
          from ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 129
           len -ceil32(ceil32(arg1.length)) + -ceil32(calldata.size) - 129
    idx = 0
    s = 0
    while idx < stor4.length.field_1 % 128:
        mem[idx + ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 197] = stor4[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 
                32,
                stor4.length % 128,
                mem[ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 197 len ceil32(stor4.length.field_1 % 128)]
}

function setUriPrefix(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if msg.sender != this.address:
        if uint8(roleAdmin[0][address(msg.sender)].field_0):
            if bool(stor17.length):
                if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
                    revert with 0, 34
                if arg1.length:
                    stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor17.length = 0
                    idx = 0
                    while (uint255(stor17.length) * 0.5) + 31 / 32 > idx:
                        stor17[idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor17.length) == stor17.length.field_1 % 128 < 32:
                    revert with 0, 34
                if arg1.length:
                    stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor17.length = 0
                    idx = 0
                    while stor17.length.field_1 % 128 + 31 / 32 > idx:
                        stor17[idx].field_0 = 0
                        idx = idx + 1
                        continue 
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from ceil32(ceil32(arg1.length)) + 97
                   len -ceil32(ceil32(arg1.length)) - 97
            idx = 0
            s = 0
            while idx < uint255(stor4.length) * 0.5:
                mem[idx + ceil32(ceil32(arg1.length)) + 165] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[ceil32(ceil32(arg1.length)) + 165 len ceil32(uint255(stor4.length) * 0.5)]
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor4.length):
            revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
        if bool(stor4.length) != 1:
            revert with memory
              from ceil32(ceil32(arg1.length)) + 97
               len -ceil32(ceil32(arg1.length)) - 97
        idx = 0
        s = 0
        while idx < stor4.length.field_1 % 128:
            mem[idx + ceil32(ceil32(arg1.length)) + 165] = stor4[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor4.length % 128, mem[ceil32(ceil32(arg1.length)) + 165 len ceil32(stor4.length.field_1 % 128)]
    mem[ceil32(ceil32(arg1.length)) + 97] = calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(ceil32(arg1.length)) + calldata.size + 129] = 0
    if uint8(roleAdmin[0][address(mem[calldata.size + ceil32(ceil32(arg1.length)) + 97])].field_0):
        if bool(stor17.length):
            if bool(stor17.length) == uint255(stor17.length) * 0.5 < 32:
                revert with 0, 34
            if arg1.length:
                stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor17.length = 0
                idx = 0
                while (uint255(stor17.length) * 0.5) + 31 / 32 > idx:
                    stor17[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor17.length) == stor17.length.field_1 % 128 < 32:
                revert with 0, 34
            if arg1.length:
                stor17[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor17.length = 0
                idx = 0
                while stor17.length.field_1 % 128 + 31 / 32 > idx:
                    stor17[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor4.length):
            revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
        if bool(stor4.length) != 1:
            revert with memory
              from ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 129
               len -ceil32(ceil32(arg1.length)) + -ceil32(calldata.size) - 129
        idx = 0
        s = 0
        while idx < uint255(stor4.length) * 0.5:
            mem[idx + ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 197] = stor4[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 
                    32,
                    2 * Mask(256, -1, stor4.length),
                    mem[ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 197 len ceil32(uint255(stor4.length) * 0.5)]
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor4.length):
        revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
    if bool(stor4.length) != 1:
        revert with memory
          from ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 129
           len -ceil32(ceil32(arg1.length)) + -ceil32(calldata.size) - 129
    idx = 0
    s = 0
    while idx < stor4.length.field_1 % 128:
        mem[idx + ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 197] = stor4[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 
                32,
                stor4.length % 128,
                mem[ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 197 len ceil32(stor4.length.field_1 % 128)]
}

function setContractURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if msg.sender != this.address:
        if uint8(roleAdmin[0][address(msg.sender)].field_0):
            if bool(stor19.length):
                if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
                    revert with 0, 34
                if arg1.length:
                    stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor19.length = 0
                    idx = 0
                    while (uint255(stor19.length) * 0.5) + 31 / 32 > idx:
                        stor19[idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor19.length) == stor19.length.field_1 % 128 < 32:
                    revert with 0, 34
                if arg1.length:
                    stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
                else:
                    stor19.length = 0
                    idx = 0
                    while stor19.length.field_1 % 128 + 31 / 32 > idx:
                        stor19[idx].field_0 = 0
                        idx = idx + 1
                        continue 
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from ceil32(ceil32(arg1.length)) + 97
                   len -ceil32(ceil32(arg1.length)) - 97
            idx = 0
            s = 0
            while idx < uint255(stor4.length) * 0.5:
                mem[idx + ceil32(ceil32(arg1.length)) + 165] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[ceil32(ceil32(arg1.length)) + 165 len ceil32(uint255(stor4.length) * 0.5)]
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor4.length):
            revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
        if bool(stor4.length) != 1:
            revert with memory
              from ceil32(ceil32(arg1.length)) + 97
               len -ceil32(ceil32(arg1.length)) - 97
        idx = 0
        s = 0
        while idx < stor4.length.field_1 % 128:
            mem[idx + ceil32(ceil32(arg1.length)) + 165] = stor4[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor4.length % 128, mem[ceil32(ceil32(arg1.length)) + 165 len ceil32(stor4.length.field_1 % 128)]
    mem[ceil32(ceil32(arg1.length)) + 97] = calldata.size
    mem[ceil32(ceil32(arg1.length)) + 129 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(ceil32(arg1.length)) + calldata.size + 129] = 0
    if uint8(roleAdmin[0][address(mem[calldata.size + ceil32(ceil32(arg1.length)) + 97])].field_0):
        if bool(stor19.length):
            if bool(stor19.length) == uint255(stor19.length) * 0.5 < 32:
                revert with 0, 34
            if arg1.length:
                stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor19.length = 0
                idx = 0
                while (uint255(stor19.length) * 0.5) + 31 / 32 > idx:
                    stor19[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor19.length) == stor19.length.field_1 % 128 < 32:
                revert with 0, 34
            if arg1.length:
                stor19[].field_0 = Array(len=arg1.length, data=arg1[all])
            else:
                stor19.length = 0
                idx = 0
                while stor19.length.field_1 % 128 + 31 / 32 > idx:
                    stor19[idx].field_0 = 0
                    idx = idx + 1
                    continue 
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if not bool(stor4.length):
            revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
        if bool(stor4.length) != 1:
            revert with memory
              from ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 129
               len -ceil32(ceil32(arg1.length)) + -ceil32(calldata.size) - 129
        idx = 0
        s = 0
        while idx < uint255(stor4.length) * 0.5:
            mem[idx + ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 197] = stor4[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 
                    32,
                    2 * Mask(256, -1, stor4.length),
                    mem[ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 197 len ceil32(uint255(stor4.length) * 0.5)]
    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
        revert with 0, 34
    if not bool(stor4.length):
        revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
    if bool(stor4.length) != 1:
        revert with memory
          from ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 129
           len -ceil32(ceil32(arg1.length)) + -ceil32(calldata.size) - 129
    idx = 0
    s = 0
    while idx < stor4.length.field_1 % 128:
        mem[idx + ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 197] = stor4[s].field_0
        idx = idx + 32
        s = s + 1
        continue 
    revert with 0, 
                32,
                stor4.length % 128,
                mem[ceil32(ceil32(arg1.length)) + ceil32(calldata.size) + 197 len ceil32(stor4.length.field_1 % 128)]
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

function sub_b88cbbd2(?) {
    require calldata.size - 4 >= 96
    require arg3 == address(arg3)
    if msg.sender != this.address:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from 96
                       len -96
                idx = 0
                s = 0
                while idx < uint255(stor4.length) * 0.5:
                    mem[idx + 164] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[164 len ceil32(uint255(stor4.length) * 0.5)]
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor4.length.field_1 % 128:
                mem[idx + 164] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor4.length % 128, mem[164 len ceil32(stor4.length.field_1 % 128)]
        if msg.sender != this.address:
            if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor4.length):
                        revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from 96
                           len -96
                    idx = 0
                    s = 0
                    while idx < uint255(stor4.length) * 0.5:
                        mem[idx + 164] = stor4[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[164 len ceil32(uint255(stor4.length) * 0.5)]
                if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from 96
                       len -96
                idx = 0
                s = 0
                while idx < stor4.length.field_1 % 128:
                    mem[idx + 164] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor4.length % 128, mem[164 len ceil32(stor4.length.field_1 % 128)]
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
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor4.length):
                        revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from ceil32(calldata.size) + 128
                           len -ceil32(calldata.size) - 128
                    idx = 0
                    s = 0
                    while idx < uint255(stor4.length) * 0.5:
                        mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[ceil32(calldata.size) + 196 len ceil32(uint255(stor4.length) * 0.5)]
                if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from ceil32(calldata.size) + 128
                       len -ceil32(calldata.size) - 128
                idx = 0
                s = 0
                while idx < stor4.length.field_1 % 128:
                    mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor4.length % 128, mem[ceil32(calldata.size) + 196 len ceil32(stor4.length.field_1 % 128)]
            require arg2 > 0
            if sub_79920951[arg1] > -2:
                revert with 0, 17
            if sub_79920951[arg1] + 1 > sub_fc86b662[arg1]:
                revert with 0, 'Minting would exceed the max number of items for given type'
            if stor13[arg2]:
                revert with 0, 'Supplied id is already used'
            if stor12[arg1]:
                revert with 0, 'Given type is fungible'
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
        mem[calldata.size + 128] = 0
        if not uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from ceil32(calldata.size) + 128
                       len -ceil32(calldata.size) - 128
                idx = 0
                s = 0
                while idx < uint255(stor4.length) * 0.5:
                    mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[ceil32(calldata.size) + 196 len ceil32(uint255(stor4.length) * 0.5)]
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from ceil32(calldata.size) + 128
                   len -ceil32(calldata.size) - 128
            idx = 0
            s = 0
            while idx < stor4.length.field_1 % 128:
                mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor4.length % 128, mem[ceil32(calldata.size) + 196 len ceil32(stor4.length.field_1 % 128)]
        if this.address == msg.sender:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            if not uint8(roleAdmin[0][address(mem[calldata.size + ceil32(calldata.size) + 128])].field_0):
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor4.length):
                        revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from (2 * ceil32(calldata.size)) + 160
                           len -(2 * ceil32(calldata.size)) - 160
                    idx = 0
                    s = 0
                    while idx < uint255(stor4.length) * 0.5:
                        mem[idx + (2 * ceil32(calldata.size)) + 228] = stor4[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[(2 * ceil32(calldata.size)) + 228 len ceil32(uint255(stor4.length) * 0.5)]
                if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from (2 * ceil32(calldata.size)) + 160
                       len -(2 * ceil32(calldata.size)) - 160
                idx = 0
                s = 0
                while idx < stor4.length.field_1 % 128:
                    mem[idx + (2 * ceil32(calldata.size)) + 228] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor4.length % 128, mem[(2 * ceil32(calldata.size)) + 228 len ceil32(stor4.length.field_1 % 128)]
            require arg2 > 0
            if sub_79920951[arg1] > -2:
                revert with 0, 17
            if sub_79920951[arg1] + 1 > sub_fc86b662[arg1]:
                revert with 0, 'Minting would exceed the max number of items for given type'
            if stor13[arg2]:
                revert with 0, 'Supplied id is already used'
            if stor12[arg1]:
                revert with 0, 'Given type is fungible'
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
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor4.length):
                        revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from ceil32(calldata.size) + 128
                           len -ceil32(calldata.size) - 128
                    idx = 0
                    s = 0
                    while idx < uint255(stor4.length) * 0.5:
                        mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[ceil32(calldata.size) + 196 len ceil32(uint255(stor4.length) * 0.5)]
                if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from ceil32(calldata.size) + 128
                       len -ceil32(calldata.size) - 128
                idx = 0
                s = 0
                while idx < stor4.length.field_1 % 128:
                    mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor4.length % 128, mem[ceil32(calldata.size) + 196 len ceil32(stor4.length.field_1 % 128)]
            require arg2 > 0
            if sub_79920951[arg1] > -2:
                revert with 0, 17
            if sub_79920951[arg1] + 1 > sub_fc86b662[arg1]:
                revert with 0, 'Minting would exceed the max number of items for given type'
            if stor13[arg2]:
                revert with 0, 'Supplied id is already used'
            if stor12[arg1]:
                revert with 0, 'Given type is fungible'
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
    stor13[arg2] = 1
    if sub_79920951[arg1] > -2:
        revert with 0, 17
    sub_79920951[arg1]++
    sub_0f699e80[arg2] = arg1
    mintNumber[arg2] = sub_79920951[arg1]
    emit 0xaa31d15d: arg1, arg2, address(arg3)
}

function sub_f807393a(?) {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    if msg.sender != this.address:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from 96
                       len -96
                idx = 0
                s = 0
                while idx < uint255(stor4.length) * 0.5:
                    mem[idx + 164] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[164 len ceil32(uint255(stor4.length) * 0.5)]
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor4.length.field_1 % 128:
                mem[idx + 164] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor4.length % 128, mem[164 len ceil32(stor4.length.field_1 % 128)]
        if msg.sender != this.address:
            if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor4.length):
                        revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from 96
                           len -96
                    idx = 0
                    s = 0
                    while idx < uint255(stor4.length) * 0.5:
                        mem[idx + 164] = stor4[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[164 len ceil32(uint255(stor4.length) * 0.5)]
                if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from 96
                       len -96
                idx = 0
                s = 0
                while idx < stor4.length.field_1 % 128:
                    mem[idx + 164] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor4.length % 128, mem[164 len ceil32(stor4.length.field_1 % 128)]
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
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor4.length):
                        revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from ceil32(calldata.size) + 128
                           len -ceil32(calldata.size) - 128
                    idx = 0
                    s = 0
                    while idx < uint255(stor4.length) * 0.5:
                        mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[ceil32(calldata.size) + 196 len ceil32(uint255(stor4.length) * 0.5)]
                if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from ceil32(calldata.size) + 128
                       len -ceil32(calldata.size) - 128
                idx = 0
                s = 0
                while idx < stor4.length.field_1 % 128:
                    mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor4.length % 128, mem[ceil32(calldata.size) + 196 len ceil32(stor4.length.field_1 % 128)]
            require arg1 > 0
            if arg3 <= 0:
                revert with 0, 'Amount should be > 0'
            if sub_79920951[arg1] > !arg3:
                revert with 0, 17
            if sub_79920951[arg1] + arg3 > sub_fc86b662[arg1]:
                revert with 0, 'Minting would exceed the max number of items for given type'
            if bool(stor12[arg1]) != 1:
                revert with 0, 'typeId is not fungible.'
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
        mem[calldata.size + 128] = 0
        if not uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from ceil32(calldata.size) + 128
                       len -ceil32(calldata.size) - 128
                idx = 0
                s = 0
                while idx < uint255(stor4.length) * 0.5:
                    mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[ceil32(calldata.size) + 196 len ceil32(uint255(stor4.length) * 0.5)]
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from ceil32(calldata.size) + 128
                   len -ceil32(calldata.size) - 128
            idx = 0
            s = 0
            while idx < stor4.length.field_1 % 128:
                mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor4.length % 128, mem[ceil32(calldata.size) + 196 len ceil32(stor4.length.field_1 % 128)]
        if this.address == msg.sender:
            mem[ceil32(calldata.size) + 128] = calldata.size
            mem[ceil32(calldata.size) + 160 len calldata.size] = call.data[0 len calldata.size]
            if not uint8(roleAdmin[0][address(mem[calldata.size + ceil32(calldata.size) + 128])].field_0):
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor4.length):
                        revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from (2 * ceil32(calldata.size)) + 160
                           len -(2 * ceil32(calldata.size)) - 160
                    idx = 0
                    s = 0
                    while idx < uint255(stor4.length) * 0.5:
                        mem[idx + (2 * ceil32(calldata.size)) + 228] = stor4[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[(2 * ceil32(calldata.size)) + 228 len ceil32(uint255(stor4.length) * 0.5)]
                if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from (2 * ceil32(calldata.size)) + 160
                       len -(2 * ceil32(calldata.size)) - 160
                idx = 0
                s = 0
                while idx < stor4.length.field_1 % 128:
                    mem[idx + (2 * ceil32(calldata.size)) + 228] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor4.length % 128, mem[(2 * ceil32(calldata.size)) + 228 len ceil32(stor4.length.field_1 % 128)]
            require arg1 > 0
            if arg3 <= 0:
                revert with 0, 'Amount should be > 0'
            if sub_79920951[arg1] > !arg3:
                revert with 0, 17
            if sub_79920951[arg1] + arg3 > sub_fc86b662[arg1]:
                revert with 0, 'Minting would exceed the max number of items for given type'
            if bool(stor12[arg1]) != 1:
                revert with 0, 'typeId is not fungible.'
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
                if bool(stor4.length):
                    if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                        revert with 0, 34
                    if not bool(stor4.length):
                        revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from ceil32(calldata.size) + 128
                           len -ceil32(calldata.size) - 128
                    idx = 0
                    s = 0
                    while idx < uint255(stor4.length) * 0.5:
                        mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[ceil32(calldata.size) + 196 len ceil32(uint255(stor4.length) * 0.5)]
                if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from ceil32(calldata.size) + 128
                       len -ceil32(calldata.size) - 128
                idx = 0
                s = 0
                while idx < stor4.length.field_1 % 128:
                    mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, stor4.length % 128, mem[ceil32(calldata.size) + 196 len ceil32(stor4.length.field_1 % 128)]
            require arg1 > 0
            if arg3 <= 0:
                revert with 0, 'Amount should be > 0'
            if sub_79920951[arg1] > !arg3:
                revert with 0, 17
            if sub_79920951[arg1] + arg3 > sub_fc86b662[arg1]:
                revert with 0, 'Minting would exceed the max number of items for given type'
            if bool(stor12[arg1]) != 1:
                revert with 0, 'typeId is not fungible.'
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
    if sub_79920951[arg1] > !arg3:
        revert with 0, 17
    sub_79920951[arg1] += arg3
    emit 0x6a47e9a7: arg1, address(arg2), arg3
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
                if not stor1[address(cd[36])][address(msg.sender)]:
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
                if not stor1[address(cd[36])][address(mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + 98])]:
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
                if not stor1[address(cd[36])][address(msg.sender)]:
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
                if not stor1[address(cd[36])][address(mem[calldata.size + ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 68).length) + ceil32(calldata.size) + 130])]:
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
        mem[32] = sha3(0, 3)
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from 96
                       len -96
                idx = 0
                s = 0
                while idx < uint255(stor4.length) * 0.5:
                    mem[idx + 164] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[164 len ceil32(uint255(stor4.length) * 0.5)]
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor4.length.field_1 % 128:
                mem[idx + 164] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor4.length % 128, mem[164 len ceil32(stor4.length.field_1 % 128)]
        if ('cd', 68).length != ('cd', 36).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'number of ids must equal number of accounts'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if msg.sender != this.address:
                if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                    _817 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[mem[64] + 36] = uint255(stor4.length) * 0.5
                        if not bool(stor4.length):
                            revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                        if bool(stor4.length) != 1:
                            revert with memory
                              from mem[64]
                               len -mem[64]
                        idx = 0
                        s = sha3(4)
                        while idx < uint255(stor4.length) * 0.5:
                            mem[idx + _817 + 68] = stor[s]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        revert with memory
                          from mem[64]
                           len _817 + ceil32(uint255(stor4.length) * 0.5) + -mem[64] + 68
                    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                        revert with 0, 34
                    mem[mem[64] + 36] = stor4.length.field_1 % 128
                    if not bool(stor4.length):
                        revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from mem[64]
                           len -mem[64]
                    idx = 0
                    s = sha3(4)
                    while idx < stor4.length.field_1 % 128:
                        mem[idx + _817 + 68] = stor[s]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with memory
                      from mem[64]
                       len _817 + ceil32(stor4.length.field_1 % 128) + -mem[64] + 68
                require cd[((32 * idx) + cd[36] + 36)] > 0
                if sub_79920951[cd[4]] > -2:
                    revert with 0, 17
                if sub_79920951[cd[4]] + 1 > sub_fc86b662[cd[4]]:
                    revert with 0, 'Minting would exceed the max number of items for given type'
                if stor13[cd[((32 * idx) + cd[36] + 36)]]:
                    revert with 0, 'Supplied id is already used'
                mem[32] = 12
                if stor12[cd[4]]:
                    revert with 0, 'Given type is fungible'
                _877 = mem[64]
                mem[mem[64]] = 0
                if not address(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 0, 'ERC1155: mint to the zero address'
                if msg.sender != this.address:
                    mem[mem[64] + 32] = 1
                    mem[64] = mem[64] + 96
                    mem[_877 + 64] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_877 + 96] = 1
                    mem[64] = _877 + 160
                    mem[_877 + 128] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_877 + 160] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_877 + 192] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, msg.sender, 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_877 + 160] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_877 + 164] = msg.sender
                        mem[_877 + 196] = 0
                        mem[_877 + 228] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_877 + 260] = 1
                        mem[_877 + 292] = 160
                        mem[_877 + 324] = mem[_877]
                        s = 0
                        while s < mem[_877]:
                            mem[s + _877 + 356] = mem[s + _877 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_877]) > mem[_877]:
                            mem[mem[_877] + _877 + 356] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_877], mem[_877 + 356 len ceil32(mem[_877])]
                        mem[_877 + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _877 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[64] = mem[64] + ceil32(calldata.size) + 64
                    mem[_877 + 32] = calldata.size
                    mem[_877 + 64 len calldata.size] = call.data[0 len calldata.size]
                    mem[_877 + calldata.size + 64] = 0
                    _906 = mem[calldata.size + _877 + 32]
                    mem[_877 + ceil32(calldata.size) + 64] = 1
                    mem[_877 + ceil32(calldata.size) + 96] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_877 + ceil32(calldata.size) + 128] = 1
                    mem[64] = _877 + ceil32(calldata.size) + 192
                    mem[_877 + ceil32(calldata.size) + 160] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_877 + ceil32(calldata.size) + 192] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_877 + ceil32(calldata.size) + 224] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, address(_906), 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_877 + ceil32(calldata.size) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_877 + ceil32(calldata.size) + 196] = address(_906)
                        mem[_877 + ceil32(calldata.size) + 228] = 0
                        mem[_877 + ceil32(calldata.size) + 260] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_877 + ceil32(calldata.size) + 292] = 1
                        mem[_877 + ceil32(calldata.size) + 324] = 160
                        mem[_877 + ceil32(calldata.size) + 356] = mem[_877]
                        s = 0
                        while s < mem[_877]:
                            mem[s + _877 + ceil32(calldata.size) + 388] = mem[s + _877 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_877]) > mem[_877]:
                            mem[mem[_877] + _877 + ceil32(calldata.size) + 388] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_906), 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_877], mem[_877 + ceil32(calldata.size) + 388 len ceil32(mem[_877])]
                        mem[_877 + ceil32(calldata.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _877 + ceil32(calldata.size) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                _805 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_805] = calldata.size
                mem[_805 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_805 + calldata.size + 32] = 0
                if not uint8(roleAdmin[0][address(mem[calldata.size + _805])].field_0):
                    _818 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[mem[64] + 36] = uint255(stor4.length) * 0.5
                        if not bool(stor4.length):
                            revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                        if bool(stor4.length) != 1:
                            revert with memory
                              from mem[64]
                               len -mem[64]
                        idx = 0
                        s = sha3(4)
                        while idx < uint255(stor4.length) * 0.5:
                            mem[idx + _818 + 68] = stor[s]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        revert with memory
                          from mem[64]
                           len _818 + ceil32(uint255(stor4.length) * 0.5) + -mem[64] + 68
                    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                        revert with 0, 34
                    mem[mem[64] + 36] = stor4.length.field_1 % 128
                    if not bool(stor4.length):
                        revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from mem[64]
                           len -mem[64]
                    idx = 0
                    s = sha3(4)
                    while idx < stor4.length.field_1 % 128:
                        mem[idx + _818 + 68] = stor[s]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with memory
                      from mem[64]
                       len _818 + ceil32(stor4.length.field_1 % 128) + -mem[64] + 68
                require cd[((32 * idx) + cd[36] + 36)] > 0
                if sub_79920951[cd[4]] > -2:
                    revert with 0, 17
                if sub_79920951[cd[4]] + 1 > sub_fc86b662[cd[4]]:
                    revert with 0, 'Minting would exceed the max number of items for given type'
                if stor13[cd[((32 * idx) + cd[36] + 36)]]:
                    revert with 0, 'Supplied id is already used'
                mem[32] = 12
                if stor12[cd[4]]:
                    revert with 0, 'Given type is fungible'
                _880 = mem[64]
                mem[mem[64]] = 0
                if not address(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 0, 'ERC1155: mint to the zero address'
                if msg.sender != this.address:
                    mem[mem[64] + 32] = 1
                    mem[64] = mem[64] + 96
                    mem[_880 + 64] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_880 + 96] = 1
                    mem[64] = _880 + 160
                    mem[_880 + 128] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_880 + 160] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_880 + 192] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, msg.sender, 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_880 + 160] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_880 + 164] = msg.sender
                        mem[_880 + 196] = 0
                        mem[_880 + 228] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_880 + 260] = 1
                        mem[_880 + 292] = 160
                        mem[_880 + 324] = mem[_880]
                        s = 0
                        while s < mem[_880]:
                            mem[s + _880 + 356] = mem[s + _880 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_880]) > mem[_880]:
                            mem[mem[_880] + _880 + 356] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_880], mem[_880 + 356 len ceil32(mem[_880])]
                        mem[_880 + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _880 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[64] = mem[64] + ceil32(calldata.size) + 64
                    mem[_880 + 32] = calldata.size
                    mem[_880 + 64 len calldata.size] = call.data[0 len calldata.size]
                    mem[_880 + calldata.size + 64] = 0
                    _908 = mem[calldata.size + _880 + 32]
                    mem[_880 + ceil32(calldata.size) + 64] = 1
                    mem[_880 + ceil32(calldata.size) + 96] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_880 + ceil32(calldata.size) + 128] = 1
                    mem[64] = _880 + ceil32(calldata.size) + 192
                    mem[_880 + ceil32(calldata.size) + 160] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_880 + ceil32(calldata.size) + 192] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_880 + ceil32(calldata.size) + 224] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, address(_908), 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_880 + ceil32(calldata.size) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_880 + ceil32(calldata.size) + 196] = address(_908)
                        mem[_880 + ceil32(calldata.size) + 228] = 0
                        mem[_880 + ceil32(calldata.size) + 260] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_880 + ceil32(calldata.size) + 292] = 1
                        mem[_880 + ceil32(calldata.size) + 324] = 160
                        mem[_880 + ceil32(calldata.size) + 356] = mem[_880]
                        s = 0
                        while s < mem[_880]:
                            mem[s + _880 + ceil32(calldata.size) + 388] = mem[s + _880 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_880]) > mem[_880]:
                            mem[mem[_880] + _880 + ceil32(calldata.size) + 388] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_908), 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_880], mem[_880 + ceil32(calldata.size) + 388 len ceil32(mem[_880])]
                        mem[_880 + ceil32(calldata.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _880 + ceil32(calldata.size) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            stor13[cd[((32 * idx) + cd[36] + 36)]] = 1
            if sub_79920951[cd[4]] > -2:
                revert with 0, 17
            sub_79920951[cd[4]]++
            mem[0] = cd[((32 * idx) + cd[36] + 36)]
            sub_0f699e80[cd[((32 * idx) + cd[36] + 36)]] = cd[4]
            mem[32] = 14
            mintNumber[cd[((32 * idx) + cd[36] + 36)]] = sub_79920951[cd[4]]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _797 = mem[64]
        mem[mem[64]] = cd[4]
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = ('cd', 36).length
        require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[mem[64] + 64] = (32 * ('cd', 36).length) + 128
        mem[(32 * ('cd', 36).length) + _797 + 128] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = (32 * ('cd', 36).length) + _797 + 160
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x16a6af95: mem[mem[64] len (32 * ('cd', 36).length) + _797 + (32 * ('cd', 68).length) + -mem[64] + 160]
    else:
        mem[64] = ceil32(calldata.size) + 128
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        mem[0] = mem[calldata.size + 108 len 20]
        mem[32] = sha3(0, 3)
        if not uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from ceil32(calldata.size) + 128
                       len -ceil32(calldata.size) - 128
                idx = 0
                s = 0
                while idx < uint255(stor4.length) * 0.5:
                    mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[ceil32(calldata.size) + 196 len ceil32(uint255(stor4.length) * 0.5)]
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from ceil32(calldata.size) + 128
                   len -ceil32(calldata.size) - 128
            idx = 0
            s = 0
            while idx < stor4.length.field_1 % 128:
                mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor4.length % 128, mem[ceil32(calldata.size) + 196 len ceil32(stor4.length.field_1 % 128)]
        if ('cd', 68).length != ('cd', 36).length:
            revert with 0, 'number of ids must equal number of accounts'
        idx = 0
        while idx < ('cd', 36).length:
            if idx >= ('cd', 68).length:
                revert with 0, 50
            require cd[((32 * idx) + cd[68] + 36)] == address(cd[((32 * idx) + cd[68] + 36)])
            if msg.sender != this.address:
                if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                    _819 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[mem[64] + 36] = uint255(stor4.length) * 0.5
                        if not bool(stor4.length):
                            revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                        if bool(stor4.length) != 1:
                            revert with memory
                              from mem[64]
                               len -mem[64]
                        idx = 0
                        s = sha3(4)
                        while idx < uint255(stor4.length) * 0.5:
                            mem[idx + _819 + 68] = stor[s]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        revert with memory
                          from mem[64]
                           len _819 + ceil32(uint255(stor4.length) * 0.5) + -mem[64] + 68
                    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                        revert with 0, 34
                    mem[mem[64] + 36] = stor4.length.field_1 % 128
                    if not bool(stor4.length):
                        revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from mem[64]
                           len -mem[64]
                    idx = 0
                    s = sha3(4)
                    while idx < stor4.length.field_1 % 128:
                        mem[idx + _819 + 68] = stor[s]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with memory
                      from mem[64]
                       len _819 + ceil32(stor4.length.field_1 % 128) + -mem[64] + 68
                require cd[((32 * idx) + cd[36] + 36)] > 0
                if sub_79920951[cd[4]] > -2:
                    revert with 0, 17
                if sub_79920951[cd[4]] + 1 > sub_fc86b662[cd[4]]:
                    revert with 0, 'Minting would exceed the max number of items for given type'
                if stor13[cd[((32 * idx) + cd[36] + 36)]]:
                    revert with 0, 'Supplied id is already used'
                mem[32] = 12
                if stor12[cd[4]]:
                    revert with 0, 'Given type is fungible'
                _883 = mem[64]
                mem[mem[64]] = 0
                if not address(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 0, 'ERC1155: mint to the zero address'
                if msg.sender != this.address:
                    mem[mem[64] + 32] = 1
                    mem[64] = mem[64] + 96
                    mem[_883 + 64] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_883 + 96] = 1
                    mem[64] = _883 + 160
                    mem[_883 + 128] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_883 + 160] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_883 + 192] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, msg.sender, 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_883 + 160] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_883 + 164] = msg.sender
                        mem[_883 + 196] = 0
                        mem[_883 + 228] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_883 + 260] = 1
                        mem[_883 + 292] = 160
                        mem[_883 + 324] = mem[_883]
                        s = 0
                        while s < mem[_883]:
                            mem[s + _883 + 356] = mem[s + _883 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_883]) > mem[_883]:
                            mem[mem[_883] + _883 + 356] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_883], mem[_883 + 356 len ceil32(mem[_883])]
                        mem[_883 + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _883 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[64] = mem[64] + ceil32(calldata.size) + 64
                    mem[_883 + 32] = calldata.size
                    mem[_883 + 64 len calldata.size] = call.data[0 len calldata.size]
                    mem[_883 + calldata.size + 64] = 0
                    _910 = mem[calldata.size + _883 + 32]
                    mem[_883 + ceil32(calldata.size) + 64] = 1
                    mem[_883 + ceil32(calldata.size) + 96] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_883 + ceil32(calldata.size) + 128] = 1
                    mem[64] = _883 + ceil32(calldata.size) + 192
                    mem[_883 + ceil32(calldata.size) + 160] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_883 + ceil32(calldata.size) + 192] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_883 + ceil32(calldata.size) + 224] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, address(_910), 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_883 + ceil32(calldata.size) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_883 + ceil32(calldata.size) + 196] = address(_910)
                        mem[_883 + ceil32(calldata.size) + 228] = 0
                        mem[_883 + ceil32(calldata.size) + 260] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_883 + ceil32(calldata.size) + 292] = 1
                        mem[_883 + ceil32(calldata.size) + 324] = 160
                        mem[_883 + ceil32(calldata.size) + 356] = mem[_883]
                        s = 0
                        while s < mem[_883]:
                            mem[s + _883 + ceil32(calldata.size) + 388] = mem[s + _883 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_883]) > mem[_883]:
                            mem[mem[_883] + _883 + ceil32(calldata.size) + 388] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_910), 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_883], mem[_883 + ceil32(calldata.size) + 388 len ceil32(mem[_883])]
                        mem[_883 + ceil32(calldata.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _883 + ceil32(calldata.size) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                _807 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_807] = calldata.size
                mem[_807 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_807 + calldata.size + 32] = 0
                if not uint8(roleAdmin[0][address(mem[calldata.size + _807])].field_0):
                    _820 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[mem[64] + 36] = uint255(stor4.length) * 0.5
                        if not bool(stor4.length):
                            revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                        if bool(stor4.length) != 1:
                            revert with memory
                              from mem[64]
                               len -mem[64]
                        idx = 0
                        s = sha3(4)
                        while idx < uint255(stor4.length) * 0.5:
                            mem[idx + _820 + 68] = stor[s]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        revert with memory
                          from mem[64]
                           len _820 + ceil32(uint255(stor4.length) * 0.5) + -mem[64] + 68
                    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                        revert with 0, 34
                    mem[mem[64] + 36] = stor4.length.field_1 % 128
                    if not bool(stor4.length):
                        revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from mem[64]
                           len -mem[64]
                    idx = 0
                    s = sha3(4)
                    while idx < stor4.length.field_1 % 128:
                        mem[idx + _820 + 68] = stor[s]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with memory
                      from mem[64]
                       len _820 + ceil32(stor4.length.field_1 % 128) + -mem[64] + 68
                require cd[((32 * idx) + cd[36] + 36)] > 0
                if sub_79920951[cd[4]] > -2:
                    revert with 0, 17
                if sub_79920951[cd[4]] + 1 > sub_fc86b662[cd[4]]:
                    revert with 0, 'Minting would exceed the max number of items for given type'
                if stor13[cd[((32 * idx) + cd[36] + 36)]]:
                    revert with 0, 'Supplied id is already used'
                mem[32] = 12
                if stor12[cd[4]]:
                    revert with 0, 'Given type is fungible'
                _886 = mem[64]
                mem[mem[64]] = 0
                if not address(cd[((32 * idx) + cd[68] + 36)]):
                    revert with 0, 'ERC1155: mint to the zero address'
                if msg.sender != this.address:
                    mem[mem[64] + 32] = 1
                    mem[64] = mem[64] + 96
                    mem[_886 + 64] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_886 + 96] = 1
                    mem[64] = _886 + 160
                    mem[_886 + 128] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_886 + 160] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_886 + 192] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, msg.sender, 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_886 + 160] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_886 + 164] = msg.sender
                        mem[_886 + 196] = 0
                        mem[_886 + 228] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_886 + 260] = 1
                        mem[_886 + 292] = 160
                        mem[_886 + 324] = mem[_886]
                        s = 0
                        while s < mem[_886]:
                            mem[s + _886 + 356] = mem[s + _886 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_886]) > mem[_886]:
                            mem[mem[_886] + _886 + 356] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_886], mem[_886 + 356 len ceil32(mem[_886])]
                        mem[_886 + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _886 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[64] = mem[64] + ceil32(calldata.size) + 64
                    mem[_886 + 32] = calldata.size
                    mem[_886 + 64 len calldata.size] = call.data[0 len calldata.size]
                    mem[_886 + calldata.size + 64] = 0
                    _912 = mem[calldata.size + _886 + 32]
                    mem[_886 + ceil32(calldata.size) + 64] = 1
                    mem[_886 + ceil32(calldata.size) + 96] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_886 + ceil32(calldata.size) + 128] = 1
                    mem[64] = _886 + ceil32(calldata.size) + 192
                    mem[_886 + ceil32(calldata.size) + 160] = 1
                    mem[0] = address(cd[((32 * idx) + cd[68] + 36)])
                    mem[32] = sha3(cd[((32 * idx) + cd[36] + 36)], 0)
                    if balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])] > -2:
                        revert with 0, 17
                    balanceOf[cd[((32 * idx) + cd[36] + 36)]][address(cd[((32 * idx) + cd[68] + 36)])]++
                    mem[_886 + ceil32(calldata.size) + 192] = cd[((32 * idx) + cd[36] + 36)]
                    mem[_886 + ceil32(calldata.size) + 224] = 1
                    emit TransferSingle(cd[((32 * idx) + cd[36] + 36)], 1, address(_912), 0, address(cd[((32 * idx) + cd[68] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[68] + 36)])):
                        mem[_886 + ceil32(calldata.size) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_886 + ceil32(calldata.size) + 196] = address(_912)
                        mem[_886 + ceil32(calldata.size) + 228] = 0
                        mem[_886 + ceil32(calldata.size) + 260] = cd[((32 * idx) + cd[36] + 36)]
                        mem[_886 + ceil32(calldata.size) + 292] = 1
                        mem[_886 + ceil32(calldata.size) + 324] = 160
                        mem[_886 + ceil32(calldata.size) + 356] = mem[_886]
                        s = 0
                        while s < mem[_886]:
                            mem[s + _886 + ceil32(calldata.size) + 388] = mem[s + _886 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_886]) > mem[_886]:
                            mem[mem[_886] + _886 + ceil32(calldata.size) + 388] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[68] + 36)]))
                        call address(cd[((32 * idx) + cd[68] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_912), 0, cd[((32 * idx) + cd[36] + 36)], 1, 160, mem[_886], mem[_886 + ceil32(calldata.size) + 388 len ceil32(mem[_886])]
                        mem[_886 + ceil32(calldata.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _886 + ceil32(calldata.size) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            stor13[cd[((32 * idx) + cd[36] + 36)]] = 1
            if sub_79920951[cd[4]] > -2:
                revert with 0, 17
            sub_79920951[cd[4]]++
            mem[0] = cd[((32 * idx) + cd[36] + 36)]
            sub_0f699e80[cd[((32 * idx) + cd[36] + 36)]] = cd[4]
            mem[32] = 14
            mintNumber[cd[((32 * idx) + cd[36] + 36)]] = sub_79920951[cd[4]]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _798 = mem[64]
        mem[mem[64]] = cd[4]
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = ('cd', 36).length
        require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[mem[64] + 128 len 32 * ('cd', 36).length] = call.data[cd[36] + 36 len 32 * ('cd', 36).length]
        mem[mem[64] + 64] = (32 * ('cd', 36).length) + 128
        mem[(32 * ('cd', 36).length) + _798 + 128] = ('cd', 68).length
        idx = 0
        s = cd[68] + 36
        t = (32 * ('cd', 36).length) + _798 + 160
        while idx < ('cd', 68).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        emit 0x16a6af95: mem[mem[64] len (32 * ('cd', 36).length) + _798 + (32 * ('cd', 68).length) + -mem[64] + 160]
}

function sub_14564cfb(?) payable {
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
        mem[32] = sha3(0, 3)
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from 96
                       len -96
                idx = 0
                s = 0
                while idx < uint255(stor4.length) * 0.5:
                    mem[idx + 164] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[164 len ceil32(uint255(stor4.length) * 0.5)]
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor4.length.field_1 % 128:
                mem[idx + 164] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor4.length % 128, mem[164 len ceil32(stor4.length.field_1 % 128)]
        if ('cd', 68).length != ('cd', 36).length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'number of accounts must equal number of amounts'
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if msg.sender != this.address:
                if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                    _741 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[mem[64] + 36] = uint255(stor4.length) * 0.5
                        if not bool(stor4.length):
                            revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                        if bool(stor4.length) != 1:
                            revert with memory
                              from mem[64]
                               len -mem[64]
                        idx = 0
                        s = sha3(4)
                        while idx < uint255(stor4.length) * 0.5:
                            mem[idx + _741 + 68] = stor[s]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        revert with memory
                          from mem[64]
                           len _741 + ceil32(uint255(stor4.length) * 0.5) + -mem[64] + 68
                    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                        revert with 0, 34
                    mem[mem[64] + 36] = stor4.length.field_1 % 128
                    if not bool(stor4.length):
                        revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from mem[64]
                           len -mem[64]
                    idx = 0
                    s = sha3(4)
                    while idx < stor4.length.field_1 % 128:
                        mem[idx + _741 + 68] = stor[s]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with memory
                      from mem[64]
                       len _741 + ceil32(stor4.length.field_1 % 128) + -mem[64] + 68
                require cd[4] > 0
                if cd[((32 * idx) + cd[68] + 36)] <= 0:
                    revert with 0, 'Amount should be > 0'
                if sub_79920951[cd[4]] > !cd[((32 * idx) + cd[68] + 36)]:
                    revert with 0, 17
                if sub_79920951[cd[4]] + cd[((32 * idx) + cd[68] + 36)] > sub_fc86b662[cd[4]]:
                    revert with 0, 'Minting would exceed the max number of items for given type'
                mem[32] = 12
                if bool(stor12[cd[4]]) != 1:
                    revert with 0, 'typeId is not fungible.'
                _793 = mem[64]
                mem[mem[64]] = 0
                if not address(cd[((32 * idx) + cd[36] + 36)]):
                    revert with 0, 'ERC1155: mint to the zero address'
                if msg.sender != this.address:
                    mem[mem[64] + 32] = 1
                    mem[64] = mem[64] + 96
                    mem[_793 + 64] = cd[4]
                    mem[_793 + 96] = 1
                    mem[64] = _793 + 160
                    mem[_793 + 128] = cd[((32 * idx) + cd[68] + 36)]
                    mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 0)
                    if balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] > !cd[((32 * idx) + cd[68] + 36)]:
                        revert with 0, 17
                    balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] += cd[((32 * idx) + cd[68] + 36)]
                    mem[_793 + 160] = cd[4]
                    mem[_793 + 192] = cd[((32 * idx) + cd[68] + 36)]
                    emit TransferSingle(cd[4], cd[((32 * idx) + cd[68] + 36)], msg.sender, 0, address(cd[((32 * idx) + cd[36] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                        mem[_793 + 160] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_793 + 164] = msg.sender
                        mem[_793 + 196] = 0
                        mem[_793 + 228] = cd[4]
                        mem[_793 + 260] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_793 + 292] = 160
                        mem[_793 + 324] = mem[_793]
                        s = 0
                        while s < mem[_793]:
                            mem[s + _793 + 356] = mem[s + _793 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_793]) > mem[_793]:
                            mem[mem[_793] + _793 + 356] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[4], cd[((32 * idx) + cd[68] + 36)], 160, mem[_793], mem[_793 + 356 len ceil32(mem[_793])]
                        mem[_793 + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _793 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[64] = mem[64] + ceil32(calldata.size) + 64
                    mem[_793 + 32] = calldata.size
                    mem[_793 + 64 len calldata.size] = call.data[0 len calldata.size]
                    mem[_793 + calldata.size + 64] = 0
                    _826 = mem[calldata.size + _793 + 32]
                    mem[_793 + ceil32(calldata.size) + 64] = 1
                    mem[_793 + ceil32(calldata.size) + 96] = cd[4]
                    mem[_793 + ceil32(calldata.size) + 128] = 1
                    mem[64] = _793 + ceil32(calldata.size) + 192
                    mem[_793 + ceil32(calldata.size) + 160] = cd[((32 * idx) + cd[68] + 36)]
                    mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 0)
                    if balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] > !cd[((32 * idx) + cd[68] + 36)]:
                        revert with 0, 17
                    balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] += cd[((32 * idx) + cd[68] + 36)]
                    mem[_793 + ceil32(calldata.size) + 192] = cd[4]
                    mem[_793 + ceil32(calldata.size) + 224] = cd[((32 * idx) + cd[68] + 36)]
                    emit TransferSingle(cd[4], cd[((32 * idx) + cd[68] + 36)], address(_826), 0, address(cd[((32 * idx) + cd[36] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                        mem[_793 + ceil32(calldata.size) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_793 + ceil32(calldata.size) + 196] = address(_826)
                        mem[_793 + ceil32(calldata.size) + 228] = 0
                        mem[_793 + ceil32(calldata.size) + 260] = cd[4]
                        mem[_793 + ceil32(calldata.size) + 292] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_793 + ceil32(calldata.size) + 324] = 160
                        mem[_793 + ceil32(calldata.size) + 356] = mem[_793]
                        s = 0
                        while s < mem[_793]:
                            mem[s + _793 + ceil32(calldata.size) + 388] = mem[s + _793 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_793]) > mem[_793]:
                            mem[mem[_793] + _793 + ceil32(calldata.size) + 388] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_826), 0, cd[4], cd[((32 * idx) + cd[68] + 36)], 160, mem[_793], mem[_793 + ceil32(calldata.size) + 388 len ceil32(mem[_793])]
                        mem[_793 + ceil32(calldata.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _793 + ceil32(calldata.size) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                _729 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_729] = calldata.size
                mem[_729 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_729 + calldata.size + 32] = 0
                if not uint8(roleAdmin[0][address(mem[calldata.size + _729])].field_0):
                    _742 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[mem[64] + 36] = uint255(stor4.length) * 0.5
                        if not bool(stor4.length):
                            revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                        if bool(stor4.length) != 1:
                            revert with memory
                              from mem[64]
                               len -mem[64]
                        idx = 0
                        s = sha3(4)
                        while idx < uint255(stor4.length) * 0.5:
                            mem[idx + _742 + 68] = stor[s]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        revert with memory
                          from mem[64]
                           len _742 + ceil32(uint255(stor4.length) * 0.5) + -mem[64] + 68
                    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                        revert with 0, 34
                    mem[mem[64] + 36] = stor4.length.field_1 % 128
                    if not bool(stor4.length):
                        revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from mem[64]
                           len -mem[64]
                    idx = 0
                    s = sha3(4)
                    while idx < stor4.length.field_1 % 128:
                        mem[idx + _742 + 68] = stor[s]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with memory
                      from mem[64]
                       len _742 + ceil32(stor4.length.field_1 % 128) + -mem[64] + 68
                require cd[4] > 0
                if cd[((32 * idx) + cd[68] + 36)] <= 0:
                    revert with 0, 'Amount should be > 0'
                if sub_79920951[cd[4]] > !cd[((32 * idx) + cd[68] + 36)]:
                    revert with 0, 17
                if sub_79920951[cd[4]] + cd[((32 * idx) + cd[68] + 36)] > sub_fc86b662[cd[4]]:
                    revert with 0, 'Minting would exceed the max number of items for given type'
                mem[32] = 12
                if bool(stor12[cd[4]]) != 1:
                    revert with 0, 'typeId is not fungible.'
                _797 = mem[64]
                mem[mem[64]] = 0
                if not address(cd[((32 * idx) + cd[36] + 36)]):
                    revert with 0, 'ERC1155: mint to the zero address'
                if msg.sender != this.address:
                    mem[mem[64] + 32] = 1
                    mem[64] = mem[64] + 96
                    mem[_797 + 64] = cd[4]
                    mem[_797 + 96] = 1
                    mem[64] = _797 + 160
                    mem[_797 + 128] = cd[((32 * idx) + cd[68] + 36)]
                    mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 0)
                    if balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] > !cd[((32 * idx) + cd[68] + 36)]:
                        revert with 0, 17
                    balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] += cd[((32 * idx) + cd[68] + 36)]
                    mem[_797 + 160] = cd[4]
                    mem[_797 + 192] = cd[((32 * idx) + cd[68] + 36)]
                    emit TransferSingle(cd[4], cd[((32 * idx) + cd[68] + 36)], msg.sender, 0, address(cd[((32 * idx) + cd[36] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                        mem[_797 + 160] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_797 + 164] = msg.sender
                        mem[_797 + 196] = 0
                        mem[_797 + 228] = cd[4]
                        mem[_797 + 260] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_797 + 292] = 160
                        mem[_797 + 324] = mem[_797]
                        s = 0
                        while s < mem[_797]:
                            mem[s + _797 + 356] = mem[s + _797 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_797]) > mem[_797]:
                            mem[mem[_797] + _797 + 356] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[4], cd[((32 * idx) + cd[68] + 36)], 160, mem[_797], mem[_797 + 356 len ceil32(mem[_797])]
                        mem[_797 + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _797 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[64] = mem[64] + ceil32(calldata.size) + 64
                    mem[_797 + 32] = calldata.size
                    mem[_797 + 64 len calldata.size] = call.data[0 len calldata.size]
                    mem[_797 + calldata.size + 64] = 0
                    _828 = mem[calldata.size + _797 + 32]
                    mem[_797 + ceil32(calldata.size) + 64] = 1
                    mem[_797 + ceil32(calldata.size) + 96] = cd[4]
                    mem[_797 + ceil32(calldata.size) + 128] = 1
                    mem[64] = _797 + ceil32(calldata.size) + 192
                    mem[_797 + ceil32(calldata.size) + 160] = cd[((32 * idx) + cd[68] + 36)]
                    mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 0)
                    if balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] > !cd[((32 * idx) + cd[68] + 36)]:
                        revert with 0, 17
                    balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] += cd[((32 * idx) + cd[68] + 36)]
                    mem[_797 + ceil32(calldata.size) + 192] = cd[4]
                    mem[_797 + ceil32(calldata.size) + 224] = cd[((32 * idx) + cd[68] + 36)]
                    emit TransferSingle(cd[4], cd[((32 * idx) + cd[68] + 36)], address(_828), 0, address(cd[((32 * idx) + cd[36] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                        mem[_797 + ceil32(calldata.size) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_797 + ceil32(calldata.size) + 196] = address(_828)
                        mem[_797 + ceil32(calldata.size) + 228] = 0
                        mem[_797 + ceil32(calldata.size) + 260] = cd[4]
                        mem[_797 + ceil32(calldata.size) + 292] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_797 + ceil32(calldata.size) + 324] = 160
                        mem[_797 + ceil32(calldata.size) + 356] = mem[_797]
                        s = 0
                        while s < mem[_797]:
                            mem[s + _797 + ceil32(calldata.size) + 388] = mem[s + _797 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_797]) > mem[_797]:
                            mem[mem[_797] + _797 + ceil32(calldata.size) + 388] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_828), 0, cd[4], cd[((32 * idx) + cd[68] + 36)], 160, mem[_797], mem[_797 + ceil32(calldata.size) + 388 len ceil32(mem[_797])]
                        mem[_797 + ceil32(calldata.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _797 + ceil32(calldata.size) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if sub_79920951[cd[4]] > !cd[((32 * idx) + cd[68] + 36)]:
                revert with 0, 17
            mem[0] = cd[4]
            mem[32] = 9
            sub_79920951[cd[4]] += cd[((32 * idx) + cd[68] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _721 = mem[64]
        mem[mem[64]] = cd[4]
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 128
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_721 + 64] = (32 * ('cd', 36).length) + 128
        mem[_721 + (32 * ('cd', 36).length) + 128] = ('cd', 68).length
        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[_721 + (32 * ('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[(32 * ('cd', 68).length) + _721 + (32 * ('cd', 36).length) + 160] = 0
        emit 0xbc11d48c: mem[mem[64] len (32 * ('cd', 68).length) + _721 + (32 * ('cd', 36).length) + -mem[64] + 160]
    else:
        mem[64] = ceil32(calldata.size) + 128
        mem[96] = calldata.size
        mem[128 len calldata.size] = call.data[0 len calldata.size]
        mem[calldata.size + 128] = 0
        mem[0] = mem[calldata.size + 108 len 20]
        mem[32] = sha3(0, 3)
        if not uint8(roleAdmin[0][address(mem[calldata.size + 96])].field_0):
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from ceil32(calldata.size) + 128
                       len -ceil32(calldata.size) - 128
                idx = 0
                s = 0
                while idx < uint255(stor4.length) * 0.5:
                    mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[ceil32(calldata.size) + 196 len ceil32(uint255(stor4.length) * 0.5)]
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from ceil32(calldata.size) + 128
                   len -ceil32(calldata.size) - 128
            idx = 0
            s = 0
            while idx < stor4.length.field_1 % 128:
                mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor4.length % 128, mem[ceil32(calldata.size) + 196 len ceil32(stor4.length.field_1 % 128)]
        if ('cd', 68).length != ('cd', 36).length:
            revert with 0, 'number of accounts must equal number of amounts'
        idx = 0
        while idx < ('cd', 36).length:
            require cd[((32 * idx) + cd[36] + 36)] == address(cd[((32 * idx) + cd[36] + 36)])
            if idx >= ('cd', 68).length:
                revert with 0, 50
            if msg.sender != this.address:
                if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                    _743 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[mem[64] + 36] = uint255(stor4.length) * 0.5
                        if not bool(stor4.length):
                            revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                        if bool(stor4.length) != 1:
                            revert with memory
                              from mem[64]
                               len -mem[64]
                        idx = 0
                        s = sha3(4)
                        while idx < uint255(stor4.length) * 0.5:
                            mem[idx + _743 + 68] = stor[s]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        revert with memory
                          from mem[64]
                           len _743 + ceil32(uint255(stor4.length) * 0.5) + -mem[64] + 68
                    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                        revert with 0, 34
                    mem[mem[64] + 36] = stor4.length.field_1 % 128
                    if not bool(stor4.length):
                        revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from mem[64]
                           len -mem[64]
                    idx = 0
                    s = sha3(4)
                    while idx < stor4.length.field_1 % 128:
                        mem[idx + _743 + 68] = stor[s]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with memory
                      from mem[64]
                       len _743 + ceil32(stor4.length.field_1 % 128) + -mem[64] + 68
                require cd[4] > 0
                if cd[((32 * idx) + cd[68] + 36)] <= 0:
                    revert with 0, 'Amount should be > 0'
                if sub_79920951[cd[4]] > !cd[((32 * idx) + cd[68] + 36)]:
                    revert with 0, 17
                if sub_79920951[cd[4]] + cd[((32 * idx) + cd[68] + 36)] > sub_fc86b662[cd[4]]:
                    revert with 0, 'Minting would exceed the max number of items for given type'
                mem[32] = 12
                if bool(stor12[cd[4]]) != 1:
                    revert with 0, 'typeId is not fungible.'
                _801 = mem[64]
                mem[mem[64]] = 0
                if not address(cd[((32 * idx) + cd[36] + 36)]):
                    revert with 0, 'ERC1155: mint to the zero address'
                if msg.sender != this.address:
                    mem[mem[64] + 32] = 1
                    mem[64] = mem[64] + 96
                    mem[_801 + 64] = cd[4]
                    mem[_801 + 96] = 1
                    mem[64] = _801 + 160
                    mem[_801 + 128] = cd[((32 * idx) + cd[68] + 36)]
                    mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 0)
                    if balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] > !cd[((32 * idx) + cd[68] + 36)]:
                        revert with 0, 17
                    balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] += cd[((32 * idx) + cd[68] + 36)]
                    mem[_801 + 160] = cd[4]
                    mem[_801 + 192] = cd[((32 * idx) + cd[68] + 36)]
                    emit TransferSingle(cd[4], cd[((32 * idx) + cd[68] + 36)], msg.sender, 0, address(cd[((32 * idx) + cd[36] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                        mem[_801 + 160] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_801 + 164] = msg.sender
                        mem[_801 + 196] = 0
                        mem[_801 + 228] = cd[4]
                        mem[_801 + 260] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_801 + 292] = 160
                        mem[_801 + 324] = mem[_801]
                        s = 0
                        while s < mem[_801]:
                            mem[s + _801 + 356] = mem[s + _801 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_801]) > mem[_801]:
                            mem[mem[_801] + _801 + 356] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[4], cd[((32 * idx) + cd[68] + 36)], 160, mem[_801], mem[_801 + 356 len ceil32(mem[_801])]
                        mem[_801 + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _801 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[64] = mem[64] + ceil32(calldata.size) + 64
                    mem[_801 + 32] = calldata.size
                    mem[_801 + 64 len calldata.size] = call.data[0 len calldata.size]
                    mem[_801 + calldata.size + 64] = 0
                    _830 = mem[calldata.size + _801 + 32]
                    mem[_801 + ceil32(calldata.size) + 64] = 1
                    mem[_801 + ceil32(calldata.size) + 96] = cd[4]
                    mem[_801 + ceil32(calldata.size) + 128] = 1
                    mem[64] = _801 + ceil32(calldata.size) + 192
                    mem[_801 + ceil32(calldata.size) + 160] = cd[((32 * idx) + cd[68] + 36)]
                    mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 0)
                    if balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] > !cd[((32 * idx) + cd[68] + 36)]:
                        revert with 0, 17
                    balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] += cd[((32 * idx) + cd[68] + 36)]
                    mem[_801 + ceil32(calldata.size) + 192] = cd[4]
                    mem[_801 + ceil32(calldata.size) + 224] = cd[((32 * idx) + cd[68] + 36)]
                    emit TransferSingle(cd[4], cd[((32 * idx) + cd[68] + 36)], address(_830), 0, address(cd[((32 * idx) + cd[36] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                        mem[_801 + ceil32(calldata.size) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_801 + ceil32(calldata.size) + 196] = address(_830)
                        mem[_801 + ceil32(calldata.size) + 228] = 0
                        mem[_801 + ceil32(calldata.size) + 260] = cd[4]
                        mem[_801 + ceil32(calldata.size) + 292] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_801 + ceil32(calldata.size) + 324] = 160
                        mem[_801 + ceil32(calldata.size) + 356] = mem[_801]
                        s = 0
                        while s < mem[_801]:
                            mem[s + _801 + ceil32(calldata.size) + 388] = mem[s + _801 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_801]) > mem[_801]:
                            mem[mem[_801] + _801 + ceil32(calldata.size) + 388] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_830), 0, cd[4], cd[((32 * idx) + cd[68] + 36)], 160, mem[_801], mem[_801 + ceil32(calldata.size) + 388 len ceil32(mem[_801])]
                        mem[_801 + ceil32(calldata.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _801 + ceil32(calldata.size) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            else:
                _731 = mem[64]
                mem[64] = mem[64] + ceil32(calldata.size) + 32
                mem[_731] = calldata.size
                mem[_731 + 32 len calldata.size] = call.data[0 len calldata.size]
                mem[_731 + calldata.size + 32] = 0
                if not uint8(roleAdmin[0][address(mem[calldata.size + _731])].field_0):
                    _744 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    if bool(stor4.length):
                        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                            revert with 0, 34
                        mem[mem[64] + 36] = uint255(stor4.length) * 0.5
                        if not bool(stor4.length):
                            revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                        if bool(stor4.length) != 1:
                            revert with memory
                              from mem[64]
                               len -mem[64]
                        idx = 0
                        s = sha3(4)
                        while idx < uint255(stor4.length) * 0.5:
                            mem[idx + _744 + 68] = stor[s]
                            idx = idx + 32
                            s = s + 1
                            continue 
                        revert with memory
                          from mem[64]
                           len _744 + ceil32(uint255(stor4.length) * 0.5) + -mem[64] + 68
                    if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                        revert with 0, 34
                    mem[mem[64] + 36] = stor4.length.field_1 % 128
                    if not bool(stor4.length):
                        revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
                    if bool(stor4.length) != 1:
                        revert with memory
                          from mem[64]
                           len -mem[64]
                    idx = 0
                    s = sha3(4)
                    while idx < stor4.length.field_1 % 128:
                        mem[idx + _744 + 68] = stor[s]
                        idx = idx + 32
                        s = s + 1
                        continue 
                    revert with memory
                      from mem[64]
                       len _744 + ceil32(stor4.length.field_1 % 128) + -mem[64] + 68
                require cd[4] > 0
                if cd[((32 * idx) + cd[68] + 36)] <= 0:
                    revert with 0, 'Amount should be > 0'
                if sub_79920951[cd[4]] > !cd[((32 * idx) + cd[68] + 36)]:
                    revert with 0, 17
                if sub_79920951[cd[4]] + cd[((32 * idx) + cd[68] + 36)] > sub_fc86b662[cd[4]]:
                    revert with 0, 'Minting would exceed the max number of items for given type'
                mem[32] = 12
                if bool(stor12[cd[4]]) != 1:
                    revert with 0, 'typeId is not fungible.'
                _805 = mem[64]
                mem[mem[64]] = 0
                if not address(cd[((32 * idx) + cd[36] + 36)]):
                    revert with 0, 'ERC1155: mint to the zero address'
                if msg.sender != this.address:
                    mem[mem[64] + 32] = 1
                    mem[64] = mem[64] + 96
                    mem[_805 + 64] = cd[4]
                    mem[_805 + 96] = 1
                    mem[64] = _805 + 160
                    mem[_805 + 128] = cd[((32 * idx) + cd[68] + 36)]
                    mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 0)
                    if balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] > !cd[((32 * idx) + cd[68] + 36)]:
                        revert with 0, 17
                    balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] += cd[((32 * idx) + cd[68] + 36)]
                    mem[_805 + 160] = cd[4]
                    mem[_805 + 192] = cd[((32 * idx) + cd[68] + 36)]
                    emit TransferSingle(cd[4], cd[((32 * idx) + cd[68] + 36)], msg.sender, 0, address(cd[((32 * idx) + cd[36] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                        mem[_805 + 160] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_805 + 164] = msg.sender
                        mem[_805 + 196] = 0
                        mem[_805 + 228] = cd[4]
                        mem[_805 + 260] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_805 + 292] = 160
                        mem[_805 + 324] = mem[_805]
                        s = 0
                        while s < mem[_805]:
                            mem[s + _805 + 356] = mem[s + _805 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_805]) > mem[_805]:
                            mem[mem[_805] + _805 + 356] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args msg.sender, 0, cd[4], cd[((32 * idx) + cd[68] + 36)], 160, mem[_805], mem[_805 + 356 len ceil32(mem[_805])]
                        mem[_805 + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _805 + ceil32(return_data.size) + 160
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
                else:
                    mem[64] = mem[64] + ceil32(calldata.size) + 64
                    mem[_805 + 32] = calldata.size
                    mem[_805 + 64 len calldata.size] = call.data[0 len calldata.size]
                    mem[_805 + calldata.size + 64] = 0
                    _832 = mem[calldata.size + _805 + 32]
                    mem[_805 + ceil32(calldata.size) + 64] = 1
                    mem[_805 + ceil32(calldata.size) + 96] = cd[4]
                    mem[_805 + ceil32(calldata.size) + 128] = 1
                    mem[64] = _805 + ceil32(calldata.size) + 192
                    mem[_805 + ceil32(calldata.size) + 160] = cd[((32 * idx) + cd[68] + 36)]
                    mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                    mem[32] = sha3(cd[4], 0)
                    if balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] > !cd[((32 * idx) + cd[68] + 36)]:
                        revert with 0, 17
                    balanceOf[cd[4]][address(cd[((32 * idx) + cd[36] + 36)])] += cd[((32 * idx) + cd[68] + 36)]
                    mem[_805 + ceil32(calldata.size) + 192] = cd[4]
                    mem[_805 + ceil32(calldata.size) + 224] = cd[((32 * idx) + cd[68] + 36)]
                    emit TransferSingle(cd[4], cd[((32 * idx) + cd[68] + 36)], address(_832), 0, address(cd[((32 * idx) + cd[36] + 36)]));
                    if ext_code.size(address(cd[((32 * idx) + cd[36] + 36)])):
                        mem[_805 + ceil32(calldata.size) + 192] = 0xf23a6e6100000000000000000000000000000000000000000000000000000000
                        mem[_805 + ceil32(calldata.size) + 196] = address(_832)
                        mem[_805 + ceil32(calldata.size) + 228] = 0
                        mem[_805 + ceil32(calldata.size) + 260] = cd[4]
                        mem[_805 + ceil32(calldata.size) + 292] = cd[((32 * idx) + cd[68] + 36)]
                        mem[_805 + ceil32(calldata.size) + 324] = 160
                        mem[_805 + ceil32(calldata.size) + 356] = mem[_805]
                        s = 0
                        while s < mem[_805]:
                            mem[s + _805 + ceil32(calldata.size) + 388] = mem[s + _805 + 32]
                            s = s + 32
                            continue 
                        if ceil32(mem[_805]) > mem[_805]:
                            mem[mem[_805] + _805 + ceil32(calldata.size) + 388] = 0
                        require ext_code.size(address(cd[((32 * idx) + cd[36] + 36)]))
                        call address(cd[((32 * idx) + cd[36] + 36)]).onERC1155Received(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
                             gas gas_remaining wei
                            args address(_832), 0, cd[4], cd[((32 * idx) + cd[68] + 36)], 160, mem[_805], mem[_805 + ceil32(calldata.size) + 388 len ceil32(mem[_805])]
                        mem[_805 + ceil32(calldata.size) + 192] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with 0, 'ERC1155: transfer to non ERC1155Receiver implementer'
                        mem[64] = _805 + ceil32(calldata.size) + ceil32(return_data.size) + 192
                        require return_data.size >= 32
                        require ext_call.return_data[0] == Mask(32, 224, ext_call.return_data[0])
                        if Mask(32, 224, ext_call.return_data[0]) != 0xf23a6e6100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'ERC1155: ERC1155Receiver rejected tokens'
            if sub_79920951[cd[4]] > !cd[((32 * idx) + cd[68] + 36)]:
                revert with 0, 17
            mem[0] = cd[4]
            mem[32] = 9
            sub_79920951[cd[4]] += cd[((32 * idx) + cd[68] + 36)]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _722 = mem[64]
        mem[mem[64]] = cd[4]
        mem[mem[64] + 32] = 96
        mem[mem[64] + 96] = ('cd', 36).length
        idx = 0
        s = cd[36] + 36
        t = mem[64] + 128
        while idx < ('cd', 36).length:
            require cd[s] == address(cd[s])
            mem[t] = address(cd[s])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[_722 + 64] = (32 * ('cd', 36).length) + 128
        mem[_722 + (32 * ('cd', 36).length) + 128] = ('cd', 68).length
        require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[_722 + (32 * ('cd', 36).length) + 160 len 32 * ('cd', 68).length] = call.data[cd[68] + 36 len 32 * ('cd', 68).length]
        mem[(32 * ('cd', 68).length) + _722 + (32 * ('cd', 36).length) + 160] = 0
        emit 0xbc11d48c: mem[mem[64] len (32 * ('cd', 68).length) + _722 + (32 * ('cd', 36).length) + -mem[64] + 160]
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
            if bool(stor4.length):
                if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                    revert with 0, 34
                if not bool(stor4.length):
                    revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
                if bool(stor4.length) != 1:
                    revert with memory
                      from 96
                       len -96
                idx = 0
                s = 0
                while idx < uint255(stor4.length) * 0.5:
                    mem[idx + 164] = stor4[s].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[164 len ceil32(uint255(stor4.length) * 0.5)]
            if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from 96
                   len -96
            idx = 0
            s = 0
            while idx < stor4.length.field_1 % 128:
                mem[idx + 164] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, stor4.length % 128, mem[164 len ceil32(stor4.length.field_1 % 128)]
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
                _2485 = ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _2501 = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_2501)] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131 len ceil32(_2501)]
                if ceil32(_2501) <= _2501:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2501) + 32]
                mem[_2501 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_2501) + _2485 + -mem[64] + 68
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
            _2486 = ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2503 = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99]
            mem[mem[64] + 36] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 99]
            mem[mem[64] + 68 len ceil32(_2503)] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131 len ceil32(_2503)]
            if ceil32(_2503) <= _2503:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2503) + 32]
            mem[_2503 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_2503) + _2486 + -mem[64] + 68
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
            _2487 = ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2505 = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_2505)] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_2505)]
            if ceil32(_2505) <= _2505:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2505) + 32]
            mem[_2505 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_2505) + _2487 + -mem[64] + 68
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
        _2488 = ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
        mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2507 = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
        mem[mem[64] + 36] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
        mem[mem[64] + 68 len ceil32(_2507)] = mem[ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_2507)]
        if ceil32(_2507) <= _2507:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2507) + 32]
        mem[_2507 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_2507) + _2488 + -mem[64] + 68
    mem[96] = calldata.size
    mem[128 len calldata.size] = call.data[0 len calldata.size]
    mem[calldata.size + 128] = 0
    mem[0] = mem[calldata.size + 108 len 20]
    if not uint8(roleAdmin[0x8f4f2da22e8ac8f11e15f9fc141cddbb5deea8800186560abb6e68c5496619a9][address(mem[calldata.size + 96])].field_0):
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if not bool(stor4.length):
                revert with 0, 32, 2 * Mask(256, -1, stor4.length), Mask(248, 8, stor4.length)
            if bool(stor4.length) != 1:
                revert with memory
                  from ceil32(calldata.size) + 128
                   len -ceil32(calldata.size) - 128
            idx = 0
            s = 0
            while idx < uint255(stor4.length) * 0.5:
                mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
                idx = idx + 32
                s = s + 1
                continue 
            revert with 0, 32, 2 * Mask(256, -1, stor4.length), mem[ceil32(calldata.size) + 196 len ceil32(uint255(stor4.length) * 0.5)]
        if bool(stor4.length) == stor4.length.field_1 % 128 < 32:
            revert with 0, 34
        if not bool(stor4.length):
            revert with 0, 32, stor4.length % 128, Mask(248, 8, stor4.length)
        if bool(stor4.length) != 1:
            revert with memory
              from ceil32(calldata.size) + 128
               len -ceil32(calldata.size) - 128
        idx = 0
        s = 0
        while idx < stor4.length.field_1 % 128:
            mem[idx + ceil32(calldata.size) + 196] = stor4[s].field_0
            idx = idx + 32
            s = s + 1
            continue 
        revert with 0, 32, stor4.length % 128, mem[ceil32(calldata.size) + 196 len ceil32(stor4.length.field_1 % 128)]
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
            _2489 = ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _2509 = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_2509)] = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163 len ceil32(_2509)]
            if ceil32(_2509) <= _2509:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2509) + 32]
            mem[_2509 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_2509) + _2489 + -mem[64] + 68
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
        _2490 = ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132
        mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2511 = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131]
        mem[mem[64] + 36] = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 131]
        mem[mem[64] + 68 len ceil32(_2511)] = mem[ceil32(calldata.size) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163 len ceil32(_2511)]
        if ceil32(_2511) <= _2511:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2511) + 32]
        mem[_2511 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_2511) + _2490 + -mem[64] + 68
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
        _2491 = (2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164
        mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _2513 = mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163]
        mem[mem[64] + 36] = mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163]
        mem[mem[64] + 68 len ceil32(_2513)] = mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 195 len ceil32(_2513)]
        if ceil32(_2513) <= _2513:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2513) + 32]
        mem[_2513 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_2513) + _2491 + -mem[64] + 68
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
    _2492 = (2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164
    mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + floor32(ext_call.return_data[0] + mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _2515 = mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163]
    mem[mem[64] + 36] = mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 163]
    mem[mem[64] + 68 len ceil32(_2515)] = mem[(2 * ceil32(calldata.size)) + ceil32(32 * cd[(arg2 + cd[(arg2 + 36)] + 36)]) + ceil32(32 * cd[(arg2 + cd[(arg2 + 68)] + 36)]) + ceil32(ceil32(cd[(arg2 + cd[(arg2 + 100)] + 36)])) + ext_call.return_data[0] + 195 len ceil32(_2515)]
    if ceil32(_2515) <= _2515:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_2515) + 32]
    mem[_2515 + mem[64] + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_2515) + _2492 + -mem[64] + 68
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
                var89001 = arg3.length
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
                    _7603 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _7651 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_7651)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_7651)]
                    if ceil32(_7651) <= _7651:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7651) + 32]
                    mem[_7651 + mem[64] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_7651) + _7603 + -mem[64] + 68
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
                _7604 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _7653 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_7653)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_7653)]
                if ceil32(_7653) <= _7653:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7653) + 32]
                mem[_7653 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_7653) + _7604 + -mem[64] + 68
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
            var89001 = arg3.length
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
                _7605 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _7655 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 68 len ceil32(_7655)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_7655)]
                if ceil32(_7655) <= _7655:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7655) + 32]
                mem[_7655 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_7655) + _7605 + -mem[64] + 68
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
            _7606 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _7657 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_7657)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_7657)]
            if ceil32(_7657) <= _7657:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7657) + 32]
            mem[_7657 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_7657) + _7606 + -mem[64] + 68
        if msg.sender != this.address:
            mem[0] = msg.sender
            if not stor1[address(arg1)][address(msg.sender)]:
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
                var82001 = arg3.length
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
                    _7607 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    _7659 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                    mem[mem[64] + 68 len ceil32(_7659)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_7659)]
                    if ceil32(_7659) <= _7659:
                        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7659) + 32]
                    mem[_7659 + mem[64] + 68] = 0
                    revert with memory
                      from mem[64]
                       len ceil32(_7659) + _7607 + -mem[64] + 68
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
                _7608 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99] + 31) + 100] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _7661 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 99]
                mem[mem[64] + 68 len ceil32(_7661)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ext_call.return_data[0] + 131 len ceil32(_7661)]
                if ceil32(_7661) <= _7661:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7661) + 32]
                mem[_7661 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_7661) + _7608 + -mem[64] + 68
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
            var82001 = arg3.length
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
                _7609 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _7663 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 68 len ceil32(_7663)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_7663)]
                if ceil32(_7663) <= _7663:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7663) + 32]
                mem[_7663 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_7663) + _7609 + -mem[64] + 68
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
            _7610 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _7665 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_7665)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_7665)]
            if ceil32(_7665) <= _7665:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7665) + 32]
            mem[_7665 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_7665) + _7610 + -mem[64] + 68
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99] = calldata.size
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 131 len calldata.size] = call.data[0 len calldata.size]
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + calldata.size + 131] = 0
        mem[0] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 111 len 20]
        if not stor1[address(arg1)][address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + 99])]:
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
            var82001 = arg3.length
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
                _7611 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _7667 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 68 len ceil32(_7667)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_7667)]
                if ceil32(_7667) <= _7667:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7667) + 32]
                mem[_7667 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_7667) + _7611 + -mem[64] + 68
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
            _7612 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _7669 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_7669)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_7669)]
            if ceil32(_7669) <= _7669:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7669) + 32]
            mem[_7669 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_7669) + _7612 + -mem[64] + 68
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
        var82001 = arg3.length
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
            _7613 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _7671 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 68 len ceil32(_7671)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_7671)]
            if ceil32(_7671) <= _7671:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7671) + 32]
            mem[_7671 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_7671) + _7613 + -mem[64] + 68
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
        _7614 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _7673 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 68 len ceil32(_7673)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_7673)]
        if ceil32(_7673) <= _7673:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7673) + 32]
        mem[_7673 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_7673) + _7614 + -mem[64] + 68
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
            var89001 = arg3.length
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
                _7615 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _7675 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 68 len ceil32(_7675)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_7675)]
                if ceil32(_7675) <= _7675:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7675) + 32]
                mem[_7675 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_7675) + _7615 + -mem[64] + 68
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
            _7616 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _7677 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_7677)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_7677)]
            if ceil32(_7677) <= _7677:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7677) + 32]
            mem[_7677 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_7677) + _7616 + -mem[64] + 68
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
        var89001 = arg3.length
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
            _7617 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _7679 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 68 len ceil32(_7679)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_7679)]
            if ceil32(_7679) <= _7679:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7679) + 32]
            mem[_7679 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_7679) + _7617 + -mem[64] + 68
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
        _7618 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _7681 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 68 len ceil32(_7681)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_7681)]
        if ceil32(_7681) <= _7681:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7681) + 32]
        mem[_7681 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_7681) + _7618 + -mem[64] + 68
    if msg.sender != this.address:
        mem[0] = msg.sender
        if not stor1[address(arg1)][address(msg.sender)]:
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
            var82001 = arg3.length
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
                _7619 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
                mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _7683 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
                mem[mem[64] + 68 len ceil32(_7683)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_7683)]
                if ceil32(_7683) <= _7683:
                    revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7683) + 32]
                mem[_7683 + mem[64] + 68] = 0
                revert with memory
                  from mem[64]
                   len ceil32(_7683) + _7619 + -mem[64] + 68
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
            _7620 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131] + 31) + 132] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _7685 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 131]
            mem[mem[64] + 68 len ceil32(_7685)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + ext_call.return_data[0] + 163 len ceil32(_7685)]
            if ceil32(_7685) <= _7685:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7685) + 32]
            mem[_7685 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_7685) + _7620 + -mem[64] + 68
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
        var82001 = arg3.length
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
            _7621 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _7687 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 68 len ceil32(_7687)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_7687)]
            if ceil32(_7687) <= _7687:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7687) + 32]
            mem[_7687 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_7687) + _7621 + -mem[64] + 68
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
        _7622 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _7689 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 68 len ceil32(_7689)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_7689)]
        if ceil32(_7689) <= _7689:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7689) + 32]
        mem[_7689 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_7689) + _7622 + -mem[64] + 68
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131] = calldata.size
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 163 len calldata.size] = call.data[0 len calldata.size]
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + calldata.size + 163] = 0
    mem[0] = mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 143 len 20]
    if not stor1[address(arg1)][address(mem[calldata.size + ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + ceil32(calldata.size) + 131])]:
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
        var82001 = arg3.length
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
            _7623 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
            mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            _7691 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
            mem[mem[64] + 68 len ceil32(_7691)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_7691)]
            if ceil32(_7691) <= _7691:
                revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7691) + 32]
            mem[_7691 + mem[64] + 68] = 0
            revert with memory
              from mem[64]
               len ceil32(_7691) + _7623 + -mem[64] + 68
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
        _7624 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163] + 31) + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _7693 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 163]
        mem[mem[64] + 68 len ceil32(_7693)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (2 * ceil32(calldata.size)) + ext_call.return_data[0] + 195 len ceil32(_7693)]
        if ceil32(_7693) <= _7693:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7693) + 32]
        mem[_7693 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_7693) + _7624 + -mem[64] + 68
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
    var82001 = arg3.length
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
        _7625 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196
        mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        _7695 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195]
        mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195]
        mem[mem[64] + 68 len ceil32(_7695)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 227 len ceil32(_7695)]
        if ceil32(_7695) <= _7695:
            revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7695) + 32]
        mem[_7695 + mem[64] + 68] = 0
        revert with memory
          from mem[64]
           len ceil32(_7695) + _7625 + -mem[64] + 68
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
    _7626 = ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196
    mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + floor32(ext_call.return_data[0] + mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195] + 31) + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4] = 32
    _7697 = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195]
    mem[mem[64] + 36] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 195]
    mem[mem[64] + 68 len ceil32(_7697)] = mem[ceil32(32 * arg3.length) + ceil32(32 * arg4.length) + ceil32(ceil32(arg5.length)) + (4 * ceil32(calldata.size)) + ext_call.return_data[0] + 227 len ceil32(_7697)]
    if ceil32(_7697) <= _7697:
        revert with mem[mem[64] len 4], 32, mem[mem[64] + 36 len ceil32(_7697) + 32]
    mem[_7697 + mem[64] + 68] = 0
    revert with memory
      from mem[64]
       len ceil32(_7697) + _7626 + -mem[64] + 68
}



}
