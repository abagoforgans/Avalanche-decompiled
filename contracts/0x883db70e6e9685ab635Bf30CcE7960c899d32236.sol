contract main {




// =====================  Runtime code  =====================


#
#  - sub_09710eb7(?)
#  - sub_0edbf865(?)
#  - sub_250b2348(?)
#  - sub_584be1bd(?)
#  - sub_97d59569(?)
#  - sub_9ce39ff1(?)
#  - sub_a745962e(?)
#  - sub_aa542ec6(?)
#  - sub_afb10142(?)
#  - sub_afff062c(?)
#  - sub_cdbe2ec9(?)
#  - sub_e67d25f0(?)
#  - sub_fc8adc92(?)
#  - _fallback()
#
const sub_79c74fdd(?) = 0x8aeeb71faabcf82a0b42ad4f2a21cfa03adb2394bf3553961c8966cbde4af715

const MAX_PERCENT = 10^9

const MAX_SUPPLY = 100000000000 * 10^18

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of uint256 stor1;
array of uint32 sub_07c29a46;
array of struct sub_6bf70536;
array of uint256 sub_666c660c;
uint256 sub_2f14ccb8;
uint256 sub_2122c966;
uint256 sub_9ccc4038;
address tokenAddress;
address routerAddress;
address treasuryAddress;
array of address sub_20616519;

function sub_07c29a46(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_07c29a46.length
    return sub_07c29a46[arg1]
}

function sub_20616519(?) {
    require calldata.size - 4 >= 32
    require arg1 < sub_20616519.length
    return address(sub_20616519[arg1])
}

function sub_2122c966(?) {
    return sub_2122c966
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_2f14ccb8(?) {
    return sub_2f14ccb8
}

function treasury() {
    return treasuryAddress
}

function sub_666c660c(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 < sub_666c660c[arg1][arg2]
    return sub_666c660c[arg1][arg2][arg3]
}

function sub_6bf70536(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 < sub_6bf70536[arg1].field_0
    return sub_6bf70536[arg1][arg2].field_0, 
           sub_6bf70536[arg1][arg2].field_256,
           sub_6bf70536[arg1][arg2].field_512,
           sub_6bf70536[arg1][arg2].field_768,
           sub_6bf70536[arg1][arg2].field_1024,
           sub_6bf70536[arg1][arg2].field_1024,
           sub_6bf70536[arg1][arg2].field_1064
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_9ccc4038(?) {
    return sub_9ccc4038
}

function router() {
    return routerAddress
}

function token() {
    return tokenAddress
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function updateRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[address(msg.sender)].field_0:
        routerAddress = arg1
        emit UpdateRouter(arg1, msg.sender);
    mem[128 len 42] = call.data[calldata.size len 42]
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
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function revokeRole(bytes32 arg1, address arg2) {
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) {
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_8077c9be(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == uint8(arg3)
    if uint8(arg1) >= sub_07c29a46.length:
        revert with 0, 'departmentId is invalid'
    if uint8(arg2) >= sub_6bf70536[arg1 << 248].field_0:
        revert with 0, 'roleId is invalid'
    if roleAdmin[address(msg.sender)].field_0:
        if uint8(arg2) >= sub_6bf70536[arg1 << 248].field_0:
            revert with 'NH{q', 50
        sub_6bf70536[arg1 << 248][uint8(arg2)].field_1064 = uint8(arg3)
        emit 0x2f391761: arg1 << 248, arg2 << 248, uint8(arg3), msg.sender
    mem[128 len 42] = call.data[calldata.size len 42]
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
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_e8b3541c(?) {
    require calldata.size - 4 >= 96
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    require arg3 == address(arg3)
    if uint8(arg1) >= sub_07c29a46.length:
        revert with 0, 'departmentId is invalid'
    if uint8(arg2) >= sub_6bf70536[arg1 << 248].field_0:
        revert with 0, 'roleId is invalid'
    if roleAdmin[address(msg.sender)].field_0:
        if uint8(arg2) >= sub_6bf70536[arg1 << 248].field_0:
            revert with 'NH{q', 50
        sub_6bf70536[arg1 << 248][uint8(arg2)].field_0 = address(arg3)
        emit 0x94fdb517: arg1 << 248, arg2 << 248, address(arg3), msg.sender
    mem[128 len 42] = call.data[calldata.size len 42]
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
    idx = 65
    while idx > 1:
        if idx >= 66:
            revert with 'NH{q', 50
        mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 'NH{q', 17
        idx = idx - 1
        continue 
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function sub_3e8a3252(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not roleAdmin[address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
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
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    sub_20616519.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while sub_20616519.length > idx:
            uint256(sub_20616519[idx]) = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            address(sub_20616519[s]) = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while sub_20616519.length > idx:
            uint256(sub_20616519[idx]) = 0
            idx = idx + 1
            continue 
    idx = 0
    s = 160
    t = cd[4] + 36
    while idx < ('cd', 4).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x200c3277: Array(len=('cd', 4).length, data=mem[160 len 32 * ('cd', 4).length]), msg.sender
}

function sub_8507c373(?) {
    require calldata.size - 4 >= 96
    require cd[4] == uint8(cd[4])
    require cd[36] == uint8(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    if uint8(cd[4]) >= sub_07c29a46.length:
        revert with 0, 'departmentId is invalid'
    if uint8(cd[36]) >= sub_6bf70536[cd[4] << 248].field_0:
        revert with 0, 'roleId is invalid'
    if not roleAdmin[address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
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
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    sub_666c660c[cd[4] << 248][cd[36] << 248] = ('cd', 68).length
    if not ('cd', 68).length:
        idx = 0
        while sub_666c660c[cd[4] << 248][cd[36] << 248] > idx:
            sub_666c660c[cd[4] << 248][cd[36] << 248][idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[68] + 36
        while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
            sub_666c660c[cd[4] << 248][cd[36] << 248][s] = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
        while sub_666c660c[cd[4] << 248][cd[36] << 248] > idx:
            sub_666c660c[cd[4] << 248][cd[36] << 248][idx] = 0
            idx = idx + 1
            continue 
    require ('cd', 68).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit 0xa76414a4: cd[4] << 248, cd[36] << 248, Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len 32 * ('cd', 68).length]), msg.sender
}

function sub_06248d9d(?) {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    if uint8(arg1) >= sub_07c29a46.length:
        revert with 0, 'departmentId is invalid'
    if uint8(arg2) >= sub_6bf70536[arg1 << 248].field_0:
        revert with 0, 'roleId is invalid'
    if uint8(arg2) >= sub_6bf70536[arg1 << 248].field_0:
        revert with 'NH{q', 50
    mem[64] = 320
    if not sub_6bf70536[arg1 << 248][uint8(arg2)].field_0:
        return 0
    if eth.balance(this.address) > 0x6df37f675ef6eadf5ab9a2072d44268d97df837e6748956e5c6c2117:
        revert with 'NH{q', 17
    if uint8(arg1) >= sub_07c29a46.length:
        revert with 'NH{q', 50
    if 10^10 * eth.balance(this.address) and sub_07c29a46[uint8(arg1)] > -1 / 10^10 * eth.balance(this.address):
        revert with 'NH{q', 17
    if 10^10 * eth.balance(this.address) * sub_07c29a46[uint8(arg1)] / 10^9 and sub_6bf70536[arg1 << 248][uint8(arg2)].field_1024 > -1 / 10^10 * eth.balance(this.address) * sub_07c29a46[uint8(arg1)] / 10^9:
        revert with 'NH{q', 17
    idx = 0
    s = 0
    t = 10^10 * eth.balance(this.address) * sub_07c29a46[uint8(arg1)] / 10^9
    while uint8(idx) < sub_6bf70536[arg1 << 248].field_0:
        mem[32] = 3
        if uint8(idx) >= sub_6bf70536[arg1 << 248].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(arg1 << 248, 3)
        _21 = mem[64]
        mem[64] = mem[64] + 224
        mem[_21] = sub_6bf70536[arg1 << 248][uint8(idx)].field_0
        mem[_21 + 32] = sub_6bf70536[arg1 << 248][uint8(idx)].field_256
        mem[_21 + 64] = sub_6bf70536[arg1 << 248][uint8(idx)].field_512
        mem[_21 + 96] = sub_6bf70536[arg1 << 248][uint8(idx)].field_768
        mem[_21 + 128] = sub_6bf70536[arg1 << 248][uint8(idx)].field_1024
        mem[_21 + 160] = sub_6bf70536[arg1 << 248][uint8(idx)].field_1056
        mem[_21 + 192] = sub_6bf70536[arg1 << 248][uint8(idx)].field_1064
        if not sub_6bf70536[arg1 << 248][uint8(idx)].field_0:
            if uint8(idx) == 255:
                revert with 'NH{q', 17
            mem[0] = uint8(arg1)
            mem[32] = 3
            idx = uint8(idx) + 1
            s = s
            t = t
            continue 
        if 10^10 * eth.balance(this.address) * sub_07c29a46[uint8(arg1)] / 10^9 and sub_6bf70536[arg1 << 248][uint8(idx)].field_1024 > -1 / 10^10 * eth.balance(this.address) * sub_07c29a46[uint8(arg1)] / 10^9:
            revert with 'NH{q', 17
        if t < 10^10 * eth.balance(this.address) * sub_07c29a46[uint8(arg1)] / 10^9 * sub_6bf70536[arg1 << 248][uint8(idx)].field_1024 / 10^9:
            revert with 'NH{q', 17
        if uint8(s) == 255:
            revert with 'NH{q', 17
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        mem[0] = uint8(arg1)
        mem[32] = 3
        idx = uint8(idx) + 1
        s = uint8(s) + 1
        t = t - (10^10 * eth.balance(this.address) * sub_07c29a46[uint8(arg1)] / 10^9 * sub_6bf70536[arg1 << 248][uint8(idx)].field_1024 / 10^9)
        continue 
    if not uint8(s):
        revert with 'NH{q', 18
    if 10^10 * eth.balance(this.address) * sub_07c29a46[uint8(arg1)] / 10^9 * sub_6bf70536[arg1 << 248][uint8(arg2)].field_1024 / 10^9 > !(t / 2 / uint8(s)):
        revert with 'NH{q', 17
    return ((10^10 * eth.balance(this.address) * sub_07c29a46[uint8(arg1)] / 10^9 * sub_6bf70536[arg1 << 248][uint8(arg2)].field_1024 / 10^9) + (t / 2 / uint8(s)) / 10^10)
}

function rescue(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
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
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    if tokenAddress == arg1:
        revert with 0, 'Can not pull vesting token'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = arg2
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg2) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg2) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
}

function migrate(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
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
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 'NH{q', 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 'NH{q', 17
            idx = idx - 1
            continue 
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    mem[100] = this.address
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = arg1
    mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = address(arg1) << 64
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if not ext_code.size(tokenAddress):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0
    mem[ceil32(return_data.size) + 328] = 0
    call tokenAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, ext_call.return_data[0], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require uint32(this.address), mem[132 len 28] == bool(uint32(this.address), mem[132 len 28])
            if not uint32(this.address), mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
            if not mem[ceil32(return_data.size) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0xcb120e33: address(arg1), ext_call.return_data[0], eth.balance(this.address), msg.sender
}

function processRewards() payable {
    mem[64] = 96
    require not msg.value
    if stor1.length == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1.length = 2
    idx = 0
    while uint8(idx) < sub_07c29a46.length:
        if eth.balance(this.address) and sub_07c29a46[uint8(idx)] > -1 / eth.balance(this.address):
            revert with 'NH{q', 17
        s = 0
        t = 0
        u = eth.balance(this.address) * sub_07c29a46[uint8(idx)] / 10^9
        while uint8(s) < sub_6bf70536[idx << 248].field_0:
            mem[32] = 3
            if uint8(s) >= sub_6bf70536[idx << 248].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(idx << 248, 3)
            _29 = mem[64]
            mem[64] = mem[64] + 224
            mem[_29] = sub_6bf70536[idx << 248][uint8(s)].field_0
            mem[_29 + 32] = sub_6bf70536[idx << 248][uint8(s)].field_256
            mem[_29 + 64] = sub_6bf70536[idx << 248][uint8(s)].field_512
            mem[_29 + 96] = sub_6bf70536[idx << 248][uint8(s)].field_768
            mem[_29 + 128] = sub_6bf70536[idx << 248][uint8(s)].field_1024
            mem[_29 + 160] = sub_6bf70536[idx << 248][uint8(s)].field_1056
            mem[_29 + 192] = sub_6bf70536[idx << 248][uint8(s)].field_1064
            if not sub_6bf70536[idx << 248][uint8(s)].field_0:
                if uint8(s) == 255:
                    revert with 'NH{q', 17
                mem[0] = uint8(idx)
                mem[32] = 3
                s = uint8(s) + 1
                t = t
                u = u
                continue 
            if eth.balance(this.address) * sub_07c29a46[uint8(idx)] / 10^9 and sub_6bf70536[idx << 248][uint8(s)].field_1024 > -1 / eth.balance(this.address) * sub_07c29a46[uint8(idx)] / 10^9:
                revert with 'NH{q', 17
            if u < eth.balance(this.address) * sub_07c29a46[uint8(idx)] / 10^9 * sub_6bf70536[idx << 248][uint8(s)].field_1024 / 10^9:
                revert with 'NH{q', 17
            if uint8(t) == 255:
                revert with 'NH{q', 17
            if uint8(s) == 255:
                revert with 'NH{q', 17
            mem[0] = uint8(idx)
            mem[32] = 3
            s = uint8(s) + 1
            t = uint8(t) + 1
            u = u - (eth.balance(this.address) * sub_07c29a46[uint8(idx)] / 10^9 * sub_6bf70536[idx << 248][uint8(s)].field_1024 / 10^9)
            continue 
        if not uint8(t):
            revert with 'NH{q', 18
        mem[0] = uint8(idx)
        mem[32] = 3
        s = 0
        while uint8(s) < sub_6bf70536[idx << 248].field_0:
            if uint8(s) >= sub_6bf70536[idx << 248].field_0:
                revert with 'NH{q', 50
            if sub_6bf70536[idx << 248][uint8(s)].field_0:
                if eth.balance(this.address) * sub_07c29a46[uint8(idx)] / 10^9 and sub_6bf70536[idx << 248][uint8(s)].field_1024 > -1 / eth.balance(this.address) * sub_07c29a46[uint8(idx)] / 10^9:
                    revert with 'NH{q', 17
                if u / 2 / uint8(t) > !(eth.balance(this.address) * sub_07c29a46[uint8(idx)] / 10^9 * sub_6bf70536[idx << 248][uint8(s)].field_1024 / 10^9):
                    revert with 'NH{q', 17
                call sub_6bf70536[idx << 248][uint8(s)].field_0 with:
                   value (u / 2 / uint8(t)) + (eth.balance(this.address) * sub_07c29a46[uint8(idx)] / 10^9 * sub_6bf70536[idx << 248][uint8(s)].field_1024 / 10^9) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_6bf70536[idx << 248][uint8(s)].field_256 > !((u / 2 / uint8(t)) + (eth.balance(this.address) * sub_07c29a46[uint8(idx)] / 10^9 * sub_6bf70536[idx << 248][uint8(s)].field_1024 / 10^9)):
                    revert with 'NH{q', 17
                sub_6bf70536[idx << 248][uint8(s)].field_256 = sub_6bf70536[idx << 248][uint8(s)].field_256 + (u / 2 / uint8(t)) + (eth.balance(this.address) * sub_07c29a46[uint8(idx)] / 10^9 * sub_6bf70536[idx << 248][uint8(s)].field_1024 / 10^9)
            if uint8(s) == 255:
                revert with 'NH{q', 17
            mem[0] = uint8(idx)
            mem[32] = 3
            s = uint8(s) + 1
            continue 
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
    call treasuryAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_2f14ccb8 > !eth.balance(this.address):
        revert with 'NH{q', 17
    sub_2f14ccb8 += eth.balance(this.address)
    stor1.length = 1
}

function sub_821446e5(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == uint8(arg1)
    idx = 0
    while uint8(idx) < sub_07c29a46.length:
        mem[0] = uint8(idx)
        mem[32] = 3
        s = 0
        while uint8(s) < sub_6bf70536[idx << 248].field_0:
            if uint8(idx) >= sub_07c29a46.length:
                revert with 0, 'departmentId is invalid'
            if uint8(s) >= sub_6bf70536[idx << 248].field_0:
                revert with 0, 'roleId is invalid'
            mem[32] = 3
            if uint8(s) >= sub_6bf70536[idx << 248].field_0:
                revert with 'NH{q', 50
            mem[0] = sha3(idx << 248, 3)
            _47 = mem[64]
            mem[64] = mem[64] + 224
            mem[_47] = sub_6bf70536[idx << 248][uint8(s)].field_0
            mem[_47 + 32] = sub_6bf70536[idx << 248][uint8(s)].field_256
            mem[_47 + 64] = sub_6bf70536[idx << 248][uint8(s)].field_512
            mem[_47 + 96] = sub_6bf70536[idx << 248][uint8(s)].field_768
            mem[_47 + 128] = sub_6bf70536[idx << 248][uint8(s)].field_1024
            mem[_47 + 160] = sub_6bf70536[idx << 248][uint8(s)].field_1056
            mem[_47 + 192] = sub_6bf70536[idx << 248][uint8(s)].field_1064
            mem[0] = uint8(s)
            mem[32] = sha3(idx << 248, 4)
            _50 = mem[64]
            mem[64] = mem[64] + (32 * sub_666c660c[idx << 248][s << 248]) + 32
            mem[_50] = sub_666c660c[idx << 248][s << 248]
            if not sub_666c660c[idx << 248][s << 248]:
                if 1 > -sub_6bf70536[idx << 248][uint8(s)].field_1056 + 255:
                    revert with 'NH{q', 17
                t = sub_6bf70536[idx << 248][uint8(s)].field_1056 + 1
                u = 0
                while uint8(t) <= uint8(arg1):
                    if uint8(t) > mem[_50]:
                        if 0 > !u:
                            revert with 'NH{q', 17
                        if uint8(s) == 255:
                            revert with 'NH{q', 17
                        mem[0] = uint8(idx)
                        mem[32] = 3
                        s = uint8(s) + 1
                        continue 
                    if uint8(t) < 1:
                        revert with 'NH{q', 17
                    if uint8(uint8(t) - 1) >= mem[_50]:
                        revert with 'NH{q', 50
                    if u > !mem[(32 * uint8(uint8(t) - 1)) + _50 + 32]:
                        revert with 'NH{q', 17
                    if uint8(t) == 255:
                        revert with 'NH{q', 17
                    mem[0] = uint8(idx)
                    mem[32] = 3
                    t = uint8(t) + 1
                    u = u + mem[(32 * uint8(uint8(t) - 1)) + _50 + 32]
                    continue 
            else:
                mem[0] = sha3(s << 248, sha3(idx << 248, 4))
                mem[_50 + 32] = sub_666c660c[idx << 248][s << 248]
                t = _50 + 32
                u = sha3(mem[0])
                while _50 + (32 * sub_666c660c[idx << 248][s << 248]) > t:
                    mem[0] = uint8(idx)
                    mem[32] = 3
                    mem[t + 32] = stor1[u]
                    t = t + 32
                    u = u + 1
                    continue 
                if 1 > -mem[_47 + 191 len 1] + 255:
                    revert with 'NH{q', 17
                t = mem[_47 + 191 len 1] + 1
                u = 0
                while uint8(t) <= uint8(arg1):
                    if uint8(t) > mem[_50]:
                        if 0 > !u:
                            revert with 'NH{q', 17
                        if uint8(s) == 255:
                            revert with 'NH{q', 17
                        mem[0] = uint8(idx)
                        mem[32] = 3
                        s = uint8(s) + 1
                        continue 
                    if uint8(t) < 1:
                        revert with 'NH{q', 17
                    if uint8(uint8(t) - 1) >= mem[_50]:
                        revert with 'NH{q', 50
                    if u > !mem[(32 * uint8(uint8(t) - 1)) + _50 + 32]:
                        revert with 'NH{q', 17
                    if uint8(t) == 255:
                        revert with 'NH{q', 17
                    mem[0] = uint8(idx)
                    mem[32] = 3
                    t = uint8(t) + 1
                    u = u + mem[(32 * uint8(uint8(t) - 1)) + _50 + 32]
                    continue 
            if 0 > !u:
                revert with 'NH{q', 17
            if uint8(s) == 255:
                revert with 'NH{q', 17
            mem[0] = uint8(idx)
            mem[32] = 3
            s = uint8(s) + 1
            continue 
        if uint8(idx) == 255:
            revert with 'NH{q', 17
        idx = uint8(idx) + 1
        continue 
    return 0
}



}
