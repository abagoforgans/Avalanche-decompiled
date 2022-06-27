contract main {




// =====================  Runtime code  =====================


#
#  - sub_1620756d(?)
#  - sub_256247e6(?)
#  - sub_6ca29442(?)
#  - _fallback()
#
const sub_069321b0(?) = 0

const DEFAULT_ADMIN_ROLE = 0

const GOVERNANCE_ROLE = 0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647


address feeCollectorAddress;
uint256 sub_1cf28a36;
uint256 minimumBid;
uint256 sub_99496e2a;
uint256 feeNumerator;
address nftContractAddress;
uint256 sub_b629188c;
uint256 minTimeLock;
mapping of struct stor8;
mapping of struct sub_602bf227;
mapping of uint256 stor11;
mapping of uint8 stor12;
mapping of uint256 sub_930ea1c2;
array of struct stor14;
mapping of uint256 sub_429b7f3f;
mapping of address sub_5e81e7f1;
mapping of uint256 sub_bfbf3233;
uint8 stor18;
uint8 stor18; offset 8
uint16 stor18;
uint8 paused;
address stor119;
mapping of struct roleAdmin;
array of struct roleMember;
uint256 stor319;
uint256 stor369;

function sub_1cf28a36(?) {
    return sub_1cf28a36
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_429b7f3f(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg1.length)) + 97 < 96 or ceil32(ceil32(arg1.length)) + 97 > test266151307():
        revert with 0, 65
    require arg1 + arg1.length + 36 <= calldata.size
    return sub_429b7f3f[arg1[all]]
}

function paused() {
    return bool(paused)
}

function sub_5e81e7f1(?) {
    require calldata.size - 4 >= 32
    return sub_5e81e7f1[arg1]
}

function sub_602bf227(?) {
    require calldata.size - 4 >= 32
    return address(sub_602bf227[arg1].field_0), 
           sub_602bf227[arg1].field_256,
           sub_602bf227[arg1].field_512,
           sub_602bf227[arg1].field_768,
           bool(uint8(sub_602bf227[arg1].field_1024))
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return address(roleMember[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_930ea1c2(?) {
    require calldata.size - 4 >= 32
    return sub_930ea1c2[arg1]
}

function sub_99496e2a(?) {
    return sub_99496e2a
}

function sub_b629188c(?) {
    return sub_b629188c
}

function sub_bfbf3233(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_bfbf3233[arg1]
}

function feeCollector() {
    return feeCollectorAddress
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function minTimeLock() {
    return minTimeLock
}

function minimumBid() {
    return minimumBid
}

function nftContract() {
    return nftContractAddress
}

function sub_e5675219(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_e5675219[address(arg1)].field_256
}

function sub_e83d6f07(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    return bool(stor12[arg1][arg2])
}

function feeNumerator() {
    return feeNumerator
}

function isTrustedForwarder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (stor119 == arg1)
}

function userBalance() {
    if stor119 != msg.sender:
        return stor11[address(msg.sender)]
    return stor11[Mask(64, 96, cd[(calldata.size - 20)]) << 96]
}

function sub_76ba47ab(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if sub_e5675219[address(arg1)].field_0:
        return sub_e5675219[address(arg1)].field_0
    return minimumBid
}

function sub_21e47049(?) {
    require calldata.size - 4 >= 32
    if cd[4] <= minimumBid:
        revert with 0, '', 0
    if stor119 != msg.sender:
        sub_e5675219[address(msg.sender)].field_0 = cd[4]
    else:
        sub_e5675219[Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0 = cd[4]
}

function blockUser(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor119 != msg.sender:
        stor12[address(msg.sender)][address(arg1)] = 1
        emit Blocked(msg.sender, arg1);
    else:
        stor12[Mask(64, 96, cd[(calldata.size - 20)]) << 96][address(arg1)] = 1
        emit Blocked(Mask(64, 96, cd[(calldata.size - 20)]) >> 96, arg1);
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

function pause() {
    if stor119 != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721PresetMinterPauserAutoId: must have pauser role to pause'
    else:
        if not uint8(roleAdmin[0][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721PresetMinterPauserAutoId: must have pauser role to pause'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    if stor119 != msg.sender:
        emit Paused(msg.sender);
    else:
        emit Paused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function unpause() {
    if stor119 != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721PresetMinterPauserAutoId: must have pauser role to unpause'
    else:
        if not uint8(roleAdmin[0][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC721PresetMinterPauserAutoId: must have pauser role to unpause'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    if stor119 != msg.sender:
        emit Unpaused(msg.sender);
    else:
        emit Unpaused((Mask(64, 96, cd[(calldata.size - 20)]) >> 96));
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if stor319 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor319 = 2
    if stor119 != msg.sender:
        if arg1 > stor11[address(msg.sender)]:
            revert with 0, '', 0
    else:
        if arg1 > stor11[Mask(64, 96, cd[(calldata.size - 20)]) << 96]:
            revert with 0, '', 0
    if stor119 != msg.sender:
        if stor11[address(msg.sender)] < arg1:
            revert with 0, 17
        stor11[address(msg.sender)] -= arg1
    else:
        if stor11[Mask(64, 96, cd[(calldata.size - 20)]) << 96] < arg1:
            revert with 0, 17
        stor11[Mask(64, 96, cd[(calldata.size - 20)]) << 96] -= arg1
    if eth.balance(this.address) < arg1:
        revert with 0, 'Address: insufficient balance'
    if stor119 != msg.sender:
        call msg.sender with:
           value arg1 wei
             gas gas_remaining wei
    else:
        call Mask(64, 96, cd[(calldata.size - 20)]) >> 96 with:
           value arg1 wei
             gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Address: unable to send value, recipient may have reverted'
    if stor119 != msg.sender:
        emit Withdraw(arg1, msg.sender);
    else:
        emit Withdraw(arg1, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
    stor319 = 1
}

function sub_067f661d(?) {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if not address(stor8[cd[4]].field_1024):
        revert with 0, '', 0
    if stor119 != msg.sender:
        if address(stor8[cd[4]].field_1024) != msg.sender:
            revert with 0, '', 0
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(stor8[cd[4]].field_1024):
            revert with 0, '', 0
    require ext_code.size(0x9265c442b51fea9fc49b87471e16073dbe4b9069)
    delegate 0x9265c442b51fea9fc49b87471e16073dbe4b9069.0x96039408 with:
         gas gas_remaining wei
        args sha3(cd[4], 8)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if stor119 != msg.sender:
        if stor11[address(msg.sender)] > !stor8[cd[4]].field_512:
            revert with 0, 17
        stor11[address(msg.sender)] += stor8[cd[4]].field_512
    else:
        if stor11[Mask(64, 96, cd[(calldata.size - 20)]) << 96] > !stor8[cd[4]].field_512:
            revert with 0, 17
        stor11[Mask(64, 96, cd[(calldata.size - 20)]) << 96] += stor8[cd[4]].field_512
    if stor119 != msg.sender:
        emit 0x71003662: stor8[cd[4]].field_512, msg.sender
        emit 0xb663b69f: stor8[cd[4]].field_512, cd[4], msg.sender
    else:
        emit 0x71003662: stor8[cd[4]].field_512, Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        emit 0xb663b69f: stor8[cd[4]].field_512, cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96
}

function sub_f224aa4f(?) {
    require calldata.size - 4 >= 32
    if paused:
        revert with 0, 'Pausable: paused'
    if not address(sub_602bf227[cd[4]].field_0):
        revert with 0, '', 0
    if stor119 != msg.sender:
        if address(sub_602bf227[cd[4]].field_0) != msg.sender:
            revert with 0, '', 0
    else:
        if Mask(64, 96, cd[(calldata.size - 20)]) >> 96 != address(sub_602bf227[cd[4]].field_0):
            revert with 0, '', 0
    require ext_code.size(0x9265c442b51fea9fc49b87471e16073dbe4b9069)
    delegate 0x9265c442b51fea9fc49b87471e16073dbe4b9069.0x2b2e7477 with:
         gas gas_remaining wei
        args sha3(cd[4], 9), sha3(sub_602bf227[cd[4]].field_768, 8)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if stor119 != msg.sender:
        if stor11[address(msg.sender)] > !sub_602bf227[cd[4]].field_256:
            revert with 0, 17
        stor11[address(msg.sender)] += sub_602bf227[cd[4]].field_256
    else:
        if stor11[Mask(64, 96, cd[(calldata.size - 20)]) << 96] > !sub_602bf227[cd[4]].field_256:
            revert with 0, 17
        stor11[Mask(64, 96, cd[(calldata.size - 20)]) << 96] += sub_602bf227[cd[4]].field_256
    if stor119 != msg.sender:
        emit 0x71003662: sub_602bf227[cd[4]].field_256, msg.sender
        emit 0x8827140e: sub_602bf227[cd[4]].field_256, sub_602bf227[cd[4]].field_768, cd[4], msg.sender
    else:
        emit 0x71003662: sub_602bf227[cd[4]].field_256, Mask(64, 96, cd[(calldata.size - 20)]) >> 96
        emit 0x8827140e: sub_602bf227[cd[4]].field_256, sub_602bf227[cd[4]].field_768, cd[4], Mask(64, 96, cd[(calldata.size - 20)]) >> 96
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor119 != msg.sender:
        if arg2 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    else:
        if arg2 != Mask(64, 96, cd[(calldata.size - 20)]) >> 96:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        if stor119 != msg.sender:
            emit RoleRevoked(arg1, arg2, msg.sender);
        else:
            emit RoleRevoked(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
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

function balance() {
    if stor119 != msg.sender:
        if uint8(roleAdmin[0][address(msg.sender)].field_0):
            return eth.balance(this.address)
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
    else:
        if uint8(roleAdmin[0][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            return eth.balance(this.address)
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
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
        if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
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

function setMinimumBid(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor119 != msg.sender:
        if uint8(roleAdmin[0][address(msg.sender)].field_0):
            minimumBid = arg1
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
    else:
        if uint8(roleAdmin[0][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            minimumBid = arg1
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
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
        if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
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

function sub_a740d68e(?) payable {
    require calldata.size - 4 >= 32
    if not address(stor8[cd[4]].field_1024):
        revert with 0, '', 0
    require ext_code.size(0x9265c442b51fea9fc49b87471e16073dbe4b9069)
    delegate 0x9265c442b51fea9fc49b87471e16073dbe4b9069.0xd82bb12b with:
         gas gas_remaining wei
        args sha3(cd[4], 8)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x9265c442b51fea9fc49b87471e16073dbe4b9069)
    if stor119 != msg.sender:
        delegate 0x9265c442b51fea9fc49b87471e16073dbe4b9069.0xfeac0f70 with:
             gas gas_remaining wei
            args 9, cd[4], msg.sender, msg.value
    else:
        delegate 0x9265c442b51fea9fc49b87471e16073dbe4b9069.0xfeac0f70 with:
             gas gas_remaining wei
            args 9, cd[4], Mask(64, 96, cd[(calldata.size - 20)]) << 96, msg.value
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x9265c442b51fea9fc49b87471e16073dbe4b9069)
    delegate 0x9265c442b51fea9fc49b87471e16073dbe4b9069.0x8866614 with:
         gas gas_remaining wei
        args sha3(cd[4], 8), delegate.return_data[0], msg.value
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x9265c442b51fea9fc49b87471e16073dbe4b9069)
    if stor119 != msg.sender:
        delegate 0x9265c442b51fea9fc49b87471e16073dbe4b9069.0x1bebc41b with:
             gas gas_remaining wei
            args sha3(address(msg.sender), 10), delegate.return_data[0]
    else:
        delegate 0x9265c442b51fea9fc49b87471e16073dbe4b9069.0x1bebc41b with:
             gas gas_remaining wei
            args sha3(Mask(64, 96, cd[(calldata.size - 20)]) << 96, 10), delegate.return_data[0]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    if stor119 != msg.sender:
        emit 0xb8a61f32: msg.value, cd[4], delegate.return_data[0], msg.sender
    else:
        emit 0xb8a61f32: msg.value, cd[4], delegate.return_data[0], Mask(64, 96, cd[(calldata.size - 20)]) >> 96
}

function setTrustedForwarder(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor119 != msg.sender:
        if uint8(roleAdmin[0][address(msg.sender)].field_0):
            if not uint8(stor18.field_8):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
            stor119 = arg1
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
    else:
        if uint8(roleAdmin[0][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            if not uint8(stor18.field_8):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
            stor119 = arg1
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
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
        if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
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

function sub_7908bbe1(?) {
    require calldata.size - 4 >= 32
    if stor119 != msg.sender:
        if uint8(roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][address(msg.sender)].field_0):
            sub_99496e2a = cd[4]
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
        if not msg.sender + 10240:
            idx = 65
            s = 0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647
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
    else:
        if uint8(roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            sub_99496e2a = cd[4]
        idx = 41
        s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
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
        if not (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
            idx = 65
            s = 0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647
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
    revert with 0, 'Strings: hex length insufficient'
}

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor119 != msg.sender:
        if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
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
    else:
        if not uint8(roleAdmin[roleAdmin[arg1].field_256][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            mem[128 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
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
            if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
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
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            address(roleMember[arg1][roleMember[arg1].field_0].field_0) = arg2
            Mask(96, 0, roleMember[arg1][roleMember[arg1].field_0].field_160) = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
    else:
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
        if stor119 != msg.sender:
            emit RoleGranted(arg1, arg2, msg.sender);
        else:
            emit RoleGranted(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
        if not roleMember[arg1][1][address(arg2)].field_0:
            roleMember[arg1].field_0++
            address(roleMember[arg1][roleMember[arg1].field_0].field_0) = arg2
            Mask(96, 0, roleMember[arg1][roleMember[arg1].field_0].field_160) = 0
            roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function sub_dc407bb0(?) {
    require calldata.size - 4 >= 32
    require arg1 < stor14.length
    if bool(stor14[arg1].field_0):
        if bool(stor14[arg1].field_0) == uint255(stor14[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor14[arg1].field_0):
            if bool(stor14[arg1].field_0) == uint255(stor14[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor14[arg1].field_0):
                if 31 < uint255(stor14[arg1].field_0) * 0.5:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor14[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor14[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14[arg1].field_0), data=mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
        else:
            if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor14[arg1].field_1 % 128:
                if 31 < stor14[arg1].field_1 % 128:
                    mem[128] = stor14[arg1].field_0
                    idx = 128
                    s = 0
                    while stor14[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor14[arg1 + s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14[arg1].field_0), data=mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
        mem[ceil32(uint255(stor14[arg1].field_0) * 0.5) + 192 len ceil32(uint255(stor14[arg1].field_0) * 0.5)] = mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)]
        if ceil32(uint255(stor14[arg1].field_0) * 0.5) > uint255(stor14[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor14[arg1].field_0) * 0.5) + (uint255(stor14[arg1].field_0) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14[arg1].field_0), data=mem[128 len ceil32(uint255(stor14[arg1].field_0) * 0.5)], mem[(2 * ceil32(uint255(stor14[arg1].field_0) * 0.5)) + 192 len 2 * ceil32(uint255(stor14[arg1].field_0) * 0.5)]), 
    if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor14[arg1].field_0):
        if bool(stor14[arg1].field_0) == uint255(stor14[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor14[arg1].field_0):
            if 31 < uint255(stor14[arg1].field_0) * 0.5:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor14[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor14[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14[arg1].field_0 % 128, data=mem[128 len ceil32(stor14[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
    else:
        if bool(stor14[arg1].field_0) == stor14[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor14[arg1].field_1 % 128:
            if 31 < stor14[arg1].field_1 % 128:
                mem[128] = stor14[arg1].field_0
                idx = 128
                s = 0
                while stor14[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor14[arg1 + s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14[arg1].field_0 % 128, data=mem[128 len ceil32(stor14[arg1].field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor14[arg1].field_8)
    mem[ceil32(stor14[arg1].field_1 % 128) + 192 len ceil32(stor14[arg1].field_1 % 128)] = mem[128 len ceil32(stor14[arg1].field_1 % 128)]
    if ceil32(stor14[arg1].field_1 % 128) > stor14[arg1].field_1 % 128:
        mem[ceil32(stor14[arg1].field_1 % 128) + stor14[arg1].field_1 % 128 + 192] = 0
    return Array(len=stor14[arg1].field_0 % 128, data=mem[128 len ceil32(stor14[arg1].field_1 % 128)], mem[(2 * ceil32(stor14[arg1].field_1 % 128)) + 192 len 2 * ceil32(stor14[arg1].field_1 % 128)]), 
}

function sub_8cc1af13(?) {
    require calldata.size - 4 >= 96
    mem[96] = 6
    mem[128] = 0x3030323030330000000000000000000000000000000000000000000000000000
    if not address(stor8[arg1].field_1024):
        revert with 0, '', 0
    mem[0] = arg1
    mem[32] = 8
    if stor8[arg1].field_1536 < arg2:
        revert with 0, 17
    if arg3 <= stor8[arg1].field_1536 - arg2:
        if arg3 > test266151307():
            revert with 0, 65
        mem[160] = arg3
        mem[64] = (32 * arg3) + 192
        if arg3:
            mem[192 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        idx = 0
        while idx < arg3:
            mem[32] = 8
            if arg2 > !idx:
                revert with 0, 17
            if arg2 + idx >= stor8[arg1].field_1536:
                revert with 0, 50
            mem[0] = sha3(arg1, 8) + 6
            if idx >= arg3:
                revert with 0, 50
            mem[(32 * idx) + 192] = stor[('array', 6, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + arg2 + idx].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2 > !arg3:
            revert with 0, 17
        mem[(32 * arg3) + 192] = 64
        mem[(32 * arg3) + 256] = arg3
        s = 0
        s = 192
        t = mem[64] + 96
        while arg3 < arg3:
            mem[t] = mem[s]
            s = arg3 + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg3) + 224] = arg2 + arg3
    else:
        mem[0] = arg1
        mem[32] = 8
        if stor8[arg1].field_1536 < arg2:
            revert with 0, 17
        if stor8[arg1].field_1536 - arg2 > test266151307():
            revert with 0, 65
        mem[160] = stor8[arg1].field_1536 - arg2
        mem[64] = (32 * stor8[arg1].field_1536 - arg2) + 192
        if not stor8[arg1].field_1536 - arg2:
            idx = 0
            while idx < stor8[arg1].field_1536 - arg2:
                mem[32] = 8
                if arg2 > !idx:
                    revert with 0, 17
                if arg2 + idx >= stor8[arg1].field_1536:
                    revert with 0, 50
                mem[0] = sha3(arg1, 8) + 6
                if idx >= mem[160]:
                    revert with 0, 50
                mem[(32 * idx) + 192] = stor[('array', 6, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + arg2 + idx].field_0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2 > !(stor8[arg1].field_1536 - arg2):
                revert with 0, 17
            mem[(32 * stor8[arg1].field_1536 - arg2) + 192] = 64
            _60 = mem[160]
            mem[(32 * stor8[arg1].field_1536 - arg2) + 256] = mem[160]
            s = 0
            s = 192
            t = mem[64] + 96
            while stor8[arg1].field_1536 - arg2 < _60:
                mem[t] = mem[s]
                s = stor8[arg1].field_1536 + -arg2 + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[192 len 32 * stor8[arg1].field_1536 - arg2] = call.data[calldata.size len 32 * stor8[arg1].field_1536 - arg2]
            idx = 0
            while idx < stor8[arg1].field_1536 - arg2:
                mem[32] = 8
                if arg2 > !idx:
                    revert with 0, 17
                if arg2 + idx >= stor8[arg1].field_1536:
                    revert with 0, 50
                mem[0] = sha3(arg1, 8) + 6
                if idx >= mem[160]:
                    revert with 0, 50
                mem[(32 * idx) + 192] = stor[('array', 6, ('map', ('param', 'arg1'), ('name', 'stor8', 8))) + arg2 + idx].field_0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2 > !(stor8[arg1].field_1536 - arg2):
                revert with 0, 17
            mem[(32 * stor8[arg1].field_1536 - arg2) + 192] = 64
            _61 = mem[160]
            mem[(32 * stor8[arg1].field_1536 - arg2) + 256] = mem[160]
            s = 0
            s = 192
            t = mem[64] + 96
            while stor8[arg1].field_1536 - arg2 < _61:
                mem[t] = mem[s]
                s = stor8[arg1].field_1536 + -arg2 + 1
                s = s + 32
                t = t + 32
                continue 
        mem[(32 * stor8[arg1].field_1536 - arg2) + 224] = stor8[arg1].field_1536
    return memory
      from mem[64]
       len t - mem[64]
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if stor119 != msg.sender:
        if not uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
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
    else:
        if not uint8(roleAdmin[roleAdmin[arg1].field_256][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            mem[128 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
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
            if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
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
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        if stor119 != msg.sender:
            emit RoleRevoked(arg1, arg2, msg.sender);
        else:
            emit RoleRevoked(arg1, arg2, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
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

function sub_50b240ba(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 10
    if sub_e5675219[address(arg1)].field_256 < arg2:
        revert with 0, 17
    if arg3 <= sub_e5675219[address(arg1)].field_256 - arg2:
        if arg3 > test266151307():
            revert with 0, 65
        mem[96] = arg3
        mem[64] = (32 * arg3) + 128
        if arg3:
            mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        idx = 0
        while idx < arg3:
            mem[32] = 10
            if arg2 > !idx:
                revert with 0, 17
            if arg2 + idx >= sub_e5675219[address(arg1)].field_256:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 10) + 1
            if idx >= arg3:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e5675219', 10))) + arg2 + idx].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2 > !arg3:
            revert with 0, 17
        mem[(32 * arg3) + 128] = 64
        mem[(32 * arg3) + 192] = arg3
        s = 0
        s = 128
        t = mem[64] + 96
        while arg3 < arg3:
            mem[t] = mem[s]
            s = arg3 + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg3) + 160] = arg2 + arg3
    else:
        mem[0] = address(arg1)
        mem[32] = 10
        if sub_e5675219[address(arg1)].field_256 < arg2:
            revert with 0, 17
        if sub_e5675219[address(arg1)].field_256 - arg2 > test266151307():
            revert with 0, 65
        mem[96] = sub_e5675219[address(arg1)].field_256 - arg2
        mem[64] = (32 * sub_e5675219[address(arg1)].field_256 - arg2) + 128
        if not sub_e5675219[address(arg1)].field_256 - arg2:
            idx = 0
            while idx < sub_e5675219[address(arg1)].field_256 - arg2:
                mem[32] = 10
                if arg2 > !idx:
                    revert with 0, 17
                if arg2 + idx >= sub_e5675219[address(arg1)].field_256:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 10) + 1
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e5675219', 10))) + arg2 + idx].field_0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2 > !(sub_e5675219[address(arg1)].field_256 - arg2):
                revert with 0, 17
            mem[(32 * sub_e5675219[address(arg1)].field_256 - arg2) + 128] = 64
            _51 = mem[96]
            mem[(32 * sub_e5675219[address(arg1)].field_256 - arg2) + 192] = mem[96]
            s = 0
            s = 128
            t = mem[64] + 96
            while sub_e5675219[address(arg1)].field_256 - arg2 < _51:
                mem[t] = mem[s]
                s = sub_e5675219[address(arg1)].field_256 + -arg2 + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[128 len 32 * sub_e5675219[address(arg1)].field_256 - arg2] = call.data[calldata.size len 32 * sub_e5675219[address(arg1)].field_256 - arg2]
            idx = 0
            while idx < sub_e5675219[address(arg1)].field_256 - arg2:
                mem[32] = 10
                if arg2 > !idx:
                    revert with 0, 17
                if arg2 + idx >= sub_e5675219[address(arg1)].field_256:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 10) + 1
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('array', 1, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e5675219', 10))) + arg2 + idx].field_0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2 > !(sub_e5675219[address(arg1)].field_256 - arg2):
                revert with 0, 17
            mem[(32 * sub_e5675219[address(arg1)].field_256 - arg2) + 128] = 64
            _52 = mem[96]
            mem[(32 * sub_e5675219[address(arg1)].field_256 - arg2) + 192] = mem[96]
            s = 0
            s = 128
            t = mem[64] + 96
            while sub_e5675219[address(arg1)].field_256 - arg2 < _52:
                mem[t] = mem[s]
                s = sub_e5675219[address(arg1)].field_256 + -arg2 + 1
                s = s + 32
                t = t + 32
                continue 
        mem[(32 * sub_e5675219[address(arg1)].field_256 - arg2) + 160] = sub_e5675219[address(arg1)].field_256
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_be841e02(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 10
    if sub_e5675219[address(arg1)].field_512 < arg2:
        revert with 0, 17
    if arg3 <= sub_e5675219[address(arg1)].field_512 - arg2:
        if arg3 > test266151307():
            revert with 0, 65
        mem[96] = arg3
        mem[64] = (32 * arg3) + 128
        if arg3:
            mem[128 len 32 * arg3] = call.data[calldata.size len 32 * arg3]
        idx = 0
        while idx < arg3:
            mem[32] = 10
            if arg2 > !idx:
                revert with 0, 17
            if arg2 + idx >= sub_e5675219[address(arg1)].field_512:
                revert with 0, 50
            mem[0] = sha3(address(arg1), 10) + 2
            if idx >= arg3:
                revert with 0, 50
            mem[(32 * idx) + 128] = stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e5675219', 10))) + arg2 + idx].field_0
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if arg2 > !arg3:
            revert with 0, 17
        mem[(32 * arg3) + 128] = 64
        mem[(32 * arg3) + 192] = arg3
        s = 0
        s = 128
        t = mem[64] + 96
        while arg3 < arg3:
            mem[t] = mem[s]
            s = arg3 + 1
            s = s + 32
            t = t + 32
            continue 
        mem[(32 * arg3) + 160] = arg2 + arg3
    else:
        mem[0] = address(arg1)
        mem[32] = 10
        if sub_e5675219[address(arg1)].field_512 < arg2:
            revert with 0, 17
        if sub_e5675219[address(arg1)].field_512 - arg2 > test266151307():
            revert with 0, 65
        mem[96] = sub_e5675219[address(arg1)].field_512 - arg2
        mem[64] = (32 * sub_e5675219[address(arg1)].field_512 - arg2) + 128
        if not sub_e5675219[address(arg1)].field_512 - arg2:
            idx = 0
            while idx < sub_e5675219[address(arg1)].field_512 - arg2:
                mem[32] = 10
                if arg2 > !idx:
                    revert with 0, 17
                if arg2 + idx >= sub_e5675219[address(arg1)].field_512:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 10) + 2
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e5675219', 10))) + arg2 + idx].field_0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2 > !(sub_e5675219[address(arg1)].field_512 - arg2):
                revert with 0, 17
            mem[(32 * sub_e5675219[address(arg1)].field_512 - arg2) + 128] = 64
            _51 = mem[96]
            mem[(32 * sub_e5675219[address(arg1)].field_512 - arg2) + 192] = mem[96]
            s = 0
            s = 128
            t = mem[64] + 96
            while sub_e5675219[address(arg1)].field_512 - arg2 < _51:
                mem[t] = mem[s]
                s = sub_e5675219[address(arg1)].field_512 + -arg2 + 1
                s = s + 32
                t = t + 32
                continue 
        else:
            mem[128 len 32 * sub_e5675219[address(arg1)].field_512 - arg2] = call.data[calldata.size len 32 * sub_e5675219[address(arg1)].field_512 - arg2]
            idx = 0
            while idx < sub_e5675219[address(arg1)].field_512 - arg2:
                mem[32] = 10
                if arg2 > !idx:
                    revert with 0, 17
                if arg2 + idx >= sub_e5675219[address(arg1)].field_512:
                    revert with 0, 50
                mem[0] = sha3(address(arg1), 10) + 2
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = stor[('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'sub_e5675219', 10))) + arg2 + idx].field_0
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if arg2 > !(sub_e5675219[address(arg1)].field_512 - arg2):
                revert with 0, 17
            mem[(32 * sub_e5675219[address(arg1)].field_512 - arg2) + 128] = 64
            _52 = mem[96]
            mem[(32 * sub_e5675219[address(arg1)].field_512 - arg2) + 192] = mem[96]
            s = 0
            s = 128
            t = mem[64] + 96
            while sub_e5675219[address(arg1)].field_512 - arg2 < _52:
                mem[t] = mem[s]
                s = sub_e5675219[address(arg1)].field_512 + -arg2 + 1
                s = s + 32
                t = t + 32
                continue 
        mem[(32 * sub_e5675219[address(arg1)].field_512 - arg2) + 160] = sub_e5675219[address(arg1)].field_512
    return memory
      from mem[64]
       len t - mem[64]
}

function sub_9c4ef543(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 4).length)) + 97 < 96 or ceil32(ceil32(('cd', 4).length)) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + ('cd', 4).length + 36 <= calldata.size
    mem[128 len ('cd', 4).length] = call.data[cd[4] + 36 len ('cd', 4).length]
    mem[('cd', 4).length + 128] = 0
    require cd[36] == address(cd[36])
    if stor119 != msg.sender:
        if not uint8(roleAdmin[0][address(msg.sender)].field_0):
            mem[ceil32(ceil32(('cd', 4).length)) + 129 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = address(msg.sender)
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(('cd', 4).length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if msg.sender + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(ceil32(('cd', 4).length)) + 225 len 66] = call.data[calldata.size len 66]
            idx = 65
            while idx > 1:
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(('cd', 4).length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                continue 
            revert with 0, 
                        32,
                        148,
                        'AccessControl: account ', mem[ceil32(ceil32(('cd', 4).length)) + 161 len 42], 8297, mem[ceil32(ceil32(('cd', 4).length)) + 289 len 66], 0, 0 >> 928,
                        0
    else:
        if not uint8(roleAdmin[0][Mask(64, 96, cd[(calldata.size - 20)]) << 96].field_0):
            mem[ceil32(ceil32(('cd', 4).length)) + 129 len 42] = call.data[calldata.size len 42]
            idx = 41
            s = Mask(64, 96, cd[(calldata.size - 20)]) >> 96
            while idx > 1:
                if s % 16 >= 16:
                    revert with 0, 50
                if idx >= 42:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(('cd', 4).length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                s = Mask(252, 0, s) * 0.0625
                continue 
            if (Mask(64, 96, cd[(calldata.size - 20)]) >> 96) + 10240:
                revert with 0, 'Strings: hex length insufficient'
            mem[ceil32(ceil32(('cd', 4).length)) + 225 len 66] = call.data[calldata.size len 66]
            idx = 65
            while idx > 1:
                if idx >= 66:
                    revert with 0, 50
                mem[idx + ceil32(ceil32(('cd', 4).length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                if not idx:
                    revert with 0, 17
                idx = idx - 1
                continue 
            revert with 0, 
                        32,
                        148,
                        'AccessControl: account ', mem[ceil32(ceil32(('cd', 4).length)) + 161 len 42], 8297, mem[ceil32(ceil32(('cd', 4).length)) + 289 len 66], 0, 0 >> 928,
                        0
    mem[ceil32(ceil32(('cd', 4).length)) + 97 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
    mem[('cd', 4).length + ceil32(ceil32(('cd', 4).length)) + 97] = 15
    if 0 == stor[sha3(mem[ceil32(ceil32(('cd', 4).length)) + 97 len ('cd', 4).length + 32])]:
        stor14.length++
        if bool(stor14[stor14.length].field_0):
            if bool(stor14[stor14.length].field_0) == uint255(stor14[stor14.length].field_0) * 0.5 < 32:
                revert with 0, 34
            if ('cd', 4).length:
                stor14[stor14.length][].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
            else:
                stor14[stor14.length].field_0 = 0
                idx = 0
                while (uint255(stor14[stor14.length].field_0) * 0.5) + 31 / 32 > idx:
                    stor14[stor14.length + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor14[stor14.length].field_0) == stor14[stor14.length].field_1 % 128 < 32:
                revert with 0, 34
            if ('cd', 4).length:
                stor14[stor14.length][].field_0 = Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len ('cd', 4).length])
            else:
                stor14[stor14.length].field_0 = 0
                idx = 0
                while stor14[stor14.length].field_1 % 128 + 31 / 32 > idx:
                    stor14[stor14.length + idx].field_0 = 0
                    idx = idx + 1
                    continue 
        mem[ceil32(ceil32(('cd', 4).length)) + 97 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
        mem[('cd', 4).length + ceil32(ceil32(('cd', 4).length)) + 97] = 15
        stor[sha3(mem[ceil32(ceil32(('cd', 4).length)) + 97 len ('cd', 4).length + 32])] = stor369
        stor369++
    mem[ceil32(ceil32(('cd', 4).length)) + 97 len ceil32(('cd', 4).length)] = call.data[cd[4] + 36 len ('cd', 4).length], mem[('cd', 4).length + 128 len ceil32(('cd', 4).length) - ('cd', 4).length]
    mem[('cd', 4).length + ceil32(ceil32(('cd', 4).length)) + 97] = 15
    sub_5e81e7f1[stor[sha3(mem[ceil32(ceil32(('cd', 4).length)) + 97 len ('cd', 4).length + 32])]] = address(cd[36])
}

function initialize(uint256 arg1, uint256 arg2, address arg3, address arg4, address arg5, address arg6) {
    require calldata.size - 4 >= 192
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if uint8(stor18.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor18.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor18.field_8):
        uint16(stor18.field_0) = 257
    if arg2 > 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC2981: royalty fee will exceed salePrice'
    if not uint8(stor18.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    stor319 = 1
    paused = 0
    stor119 = arg6
    feeNumerator = arg2
    nftContractAddress = arg3
    feeCollectorAddress = arg4
    minimumBid = arg1
    sub_99496e2a = 48 * 24 * 3600
    minTimeLock = 900
    stor369++
    if uint8(roleAdmin[0][address(arg5)].field_0):
        if not roleMember[0][1][address(arg5)].field_0:
            roleMember[0].field_0++
            address(roleMember[0][roleMember[0].field_0].field_0) = arg5
            Mask(96, 0, roleMember[0][roleMember[0].field_0].field_160) = 0
            roleMember[0][1][address(arg5)].field_0 = roleMember[0].field_0
        if uint8(roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][address(arg5)].field_0):
            if not roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(arg5)].field_0:
                roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0++
                address(roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_0) = arg5
                Mask(96, 0, roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_160) = 0
                roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(arg5)].field_0 = roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0
            roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_256 = 0
            emit RoleAdminChanged(0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_256, 0);
            if not uint8(stor18.field_8):
                uint8(stor18.field_8) = 0
        else:
            uint8(roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][address(arg5)].field_0) = 1
            if stor119 != msg.sender:
                emit RoleGranted(0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, arg5, msg.sender);
            else:
                emit RoleGranted(0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, arg5, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
            if not roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(arg5)].field_0:
                roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0++
                address(roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_0) = arg5
                Mask(96, 0, roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_160) = 0
                roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(arg5)].field_0 = roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0
            roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_256 = 0
            emit RoleAdminChanged(0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_256, 0);
            if not uint8(stor18.field_8):
                uint8(stor18.field_8) = 0
    else:
        uint8(roleAdmin[0][address(arg5)].field_0) = 1
        if stor119 != msg.sender:
            emit RoleGranted(0, arg5, msg.sender);
        else:
            emit RoleGranted(0, arg5, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
        if not roleMember[0][1][address(arg5)].field_0:
            roleMember[0].field_0++
            address(roleMember[0][roleMember[0].field_0].field_0) = arg5
            Mask(96, 0, roleMember[0][roleMember[0].field_0].field_160) = 0
            roleMember[0][1][address(arg5)].field_0 = roleMember[0].field_0
        if uint8(roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][address(arg5)].field_0):
            if not roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(arg5)].field_0:
                roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0++
                address(roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_0) = arg5
                Mask(96, 0, roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_160) = 0
                roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(arg5)].field_0 = roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0
            roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_256 = 0
            emit RoleAdminChanged(0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_256, 0);
            if not uint8(stor18.field_8):
                uint8(stor18.field_8) = 0
        else:
            uint8(roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][address(arg5)].field_0) = 1
            if stor119 != msg.sender:
                emit RoleGranted(0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, arg5, msg.sender);
            else:
                emit RoleGranted(0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, arg5, Mask(64, 96, cd[(calldata.size - 20)]) >> 96);
            if not roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(arg5)].field_0:
                roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0++
                address(roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_0) = arg5
                Mask(96, 0, roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0].field_160) = 0
                roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647][1][address(arg5)].field_0 = roleMember[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_0
            roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_256 = 0
            emit RoleAdminChanged(0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647, roleAdmin[0xfe35a7846a2a701fff6f9d61a46ebff5da578c5dcee8bdf361c569f9ea4ee647].field_256, 0);
            if not uint8(stor18.field_8):
                uint8(stor18.field_8) = 0
}

function questions(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if bool(stor8[arg1].field_0):
        if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8[arg1].field_0):
            if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_0) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8[arg1].field_0):
                if 31 >= uint255(stor8[arg1].field_0) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
                else:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor8[arg1].field_0) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
                revert with 0, 34
            if stor8[arg1].field_1 % 128:
                if 31 >= stor8[arg1].field_1 % 128:
                    mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
                else:
                    mem[128] = stor8[arg1].field_0
                    idx = 128
                    s = 0
                    while stor8[arg1].field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor8[arg1][s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor8[arg1].field_256):
            if bool(stor8[arg1].field_256) == uint255(stor8[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if bool(stor8[arg1].field_256):
                if bool(stor8[arg1].field_256) == uint255(stor8[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, stor8[arg1].field_256):
                    if 31 >= uint255(stor8[arg1].field_256) * 0.5:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, stor8[arg1].field_264)
                    else:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = stor8[arg1][1].field_0
                        idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor8[arg1].field_256) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor8[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            else:
                if bool(stor8[arg1].field_256) == stor8[arg1].field_257 % 128 < 32:
                    revert with 0, 34
                if stor8[arg1].field_257 % 128:
                    if 31 >= stor8[arg1].field_257 % 128:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, stor8[arg1].field_264)
                    else:
                        mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = stor8[arg1][1].field_0
                        idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor8[arg1].field_257 % 128 + 128 > idx:
                            mem[idx + 32] = stor8[arg1][s + 1].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
            if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
                mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + (uint255(stor8[arg1].field_0) * 0.5) + 544] = 0
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 544] = uint255(stor8[arg1].field_256) * 0.5
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 576 len ceil32(uint255(stor8[arg1].field_256) * 0.5)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]
            if ceil32(uint255(stor8[arg1].field_256) * 0.5) > uint255(stor8[arg1].field_256) * 0.5:
                mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + (uint255(stor8[arg1].field_256) * 0.5) + 576] = 0
            if uint8(stor8[arg1].field_2304) >= 4:
                revert with 0, 33
            return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], 2 * Mask(256, -1, stor8[arg1].field_256), mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]), 
                   ceil32(uint255(stor8[arg1].field_0) * 0.5) + 384,
                   stor8[arg1].field_512,
                   stor8[arg1].field_768,
                   address(stor8[arg1].field_1024),
                   address(stor8[arg1].field_1280),
                   stor8[arg1].field_1792,
                   stor8[arg1].field_2048,
                   uint8(stor8[arg1].field_2304),
                   stor8[arg1].field_2560,
                   stor8[arg1].field_2816
        if bool(stor8[arg1].field_256) == stor8[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if bool(stor8[arg1].field_256):
            if bool(stor8[arg1].field_256) == uint255(stor8[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8[arg1].field_256):
                if 31 >= uint255(stor8[arg1].field_256) * 0.5:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, stor8[arg1].field_264)
                else:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = stor8[arg1][1].field_0
                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + (uint255(stor8[arg1].field_256) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor8[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor8[arg1].field_256) == stor8[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor8[arg1].field_257 % 128:
                if 31 >= stor8[arg1].field_257 % 128:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = 256 * Mask(248, 0, stor8[arg1].field_264)
                else:
                    mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160] = stor8[arg1][1].field_0
                    idx = ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor8[arg1].field_0) * 0.5) + stor8[arg1].field_257 % 128 + 128 > idx:
                        mem[idx + 32] = stor8[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if ceil32(uint255(stor8[arg1].field_0) * 0.5) > uint255(stor8[arg1].field_0) * 0.5:
            mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + ceil32(stor8[arg1].field_257 % 128) + (uint255(stor8[arg1].field_0) * 0.5) + 544] = 0
        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257 % 128) + 544] = stor8[arg1].field_257 % 128
        mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257 % 128) + 576 len ceil32(stor8[arg1].field_257 % 128)] = mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(stor8[arg1].field_257 % 128)]
        if ceil32(stor8[arg1].field_257 % 128) > stor8[arg1].field_257 % 128:
            mem[(2 * ceil32(uint255(stor8[arg1].field_0) * 0.5)) + ceil32(stor8[arg1].field_257 % 128) + stor8[arg1].field_257 % 128 + 576] = 0
        if uint8(stor8[arg1].field_2304) >= 4:
            revert with 0, 33
        return Array(len=2 * Mask(256, -1, stor8[arg1].field_0), data=mem[128 len ceil32(uint255(stor8[arg1].field_0) * 0.5)], stor8[arg1].field_256 % 128, mem[ceil32(uint255(stor8[arg1].field_0) * 0.5) + 160 len ceil32(stor8[arg1].field_257 % 128)]), 
               ceil32(uint255(stor8[arg1].field_0) * 0.5) + 384,
               stor8[arg1].field_512,
               stor8[arg1].field_768,
               address(stor8[arg1].field_1024),
               address(stor8[arg1].field_1280),
               stor8[arg1].field_1792,
               stor8[arg1].field_2048,
               uint8(stor8[arg1].field_2304),
               stor8[arg1].field_2560,
               stor8[arg1].field_2816
    if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor8[arg1].field_0):
        if bool(stor8[arg1].field_0) == uint255(stor8[arg1].field_0) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor8[arg1].field_0):
            if 31 >= uint255(stor8[arg1].field_0) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
            else:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while (uint255(stor8[arg1].field_0) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor8[arg1].field_0) == stor8[arg1].field_1 % 128 < 32:
            revert with 0, 34
        if stor8[arg1].field_1 % 128:
            if 31 >= stor8[arg1].field_1 % 128:
                mem[128] = 256 * Mask(248, 0, stor8[arg1].field_8)
            else:
                mem[128] = stor8[arg1].field_0
                idx = 128
                s = 0
                while stor8[arg1].field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor8[arg1][s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor8[arg1].field_256):
        if bool(stor8[arg1].field_256) == uint255(stor8[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if bool(stor8[arg1].field_256):
            if bool(stor8[arg1].field_256) == uint255(stor8[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor8[arg1].field_256):
                if 31 >= uint255(stor8[arg1].field_256) * 0.5:
                    mem[ceil32(stor8[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, stor8[arg1].field_264)
                else:
                    mem[ceil32(stor8[arg1].field_1 % 128) + 160] = stor8[arg1][1].field_0
                    idx = ceil32(stor8[arg1].field_1 % 128) + 160
                    s = 0
                    while ceil32(stor8[arg1].field_1 % 128) + (uint255(stor8[arg1].field_256) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor8[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor8[arg1].field_256) == stor8[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor8[arg1].field_257 % 128:
                if 31 >= stor8[arg1].field_257 % 128:
                    mem[ceil32(stor8[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, stor8[arg1].field_264)
                else:
                    mem[ceil32(stor8[arg1].field_1 % 128) + 160] = stor8[arg1][1].field_0
                    idx = ceil32(stor8[arg1].field_1 % 128) + 160
                    s = 0
                    while ceil32(stor8[arg1].field_1 % 128) + stor8[arg1].field_257 % 128 + 128 > idx:
                        mem[idx + 32] = stor8[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
            mem[ceil32(stor8[arg1].field_1 % 128) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + stor8[arg1].field_1 % 128 + 544] = 0
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 544] = uint255(stor8[arg1].field_256) * 0.5
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + 576 len ceil32(uint255(stor8[arg1].field_256) * 0.5)] = mem[ceil32(stor8[arg1].field_1 % 128) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]
        if ceil32(uint255(stor8[arg1].field_256) * 0.5) > uint255(stor8[arg1].field_256) * 0.5:
            mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + ceil32(uint255(stor8[arg1].field_256) * 0.5) + (uint255(stor8[arg1].field_256) * 0.5) + 576] = 0
        if uint8(stor8[arg1].field_2304) >= 4:
            revert with 0, 33
        return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)], 2 * Mask(256, -1, stor8[arg1].field_256), mem[ceil32(stor8[arg1].field_1 % 128) + 160 len ceil32(uint255(stor8[arg1].field_256) * 0.5)]), 
               ceil32(stor8[arg1].field_1 % 128) + 384,
               stor8[arg1].field_512,
               stor8[arg1].field_768,
               address(stor8[arg1].field_1024),
               address(stor8[arg1].field_1280),
               stor8[arg1].field_1792,
               stor8[arg1].field_2048,
               uint8(stor8[arg1].field_2304),
               stor8[arg1].field_2560,
               stor8[arg1].field_2816
    if bool(stor8[arg1].field_256) == stor8[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor8[arg1].field_256):
        if bool(stor8[arg1].field_256) == uint255(stor8[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor8[arg1].field_256):
            if 31 >= uint255(stor8[arg1].field_256) * 0.5:
                mem[ceil32(stor8[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, stor8[arg1].field_264)
            else:
                mem[ceil32(stor8[arg1].field_1 % 128) + 160] = stor8[arg1][1].field_0
                idx = ceil32(stor8[arg1].field_1 % 128) + 160
                s = 0
                while ceil32(stor8[arg1].field_1 % 128) + (uint255(stor8[arg1].field_256) * 0.5) + 128 > idx:
                    mem[idx + 32] = stor8[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor8[arg1].field_256) == stor8[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor8[arg1].field_257 % 128:
            if 31 >= stor8[arg1].field_257 % 128:
                mem[ceil32(stor8[arg1].field_1 % 128) + 160] = 256 * Mask(248, 0, stor8[arg1].field_264)
            else:
                mem[ceil32(stor8[arg1].field_1 % 128) + 160] = stor8[arg1][1].field_0
                idx = ceil32(stor8[arg1].field_1 % 128) + 160
                s = 0
                while ceil32(stor8[arg1].field_1 % 128) + stor8[arg1].field_257 % 128 + 128 > idx:
                    mem[idx + 32] = stor8[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if ceil32(stor8[arg1].field_1 % 128) > stor8[arg1].field_1 % 128:
        mem[ceil32(stor8[arg1].field_1 % 128) + ceil32(stor8[arg1].field_257 % 128) + stor8[arg1].field_1 % 128 + 544] = 0
    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + ceil32(stor8[arg1].field_257 % 128) + 544] = stor8[arg1].field_257 % 128
    mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + ceil32(stor8[arg1].field_257 % 128) + 576 len ceil32(stor8[arg1].field_257 % 128)] = mem[ceil32(stor8[arg1].field_1 % 128) + 160 len ceil32(stor8[arg1].field_257 % 128)]
    if ceil32(stor8[arg1].field_257 % 128) > stor8[arg1].field_257 % 128:
        mem[(2 * ceil32(stor8[arg1].field_1 % 128)) + ceil32(stor8[arg1].field_257 % 128) + stor8[arg1].field_257 % 128 + 576] = 0
    if uint8(stor8[arg1].field_2304) >= 4:
        revert with 0, 33
    return Array(len=stor8[arg1].field_0 % 128, data=mem[128 len ceil32(stor8[arg1].field_1 % 128)], stor8[arg1].field_256 % 128, mem[ceil32(stor8[arg1].field_1 % 128) + 160 len ceil32(stor8[arg1].field_257 % 128)]), 
           ceil32(stor8[arg1].field_1 % 128) + 384,
           stor8[arg1].field_512,
           stor8[arg1].field_768,
           address(stor8[arg1].field_1024),
           address(stor8[arg1].field_1280),
           stor8[arg1].field_1792,
           stor8[arg1].field_2048,
           uint8(stor8[arg1].field_2304),
           stor8[arg1].field_2560,
           stor8[arg1].field_2816
}



}
