contract main {




// =====================  Runtime code  =====================


#
#  - sub_06357752(?)
#  - sub_68205ba0(?)
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
uint32 stor301;
address feeAddress;
uint256 stor301;
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
    return address(feeAddress)
}

function getFeeAddress() {
    return address(feeAddress)
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
    emit FeeAddressSet(address(feeAddress), arg1);
    address(feeAddress) = arg1
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
        call address(feeAddress) with:
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

function sub_20764d9e(?) {
    require calldata.size - 4 >= 544
    require calldata.size - 4 >= 320
    mem[128] = arg2
    mem[160] = arg3
    mem[192] = arg4
    mem[224] = arg5
    mem[256] = arg6
    require arg7 == address(arg7)
    mem[288] = arg7
    require arg8 < 2
    mem[320] = arg8
    require arg9 < 4
    mem[352] = arg9
    require arg10 < 7
    mem[384] = arg10
    require arg11 == address(arg11)
    if not roleAdmin[0][address(msg.sender)].field_0:
        revert with 0, 'P-OACC-10'
    if arg8 > 1:
        revert with 0, 33
    if arg8:
        if arg15 <= 0:
            revert with 0, 'P-TNEF-01'
        if arg15 < arg16:
            revert with 0, 'P-TNEF-01'
        if sub_1ff0dbf7[address(arg7)][arg13].field_0 > !(arg15 - arg16):
            revert with 0, 17
        sub_1ff0dbf7[address(arg7)][arg13].field_0 = sub_1ff0dbf7[address(arg7)][arg13].field_0 + arg15 - arg16
        if arg15 < arg16:
            revert with 0, 17
        if sub_1ff0dbf7[address(arg7)][arg13].field_256 > !(arg15 - arg16):
            revert with 0, 17
        sub_1ff0dbf7[address(arg7)][arg13].field_256 = sub_1ff0dbf7[address(arg7)][arg13].field_256 + arg15 - arg16
        if not arg16:
            emit 0xfdb5e4e2: arg15, arg16, sub_1ff0dbf7[address(arg7)][arg13].field_0, sub_1ff0dbf7[address(arg7)][arg13].field_256, 2, address(arg7), arg13
            if arg15 > sub_1ff0dbf7[address(arg11)][arg13].field_256:
                revert with 0, 'P-AFNE-02'
            if sub_1ff0dbf7[address(arg11)][arg13].field_256 < arg15:
                revert with 0, 17
            sub_1ff0dbf7[address(arg11)][arg13].field_256 -= arg15
            if arg15 > sub_1ff0dbf7[address(arg11)][arg13].field_0:
                revert with 0, 'P-TFNE-01'
            if sub_1ff0dbf7[address(arg11)][arg13].field_0 < arg15:
                revert with 0, 17
            sub_1ff0dbf7[address(arg11)][arg13].field_0 -= arg15
            emit 0xfdb5e4e2: arg15, 0, sub_1ff0dbf7[address(arg11)][arg13].field_0, sub_1ff0dbf7[address(arg11)][arg13].field_256, 2, address(arg11), arg13
            if arg14 > sub_1ff0dbf7[address(arg7)][arg12].field_0:
                revert with 0, 'P-TFNE-01'
            if sub_1ff0dbf7[address(arg7)][arg12].field_0 < arg14:
                revert with 0, 17
            sub_1ff0dbf7[address(arg7)][arg12].field_0 -= arg14
            emit 0xfdb5e4e2: arg14, 0, sub_1ff0dbf7[address(arg7)][arg12].field_0, sub_1ff0dbf7[address(arg7)][arg12].field_256, 2, address(arg7), arg12
            if arg14 <= 0:
                revert with 0, 'P-TNEF-01'
            if arg14 < arg17:
                revert with 0, 'P-TNEF-01'
            if sub_1ff0dbf7[address(arg11)][arg12].field_0 > !(arg14 - arg17):
                revert with 0, 17
            sub_1ff0dbf7[address(arg11)][arg12].field_0 = sub_1ff0dbf7[address(arg11)][arg12].field_0 + arg14 - arg17
            if arg14 < arg17:
                revert with 0, 17
            if sub_1ff0dbf7[address(arg11)][arg12].field_256 > !(arg14 - arg17):
                revert with 0, 17
            sub_1ff0dbf7[address(arg11)][arg12].field_256 = sub_1ff0dbf7[address(arg11)][arg12].field_256 + arg14 - arg17
            if arg17:
                if arg12 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                    call address(feeAddress) with:
                       value arg17 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'P-STFF-01'
                else:
                    mem[452] = address(feeAddress)
                    mem[484] = arg17
                    mem[416] = 68
                    mem[452 len 28] = Mask(224, 0, stor301)
                    mem[448 len 4] = unknown_0xa9059cbb(?????)
                    mem[516] = 32
                    mem[548] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(token[arg12]):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg17, 0
                    mem[648] = 0
                    call token[arg12] with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg17, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg17, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if arg1:
                                revert with memory
                                  from 128
                                   len arg1
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg1:
                            require arg1 >= 32
                            require arg2 == bool(arg2)
                            if not arg2:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[612] == bool(mem[612])
                            if not mem[612]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0xfdb5e4e2: arg14, arg17, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, 2, address(arg11), arg12
        else:
            if arg13 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                call address(feeAddress) with:
                   value arg16 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'P-STFF-01'
                    emit 0xfdb5e4e2: arg15, arg16, sub_1ff0dbf7[address(arg7)][arg13].field_0, sub_1ff0dbf7[address(arg7)][arg13].field_256, 2, address(arg7), arg13
                    if arg15 > sub_1ff0dbf7[address(arg11)][arg13].field_256:
                        revert with 0, 'P-AFNE-02'
                    if sub_1ff0dbf7[address(arg11)][arg13].field_256 < arg15:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg13].field_256 -= arg15
                    if arg15 > sub_1ff0dbf7[address(arg11)][arg13].field_0:
                        revert with 0, 'P-TFNE-01'
                    if sub_1ff0dbf7[address(arg11)][arg13].field_0 < arg15:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg13].field_0 -= arg15
                    emit 0xfdb5e4e2: arg15, 0, sub_1ff0dbf7[address(arg11)][arg13].field_0, sub_1ff0dbf7[address(arg11)][arg13].field_256, 2, address(arg11), arg13
                    if arg14 > sub_1ff0dbf7[address(arg7)][arg12].field_0:
                        revert with 0, 'P-TFNE-01'
                    if sub_1ff0dbf7[address(arg7)][arg12].field_0 < arg14:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg7)][arg12].field_0 -= arg14
                    emit 0xfdb5e4e2: arg14, 0, sub_1ff0dbf7[address(arg7)][arg12].field_0, sub_1ff0dbf7[address(arg7)][arg12].field_256, 2, address(arg7), arg12
                    if arg14 <= 0:
                        revert with 0, 'P-TNEF-01'
                    if arg14 < arg17:
                        revert with 0, 'P-TNEF-01'
                    if sub_1ff0dbf7[address(arg11)][arg12].field_0 > !(arg14 - arg17):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg12].field_0 = sub_1ff0dbf7[address(arg11)][arg12].field_0 + arg14 - arg17
                    if arg14 < arg17:
                        revert with 0, 17
                    if sub_1ff0dbf7[address(arg11)][arg12].field_256 > !(arg14 - arg17):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg12].field_256 = sub_1ff0dbf7[address(arg11)][arg12].field_256 + arg14 - arg17
                    if arg17:
                        if arg12 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                            call address(feeAddress) with:
                               value arg17 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'P-STFF-01'
                        else:
                            mem[452] = address(feeAddress)
                            mem[484] = arg17
                            mem[416] = 68
                            mem[452 len 28] = Mask(224, 0, stor301)
                            mem[448 len 4] = unknown_0xa9059cbb(?????)
                            mem[516] = 32
                            mem[548] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(token[arg12]):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg17, 0
                            mem[648] = 0
                            call token[arg12] with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg17, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg17, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if arg1:
                                        revert with memory
                                          from 128
                                           len arg1
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg1:
                                    require arg1 >= 32
                                    require arg2 == bool(arg2)
                                    if not arg2:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[612] == bool(mem[612])
                                    if not mem[612]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[416] = return_data.size
                    mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'P-STFF-01'
                    emit 0xfdb5e4e2: arg15, arg16, sub_1ff0dbf7[address(arg7)][arg13].field_0, sub_1ff0dbf7[address(arg7)][arg13].field_256, 2, address(arg7), arg13
                    if arg15 > sub_1ff0dbf7[address(arg11)][arg13].field_256:
                        revert with 0, 'P-AFNE-02'
                    if sub_1ff0dbf7[address(arg11)][arg13].field_256 < arg15:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg13].field_256 -= arg15
                    if arg15 > sub_1ff0dbf7[address(arg11)][arg13].field_0:
                        revert with 0, 'P-TFNE-01'
                    if sub_1ff0dbf7[address(arg11)][arg13].field_0 < arg15:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg13].field_0 -= arg15
                    emit 0xfdb5e4e2: arg15, 0, sub_1ff0dbf7[address(arg11)][arg13].field_0, sub_1ff0dbf7[address(arg11)][arg13].field_256, 2, address(arg11), arg13
                    if arg14 > sub_1ff0dbf7[address(arg7)][arg12].field_0:
                        revert with 0, 'P-TFNE-01'
                    if sub_1ff0dbf7[address(arg7)][arg12].field_0 < arg14:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg7)][arg12].field_0 -= arg14
                    emit 0xfdb5e4e2: arg14, 0, sub_1ff0dbf7[address(arg7)][arg12].field_0, sub_1ff0dbf7[address(arg7)][arg12].field_256, 2, address(arg7), arg12
                    if arg14 <= 0:
                        revert with 0, 'P-TNEF-01'
                    if arg14 < arg17:
                        revert with 0, 'P-TNEF-01'
                    if sub_1ff0dbf7[address(arg11)][arg12].field_0 > !(arg14 - arg17):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg12].field_0 = sub_1ff0dbf7[address(arg11)][arg12].field_0 + arg14 - arg17
                    if arg14 < arg17:
                        revert with 0, 17
                    if sub_1ff0dbf7[address(arg11)][arg12].field_256 > !(arg14 - arg17):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg12].field_256 = sub_1ff0dbf7[address(arg11)][arg12].field_256 + arg14 - arg17
                    if arg17:
                        if arg12 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                            call address(feeAddress) with:
                               value arg17 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'P-STFF-01'
                        else:
                            mem[ceil32(return_data.size) + 453] = address(feeAddress)
                            mem[ceil32(return_data.size) + 485] = arg17
                            mem[ceil32(return_data.size) + 417] = 68
                            mem[ceil32(return_data.size) + 453 len 28] = Mask(224, 0, stor301)
                            mem[ceil32(return_data.size) + 449 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 517] = 32
                            mem[ceil32(return_data.size) + 549] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(token[arg12]):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 581 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg17, 0
                            mem[ceil32(return_data.size) + 649] = 0
                            call token[arg12] with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg17, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg17, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if arg1:
                                        revert with memory
                                          from 128
                                           len arg1
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg1:
                                    require arg1 >= 32
                                    require arg2 == bool(arg2)
                                    if not arg2:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + 613 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 613] == bool(mem[ceil32(return_data.size) + 613])
                                    if not mem[ceil32(return_data.size) + 613]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xfdb5e4e2: arg14, arg17, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, 2, address(arg11), arg12
            else:
                mem[452] = address(feeAddress)
                mem[484] = arg16
                mem[416] = 68
                mem[452 len 28] = Mask(224, 0, stor301)
                mem[448 len 4] = unknown_0xa9059cbb(?????)
                mem[516] = 32
                mem[548] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(token[arg13]):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg16, 0
                mem[648] = 0
                call token[arg13] with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg16, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg16, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1:
                            revert with memory
                              from 128
                               len arg1
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1:
                        require arg1 >= 32
                        require arg2 == bool(arg2)
                        if not arg2:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit 0xfdb5e4e2: arg15, arg16, sub_1ff0dbf7[address(arg7)][arg13].field_0, sub_1ff0dbf7[address(arg7)][arg13].field_256, 2, address(arg7), arg13
                    if arg15 > sub_1ff0dbf7[address(arg11)][arg13].field_256:
                        revert with 0, 'P-AFNE-02'
                    if sub_1ff0dbf7[address(arg11)][arg13].field_256 < arg15:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg13].field_256 -= arg15
                    if arg15 > sub_1ff0dbf7[address(arg11)][arg13].field_0:
                        revert with 0, 'P-TFNE-01'
                    if sub_1ff0dbf7[address(arg11)][arg13].field_0 < arg15:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg13].field_0 -= arg15
                    emit 0xfdb5e4e2: arg15, 0, sub_1ff0dbf7[address(arg11)][arg13].field_0, sub_1ff0dbf7[address(arg11)][arg13].field_256, 2, address(arg11), arg13
                    if arg14 > sub_1ff0dbf7[address(arg7)][arg12].field_0:
                        revert with 0, 'P-TFNE-01'
                    if sub_1ff0dbf7[address(arg7)][arg12].field_0 < arg14:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg7)][arg12].field_0 -= arg14
                    emit 0xfdb5e4e2: arg14, 0, sub_1ff0dbf7[address(arg7)][arg12].field_0, sub_1ff0dbf7[address(arg7)][arg12].field_256, 2, address(arg7), arg12
                    if arg14 <= 0:
                        revert with 0, 'P-TNEF-01'
                    if arg14 < arg17:
                        revert with 0, 'P-TNEF-01'
                    if sub_1ff0dbf7[address(arg11)][arg12].field_0 > !(arg14 - arg17):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg12].field_0 = sub_1ff0dbf7[address(arg11)][arg12].field_0 + arg14 - arg17
                    if arg14 < arg17:
                        revert with 0, 17
                    if sub_1ff0dbf7[address(arg11)][arg12].field_256 > !(arg14 - arg17):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg12].field_256 = sub_1ff0dbf7[address(arg11)][arg12].field_256 + arg14 - arg17
                    if arg17:
                        if arg12 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                            call address(feeAddress) with:
                               value arg17 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'P-STFF-01'
                        else:
                            mem[616] = address(feeAddress)
                            mem[648] = arg17
                            mem[580] = 68
                            mem[612 len 4] = unknown_0xa9059cbb(?????)
                            mem[680] = 32
                            mem[712] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(token[arg12]):
                                revert with 0, 'Address: call to non-contract'
                            mem[744 len 96] = 0, address(feeAddress), arg17, 0
                            mem[812] = 0
                            call token[arg12] with:
                               funct Mask(32, 224, 0, address(feeAddress), arg17, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, address(feeAddress), arg17, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if arg1:
                                        revert with memory
                                          from 128
                                           len arg1
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg1:
                                    require arg1 >= 32
                                    require arg2 == bool(arg2)
                                    if not arg2:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[776 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[776] == bool(mem[776])
                                    if not mem[776]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit 0xfdb5e4e2: arg14, arg17, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, 2, address(arg11), arg12
                else:
                    mem[580] = return_data.size
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[612] == bool(mem[612])
                        if not mem[612]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit 0xfdb5e4e2: arg15, arg16, sub_1ff0dbf7[address(arg7)][arg13].field_0, sub_1ff0dbf7[address(arg7)][arg13].field_256, 2, address(arg7), arg13
                    if arg15 > sub_1ff0dbf7[address(arg11)][arg13].field_256:
                        revert with 0, 'P-AFNE-02'
                    if sub_1ff0dbf7[address(arg11)][arg13].field_256 < arg15:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg13].field_256 -= arg15
                    if arg15 > sub_1ff0dbf7[address(arg11)][arg13].field_0:
                        revert with 0, 'P-TFNE-01'
                    if sub_1ff0dbf7[address(arg11)][arg13].field_0 < arg15:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg13].field_0 -= arg15
                    emit 0xfdb5e4e2: arg15, 0, sub_1ff0dbf7[address(arg11)][arg13].field_0, sub_1ff0dbf7[address(arg11)][arg13].field_256, 2, address(arg11), arg13
                    if arg14 > sub_1ff0dbf7[address(arg7)][arg12].field_0:
                        revert with 0, 'P-TFNE-01'
                    if sub_1ff0dbf7[address(arg7)][arg12].field_0 < arg14:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg7)][arg12].field_0 -= arg14
                    emit 0xfdb5e4e2: arg14, 0, sub_1ff0dbf7[address(arg7)][arg12].field_0, sub_1ff0dbf7[address(arg7)][arg12].field_256, 2, address(arg7), arg12
                    if arg14 <= 0:
                        revert with 0, 'P-TNEF-01'
                    if arg14 < arg17:
                        revert with 0, 'P-TNEF-01'
                    if sub_1ff0dbf7[address(arg11)][arg12].field_0 > !(arg14 - arg17):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg12].field_0 = sub_1ff0dbf7[address(arg11)][arg12].field_0 + arg14 - arg17
                    if arg14 < arg17:
                        revert with 0, 17
                    if sub_1ff0dbf7[address(arg11)][arg12].field_256 > !(arg14 - arg17):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg12].field_256 = sub_1ff0dbf7[address(arg11)][arg12].field_256 + arg14 - arg17
                    if not arg17:
                        emit 0xfdb5e4e2: arg14, arg17, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, 2, address(arg11), arg12
                    else:
                        if arg12 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                            call address(feeAddress) with:
                               value arg17 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'P-STFF-01'
                            emit 0xfdb5e4e2: arg14, arg17, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, 2, address(arg11), arg12
                        else:
                            mem[ceil32(return_data.size) + 617] = address(feeAddress)
                            mem[ceil32(return_data.size) + 649] = arg17
                            mem[ceil32(return_data.size) + 581] = 68
                            mem[ceil32(return_data.size) + 613 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 681] = 32
                            mem[ceil32(return_data.size) + 713] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(token[arg12]):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 96] = 0, address(feeAddress), arg17, 0
                            mem[ceil32(return_data.size) + 813] = 0
                            call token[arg12] with:
                               funct Mask(32, 224, 0, address(feeAddress), arg17, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, address(feeAddress), arg17, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if arg1:
                                        revert with memory
                                          from 128
                                           len arg1
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg1:
                                    require arg1 >= 32
                                    require arg2 == bool(arg2)
                                    if not arg2:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit 0xfdb5e4e2: arg14, arg17, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, 2, address(arg11), arg12
                            else:
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 777] == bool(mem[ceil32(return_data.size) + 777])
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    'SafeERC20: ERC20 operation did not succeed',
                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                emit 0xfdb5e4e2: arg14, arg17, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], 2, address(arg11), arg12
    else:
        if arg15 > sub_1ff0dbf7[address(arg7)][arg13].field_0:
            revert with 0, 'P-TFNE-01'
        if sub_1ff0dbf7[address(arg7)][arg13].field_0 < arg15:
            revert with 0, 17
        sub_1ff0dbf7[address(arg7)][arg13].field_0 -= arg15
        mem[448] = 0
        mem[480] = sub_1ff0dbf7[address(arg7)][arg13].field_0
        mem[512] = sub_1ff0dbf7[address(arg7)][arg13].field_256
        emit 0xfdb5e4e2: arg15, 0, sub_1ff0dbf7[address(arg7)][arg13].field_0, sub_1ff0dbf7[address(arg7)][arg13].field_256, 2, address(arg7), arg13
        if arg15 <= 0:
            revert with 0, 'P-TNEF-01'
        if arg15 < arg17:
            revert with 0, 'P-TNEF-01'
        if sub_1ff0dbf7[address(arg11)][arg13].field_0 > !(arg15 - arg17):
            revert with 0, 17
        sub_1ff0dbf7[address(arg11)][arg13].field_0 = sub_1ff0dbf7[address(arg11)][arg13].field_0 + arg15 - arg17
        if arg15 < arg17:
            revert with 0, 17
        if sub_1ff0dbf7[address(arg11)][arg13].field_256 > !(arg15 - arg17):
            revert with 0, 17
        sub_1ff0dbf7[address(arg11)][arg13].field_256 = sub_1ff0dbf7[address(arg11)][arg13].field_256 + arg15 - arg17
        if not arg17:
            emit 0xfdb5e4e2: arg15, arg17, sub_1ff0dbf7[address(arg11)][arg13].field_0, sub_1ff0dbf7[address(arg11)][arg13].field_256, 2, address(arg11), arg13
            if arg14 <= 0:
                revert with 0, 'P-TNEF-01'
            if arg14 < arg16:
                revert with 0, 'P-TNEF-01'
            if sub_1ff0dbf7[address(arg7)][arg12].field_0 > !(arg14 - arg16):
                revert with 0, 17
            sub_1ff0dbf7[address(arg7)][arg12].field_0 = sub_1ff0dbf7[address(arg7)][arg12].field_0 + arg14 - arg16
            if arg14 < arg16:
                revert with 0, 17
            if sub_1ff0dbf7[address(arg7)][arg12].field_256 > !(arg14 - arg16):
                revert with 0, 17
            sub_1ff0dbf7[address(arg7)][arg12].field_256 = sub_1ff0dbf7[address(arg7)][arg12].field_256 + arg14 - arg16
            if arg16:
                if arg12 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                    call address(feeAddress) with:
                       value arg16 wei
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with 0, 'P-STFF-01'
                else:
                    mem[452] = address(feeAddress)
                    mem[484] = arg16
                    mem[416] = 68
                    mem[452 len 28] = Mask(224, 0, stor301)
                    mem[448 len 4] = unknown_0xa9059cbb(?????)
                    mem[516] = 32
                    mem[548] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(token[arg12]):
                        revert with 0, 'Address: call to non-contract'
                    mem[580 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg16, 0
                    mem[648] = 0
                    call token[arg12] with:
                       funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg16, 0) >> 224
                         gas gas_remaining wei
                        args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg16, 0) << 288)
                    if not return_data.size:
                        if not ext_call.success:
                            if arg1:
                                revert with memory
                                  from 128
                                   len arg1
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg1:
                            require arg1 >= 32
                            require arg2 == bool(arg2)
                            if not arg2:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[612] == bool(mem[612])
                            if not mem[612]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit 0xfdb5e4e2: arg14, arg16, sub_1ff0dbf7[address(arg7)][arg12].field_0, sub_1ff0dbf7[address(arg7)][arg12].field_256, 2, address(arg7), arg12
            if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_256:
                revert with 0, 'P-AFNE-02'
            if sub_1ff0dbf7[address(arg11)][arg12].field_256 < arg14:
                revert with 0, 17
            sub_1ff0dbf7[address(arg11)][arg12].field_256 -= arg14
            if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_0:
                revert with 0, 'P-TFNE-01'
            if sub_1ff0dbf7[address(arg11)][arg12].field_0 < arg14:
                revert with 0, 17
            sub_1ff0dbf7[address(arg11)][arg12].field_0 -= arg14
            emit 0xfdb5e4e2: arg14, 0, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, 2, address(arg11), arg12
        else:
            if arg13 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                call address(feeAddress) with:
                   value arg17 wei
                     gas gas_remaining wei
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'P-STFF-01'
                    emit 0xfdb5e4e2: arg15, arg17, sub_1ff0dbf7[address(arg11)][arg13].field_0, sub_1ff0dbf7[address(arg11)][arg13].field_256, 2, address(arg11), arg13
                    if arg14 <= 0:
                        revert with 0, 'P-TNEF-01'
                    if arg14 < arg16:
                        revert with 0, 'P-TNEF-01'
                    if sub_1ff0dbf7[address(arg7)][arg12].field_0 > !(arg14 - arg16):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg7)][arg12].field_0 = sub_1ff0dbf7[address(arg7)][arg12].field_0 + arg14 - arg16
                    if arg14 < arg16:
                        revert with 0, 17
                    if sub_1ff0dbf7[address(arg7)][arg12].field_256 > !(arg14 - arg16):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg7)][arg12].field_256 = sub_1ff0dbf7[address(arg7)][arg12].field_256 + arg14 - arg16
                    if arg16:
                        if arg12 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                            call address(feeAddress) with:
                               value arg16 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'P-STFF-01'
                        else:
                            mem[452] = address(feeAddress)
                            mem[484] = arg16
                            mem[416] = 68
                            mem[452 len 28] = Mask(224, 0, stor301)
                            mem[448 len 4] = unknown_0xa9059cbb(?????)
                            mem[516] = 32
                            mem[548] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(token[arg12]):
                                revert with 0, 'Address: call to non-contract'
                            mem[580 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg16, 0
                            mem[648] = 0
                            call token[arg12] with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg16, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg16, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if arg1:
                                        revert with memory
                                          from 128
                                           len arg1
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg1:
                                    require arg1 >= 32
                                    require arg2 == bool(arg2)
                                    if not arg2:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[612] == bool(mem[612])
                                    if not mem[612]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[416] = return_data.size
                    mem[448 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        revert with 0, 'P-STFF-01'
                    emit 0xfdb5e4e2: arg15, arg17, sub_1ff0dbf7[address(arg11)][arg13].field_0, sub_1ff0dbf7[address(arg11)][arg13].field_256, 2, address(arg11), arg13
                    if arg14 <= 0:
                        revert with 0, 'P-TNEF-01'
                    if arg14 < arg16:
                        revert with 0, 'P-TNEF-01'
                    if sub_1ff0dbf7[address(arg7)][arg12].field_0 > !(arg14 - arg16):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg7)][arg12].field_0 = sub_1ff0dbf7[address(arg7)][arg12].field_0 + arg14 - arg16
                    if arg14 < arg16:
                        revert with 0, 17
                    if sub_1ff0dbf7[address(arg7)][arg12].field_256 > !(arg14 - arg16):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg7)][arg12].field_256 = sub_1ff0dbf7[address(arg7)][arg12].field_256 + arg14 - arg16
                    if arg16:
                        if arg12 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                            call address(feeAddress) with:
                               value arg16 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'P-STFF-01'
                        else:
                            mem[ceil32(return_data.size) + 453] = address(feeAddress)
                            mem[ceil32(return_data.size) + 485] = arg16
                            mem[ceil32(return_data.size) + 417] = 68
                            mem[ceil32(return_data.size) + 453 len 28] = Mask(224, 0, stor301)
                            mem[ceil32(return_data.size) + 449 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 517] = 32
                            mem[ceil32(return_data.size) + 549] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(token[arg12]):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 581 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg16, 0
                            mem[ceil32(return_data.size) + 649] = 0
                            call token[arg12] with:
                               funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg16, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg16, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if arg1:
                                        revert with memory
                                          from 128
                                           len arg1
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg1:
                                    require arg1 >= 32
                                    require arg2 == bool(arg2)
                                    if not arg2:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(return_data.size) + 613 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 613] == bool(mem[ceil32(return_data.size) + 613])
                                    if not mem[ceil32(return_data.size) + 613]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit 0xfdb5e4e2: arg14, arg16, sub_1ff0dbf7[address(arg7)][arg12].field_0, sub_1ff0dbf7[address(arg7)][arg12].field_256, 2, address(arg7), arg12
                if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_256:
                    revert with 0, 'P-AFNE-02'
                if sub_1ff0dbf7[address(arg11)][arg12].field_256 < arg14:
                    revert with 0, 17
                sub_1ff0dbf7[address(arg11)][arg12].field_256 -= arg14
                if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_0:
                    revert with 0, 'P-TFNE-01'
                if sub_1ff0dbf7[address(arg11)][arg12].field_0 < arg14:
                    revert with 0, 17
                sub_1ff0dbf7[address(arg11)][arg12].field_0 -= arg14
                emit 0xfdb5e4e2: arg14, 0, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, 2, address(arg11), arg12
            else:
                mem[452] = address(feeAddress)
                mem[484] = arg17
                mem[416] = 68
                mem[452 len 28] = Mask(224, 0, stor301)
                mem[448 len 4] = unknown_0xa9059cbb(?????)
                mem[516] = 32
                mem[548] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(token[arg13]):
                    revert with 0, 'Address: call to non-contract'
                mem[580 len 96] = unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg17, 0
                mem[648] = 0
                call token[arg13] with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg17, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), Mask(224, 0, stor301), uint32(stor301), arg17, 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if arg1:
                            revert with memory
                              from 128
                               len arg1
                        revert with 0, 'SafeERC20: low-level call failed'
                    if arg1:
                        require arg1 >= 32
                        require arg2 == bool(arg2)
                        if not arg2:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit 0xfdb5e4e2: arg15, arg17, sub_1ff0dbf7[address(arg11)][arg13].field_0, sub_1ff0dbf7[address(arg11)][arg13].field_256, 2, address(arg11), arg13
                    if arg14 <= 0:
                        revert with 0, 'P-TNEF-01'
                    if arg14 < arg16:
                        revert with 0, 'P-TNEF-01'
                    if sub_1ff0dbf7[address(arg7)][arg12].field_0 > !(arg14 - arg16):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg7)][arg12].field_0 = sub_1ff0dbf7[address(arg7)][arg12].field_0 + arg14 - arg16
                    if arg14 < arg16:
                        revert with 0, 17
                    if sub_1ff0dbf7[address(arg7)][arg12].field_256 > !(arg14 - arg16):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg7)][arg12].field_256 = sub_1ff0dbf7[address(arg7)][arg12].field_256 + arg14 - arg16
                    if arg16:
                        if arg12 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                            call address(feeAddress) with:
                               value arg16 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'P-STFF-01'
                        else:
                            mem[616] = address(feeAddress)
                            mem[648] = arg16
                            mem[580] = 68
                            mem[612 len 4] = unknown_0xa9059cbb(?????)
                            mem[680] = 32
                            mem[712] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(token[arg12]):
                                revert with 0, 'Address: call to non-contract'
                            mem[744 len 96] = 0, address(feeAddress), arg16, 0
                            mem[812] = 0
                            call token[arg12] with:
                               funct Mask(32, 224, 0, address(feeAddress), arg16, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, address(feeAddress), arg16, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if arg1:
                                        revert with memory
                                          from 128
                                           len arg1
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg1:
                                    require arg1 >= 32
                                    require arg2 == bool(arg2)
                                    if not arg2:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[776 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[776] == bool(mem[776])
                                    if not mem[776]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit 0xfdb5e4e2: arg14, arg16, sub_1ff0dbf7[address(arg7)][arg12].field_0, sub_1ff0dbf7[address(arg7)][arg12].field_256, 2, address(arg7), arg12
                    if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_256:
                        revert with 0, 'P-AFNE-02'
                    if sub_1ff0dbf7[address(arg11)][arg12].field_256 < arg14:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg12].field_256 -= arg14
                    if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_0:
                        revert with 0, 'P-TFNE-01'
                    if sub_1ff0dbf7[address(arg11)][arg12].field_0 < arg14:
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg11)][arg12].field_0 -= arg14
                    emit 0xfdb5e4e2: arg14, 0, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, 2, address(arg11), arg12
                else:
                    mem[580] = return_data.size
                    mem[612 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[612] == bool(mem[612])
                        if not mem[612]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    emit 0xfdb5e4e2: arg15, arg17, sub_1ff0dbf7[address(arg11)][arg13].field_0, sub_1ff0dbf7[address(arg11)][arg13].field_256, 2, address(arg11), arg13
                    if arg14 <= 0:
                        revert with 0, 'P-TNEF-01'
                    if arg14 < arg16:
                        revert with 0, 'P-TNEF-01'
                    if sub_1ff0dbf7[address(arg7)][arg12].field_0 > !(arg14 - arg16):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg7)][arg12].field_0 = sub_1ff0dbf7[address(arg7)][arg12].field_0 + arg14 - arg16
                    if arg14 < arg16:
                        revert with 0, 17
                    if sub_1ff0dbf7[address(arg7)][arg12].field_256 > !(arg14 - arg16):
                        revert with 0, 17
                    sub_1ff0dbf7[address(arg7)][arg12].field_256 = sub_1ff0dbf7[address(arg7)][arg12].field_256 + arg14 - arg16
                    if not arg16:
                        emit 0xfdb5e4e2: arg14, arg16, sub_1ff0dbf7[address(arg7)][arg12].field_0, sub_1ff0dbf7[address(arg7)][arg12].field_256, 2, address(arg7), arg12
                        if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_256:
                            revert with 0, 'P-AFNE-02'
                        if sub_1ff0dbf7[address(arg11)][arg12].field_256 < arg14:
                            revert with 0, 17
                        sub_1ff0dbf7[address(arg11)][arg12].field_256 -= arg14
                        if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_0:
                            revert with 0, 'P-TFNE-01'
                        if sub_1ff0dbf7[address(arg11)][arg12].field_0 < arg14:
                            revert with 0, 17
                        sub_1ff0dbf7[address(arg11)][arg12].field_0 -= arg14
                        emit 0xfdb5e4e2: arg14, 0, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, 2, address(arg11), arg12
                    else:
                        if arg12 == 0x4156415800000000000000000000000000000000000000000000000000000000:
                            call address(feeAddress) with:
                               value arg16 wei
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with 0, 'P-STFF-01'
                            emit 0xfdb5e4e2: arg14, arg16, sub_1ff0dbf7[address(arg7)][arg12].field_0, sub_1ff0dbf7[address(arg7)][arg12].field_256, 2, address(arg7), arg12
                            if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_256:
                                revert with 0, 'P-AFNE-02'
                            if sub_1ff0dbf7[address(arg11)][arg12].field_256 < arg14:
                                revert with 0, 17
                            sub_1ff0dbf7[address(arg11)][arg12].field_256 -= arg14
                            if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_0:
                                revert with 0, 'P-TFNE-01'
                            if sub_1ff0dbf7[address(arg11)][arg12].field_0 < arg14:
                                revert with 0, 17
                            sub_1ff0dbf7[address(arg11)][arg12].field_0 -= arg14
                            emit 0xfdb5e4e2: arg14, 0, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, 2, address(arg11), arg12
                        else:
                            mem[ceil32(return_data.size) + 617] = address(feeAddress)
                            mem[ceil32(return_data.size) + 649] = arg16
                            mem[ceil32(return_data.size) + 581] = 68
                            mem[ceil32(return_data.size) + 613 len 4] = unknown_0xa9059cbb(?????)
                            mem[ceil32(return_data.size) + 681] = 32
                            mem[ceil32(return_data.size) + 713] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(token[arg12]):
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 745 len 96] = 0, address(feeAddress), arg16, 0
                            mem[ceil32(return_data.size) + 813] = 0
                            call token[arg12] with:
                               funct Mask(32, 224, 0, address(feeAddress), arg16, 0) >> 224
                                 gas gas_remaining wei
                                args (Mask(512, -288, 0, address(feeAddress), arg16, 0) << 288)
                            if not return_data.size:
                                if not ext_call.success:
                                    if arg1:
                                        revert with memory
                                          from 128
                                           len arg1
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if arg1:
                                    require arg1 >= 32
                                    require arg2 == bool(arg2)
                                    if not arg2:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit 0xfdb5e4e2: arg14, arg16, sub_1ff0dbf7[address(arg7)][arg12].field_0, sub_1ff0dbf7[address(arg7)][arg12].field_256, 2, address(arg7), arg12
                                if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_256:
                                    revert with 0, 'P-AFNE-02'
                                if sub_1ff0dbf7[address(arg11)][arg12].field_256 < arg14:
                                    revert with 0, 17
                                sub_1ff0dbf7[address(arg11)][arg12].field_256 -= arg14
                                if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_0:
                                    revert with 0, 'P-TFNE-01'
                                if sub_1ff0dbf7[address(arg11)][arg12].field_0 < arg14:
                                    revert with 0, 17
                                sub_1ff0dbf7[address(arg11)][arg12].field_0 -= arg14
                                emit 0xfdb5e4e2: arg14, 0, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, 2, address(arg11), arg12
                            else:
                                mem[ceil32(return_data.size) + 777 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[ceil32(return_data.size) + 777] == bool(mem[ceil32(return_data.size) + 777])
                                    if not mem[ceil32(return_data.size) + 777]:
                                        revert with 0, 
                                                    'SafeERC20: ERC20 operation did not succeed',
                                                    mem[(2 * ceil32(return_data.size)) + 878 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                emit 0xfdb5e4e2: arg14, arg16, sub_1ff0dbf7[address(arg7)][arg12].field_0, sub_1ff0dbf7[address(arg7)][arg12].field_256, mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], 2, address(arg7), arg12
                                if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_256:
                                    revert with 0, 
                                                'P-AFNE-02',
                                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if sub_1ff0dbf7[address(arg11)][arg12].field_256 < arg14:
                                    revert with 0, 17
                                sub_1ff0dbf7[address(arg11)][arg12].field_256 -= arg14
                                if arg14 > sub_1ff0dbf7[address(arg11)][arg12].field_0:
                                    revert with 0, 
                                                'P-TFNE-01',
                                                mem[(2 * ceil32(return_data.size)) + 846 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if sub_1ff0dbf7[address(arg11)][arg12].field_0 < arg14:
                                    revert with 0, 17
                                sub_1ff0dbf7[address(arg11)][arg12].field_0 -= arg14
                                emit 0xfdb5e4e2: arg14, 0, sub_1ff0dbf7[address(arg11)][arg12].field_0, sub_1ff0dbf7[address(arg11)][arg12].field_256, mem[(2 * ceil32(return_data.size)) + 874 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))], 2, address(arg11), arg12
}



}
