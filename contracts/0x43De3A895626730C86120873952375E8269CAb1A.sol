contract main {




// =====================  Runtime code  =====================


#
#  - sub_06357752(?)
#  - sub_20764d9e(?)
#
const native = 0x4156415800000000000000000000000000000000000000000000000000000000

const sub_d5f44b5d(?) = 10000

const DEFAULT_ADMIN_ROLE = 0

const VERSION = 0x312e312e30000000000000000000000000000000000000000000000000000000


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
array of struct owner;
uint8 paused;
uint256 stor251;
address feeAddress;
array of struct stor302;
mapping of uint256 stor303;
mapping of address token;
mapping of struct sub_1ff0dbf7;
uint8 stor306;
uint256 stor306;
uint256 depositFeeRate;
uint256 withdrawFeeRate;

function getToken(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return token[arg1]
}

function sub_1ff0dbf7(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return sub_1ff0dbf7[arg1][arg2].field_0, sub_1ff0dbf7[arg1][arg2].field_256
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[0][address(arg1)].field_0)
}

function feeAddress() {
    return feeAddress
}

function getFeeAddress() {
    return feeAddress
}

function paused() {
    return bool(paused)
}

function getWithdrawFeeRate() {
    return withdrawFeeRate
}

function depositFeeRate() {
    return depositFeeRate
}

function owner() {
    if 0 >= owner[0].field_0:
        revert with 0, 50
    return owner[0].field_0
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= owner[arg1].field_0:
        revert with 0, 50
    return owner[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return owner[arg1].field_0
}

function getDepositFeeRate() {
    return depositFeeRate
}

function withdrawFeeRate() {
    return withdrawFeeRate
}

function _fallback() {
    revert
}

function pause() {
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'P-OACC-03'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'P-OACC-04'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function pauseDeposit(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'P-OACC-05'
    uint256(stor306) = not arg1 or Mask(248, 8, uint256(stor306))
}

function setFeeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'P-OACC-06'
    emit FeeAddressSet(feeAddress, arg1);
    feeAddress = arg1
}

function addToken(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'P-OACC-08'
    if not stor303[arg1]:
        if not stor303[arg1]:
            stor302.length++
            stor302[stor302.length].field_0 = arg1
            stor303[arg1] = stor302.length
        token[arg1] = arg2
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_e088aa4b(?) {
    require calldata.size - 4 >= 64
    require arg2 < 5
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'P-OACC-07'
    if arg2 > 4:
        revert with 0, 33
    if not arg2:
        emit 0xd7954b5c: 'P-DEPFEE', depositFeeRate, arg1, 'Portfolio' << 184
        depositFeeRate = arg1
    else:
        if arg2 > 4:
            revert with 0, 33
        if arg2 == 1:
            emit 0xd7954b5c: 'P-WITFEE', withdrawFeeRate, arg1, 'Portfolio' << 184
            withdrawFeeRate = arg1
}

function getBalance(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 != 0x4156415800000000000000000000000000000000000000000000000000000000:
        if not stor303[arg2]:
            return sub_1ff0dbf7[address(arg1)][arg2].field_0, sub_1ff0dbf7[address(arg1)][arg2].field_256, 2
    else:
        if not stor303[arg2]:
            return sub_1ff0dbf7[address(arg1)][arg2].field_0, sub_1ff0dbf7[address(arg1)][arg2].field_256, 0
    ('bool', ('stor', ('map', ('param', 'arg2'), ('name', 'stor303', 303))))
    return sub_1ff0dbf7[address(arg1)][arg2].field_0, sub_1ff0dbf7[address(arg1)][arg2].field_256, 1
}

function sub_5a8c6596(?) {
    require calldata.size - 4 >= 128
    require arg1 < 5
    require arg2 == address(arg2)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'P-OACC-09'
    if arg1 > 4:
        revert with 0, 33
    if arg1 == 3:
        if sub_1ff0dbf7[address(arg2)][arg3].field_256 > !arg4:
            revert with 0, 17
        sub_1ff0dbf7[address(arg2)][arg3].field_256 += arg4
    else:
        if arg1 > 4:
            revert with 0, 33
        if arg1 == 4:
            if arg4 > sub_1ff0dbf7[address(arg2)][arg3].field_256:
                revert with 0, 'P-AFNE-01'
            if sub_1ff0dbf7[address(arg2)][arg3].field_256 < arg4:
                revert with 0, 17
            sub_1ff0dbf7[address(arg2)][arg3].field_256 -= arg4
    if arg1 > 4:
        revert with 0, 33
    emit 0xfdb5e4e2: arg4, 0, sub_1ff0dbf7[address(arg2)][arg3].field_0, sub_1ff0dbf7[address(arg2)][arg3].field_256, arg1, address(arg2), arg3
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if owner[arg1][1][address(arg2)].field_0:
        if owner[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if owner[arg1].field_0 < 1:
            revert with 0, 17
        if owner[arg1].field_0 - 1 != owner[arg1][1][address(arg2)].field_0 - 1:
            if owner[arg1].field_0 - 1 >= owner[arg1].field_0:
                revert with 0, 50
            if owner[arg1][1][address(arg2)].field_0 - 1 >= owner[arg1].field_0:
                revert with 0, 50
            owner[arg1][owner[arg1][1][address(arg2)].field_0].field_0 = owner[arg1][owner[arg1].field_0].field_0
            owner[arg1][1][owner[arg1][owner[arg1].field_0].field_0].field_0 = owner[arg1][1][address(arg2)].field_0
        if not owner[arg1].field_0:
            revert with 0, 49
        owner[arg1][owner[arg1].field_0].field_0 = 0
        owner[arg1].field_0--
        owner[arg1][1][address(arg2)].field_0 = 0
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not owner[arg1][1][address(arg2)].field_0:
        owner[arg1].field_0++
        owner[arg1][owner[arg1].field_0].field_0 = arg2
        owner[arg1][owner[arg1].field_0].field_160 = 0
        owner[arg1][1][address(arg2)].field_0 = owner[arg1].field_0
}

function addAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'P-OACC-01'
    if not roleAdmin[roleAdmin[0].field_256][address(msg.sender)].field_0:
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
        s = roleAdmin[0].field_256
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
        if roleAdmin[0].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[0][address(arg1)].field_0:
        roleAdmin[0][address(arg1)].field_0 = 1
        emit RoleGranted(0, arg1, msg.sender);
    if not owner[0][1][address(arg1)].field_0:
        owner[0].field_0++
        owner[0][owner[0].field_0].field_0 = arg1
        owner[0][owner[0].field_0].field_160 = 0
        owner[0][1][address(arg1)].field_0 = owner[0].field_0
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
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
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if owner[arg1][1][address(arg2)].field_0:
        if owner[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if owner[arg1].field_0 < 1:
            revert with 0, 17
        if owner[arg1].field_0 - 1 != owner[arg1][1][address(arg2)].field_0 - 1:
            if owner[arg1].field_0 - 1 >= owner[arg1].field_0:
                revert with 0, 50
            if owner[arg1][1][address(arg2)].field_0 - 1 >= owner[arg1].field_0:
                revert with 0, 50
            owner[arg1][owner[arg1][1][address(arg2)].field_0].field_0 = owner[arg1][owner[arg1].field_0].field_0
            owner[arg1][1][owner[arg1][owner[arg1].field_0].field_0].field_0 = owner[arg1][1][address(arg2)].field_0
        if not owner[arg1].field_0:
            revert with 0, 49
        owner[arg1][owner[arg1].field_0].field_0 = 0
        owner[arg1].field_0--
        owner[arg1][1][address(arg2)].field_0 = 0
}

function removeAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'P-OACC-02'
    if owner[0].field_0 <= 1:
        revert with 0, 'P-ALOA-01'
    if not roleAdmin[roleAdmin[0].field_256][address(msg.sender)].field_0:
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
        s = roleAdmin[0].field_256
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
        if roleAdmin[0].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[0][address(arg1)].field_0:
        roleAdmin[0][address(arg1)].field_0 = 0
        emit RoleRevoked(0, arg1, msg.sender);
    if owner[0][1][address(arg1)].field_0:
        if owner[0][1][address(arg1)].field_0 < 1:
            revert with 0, 17
        if owner[0].field_0 < 1:
            revert with 0, 17
        if owner[0].field_0 - 1 != owner[0][1][address(arg1)].field_0 - 1:
            if owner[0].field_0 - 1 >= owner[0].field_0:
                revert with 0, 50
            if owner[0][1][address(arg1)].field_0 - 1 >= owner[0].field_0:
                revert with 0, 50
            owner[0][owner[0][1][address(arg1)].field_0].field_0 = owner[0][owner[0].field_0].field_0
            owner[0][1][owner[0][owner[0].field_0].field_0].field_0 = owner[0][1][address(arg1)].field_0
        if not owner[0].field_0:
            revert with 0, 49
        owner[0][owner[0].field_0].field_0 = 0
        owner[0].field_0--
        owner[0][1][address(arg1)].field_0 = 0
}

function withdrawNative(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if paused:
        revert with 0, 'Pausable: paused'
    if stor251 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor251 = 2
    if arg1 != msg.sender:
        revert with 0, 'P-OOWN-01'
    if arg2 > sub_1ff0dbf7[address(arg1)][0x4156415800000000000000000000000000000000000000000000000000000000].field_256:
        revert with 0, 'P-AFNE-02'
    if sub_1ff0dbf7[address(arg1)][0x4156415800000000000000000000000000000000000000000000000000000000].field_256 < arg2:
        revert with 0, 17
    sub_1ff0dbf7[address(arg1)][0x4156415800000000000000000000000000000000000000000000000000000000].field_256 -= arg2
    if arg2 > sub_1ff0dbf7[address(arg1)][0x4156415800000000000000000000000000000000000000000000000000000000].field_0:
        revert with 0, 'P-TFNE-01'
    if sub_1ff0dbf7[address(arg1)][0x4156415800000000000000000000000000000000000000000000000000000000].field_0 < arg2:
        revert with 0, 17
    sub_1ff0dbf7[address(arg1)][0x4156415800000000000000000000000000000000000000000000000000000000].field_0 -= arg2
    if not withdrawFeeRate:
        call arg1 with:
           value arg2 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'P-WNF-01'
        emit 0xfdb5e4e2: arg2, 0, sub_1ff0dbf7[address(msg.sender)][0x4156415800000000000000000000000000000000000000000000000000000000].field_0, sub_1ff0dbf7[address(msg.sender)][0x4156415800000000000000000000000000000000000000000000000000000000].field_256, 0, msg.sender, 0x4156415800000000000000000000000000000000000000000000000000000000
    else:
        if arg2 and withdrawFeeRate > -1 / arg2:
            revert with 0, 17
        call feeAddress with:
           value arg2 * withdrawFeeRate / 10000 wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'P-STFF-01'
        if arg2 < arg2 * withdrawFeeRate / 10000:
            revert with 0, 17
        call arg1 with:
           value arg2 - (arg2 * withdrawFeeRate / 10000) wei
             gas gas_remaining wei
        if not ext_call.success:
            revert with 0, 'P-WNF-01'
        emit 0xfdb5e4e2: arg2, arg2 * withdrawFeeRate / 10000, sub_1ff0dbf7[address(msg.sender)][0x4156415800000000000000000000000000000000000000000000000000000000].field_0, sub_1ff0dbf7[address(msg.sender)][0x4156415800000000000000000000000000000000000000000000000000000000].field_256, 0, msg.sender, 0x4156415800000000000000000000000000000000000000000000000000000000
    stor251 = 1
}

function getTokenList() {
    if stor302.length > test266151307():
        revert with 0, 65
    mem[96] = stor302.length
    mem[64] = (32 * stor302.length) + 128
    if not stor302.length:
        if var29002 >= stor302.length:
            mem[(32 * stor302.length) + 128] = 32
            mem[(32 * stor302.length) + 160] = stor302.length
            mem[(32 * stor302.length) + 192 len 32 * stor302.length] = mem[128 len 32 * stor302.length]
            return memory
              from (32 * stor302.length) + 128
               len (96 * stor302.length) + 64
        if var35001 >= stor302.length:
            revert with 0, 50
        mem[0] = 302
        if var41002 >= stor302.length:
            revert with 0, 50
        mem[(32 * var41002) + 128] = var41001
        s = var41002
        t = var41001
        idx = var41002
        while idx != -1:
            if idx + 1 >= stor302.length:
                mem[(32 * stor302.length) + 128] = 32
                mem[(32 * stor302.length) + 160] = stor302.length
                u = 0
                s = (32 * stor302.length) + 192
                t = 128
                while u < stor302.length:
                    mem[s] = mem[t]
                    mem[(32 * u + 1) + 128] = s + 32
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor302.length) + 128
                   len (96 * stor302.length) + 64
            mem[0] = 302
            if idx + 1 >= stor302.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor302[idx].field_512
            s = idx + 1
            t = stor302[idx].field_256
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * stor302.length] = call.data[calldata.size len 32 * stor302.length]
        if var30002 >= stor302.length:
            mem[(32 * stor302.length) + 128] = 32
            mem[(32 * stor302.length) + 160] = stor302.length
            mem[(32 * stor302.length) + 192 len 32 * stor302.length] = call.data[calldata.size len 32 * stor302.length]
            return memory
              from (32 * stor302.length) + 128
               len (96 * stor302.length) + 64
        if var36001 >= stor302.length:
            revert with 0, 50
        mem[0] = 302
        if var42002 >= stor302.length:
            revert with 0, 50
        mem[(32 * var42002) + 128] = var42001
        s = var42002
        t = var42001
        idx = var42002
        while idx != -1:
            if idx + 1 >= stor302.length:
                mem[(32 * stor302.length) + 128] = 32
                mem[(32 * stor302.length) + 160] = stor302.length
                u = 0
                s = (32 * stor302.length) + 192
                t = 128
                while u < stor302.length:
                    mem[s] = mem[t]
                    mem[(32 * u + 1) + 128] = s + 32
                    u = u + 1
                    s = s + 32
                    t = t + 32
                    continue 
                return memory
                  from (32 * stor302.length) + 128
                   len (96 * stor302.length) + 64
            mem[0] = 302
            if idx + 1 >= stor302.length:
                revert with 0, 50
            mem[(32 * idx + 2) + 128] = stor302[idx].field_512
            s = idx + 1
            t = stor302[idx].field_256
            idx = idx + 1
            continue 
    revert with 0, 17
}

function initialize() {
    if uint8(stor0.field_8):
        paused = 0
        stor251 = 1
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            paused = 0
            stor251 = 1
        else:
            uint16(stor0.field_0) = 257
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
            if uint8(stor0.field_8):
                paused = 0
                stor251 = 1
            else:
                uint16(stor0.field_0) = 257
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                if uint8(stor0.field_8):
                    paused = 0
                    stor251 = 1
                else:
                    uint16(stor0.field_0) = 257
                    uint8(stor0.field_8) = 0
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                    if uint8(stor0.field_8):
                        paused = 0
                        stor251 = 1
                    else:
                        uint16(stor0.field_0) = 257
                        uint8(stor0.field_8) = 0
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                        if uint8(stor0.field_8):
                            paused = 0
                            stor251 = 1
                        else:
                            uint16(stor0.field_0) = 257
                            uint8(stor0.field_8) = 0
                            uint8(stor0.field_8) = 0
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                            if uint8(stor0.field_8):
                                paused = 0
                                stor251 = 1
                            else:
                                uint16(stor0.field_0) = 257
                                if uint8(stor0.field_0):
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                if uint8(stor0.field_8):
                                    paused = 0
                                    stor251 = 1
                                else:
                                    uint16(stor0.field_0) = 257
                                    uint8(stor0.field_8) = 0
                                    if uint8(stor0.field_0):
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                    if uint8(stor0.field_8):
                                        paused = 0
                                        stor251 = 1
                                    else:
                                        uint16(stor0.field_0) = 257
                                        paused = 0
                                        uint8(stor0.field_8) = 0
                                        uint8(stor0.field_8) = 0
                                        if uint8(stor0.field_0):
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                        if uint8(stor0.field_8):
                                            stor251 = 1
                                        else:
                                            uint16(stor0.field_0) = 257
                                            if uint8(stor0.field_0):
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
                                            if uint8(stor0.field_8):
                                                stor251 = 1
                                            else:
                                                uint16(stor0.field_0) = 257
                                                stor251 = 1
                                                uint8(stor0.field_8) = 0
                                                uint8(stor0.field_8) = 0
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not owner[0][1][address(msg.sender)].field_0:
        owner[0].field_0++
        owner[0][owner[0].field_0].field_0 = msg.sender
        owner[0][owner[0].field_0].field_160 = 0
        owner[0][1][address(msg.sender)].field_0 = owner[0].field_0
    uint8(stor306) = 1
    depositFeeRate = 0
    withdrawFeeRate = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_68205ba0(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    if paused:
        revert with 0, 'Pausable: paused'
    if stor251 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor251 = 2
    if address(arg1) != msg.sender:
        revert with 0, 'P-OODT-01'
    if not uint8(stor306):
        revert with 0, 'P-ETDP-01'
    if arg3 <= 0:
        revert with 0, 'P-ZETD-01'
    if not stor303[arg2]:
        revert with 0, 'P-ETNS-01'
    if not depositFeeRate:
        if arg3 < 0:
            revert with 0, 17
        if arg3 <= 0:
            revert with 0, 'P-TNEF-01'
        if arg3 < 0:
            revert with 0, 'P-TNEF-01'
        if sub_1ff0dbf7[address(arg1)][arg2].field_0 > !arg3:
            revert with 0, 17
        sub_1ff0dbf7[address(arg1)][arg2].field_0 += arg3
        if arg3 < 0:
            revert with 0, 17
        if sub_1ff0dbf7[address(arg1)][arg2].field_256 > !arg3:
            revert with 0, 17
        sub_1ff0dbf7[address(arg1)][arg2].field_256 += arg3
        mem[100] = address(arg1)
        require ext_code.size(token[arg2])
        staticcall token[arg2].0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 > ext_call.return_data[0]:
            revert with 0, 'P-NETD-01'
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = arg3
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(token[arg2]):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg3, 0
        mem[ceil32(return_data.size) + 392] = 0
        call token[arg2] with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg3, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if depositFeeRate:
                if arg2 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                    call feeAddress with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'P-STFF-01'
                else:
                    mem[ceil32(return_data.size) + 328] = feeAddress
                    mem[ceil32(return_data.size) + 360] = 0
                    mem[ceil32(return_data.size) + 292] = 68
                    mem[ceil32(return_data.size) + 324 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 392] = 32
                    mem[ceil32(return_data.size) + 424] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(token[arg2]):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 456 len 96] = 0, feeAddress, 0, 0
                    mem[ceil32(return_data.size) + 524] = 0
                    call token[arg2] with:
                       funct Mask(32, 224, 0, feeAddress, 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, feeAddress, 0, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 488] == bool(mem[ceil32(return_data.size) + 488])
                            if not mem[ceil32(return_data.size) + 488]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0xfdb5e4e2: arg3, 0, sub_1ff0dbf7[address(arg1)][arg2].field_0, sub_1ff0dbf7[address(arg1)][arg2].field_256, 1, address(arg1), arg2
        else:
            mem[ceil32(return_data.size) + 292] = return_data.size
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if not depositFeeRate:
                emit 0xfdb5e4e2: arg3, 0, sub_1ff0dbf7[address(arg1)][arg2].field_0, sub_1ff0dbf7[address(arg1)][arg2].field_256, 1, address(arg1), arg2
            else:
                if arg2 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                    call feeAddress with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'P-STFF-01'
                    emit 0xfdb5e4e2: arg3, 0, sub_1ff0dbf7[address(arg1)][arg2].field_0, sub_1ff0dbf7[address(arg1)][arg2].field_256, 1, address(arg1), arg2
                else:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = feeAddress
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = 0
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 68
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(token[arg2]):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len 96] = 0, feeAddress, 0, 0
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 525] = 0
                    call token[arg2] with:
                       funct Mask(32, 224, 0, feeAddress, 0, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, feeAddress, 0, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit 0xfdb5e4e2: arg3, 0, sub_1ff0dbf7[address(arg1)][arg2].field_0, sub_1ff0dbf7[address(arg1)][arg2].field_256, 1, address(arg1), arg2
                    else:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 462] = 32
                            mem[(4 * ceil32(return_data.size)) + 494] = 32
                            mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 458
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489])
                            if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                                mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 462] = 32
                                mem[(4 * ceil32(return_data.size)) + 494] = 42
                                mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
                                mem[(4 * ceil32(return_data.size)) + 558] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 458
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(4 * ceil32(return_data.size)) + 458] = arg3
                        mem[(4 * ceil32(return_data.size)) + 490] = 0
                        mem[(4 * ceil32(return_data.size)) + 522] = sub_1ff0dbf7[address(arg1)][arg2].field_0
                        mem[(4 * ceil32(return_data.size)) + 554] = sub_1ff0dbf7[address(arg1)][arg2].field_256
                        emit 0xfdb5e4e2: mem[(4 * ceil32(return_data.size)) + 458 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128], 1, address(arg1), arg2
    else:
        if arg3 and depositFeeRate > -1 / arg3:
            revert with 0, 17
        if arg3 < arg3 * depositFeeRate / 10000:
            revert with 0, 17
        if arg3 - (arg3 * depositFeeRate / 10000) <= 0:
            revert with 0, 'P-TNEF-01'
        if arg3 - (arg3 * depositFeeRate / 10000) < 0:
            revert with 0, 'P-TNEF-01'
        if sub_1ff0dbf7[address(arg1)][arg2].field_0 > !(arg3 - (arg3 * depositFeeRate / 10000)):
            revert with 0, 17
        sub_1ff0dbf7[address(arg1)][arg2].field_0 = sub_1ff0dbf7[address(arg1)][arg2].field_0 + arg3 - (arg3 * depositFeeRate / 10000)
        if arg3 - (arg3 * depositFeeRate / 10000) < 0:
            revert with 0, 17
        if sub_1ff0dbf7[address(arg1)][arg2].field_256 > !(arg3 - (arg3 * depositFeeRate / 10000)):
            revert with 0, 17
        sub_1ff0dbf7[address(arg1)][arg2].field_256 = sub_1ff0dbf7[address(arg1)][arg2].field_256 + arg3 - (arg3 * depositFeeRate / 10000)
        mem[100] = address(arg1)
        require ext_code.size(token[arg2])
        staticcall token[arg2].0x70a08231 with:
                gas gas_remaining wei
               args address(arg1)
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if arg3 > ext_call.return_data[0]:
            revert with 0, 'P-NETD-01'
        mem[ceil32(return_data.size) + 132] = address(arg1)
        mem[ceil32(return_data.size) + 164] = this.address
        mem[ceil32(return_data.size) + 196] = arg3
        mem[ceil32(return_data.size) + 96] = 100
        mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(return_data.size) + 228] = 32
        mem[ceil32(return_data.size) + 260] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(token[arg2]):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 292 len 128] = unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg3, 0
        mem[ceil32(return_data.size) + 392] = 0
        call token[arg2] with:
           funct Mask(32, 224, unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg3, 0) >> 224
             gas gas_remaining wei
            args (Mask(768, -544, unknown_0x23b872dd(?????), address(arg1) << 64, 0, address(this.address), arg3, 0) << 544)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if depositFeeRate:
                if arg2 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                    call feeAddress with:
                       value arg3 * depositFeeRate / 10000 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'P-STFF-01'
                else:
                    mem[ceil32(return_data.size) + 328] = feeAddress
                    mem[ceil32(return_data.size) + 360] = arg3 * depositFeeRate / 10000
                    mem[ceil32(return_data.size) + 292] = 68
                    mem[ceil32(return_data.size) + 324 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + 392] = 32
                    mem[ceil32(return_data.size) + 424] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(token[arg2]):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + 456 len 96] = 0, feeAddress, arg3 * depositFeeRate / 10000, 0
                    mem[ceil32(return_data.size) + 524] = 0
                    call token[arg2] with:
                       funct Mask(32, 224, 0, feeAddress, arg3 * depositFeeRate / 10000, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, feeAddress, arg3 * depositFeeRate / 10000, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[ceil32(return_data.size) + 488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + 488] == bool(mem[ceil32(return_data.size) + 488])
                            if not mem[ceil32(return_data.size) + 488]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0xfdb5e4e2: arg3, arg3 * depositFeeRate / 10000, sub_1ff0dbf7[address(arg1)][arg2].field_0, sub_1ff0dbf7[address(arg1)][arg2].field_256, 1, address(arg1), arg2
        else:
            mem[ceil32(return_data.size) + 292] = return_data.size
            mem[ceil32(return_data.size) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 324] == bool(mem[ceil32(return_data.size) + 324])
                if not mem[ceil32(return_data.size) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if not depositFeeRate:
                emit 0xfdb5e4e2: arg3, arg3 * depositFeeRate / 10000, sub_1ff0dbf7[address(arg1)][arg2].field_0, sub_1ff0dbf7[address(arg1)][arg2].field_256, 1, address(arg1), arg2
            else:
                if arg2 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                    call feeAddress with:
                       value arg3 * depositFeeRate / 10000 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'P-STFF-01'
                    emit 0xfdb5e4e2: arg3, arg3 * depositFeeRate / 10000, sub_1ff0dbf7[address(arg1)][arg2].field_0, sub_1ff0dbf7[address(arg1)][arg2].field_256, 1, address(arg1), arg2
                else:
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 329] = feeAddress
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 361] = arg3 * depositFeeRate / 10000
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 293] = 68
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 393] = 32
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(token[arg2]):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 457 len 96] = 0, feeAddress, arg3 * depositFeeRate / 10000, 0
                    mem[ceil32(return_data.size) + ceil32(return_data.size) + 525] = 0
                    call token[arg2] with:
                       funct Mask(32, 224, 0, feeAddress, arg3 * depositFeeRate / 10000, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, 0, feeAddress, arg3 * depositFeeRate / 10000, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if ext_call.return_data[0]:
                                revert with memory
                                  from 128
                                   len ext_call.return_data[0]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if ext_call.return_data[0]:
                            require ext_call.return_data[0] >= 32
                            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                            if not 0, mem[132 len 28]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit 0xfdb5e4e2: arg3, arg3 * depositFeeRate / 10000, sub_1ff0dbf7[address(arg1)][arg2].field_0, sub_1ff0dbf7[address(arg1)][arg2].field_256, 1, address(arg1), arg2
                    else:
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 457] = return_data.size
                        mem[ceil32(return_data.size) + ceil32(return_data.size) + 489 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 462] = 32
                            mem[(4 * ceil32(return_data.size)) + 494] = 32
                            mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: low-level call failed'
                            revert with memory
                              from (4 * ceil32(return_data.size)) + 458
                               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[ceil32(return_data.size) + ceil32(return_data.size) + 489] == bool(mem[ceil32(return_data.size) + ceil32(return_data.size) + 489])
                            if not mem[ceil32(return_data.size) + ceil32(return_data.size) + 489]:
                                mem[(4 * ceil32(return_data.size)) + 458] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 462] = 32
                                mem[(4 * ceil32(return_data.size)) + 494] = 42
                                mem[(4 * ceil32(return_data.size)) + 526] = 'SafeERC20: ERC20 operation did n'
                                mem[(4 * ceil32(return_data.size)) + 558] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                                revert with memory
                                  from (4 * ceil32(return_data.size)) + 458
                                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                        mem[(4 * ceil32(return_data.size)) + 458] = arg3
                        mem[(4 * ceil32(return_data.size)) + 490] = arg3 * depositFeeRate / 10000
                        mem[(4 * ceil32(return_data.size)) + 522] = sub_1ff0dbf7[address(arg1)][arg2].field_0
                        mem[(4 * ceil32(return_data.size)) + 554] = sub_1ff0dbf7[address(arg1)][arg2].field_256
                        emit 0xfdb5e4e2: mem[(4 * ceil32(return_data.size)) + 458 len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 128], 1, address(arg1), arg2
    stor251 = 1
}



}
