contract main {




// =====================  Runtime code  =====================


const budget = eth.balance(this.address)

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
uint256 minBet;
uint256 sub_cca7273b;
uint256 houseEdge;
uint256 sub_82a36524;
mapping of struct userReferrer;
mapping of uint256 sub_eb3ba72f;
mapping of uint256 sub_cade7ac6;

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function userReferrer(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return userReferrer[arg1].field_0, userReferrer[arg1].field_256
}

function sub_82a36524(?) {
    return sub_82a36524
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function minBet() {
    return minBet
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function sub_cade7ac6(?) {
    require calldata.size - 4 >= 32
    return sub_cade7ac6[arg1]
}

function sub_cca7273b(?) {
    return sub_cca7273b
}

function houseEdge() {
    return houseEdge
}

function sub_eb3ba72f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_eb3ba72f[arg1]
}

function hashBytes(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return sha3(arg1)
}

function hashPacked(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return sha3(arg1)
}

function setMinBet(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'must have admin role'
    minBet = arg1
}

function maxWin() {
    if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
        revert with 0, 17
    return (eth.balance(this.address) * sub_cca7273b / 10000)
}

function sub_0a514da9(?) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'must have admin role'
    if arg1 > 10000:
        revert with 0, 'use percentage points'
    sub_82a36524 = arg1
}

function setMaxPercWin(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'must have admin role'
    if arg1 > 10000:
        revert with 0, 'use percentage points'
    sub_cca7273b = arg1
}

function setHouseEdgePerc(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'must have admin role'
    if arg1 > 10000:
        revert with 0, 'use percentage points'
    houseEdge = arg1
}

function sub_ef824cfe(?) {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require 163 < calldata.size
    require calldata.size >= 260
    idx = 0
    s = 132
    t = 256
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return sha3(address(cd[4]), cd[36], cd[68], cd[100], mem[256 len 128])
}

function sub_697a391c(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'must have admin role'
    if arg3 > 10000:
        revert with 0, 'use percentage points'
    userReferrer[address(arg1)].field_0 = address(arg2)
    userReferrer[address(arg1)].field_256 = arg3
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'must have admin role'
    if eth.balance(this.address) < arg1:
        revert with 0, 'insufficient funds'
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function sub_e229df5c(?) {
    require calldata.size - 4 >= 96
    if houseEdge > !userReferrer[msg.sender].field_256:
        revert with 0, 17
    if 0 >= arg3:
        revert with 0, 'win probability out of range'
    if arg3 > arg2:
        revert with 0, 'win probability out of range'
    if arg1 and houseEdge + userReferrer[msg.sender].field_256 > -1 / arg1:
        revert with 0, 17
    if arg1 < (houseEdge * arg1) + (userReferrer[msg.sender].field_256 * arg1) / 10000:
        revert with 0, 17
    if arg1 - ((houseEdge * arg1) + (userReferrer[msg.sender].field_256 * arg1) / 10000) and arg2 > -1 / arg1 - ((houseEdge * arg1) + (userReferrer[msg.sender].field_256 * arg1) / 10000):
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    return ((arg1 * arg2) - ((houseEdge * arg1) + (userReferrer[msg.sender].field_256 * arg1) / 10000 * arg2) / arg3)
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
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
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
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
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function sub_5b5ef8de(?) payable {
    require calldata.size - 4 >= 224
    require 35 < calldata.size
    require calldata.size >= 132
    idx = 0
    s = 4
    t = 96
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] == address(cd[196])
    if msg.sender != tx.origin:
        revert with 0, 'no indirect calls'
    if ext_code.size(msg.sender):
        revert with 0, 'no indirect calls'
    if mem[160] != msg.value:
        revert with 0, 'amount missmatch'
    if mem[160] < minBet:
        revert with 0, 'bet amount too low'
    if mem[128]:
        if mem[128] != 1:
            revert with 0, 'invalid rollunder or rollover value'
    if 1 >= mem[192]:
        revert with 0, 'invalid modulo'
    if msg.sender == address(cd[196]):
        revert with 0, 'invalid referrer address'
    if not userReferrer[msg.sender].field_0:
        if address(cd[196]):
            userReferrer[msg.sender].field_0 = address(cd[196])
        else:
            if 0 >= roleMember[0].field_0:
                revert with 0, 50
            userReferrer[msg.sender].field_0 = roleMember[0].field_0
        userReferrer[msg.sender].field_256 = sub_82a36524
    if not mem[128]:
        if houseEdge > !userReferrer[msg.sender].field_256:
            revert with 0, 17
        if 0 >= mem[96]:
            revert with 0, 'win probability out of range'
        if mem[96] > mem[192]:
            revert with 0, 'win probability out of range'
        if mem[160] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[160]:
            revert with 0, 17
        if mem[160] < (houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000:
            revert with 0, 17
        if mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000) and mem[192] > -1 / mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000):
            revert with 0, 17
        if not mem[96]:
            revert with 0, 18
        if (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[96] < mem[160]:
            revert with 0, 17
        if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
            revert with 0, 17
        if ((mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[96]) - mem[160] > eth.balance(this.address) * sub_cca7273b / 10000:
            revert with 0, 'profit exceeds max win amount'
    else:
        if mem[192] < 1:
            revert with 0, 17
        if mem[192] - 1 < mem[96]:
            revert with 0, 17
        if houseEdge > !userReferrer[msg.sender].field_256:
            revert with 0, 17
        if 0 >= mem[192] + -mem[96] - 1:
            revert with 0, 'win probability out of range'
        if mem[192] + -mem[96] - 1 > mem[192]:
            revert with 0, 'win probability out of range'
        if mem[160] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[160]:
            revert with 0, 17
        if mem[160] < (houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000:
            revert with 0, 17
        if mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000) and mem[192] > -1 / mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000):
            revert with 0, 17
        if not mem[192] + -mem[96] - 1:
            revert with 0, 18
        if (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1 < mem[160]:
            revert with 0, 17
        if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
            revert with 0, 17
        if ((mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1) - mem[160] > eth.balance(this.address) * sub_cca7273b / 10000:
            revert with 0, 'profit exceeds max win amount'
    if sub_cade7ac6[msg.sender][cd[164]][cd[132]][block.number][mem[96 len 128]]:
        revert with 0, 'bet hash already exists'
    sub_cade7ac6[msg.sender][cd[164]][cd[132]][block.number][mem[96 len 128]] = block.timestamp
    emit 0xb6614807: msg.sender, cd[164], cd[132], block.number, mem[96 len 128], sha3(msg.sender, cd[164], cd[132], block.number, mem[96 len 128])
}

function sub_f72afe7d(?) {
    require calldata.size - 4 >= 320
    require cd[4] == address(cd[4])
    require 131 < calldata.size
    require calldata.size >= 228
    idx = 1
    s = 132
    t = 128
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) / 1000 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) < 1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) / 1000:
        revert with 0, 17
    if not mem[192]:
        revert with 0, 18
    if not mem[128]:
        if sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) - (1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) / 1000) % mem[192] < cd[100]:
            if houseEdge > !userReferrer[msg.sender].field_256:
                revert with 0, 17
            if 0 >= cd[100]:
                revert with 0, 'win probability out of range'
            if cd[100] > mem[192]:
                revert with 0, 'win probability out of range'
            if mem[160] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[160]:
                revert with 0, 17
            if mem[160] < (houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000:
                revert with 0, 17
            if mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000) and mem[192] > -1 / mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000):
                revert with 0, 17
            if not cd[100]:
                revert with 0, 18
            return sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) - (1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) / 1000) % mem[192], 
                   (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / cd[100],
                   cd[4] << 192,
                   sha3(cd[260]),
                   cd[228],
                   cd[36],
                   cd[100],
                   mem[128 len 96],
                   sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96])
        if not mem[128]:
            return sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) - (1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) / 1000) % mem[192], 
                   0,
                   cd[4] << 192,
                   sha3(cd[260]),
                   cd[228],
                   cd[36],
                   cd[100],
                   mem[128 len 96],
                   sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96])
    if sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) - (1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) / 1000) % mem[192] <= cd[100]:
        return sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) - (1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) / 1000) % mem[192], 
               0,
               cd[4] << 192,
               sha3(cd[260]),
               cd[228],
               cd[36],
               cd[100],
               mem[128 len 96],
               sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96])
    if mem[192] < 1:
        revert with 0, 17
    if mem[192] - 1 < cd[100]:
        revert with 0, 17
    if houseEdge > !userReferrer[msg.sender].field_256:
        revert with 0, 17
    if 0 >= mem[192] + -cd[100] - 1:
        revert with 0, 'win probability out of range'
    if mem[192] + -cd[100] - 1 > mem[192]:
        revert with 0, 'win probability out of range'
    if mem[160] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[160]:
        revert with 0, 17
    if mem[160] < (houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000:
        revert with 0, 17
    if mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000) and mem[192] > -1 / mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000):
        revert with 0, 17
    if not mem[192] + -cd[100] - 1:
        revert with 0, 18
    return sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) - (1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96]), cd[68], cd[292])) / 1000) % mem[192], 
           (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -cd[100] - 1,
           cd[4] << 192,
           sha3(cd[260]),
           cd[228],
           cd[36],
           cd[100],
           mem[128 len 96],
           sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[128 len 96])
}

function sub_a4efad90(?) {
    require calldata.size - 4 >= 288
    require cd[4] == address(cd[4])
    require 99 < calldata.size
    require calldata.size >= 196
    idx = 0
    s = 68
    t = 96
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'must have admin role'
    if block.number <= cd[36]:
        revert with 0, 'bet not ready to be finished'
    if sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) / 1000 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) < 1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) / 1000:
        revert with 0, 17
    if not mem[192]:
        revert with 0, 18
    if mem[128]:
        if sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[192] <= mem[96]:
            if not sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[96 len 128]]:
                revert with 0, 'bet not found'
            if block.number < 256:
                revert with 0, 17
            sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[96 len 128]] = 0
            if cd[36] < block.number - 256:
                emit BetExpired(cd[4] << 192, mem[160], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]));
                call uint64(cd[4]) << 96 with:
                   value mem[160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if mem[160] and houseEdge > -1 / mem[160]:
                    revert with 0, 17
                if mem[160] and userReferrer[uint64(cd[4]) << 96].field_256 > -1 / mem[160]:
                    revert with 0, 17
                if 0 > mem[160]:
                    if 0 < mem[160]:
                        revert with 0, 17
                    if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if -mem[160] >= eth.balance(this.address) * sub_cca7273b / 10000:
                        call uint64(cd[4]) << 96 with:
                           value mem[160] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call uint64(cd[4]) << 96 with:
                             gas 2300 wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= roleMember[0].field_0:
                            revert with 0, 50
                        call roleMember[0].field_0 with:
                           value mem[160] * houseEdge / 10000 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call userReferrer[uint64(cd[4]) << 96].field_0 with:
                           value mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                             gas 2300 * is_zero(value) wei
                        if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                            revert with 0, 17
                        sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                if 0 >= roleMember[0].field_0:
                    revert with 0, 50
                call roleMember[0].field_0 with:
                   value mem[160] * houseEdge / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                call userReferrer[uint64(cd[4]) << 96].field_0 with:
                   value mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                     gas 2300 * is_zero(value) wei
                if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                    revert with 0, 17
                sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                emit 0xb258988c: cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128], sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[192], 0, sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128])
        else:
            if mem[192] < 1:
                revert with 0, 17
            if mem[192] - 1 < mem[96]:
                revert with 0, 17
            if houseEdge > !userReferrer[msg.sender].field_256:
                revert with 0, 17
            if 0 >= mem[192] + -mem[96] - 1:
                revert with 0, 'win probability out of range'
            if mem[192] + -mem[96] - 1 > mem[192]:
                revert with 0, 'win probability out of range'
            if mem[160] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[160]:
                revert with 0, 17
            if mem[160] < (houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000:
                revert with 0, 17
            if mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000) and mem[192] > -1 / mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000):
                revert with 0, 17
            if not mem[192] + -mem[96] - 1:
                revert with 0, 18
            if not sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[96 len 128]]:
                revert with 0, 'bet not found'
            if block.number < 256:
                revert with 0, 17
            sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[96 len 128]] = 0
            if cd[36] < block.number - 256:
                emit BetExpired(cd[4] << 192, mem[160], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]));
                call uint64(cd[4]) << 96 with:
                   value mem[160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if mem[160] and houseEdge > -1 / mem[160]:
                    revert with 0, 17
                if mem[160] and userReferrer[uint64(cd[4]) << 96].field_256 > -1 / mem[160]:
                    revert with 0, 17
                if (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1 > mem[160]:
                    if (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1 < mem[160]:
                        revert with 0, 17
                    if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if ((mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1) - mem[160] >= eth.balance(this.address) * sub_cca7273b / 10000:
                        call uint64(cd[4]) << 96 with:
                           value mem[160] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call uint64(cd[4]) << 96 with:
                           value (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= roleMember[0].field_0:
                            revert with 0, 50
                        call roleMember[0].field_0 with:
                           value mem[160] * houseEdge / 10000 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call userReferrer[uint64(cd[4]) << 96].field_0 with:
                           value mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                             gas 2300 * is_zero(value) wei
                        if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                            revert with 0, 17
                        sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                if not (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1:
                    if 0 >= roleMember[0].field_0:
                        revert with 0, 50
                    call roleMember[0].field_0 with:
                       value mem[160] * houseEdge / 10000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call userReferrer[uint64(cd[4]) << 96].field_0 with:
                       value mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                         gas 2300 * is_zero(value) wei
                    if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                        revert with 0, 17
                    sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                emit 0xb258988c: cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128], sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[192], (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1, sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128])
    else:
        if sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[192] < mem[96]:
            if houseEdge > !userReferrer[msg.sender].field_256:
                revert with 0, 17
            if 0 >= mem[96]:
                revert with 0, 'win probability out of range'
            if mem[96] > mem[192]:
                revert with 0, 'win probability out of range'
            if mem[160] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[160]:
                revert with 0, 17
            if mem[160] < (houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000:
                revert with 0, 17
            if mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000) and mem[192] > -1 / mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000):
                revert with 0, 17
            if not mem[96]:
                revert with 0, 18
            if not sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[96 len 128]]:
                revert with 0, 'bet not found'
            if block.number < 256:
                revert with 0, 17
            sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[96 len 128]] = 0
            if cd[36] < block.number - 256:
                emit BetExpired(cd[4] << 192, mem[160], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]));
                call uint64(cd[4]) << 96 with:
                   value mem[160] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if mem[160] and houseEdge > -1 / mem[160]:
                    revert with 0, 17
                if mem[160] and userReferrer[uint64(cd[4]) << 96].field_256 > -1 / mem[160]:
                    revert with 0, 17
                if (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[96] > mem[160]:
                    if (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[96] < mem[160]:
                        revert with 0, 17
                    if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                        revert with 0, 17
                    if ((mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[96]) - mem[160] >= eth.balance(this.address) * sub_cca7273b / 10000:
                        call uint64(cd[4]) << 96 with:
                           value mem[160] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        call uint64(cd[4]) << 96 with:
                           value (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[96] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if 0 >= roleMember[0].field_0:
                            revert with 0, 50
                        call roleMember[0].field_0 with:
                           value mem[160] * houseEdge / 10000 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call userReferrer[uint64(cd[4]) << 96].field_0 with:
                           value mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                             gas 2300 * is_zero(value) wei
                        if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                            revert with 0, 17
                        sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                if not (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[96]:
                    if 0 >= roleMember[0].field_0:
                        revert with 0, 50
                    call roleMember[0].field_0 with:
                       value mem[160] * houseEdge / 10000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call userReferrer[uint64(cd[4]) << 96].field_0 with:
                       value mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                         gas 2300 * is_zero(value) wei
                    if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                        revert with 0, 17
                    sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                emit 0xb258988c: cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128], sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[192], (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[96], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128])
        else:
            if not mem[128]:
                if not sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[96 len 128]]:
                    revert with 0, 'bet not found'
                if block.number < 256:
                    revert with 0, 17
                sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[96 len 128]] = 0
                if cd[36] < block.number - 256:
                    emit BetExpired(cd[4] << 192, mem[160], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]));
                    call uint64(cd[4]) << 96 with:
                       value mem[160] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if mem[160] and houseEdge > -1 / mem[160]:
                        revert with 0, 17
                    if mem[160] and userReferrer[uint64(cd[4]) << 96].field_256 > -1 / mem[160]:
                        revert with 0, 17
                    if 0 > mem[160]:
                        if 0 < mem[160]:
                            revert with 0, 17
                        if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                            revert with 0, 17
                        if -mem[160] >= eth.balance(this.address) * sub_cca7273b / 10000:
                            call uint64(cd[4]) << 96 with:
                               value mem[160] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            call uint64(cd[4]) << 96 with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if 0 >= roleMember[0].field_0:
                                revert with 0, 50
                            call roleMember[0].field_0 with:
                               value mem[160] * houseEdge / 10000 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call userReferrer[uint64(cd[4]) << 96].field_0 with:
                               value mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                 gas 2300 * is_zero(value) wei
                            if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                revert with 0, 17
                            sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                    if 0 >= roleMember[0].field_0:
                        revert with 0, 50
                    call roleMember[0].field_0 with:
                       value mem[160] * houseEdge / 10000 wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    call userReferrer[uint64(cd[4]) << 96].field_0 with:
                       value mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                         gas 2300 * is_zero(value) wei
                    if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                        revert with 0, 17
                    sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                    emit 0xb258988c: cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128], sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[192], 0, sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128])
            else:
                if sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[192] <= mem[96]:
                    if not sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[96 len 128]]:
                        revert with 0, 'bet not found'
                    if block.number < 256:
                        revert with 0, 17
                    sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[96 len 128]] = 0
                    if cd[36] < block.number - 256:
                        emit BetExpired(cd[4] << 192, mem[160], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]));
                        call uint64(cd[4]) << 96 with:
                           value mem[160] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if mem[160] and houseEdge > -1 / mem[160]:
                            revert with 0, 17
                        if mem[160] and userReferrer[uint64(cd[4]) << 96].field_256 > -1 / mem[160]:
                            revert with 0, 17
                        if 0 > mem[160]:
                            if 0 < mem[160]:
                                revert with 0, 17
                            if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if -mem[160] >= eth.balance(this.address) * sub_cca7273b / 10000:
                                call uint64(cd[4]) << 96 with:
                                   value mem[160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call uint64(cd[4]) << 96 with:
                                     gas 2300 wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 >= roleMember[0].field_0:
                                    revert with 0, 50
                                call roleMember[0].field_0 with:
                                   value mem[160] * houseEdge / 10000 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call userReferrer[uint64(cd[4]) << 96].field_0 with:
                                   value mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                     gas 2300 * is_zero(value) wei
                                if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                    revert with 0, 17
                                sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                        if 0 >= roleMember[0].field_0:
                            revert with 0, 50
                        call roleMember[0].field_0 with:
                           value mem[160] * houseEdge / 10000 wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        call userReferrer[uint64(cd[4]) << 96].field_0 with:
                           value mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                             gas 2300 * is_zero(value) wei
                        if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                            revert with 0, 17
                        sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                        emit 0xb258988c: cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128], sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[192], 0, sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128])
                else:
                    if mem[192] < 1:
                        revert with 0, 17
                    if mem[192] - 1 < mem[96]:
                        revert with 0, 17
                    if houseEdge > !userReferrer[msg.sender].field_256:
                        revert with 0, 17
                    if 0 >= mem[192] + -mem[96] - 1:
                        revert with 0, 'win probability out of range'
                    if mem[192] + -mem[96] - 1 > mem[192]:
                        revert with 0, 'win probability out of range'
                    if mem[160] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[160]:
                        revert with 0, 17
                    if mem[160] < (houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000:
                        revert with 0, 17
                    if mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000) and mem[192] > -1 / mem[160] - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000):
                        revert with 0, 17
                    if not mem[192] + -mem[96] - 1:
                        revert with 0, 18
                    if not sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[96 len 128]]:
                        revert with 0, 'bet not found'
                    if block.number < 256:
                        revert with 0, 17
                    sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[96 len 128]] = 0
                    if cd[36] < block.number - 256:
                        emit BetExpired(cd[4] << 192, mem[160], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]));
                        call uint64(cd[4]) << 96 with:
                           value mem[160] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if mem[160] and houseEdge > -1 / mem[160]:
                            revert with 0, 17
                        if mem[160] and userReferrer[uint64(cd[4]) << 96].field_256 > -1 / mem[160]:
                            revert with 0, 17
                        if (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1 > mem[160]:
                            if (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1 < mem[160]:
                                revert with 0, 17
                            if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                                revert with 0, 17
                            if ((mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1) - mem[160] >= eth.balance(this.address) * sub_cca7273b / 10000:
                                call uint64(cd[4]) << 96 with:
                                   value mem[160] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                call uint64(cd[4]) << 96 with:
                                   value (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if 0 >= roleMember[0].field_0:
                                    revert with 0, 50
                                call roleMember[0].field_0 with:
                                   value mem[160] * houseEdge / 10000 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call userReferrer[uint64(cd[4]) << 96].field_0 with:
                                   value mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                     gas 2300 * is_zero(value) wei
                                if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                    revert with 0, 17
                                sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                        if not (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1:
                            if 0 >= roleMember[0].field_0:
                                revert with 0, 50
                            call roleMember[0].field_0 with:
                               value mem[160] * houseEdge / 10000 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call userReferrer[uint64(cd[4]) << 96].field_0 with:
                               value mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                 gas 2300 * is_zero(value) wei
                            if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                revert with 0, 17
                            sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[160] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                        emit 0xb258988c: cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128], sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[192], (mem[160] * mem[192]) - ((houseEdge * mem[160]) + (userReferrer[msg.sender].field_256 * mem[160]) / 10000 * mem[192]) / mem[192] + -mem[96] - 1, sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[96 len 128])
}

function _fallback() payable {
    if calldata.size < 4:
        require not calldata.size
    else:
        if unknown_0x9619367d(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x5b5ef8de(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x248a9ca3(?????) > uint32(call.func_hash) >> 224:
                    if supportsInterface(bytes4 arg1) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == Mask(32, 224, cd[4])
                        if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                            return True
                        if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, cd[4]):
                            return True
                        return (Mask(32, 224, cd[4]) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
                    if uint32(call.func_hash) >> 224 != unknown_0x0a514da9(?????):
                        require unknown_0x16d190e3(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                            revert with 0, 17
                        return (eth.balance(this.address) * sub_cca7273b / 10000)
                    require not msg.value
                    require calldata.size - 4 >= 32
                    if not roleAdmin[address(msg.sender)].field_0:
                        revert with 0, 'must have admin role'
                    if cd[4] > 10000:
                        revert with 0, 'use percentage points'
                    sub_82a36524 = cd[4]
                else:
                    if unknown_0x248a9ca3(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return roleAdmin[cd[4]].field_256
                    if unknown_0x2e1a7d4d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if not roleAdmin[address(msg.sender)].field_0:
                            revert with 0, 'must have admin role'
                        if eth.balance(this.address) < cd[4]:
                            revert with 0, 'insufficient funds'
                        call msg.sender with:
                           value cd[4] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if unknown_0x2f2ff15d(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[36] == address(cd[36])
                            if not roleAdmin[roleAdmin[cd[4]].field_256][address(msg.sender)].field_0:
                                mem[160 len 42] = call.data[calldata.size len 42]
                                idx = 41
                                s = address(msg.sender)
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= 42:
                                        revert with 0, 50
                                    mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                if msg.sender + 10240:
                                    revert with 0, 'Strings: hex length insufficient'
                                mem[256 len 66] = call.data[calldata.size len 66]
                                idx = 65
                                s = roleAdmin[cd[4]].field_256
                                while idx > 1:
                                    if s % 16 >= 16:
                                        revert with 0, 50
                                    if idx >= 66:
                                        revert with 0, 50
                                    mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                                    if not idx:
                                        revert with 0, 17
                                    idx = idx - 1
                                    s = Mask(252, 0, s) * 0.0625
                                    continue 
                                if roleAdmin[cd[4]].field_256 + 16384:
                                    revert with 0, 'Strings: hex length insufficient'
                                revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                            if not roleAdmin[cd[4]][address(cd[36])].field_0:
                                roleAdmin[cd[4]][address(cd[36])].field_0 = 1
                                emit RoleGranted(cd[4], address(cd[36]), msg.sender);
                            if not roleMember[cd[4]][1][address(cd[36])].field_0:
                                roleMember[cd[4]].field_0++
                                roleMember[cd[4]][roleMember[cd[4]].field_0].field_0 = address(cd[36])
                                roleMember[cd[4]][roleMember[cd[4]].field_0].field_160 = 0
                                roleMember[cd[4]][1][address(cd[36])].field_0 = roleMember[cd[4]].field_0
                        else:
                            require unknown_0x36568abe(?????) == uint32(call.func_hash) >> 224
                            require not msg.value
                            require calldata.size - 4 >= 64
                            require cd[36] == address(cd[36])
                            if address(cd[36]) != msg.sender:
                                revert with 0, 'AccessControl: can only renounce roles for self'
                            if roleAdmin[cd[4]][address(cd[36])].field_0:
                                roleAdmin[cd[4]][address(cd[36])].field_0 = 0
                                emit RoleRevoked(cd[4], address(cd[36]), msg.sender);
                            if roleMember[cd[4]][1][address(cd[36])].field_0:
                                if roleMember[cd[4]][1][address(cd[36])].field_0 < 1:
                                    revert with 0, 17
                                if roleMember[cd[4]].field_0 < 1:
                                    revert with 0, 17
                                if roleMember[cd[4]].field_0 - 1 != roleMember[cd[4]][1][address(cd[36])].field_0 - 1:
                                    if roleMember[cd[4]].field_0 - 1 >= roleMember[cd[4]].field_0:
                                        revert with 0, 50
                                    if roleMember[cd[4]][1][address(cd[36])].field_0 - 1 >= roleMember[cd[4]].field_0:
                                        revert with 0, 50
                                    roleMember[cd[4]][roleMember[cd[4]][1][address(cd[36])].field_0].field_0 = roleMember[cd[4]][roleMember[cd[4]].field_0].field_0
                                    roleMember[cd[4]][1][roleMember[cd[4]][roleMember[cd[4]].field_0].field_0].field_0 = roleMember[cd[4]][1][address(cd[36])].field_0
                                if not roleMember[cd[4]].field_0:
                                    revert with 0, 49
                                roleMember[cd[4]][roleMember[cd[4]].field_0].field_0 = 0
                                roleMember[cd[4]].field_0--
                                roleMember[cd[4]][1][address(cd[36])].field_0 = 0
            else:
                if unknown_0x82a36524(?????) <= uint32(call.func_hash) >> 224:
                    if unknown_0x82a36524(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_82a36524
                    if unknown_0x88ea41b9(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        if not roleAdmin[address(msg.sender)].field_0:
                            revert with 0, 'must have admin role'
                        minBet = cd[4]
                    if unknown_0x9010d07c(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 64
                        if cd[36] >= roleMember[cd[4]].field_0:
                            revert with 0, 50
                        return roleMember[cd[4]][cd[36]].field_0
                    require unknown_0x91d14854(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    return bool(roleAdmin[cd[4]][address(cd[36])].field_0)
                if uint32(call.func_hash) >> 224 != unknown_0x5b5ef8de(?????):
                    if uint32(call.func_hash) >> 224 != unknown_0x697a391c(?????):
                        if unknown_0x6df9822a(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            return sha3(cd[4])
                        require unknown_0x7c3fcc38(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require cd[4] == address(cd[4])
                        return userReferrer[cd[4]].field_0, userReferrer[cd[4]].field_256
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require cd[4] == address(cd[4])
                    require cd[36] == address(cd[36])
                    if not roleAdmin[address(msg.sender)].field_0:
                        revert with 0, 'must have admin role'
                    if cd[68] > 10000:
                        revert with 0, 'use percentage points'
                    userReferrer[address(cd[4])].field_0 = address(cd[36])
                    userReferrer[address(cd[4])].field_256 = cd[68]
                else:
                    require calldata.size - 4 >= 224
                    require 35 < calldata.size
                    require calldata.size >= 132
                    idx = 0
                    s = 4
                    t = 128
                    while idx < 4:
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require cd[196] == address(cd[196])
                    if msg.sender != tx.origin:
                        revert with 0, 'no indirect calls'
                    if ext_code.size(msg.sender):
                        revert with 0, 'no indirect calls'
                    if mem[192] != msg.value:
                        revert with 0, 'amount missmatch'
                    if mem[192] < minBet:
                        revert with 0, 'bet amount too low'
                    if mem[160]:
                        if mem[160] != 1:
                            revert with 0, 'invalid rollunder or rollover value'
                    if 1 >= mem[224]:
                        revert with 0, 'invalid modulo'
                    if msg.sender == address(cd[196]):
                        revert with 0, 'invalid referrer address'
                    if not userReferrer[msg.sender].field_0:
                        if address(cd[196]):
                            userReferrer[msg.sender].field_0 = address(cd[196])
                        else:
                            if 0 >= roleMember[0].field_0:
                                revert with 0, 50
                            userReferrer[msg.sender].field_0 = roleMember[0].field_0
                        userReferrer[msg.sender].field_256 = sub_82a36524
                    if not mem[160]:
                        if houseEdge > !userReferrer[msg.sender].field_256:
                            revert with 0, 17
                        if 0 >= mem[128]:
                            revert with 0, 'win probability out of range'
                        if mem[128] > mem[224]:
                            revert with 0, 'win probability out of range'
                        if mem[192] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[192]:
                            revert with 0, 17
                        if mem[192] < (houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000:
                            revert with 0, 17
                        if mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000) and mem[224] > -1 / mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000):
                            revert with 0, 17
                        if not mem[128]:
                            revert with 0, 18
                        if (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[128] < mem[192]:
                            revert with 0, 17
                        if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                            revert with 0, 17
                        if ((mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[128]) - mem[192] > eth.balance(this.address) * sub_cca7273b / 10000:
                            revert with 0, 'profit exceeds max win amount'
                    else:
                        if mem[224] < 1:
                            revert with 0, 17
                        if mem[224] - 1 < mem[128]:
                            revert with 0, 17
                        if houseEdge > !userReferrer[msg.sender].field_256:
                            revert with 0, 17
                        if 0 >= mem[224] + -mem[128] - 1:
                            revert with 0, 'win probability out of range'
                        if mem[224] + -mem[128] - 1 > mem[224]:
                            revert with 0, 'win probability out of range'
                        if mem[192] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[192]:
                            revert with 0, 17
                        if mem[192] < (houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000:
                            revert with 0, 17
                        if mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000) and mem[224] > -1 / mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000):
                            revert with 0, 17
                        if not mem[224] + -mem[128] - 1:
                            revert with 0, 18
                        if (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1 < mem[192]:
                            revert with 0, 17
                        if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                            revert with 0, 17
                        if ((mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1) - mem[192] > eth.balance(this.address) * sub_cca7273b / 10000:
                            revert with 0, 'profit exceeds max win amount'
                    if sub_cade7ac6[msg.sender][cd[164]][cd[132]][block.number][mem[128 len 128]]:
                        revert with 0, 'bet hash already exists'
                    sub_cade7ac6[msg.sender][cd[164]][cd[132]][block.number][mem[128 len 128]] = block.timestamp
                    emit 0xb6614807: msg.sender, cd[164], cd[132], block.number, mem[128 len 128], sha3(msg.sender, cd[164], cd[132], block.number, mem[128 len 128])
        else:
            if unknown_0xd547741f(?????) <= uint32(call.func_hash) >> 224:
                if unknown_0xeb3ba72f(?????) > uint32(call.func_hash) >> 224:
                    if uint32(call.func_hash) >> 224 != unknown_0xd547741f(?????):
                        if unknown_0xd667dcd7(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return houseEdge
                        if unknown_0xd7d59b11(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            require calldata.size - 4 >= 32
                            if not roleAdmin[address(msg.sender)].field_0:
                                revert with 0, 'must have admin role'
                            if cd[4] > 10000:
                                revert with 0, 'use percentage points'
                            houseEdge = cd[4]
                        require unknown_0xe229df5c(?????) == uint32(call.func_hash) >> 224
                        require not msg.value
                        require calldata.size - 4 >= 96
                        if houseEdge > !userReferrer[msg.sender].field_256:
                            revert with 0, 17
                        if 0 >= cd[68]:
                            revert with 0, 'win probability out of range'
                        if cd[68] > cd[36]:
                            revert with 0, 'win probability out of range'
                        if cd[4] and houseEdge + userReferrer[msg.sender].field_256 > -1 / cd[4]:
                            revert with 0, 17
                        if cd[4] < (houseEdge * cd[4]) + (userReferrer[msg.sender].field_256 * cd[4]) / 10000:
                            revert with 0, 17
                        if cd[4] - ((houseEdge * cd[4]) + (userReferrer[msg.sender].field_256 * cd[4]) / 10000) and cd[36] > -1 / cd[4] - ((houseEdge * cd[4]) + (userReferrer[msg.sender].field_256 * cd[4]) / 10000):
                            revert with 0, 17
                        if not cd[68]:
                            revert with 0, 18
                        return ((cd[4] * cd[36]) - ((houseEdge * cd[4]) + (userReferrer[msg.sender].field_256 * cd[4]) / 10000 * cd[36]) / cd[68])
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require cd[36] == address(cd[36])
                    if not roleAdmin[roleAdmin[cd[4]].field_256][address(msg.sender)].field_0:
                        mem[160 len 42] = call.data[calldata.size len 42]
                        idx = 41
                        s = address(msg.sender)
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 42:
                                revert with 0, 50
                            mem[idx + 160 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        if msg.sender + 10240:
                            revert with 0, 'Strings: hex length insufficient'
                        mem[256 len 66] = call.data[calldata.size len 66]
                        idx = 65
                        s = roleAdmin[cd[4]].field_256
                        while idx > 1:
                            if s % 16 >= 16:
                                revert with 0, 50
                            if idx >= 66:
                                revert with 0, 50
                            mem[idx + 256 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                            if not idx:
                                revert with 0, 17
                            idx = idx - 1
                            s = Mask(252, 0, s) * 0.0625
                            continue 
                        if roleAdmin[cd[4]].field_256 + 16384:
                            revert with 0, 'Strings: hex length insufficient'
                        revert with 0, 32, 148, 'AccessControl: account ', mem[192 len 42], 8297, mem[320 len 66], 0, 0 >> 928, 0
                    if roleAdmin[cd[4]][address(cd[36])].field_0:
                        roleAdmin[cd[4]][address(cd[36])].field_0 = 0
                        emit RoleRevoked(cd[4], address(cd[36]), msg.sender);
                    if roleMember[cd[4]][1][address(cd[36])].field_0:
                        if roleMember[cd[4]][1][address(cd[36])].field_0 < 1:
                            revert with 0, 17
                        if roleMember[cd[4]].field_0 < 1:
                            revert with 0, 17
                        if roleMember[cd[4]].field_0 - 1 != roleMember[cd[4]][1][address(cd[36])].field_0 - 1:
                            if roleMember[cd[4]].field_0 - 1 >= roleMember[cd[4]].field_0:
                                revert with 0, 50
                            if roleMember[cd[4]][1][address(cd[36])].field_0 - 1 >= roleMember[cd[4]].field_0:
                                revert with 0, 50
                            roleMember[cd[4]][roleMember[cd[4]][1][address(cd[36])].field_0].field_0 = roleMember[cd[4]][roleMember[cd[4]].field_0].field_0
                            roleMember[cd[4]][1][roleMember[cd[4]][roleMember[cd[4]].field_0].field_0].field_0 = roleMember[cd[4]][1][address(cd[36])].field_0
                        if not roleMember[cd[4]].field_0:
                            revert with 0, 49
                        roleMember[cd[4]][roleMember[cd[4]].field_0].field_0 = 0
                        roleMember[cd[4]].field_0--
                        roleMember[cd[4]][1][address(cd[36])].field_0 = 0
                if unknown_0xeb3ba72f(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require cd[4] == address(cd[4])
                    return sub_eb3ba72f[cd[4]]
                if unknown_0xed01bf29(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return eth.balance(this.address)
                if unknown_0xef824cfe(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 256
                    require cd[4] == address(cd[4])
                    require 163 < calldata.size
                    require calldata.size >= 260
                    idx = 0
                    s = 132
                    t = 288
                    while idx < 4:
                        mem[t] = cd[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    return sha3(address(cd[4]), cd[36], cd[68], cd[100], mem[288 len 128])
                require unknown_0xf72afe7d(?????) == uint32(call.func_hash) >> 224
                require not msg.value
                require calldata.size - 4 >= 320
                require cd[4] == address(cd[4])
                require 131 < calldata.size
                require calldata.size >= 228
                idx = 1
                s = 132
                t = 160
                while idx < 4:
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) / 1000 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) < 1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) / 1000:
                    revert with 0, 17
                if not mem[224]:
                    revert with 0, 18
                if not mem[160]:
                    if sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) - (1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) / 1000) % mem[224] < cd[100]:
                        if houseEdge > !userReferrer[msg.sender].field_256:
                            revert with 0, 17
                        if 0 >= cd[100]:
                            revert with 0, 'win probability out of range'
                        if cd[100] > mem[224]:
                            revert with 0, 'win probability out of range'
                        if mem[192] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[192]:
                            revert with 0, 17
                        if mem[192] < (houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000:
                            revert with 0, 17
                        if mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000) and mem[224] > -1 / mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000):
                            revert with 0, 17
                        if not cd[100]:
                            revert with 0, 18
                        return sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) - (1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) / 1000) % mem[224], 
                               (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / cd[100],
                               cd[4] << 192,
                               sha3(cd[260]),
                               cd[228],
                               cd[36],
                               cd[100],
                               mem[160 len 96],
                               sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96])
                    if not mem[160]:
                        return sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) - (1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) / 1000) % mem[224], 
                               0,
                               cd[4] << 192,
                               sha3(cd[260]),
                               cd[228],
                               cd[36],
                               cd[100],
                               mem[160 len 96],
                               sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96])
                if sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) - (1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) / 1000) % mem[224] <= cd[100]:
                    return sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) - (1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) / 1000) % mem[224], 
                           0,
                           cd[4] << 192,
                           sha3(cd[260]),
                           cd[228],
                           cd[36],
                           cd[100],
                           mem[160 len 96],
                           sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96])
                if mem[224] < 1:
                    revert with 0, 17
                if mem[224] - 1 < cd[100]:
                    revert with 0, 17
                if houseEdge > !userReferrer[msg.sender].field_256:
                    revert with 0, 17
                if 0 >= mem[224] + -cd[100] - 1:
                    revert with 0, 'win probability out of range'
                if mem[224] + -cd[100] - 1 > mem[224]:
                    revert with 0, 'win probability out of range'
                if mem[192] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[192]:
                    revert with 0, 17
                if mem[192] < (houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000:
                    revert with 0, 17
                if mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000) and mem[224] > -1 / mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000):
                    revert with 0, 17
                if not mem[224] + -cd[100] - 1:
                    revert with 0, 18
                return sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) - (1000 * sha3(sha3(cd[260], sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96]), cd[68], cd[292])) / 1000) % mem[224], 
                       (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -cd[100] - 1,
                       cd[4] << 192,
                       sha3(cd[260]),
                       cd[228],
                       cd[36],
                       cd[100],
                       mem[160 len 96],
                       sha3(cd[4] << 192, sha3(cd[260]), cd[228], cd[36], cd[100], mem[160 len 96])
            if unknown_0xc6a73fc7(?????) <= uint32(call.func_hash) >> 224:
                if uint32(call.func_hash) >> 224 != unknown_0xc6a73fc7(?????):
                    if unknown_0xca15c873(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return roleMember[cd[4]].field_0
                    if unknown_0xcade7ac6(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        return sub_cade7ac6[cd[4]]
                    require unknown_0xcca7273b(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    return sub_cca7273b
                require not msg.value
                require calldata.size - 4 >= 32
                if not roleAdmin[address(msg.sender)].field_0:
                    revert with 0, 'must have admin role'
                if cd[4] > 10000:
                    revert with 0, 'use percentage points'
                sub_cca7273b = cd[4]
            else:
                if unknown_0x9619367d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return minBet
                if unknown_0xa217fddf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return 0
                if uint32(call.func_hash) >> 224 != unknown_0xa4efad90(?????):
                    require unknown_0xb1d2b053(?????) == uint32(call.func_hash) >> 224
                    require not msg.value
                    require calldata.size - 4 >= 32
                    return sha3(cd[4])
                require not msg.value
                require calldata.size - 4 >= 288
                require cd[4] == address(cd[4])
                require 99 < calldata.size
                require calldata.size >= 196
                idx = 0
                s = 68
                t = 128
                while idx < 4:
                    mem[t] = cd[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                if not roleAdmin[address(msg.sender)].field_0:
                    revert with 0, 'must have admin role'
                if block.number <= cd[36]:
                    revert with 0, 'bet not ready to be finished'
                if sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) / 1000 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
                    revert with 0, 17
                if sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) < 1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) / 1000:
                    revert with 0, 17
                if not mem[224]:
                    revert with 0, 18
                if mem[160]:
                    if sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[224] <= mem[128]:
                        if not sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[128 len 128]]:
                            revert with 0, 'bet not found'
                        if block.number < 256:
                            revert with 0, 17
                        sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[128 len 128]] = 0
                        if cd[36] < block.number - 256:
                            emit BetExpired(cd[4] << 192, mem[192], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]));
                            call uint64(cd[4]) << 96 with:
                               value mem[192] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if mem[192] and houseEdge > -1 / mem[192]:
                                revert with 0, 17
                            if mem[192] and userReferrer[uint64(cd[4]) << 96].field_256 > -1 / mem[192]:
                                revert with 0, 17
                            if 0 > mem[192]:
                                if 0 < mem[192]:
                                    revert with 0, 17
                                if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if -mem[192] >= eth.balance(this.address) * sub_cca7273b / 10000:
                                    call uint64(cd[4]) << 96 with:
                                       value mem[192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call uint64(cd[4]) << 96 with:
                                         gas 2300 wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 >= roleMember[0].field_0:
                                        revert with 0, 50
                                    call roleMember[0].field_0 with:
                                       value mem[192] * houseEdge / 10000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call userReferrer[uint64(cd[4]) << 96].field_0 with:
                                       value mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                         gas 2300 * is_zero(value) wei
                                    if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                        revert with 0, 17
                                    sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                            if 0 >= roleMember[0].field_0:
                                revert with 0, 50
                            call roleMember[0].field_0 with:
                               value mem[192] * houseEdge / 10000 wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            call userReferrer[uint64(cd[4]) << 96].field_0 with:
                               value mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                 gas 2300 * is_zero(value) wei
                            if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                revert with 0, 17
                            sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                            emit 0xb258988c: cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128], sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[224], 0, sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128])
                    else:
                        if mem[224] < 1:
                            revert with 0, 17
                        if mem[224] - 1 < mem[128]:
                            revert with 0, 17
                        if houseEdge > !userReferrer[msg.sender].field_256:
                            revert with 0, 17
                        if 0 >= mem[224] + -mem[128] - 1:
                            revert with 0, 'win probability out of range'
                        if mem[224] + -mem[128] - 1 > mem[224]:
                            revert with 0, 'win probability out of range'
                        if mem[192] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[192]:
                            revert with 0, 17
                        if mem[192] < (houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000:
                            revert with 0, 17
                        if mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000) and mem[224] > -1 / mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000):
                            revert with 0, 17
                        if not mem[224] + -mem[128] - 1:
                            revert with 0, 18
                        if not sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[128 len 128]]:
                            revert with 0, 'bet not found'
                        if block.number < 256:
                            revert with 0, 17
                        sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[128 len 128]] = 0
                        if cd[36] < block.number - 256:
                            emit BetExpired(cd[4] << 192, mem[192], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]));
                            call uint64(cd[4]) << 96 with:
                               value mem[192] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if mem[192] and houseEdge > -1 / mem[192]:
                                revert with 0, 17
                            if mem[192] and userReferrer[uint64(cd[4]) << 96].field_256 > -1 / mem[192]:
                                revert with 0, 17
                            if (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1 > mem[192]:
                                if (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1 < mem[192]:
                                    revert with 0, 17
                                if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if ((mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1) - mem[192] >= eth.balance(this.address) * sub_cca7273b / 10000:
                                    call uint64(cd[4]) << 96 with:
                                       value mem[192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call uint64(cd[4]) << 96 with:
                                       value (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 >= roleMember[0].field_0:
                                        revert with 0, 50
                                    call roleMember[0].field_0 with:
                                       value mem[192] * houseEdge / 10000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call userReferrer[uint64(cd[4]) << 96].field_0 with:
                                       value mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                         gas 2300 * is_zero(value) wei
                                    if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                        revert with 0, 17
                                    sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                            if not (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1:
                                if 0 >= roleMember[0].field_0:
                                    revert with 0, 50
                                call roleMember[0].field_0 with:
                                   value mem[192] * houseEdge / 10000 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call userReferrer[uint64(cd[4]) << 96].field_0 with:
                                   value mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                     gas 2300 * is_zero(value) wei
                                if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                    revert with 0, 17
                                sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                            emit 0xb258988c: cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128], sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[224], (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1, sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128])
                else:
                    if sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[224] < mem[128]:
                        if houseEdge > !userReferrer[msg.sender].field_256:
                            revert with 0, 17
                        if 0 >= mem[128]:
                            revert with 0, 'win probability out of range'
                        if mem[128] > mem[224]:
                            revert with 0, 'win probability out of range'
                        if mem[192] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[192]:
                            revert with 0, 17
                        if mem[192] < (houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000:
                            revert with 0, 17
                        if mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000) and mem[224] > -1 / mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000):
                            revert with 0, 17
                        if not mem[128]:
                            revert with 0, 18
                        if not sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[128 len 128]]:
                            revert with 0, 'bet not found'
                        if block.number < 256:
                            revert with 0, 17
                        sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[128 len 128]] = 0
                        if cd[36] < block.number - 256:
                            emit BetExpired(cd[4] << 192, mem[192], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]));
                            call uint64(cd[4]) << 96 with:
                               value mem[192] wei
                                 gas 2300 * is_zero(value) wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                        else:
                            if mem[192] and houseEdge > -1 / mem[192]:
                                revert with 0, 17
                            if mem[192] and userReferrer[uint64(cd[4]) << 96].field_256 > -1 / mem[192]:
                                revert with 0, 17
                            if (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[128] > mem[192]:
                                if (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[128] < mem[192]:
                                    revert with 0, 17
                                if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                                    revert with 0, 17
                                if ((mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[128]) - mem[192] >= eth.balance(this.address) * sub_cca7273b / 10000:
                                    call uint64(cd[4]) << 96 with:
                                       value mem[192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    call uint64(cd[4]) << 96 with:
                                       value (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[128] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if 0 >= roleMember[0].field_0:
                                        revert with 0, 50
                                    call roleMember[0].field_0 with:
                                       value mem[192] * houseEdge / 10000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call userReferrer[uint64(cd[4]) << 96].field_0 with:
                                       value mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                         gas 2300 * is_zero(value) wei
                                    if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                        revert with 0, 17
                                    sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                            if not (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[128]:
                                if 0 >= roleMember[0].field_0:
                                    revert with 0, 50
                                call roleMember[0].field_0 with:
                                   value mem[192] * houseEdge / 10000 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call userReferrer[uint64(cd[4]) << 96].field_0 with:
                                   value mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                     gas 2300 * is_zero(value) wei
                                if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                    revert with 0, 17
                                sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                            emit 0xb258988c: cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128], sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[224], (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[128], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128])
                    else:
                        if not mem[160]:
                            if not sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[128 len 128]]:
                                revert with 0, 'bet not found'
                            if block.number < 256:
                                revert with 0, 17
                            sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[128 len 128]] = 0
                            if cd[36] < block.number - 256:
                                emit BetExpired(cd[4] << 192, mem[192], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]));
                                call uint64(cd[4]) << 96 with:
                                   value mem[192] wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                            else:
                                if mem[192] and houseEdge > -1 / mem[192]:
                                    revert with 0, 17
                                if mem[192] and userReferrer[uint64(cd[4]) << 96].field_256 > -1 / mem[192]:
                                    revert with 0, 17
                                if 0 > mem[192]:
                                    if 0 < mem[192]:
                                        revert with 0, 17
                                    if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                                        revert with 0, 17
                                    if -mem[192] >= eth.balance(this.address) * sub_cca7273b / 10000:
                                        call uint64(cd[4]) << 96 with:
                                           value mem[192] wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                    else:
                                        call uint64(cd[4]) << 96 with:
                                             gas 2300 wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        if 0 >= roleMember[0].field_0:
                                            revert with 0, 50
                                        call roleMember[0].field_0 with:
                                           value mem[192] * houseEdge / 10000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call userReferrer[uint64(cd[4]) << 96].field_0 with:
                                           value mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                             gas 2300 * is_zero(value) wei
                                        if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                            revert with 0, 17
                                        sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                                if 0 >= roleMember[0].field_0:
                                    revert with 0, 50
                                call roleMember[0].field_0 with:
                                   value mem[192] * houseEdge / 10000 wei
                                     gas 2300 * is_zero(value) wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                call userReferrer[uint64(cd[4]) << 96].field_0 with:
                                   value mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                     gas 2300 * is_zero(value) wei
                                if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                    revert with 0, 17
                                sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                                emit 0xb258988c: cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128], sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[224], 0, sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128])
                        else:
                            if sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[224] <= mem[128]:
                                if not sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[128 len 128]]:
                                    revert with 0, 'bet not found'
                                if block.number < 256:
                                    revert with 0, 17
                                sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[128 len 128]] = 0
                                if cd[36] < block.number - 256:
                                    emit BetExpired(cd[4] << 192, mem[192], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]));
                                    call uint64(cd[4]) << 96 with:
                                       value mem[192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if mem[192] and houseEdge > -1 / mem[192]:
                                        revert with 0, 17
                                    if mem[192] and userReferrer[uint64(cd[4]) << 96].field_256 > -1 / mem[192]:
                                        revert with 0, 17
                                    if 0 > mem[192]:
                                        if 0 < mem[192]:
                                            revert with 0, 17
                                        if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                                            revert with 0, 17
                                        if -mem[192] >= eth.balance(this.address) * sub_cca7273b / 10000:
                                            call uint64(cd[4]) << 96 with:
                                               value mem[192] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            call uint64(cd[4]) << 96 with:
                                                 gas 2300 wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 >= roleMember[0].field_0:
                                                revert with 0, 50
                                            call roleMember[0].field_0 with:
                                               value mem[192] * houseEdge / 10000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call userReferrer[uint64(cd[4]) << 96].field_0 with:
                                               value mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                                revert with 0, 17
                                            sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                                    if 0 >= roleMember[0].field_0:
                                        revert with 0, 50
                                    call roleMember[0].field_0 with:
                                       value mem[192] * houseEdge / 10000 wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    call userReferrer[uint64(cd[4]) << 96].field_0 with:
                                       value mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                         gas 2300 * is_zero(value) wei
                                    if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                        revert with 0, 17
                                    sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                                    emit 0xb258988c: cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128], sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[224], 0, sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128])
                            else:
                                if mem[224] < 1:
                                    revert with 0, 17
                                if mem[224] - 1 < mem[128]:
                                    revert with 0, 17
                                if houseEdge > !userReferrer[msg.sender].field_256:
                                    revert with 0, 17
                                if 0 >= mem[224] + -mem[128] - 1:
                                    revert with 0, 'win probability out of range'
                                if mem[224] + -mem[128] - 1 > mem[224]:
                                    revert with 0, 'win probability out of range'
                                if mem[192] and houseEdge + userReferrer[msg.sender].field_256 > -1 / mem[192]:
                                    revert with 0, 17
                                if mem[192] < (houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000:
                                    revert with 0, 17
                                if mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000) and mem[224] > -1 / mem[192] - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000):
                                    revert with 0, 17
                                if not mem[224] + -mem[128] - 1:
                                    revert with 0, 18
                                if not sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[128 len 128]]:
                                    revert with 0, 'bet not found'
                                if block.number < 256:
                                    revert with 0, 17
                                sub_cade7ac6[cd[4] << 192][sha3(cd[228])][cd[196]][cd[36]][mem[128 len 128]] = 0
                                if cd[36] < block.number - 256:
                                    emit BetExpired(cd[4] << 192, mem[192], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]));
                                    call uint64(cd[4]) << 96 with:
                                       value mem[192] wei
                                         gas 2300 * is_zero(value) wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    if mem[192] and houseEdge > -1 / mem[192]:
                                        revert with 0, 17
                                    if mem[192] and userReferrer[uint64(cd[4]) << 96].field_256 > -1 / mem[192]:
                                        revert with 0, 17
                                    if (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1 > mem[192]:
                                        if (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1 < mem[192]:
                                            revert with 0, 17
                                        if eth.balance(this.address) and sub_cca7273b > -1 / eth.balance(this.address):
                                            revert with 0, 17
                                        if ((mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1) - mem[192] >= eth.balance(this.address) * sub_cca7273b / 10000:
                                            call uint64(cd[4]) << 96 with:
                                               value mem[192] wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                        else:
                                            call uint64(cd[4]) << 96 with:
                                               value (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            if 0 >= roleMember[0].field_0:
                                                revert with 0, 50
                                            call roleMember[0].field_0 with:
                                               value mem[192] * houseEdge / 10000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            call userReferrer[uint64(cd[4]) << 96].field_0 with:
                                               value mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                                 gas 2300 * is_zero(value) wei
                                            if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                                revert with 0, 17
                                            sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                                    if not (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1:
                                        if 0 >= roleMember[0].field_0:
                                            revert with 0, 50
                                        call roleMember[0].field_0 with:
                                           value mem[192] * houseEdge / 10000 wei
                                             gas 2300 * is_zero(value) wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        call userReferrer[uint64(cd[4]) << 96].field_0 with:
                                           value mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000 wei
                                             gas 2300 * is_zero(value) wei
                                        if sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] > !(mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000):
                                            revert with 0, 17
                                        sub_eb3ba72f[stor6[uint64(cd[4]) << 96].field_0] += mem[192] * userReferrer[uint64(cd[4]) << 96].field_256 / 10000
                                    emit 0xb258988c: cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128], sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) - (1000 * sha3(sha3(cd[228], sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128]), block.hash(cd[36]), cd[260])) / 1000) % mem[224], (mem[192] * mem[224]) - ((houseEdge * mem[192]) + (userReferrer[msg.sender].field_256 * mem[192]) / 10000 * mem[224]) / mem[224] + -mem[128] - 1, sha3(cd[4] << 192, sha3(cd[228]), cd[196], cd[36], mem[128 len 128])
}



}
