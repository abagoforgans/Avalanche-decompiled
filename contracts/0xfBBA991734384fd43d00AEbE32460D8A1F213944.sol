contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
uint8 stor1;
address stor1;
address _treasuryAddress; offset 8
uint256 stor1;
address stor2;
address stor3;
address stor4;
array of address stor5;
uint256 entryFee;
uint256 claimFee;
uint256 sub_113cf727;
uint256 sub_47b5ca60;
uint256 sub_efae5be4;
uint256 stakeReward;
uint256 sub_18a0561a;
uint256 sub_6d067696;
uint256 sub_1eaaf482;
uint256 stor15;
mapping of uint256 sub_61672539;
mapping of struct sub_13053edc;
mapping of uint256 sub_ce27f54d;
mapping of uint256 sub_7b40cc2f;
uint256 stor20;
uint256 stor21;
uint256 totalClaimed;
uint256 sub_6b112afa;

function entryFee() {
    return entryFee
}

function sub_113cf727(?) {
    return sub_113cf727
}

function sub_13053edc(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    return sub_13053edc[arg1][arg2].field_0, 
           sub_13053edc[arg1][arg2].field_256,
           sub_13053edc[arg1][arg2].field_512,
           sub_13053edc[arg1][arg2].field_768,
           sub_13053edc[arg1][arg2].field_1024
}

function stakeReward() {
    return stakeReward
}

function sub_18a0561a(?) {
    return sub_18a0561a
}

function sub_1eaaf482(?) {
    return sub_1eaaf482
}

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function isAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(roleAdmin[address(arg1)].field_0)
}

function sub_47b5ca60(?) {
    return sub_47b5ca60
}

function sub_61672539(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_61672539[address(arg1)]
}

function sub_629a2343(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_61672539[arg1]
}

function sub_6b112afa(?) {
    return sub_6b112afa
}

function sub_6d067696(?) {
    return sub_6d067696
}

function sub_7b40cc2f(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7b40cc2f[arg1]
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function claimFee() {
    return claimFee
}

function sub_ce27f54d(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ce27f54d[arg1]
}

function totalClaimed() {
    return totalClaimed
}

function _treasury() {
    return _treasuryAddress
}

function sub_efae5be4(?) {
    return sub_efae5be4
}

function _fallback() payable {
    revert
}

function init(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Admin-only function'
    uint256(stor1.field_0) = not bool(uint8(stor1.field_0)) or Mask(248, 8, uint256(stor1.field_0))
    stor4 = arg1
}

function sub_862a3f6b(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Admin-only function'
    sub_47b5ca60 = arg1
    sub_efae5be4 = arg2
    stakeReward = arg3
}

function changeFees(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Admin-only function'
    entryFee = arg1
    claimFee = arg2
    sub_113cf727 = arg3
}

function renounceRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x4e2312e000000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_5e12bad7(?) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Admin-only function'
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 + arg3 != 10000:
        revert with 0, 'Sum of shares is not 100%'
    sub_18a0561a = arg1
    sub_6d067696 = arg2
    sub_1eaaf482 = arg3
}

function sub_a871c70f(?) {
    idx = 1
    s = 0
    while idx <= sub_61672539[address(msg.sender)]:
        if sub_13053edc[address(msg.sender)][idx].field_256 > block.timestamp:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 16
            idx = idx + 1
            s = s
            continue 
        if s == -1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 16
        idx = idx + 1
        s = s + 1
        continue 
    return s
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) {
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
    return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + 97 > test266151307() or floor32(arg3.length) + 97 < 96:
        revert with 'NH{q', 65
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    idx = 0
    s = arg3 + 36
    t = 128
    while idx < arg3.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    if arg4.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + 98 > test266151307() or floor32(arg4.length) + 98 < 97:
        revert with 'NH{q', 65
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    idx = 0
    s = arg4 + 36
    t = floor32(arg3.length) + 129
    while idx < arg4.length:
        require cd[s] == cd[s]
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg3.length) + floor32(arg4.length) + ceil32(ceil32(arg5.length)) + 99 > test266151307() or ceil32(ceil32(arg5.length)) + 99 < 98:
        revert with 'NH{q', 65
    require arg5 + arg5.length + 36 <= calldata.size
    return 0xbc197c8100000000000000000000000000000000000000000000000000000000
}

function revokeRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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

function grantRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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

function grantAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'Admin-only function'
    if roleAdmin[uint256(roleAdmin.field_256)][address(msg.sender)].field_0:
        if not roleAdmin[address(arg1)].field_0:
            roleAdmin[address(arg1)].field_0 = 1
            emit RoleGranted(0, arg1, msg.sender);
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
    s = uint256(roleAdmin.field_256)
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
    if uint256(roleAdmin.field_256) + 16384:
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

function sub_4e0bdc5b(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_ce27f54d[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    if sub_ce27f54d[address(msg.sender)] - arg1 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't deposit more than 10 master keys'
    require ext_code.size(stor4)
    call stor4.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, 1, arg1, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if sub_ce27f54d[address(msg.sender)] < arg1:
        revert with 'NH{q', 17
    sub_ce27f54d[address(msg.sender)] -= arg1
    idx = 1
    while idx <= sub_61672539[address(msg.sender)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 17)
        _22 = mem[64]
        mem[64] = mem[64] + 160
        mem[_22] = sub_13053edc[address(msg.sender)][idx].field_0
        mem[_22 + 32] = sub_13053edc[address(msg.sender)][idx].field_256
        mem[_22 + 128] = sub_13053edc[address(msg.sender)][idx].field_1024
        if sub_13053edc[address(msg.sender)][idx].field_256 <= block.timestamp:
            if sub_13053edc[address(msg.sender)][idx].field_256 < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 < sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            mem[_22 + 96] = (stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
        else:
            if block.timestamp < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 < block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            mem[_22 + 96] = (stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
        mem[_22 + 64] = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 16
        idx = idx + 1
        continue 
}

function getVault(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_13053edc[address(msg.sender)][arg1].field_256 <= block.timestamp:
        if sub_13053edc[address(msg.sender)][arg1].field_256 < sub_13053edc[address(msg.sender)][arg1].field_512:
            revert with 'NH{q', 17
        if not stor21:
            revert with 'NH{q', 18
        if sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 < sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21:
            revert with 'NH{q', 17
        if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
            revert with 'NH{q', 17
        if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
            revert with 'NH{q', 17
        if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
            revert with 'NH{q', 17
        if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
            revert with 'NH{q', 17
        if not stor21:
            revert with 'NH{q', 18
        if sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21:
            revert with 'NH{q', 17
        if sub_13053edc[address(msg.sender)][arg1].field_768 > (-1 * stakeReward * sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) - 1:
            revert with 'NH{q', 17
        return sub_13053edc[address(msg.sender)][arg1].field_0, 
               sub_13053edc[address(msg.sender)][arg1].field_256,
               sub_13053edc[address(msg.sender)][arg1].field_512,
               sub_13053edc[address(msg.sender)][arg1].field_768 + (stakeReward * sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21),
               sub_13053edc[address(msg.sender)][arg1].field_1024
    if block.timestamp < sub_13053edc[address(msg.sender)][arg1].field_512:
        revert with 'NH{q', 17
    if not stor21:
        revert with 'NH{q', 18
    if block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 < block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21:
        revert with 'NH{q', 17
    if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
        revert with 'NH{q', 17
    if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
        revert with 'NH{q', 17
    if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
        revert with 'NH{q', 17
    if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
        revert with 'NH{q', 17
    if not stor21:
        revert with 'NH{q', 18
    if block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21:
        revert with 'NH{q', 17
    if sub_13053edc[address(msg.sender)][arg1].field_768 > (-1 * stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) - 1:
        revert with 'NH{q', 17
    return sub_13053edc[address(msg.sender)][arg1].field_0, 
           sub_13053edc[address(msg.sender)][arg1].field_256,
           sub_13053edc[address(msg.sender)][arg1].field_512,
           sub_13053edc[address(msg.sender)][arg1].field_768 + (stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21),
           sub_13053edc[address(msg.sender)][arg1].field_1024
}

function sub_92a69f71(?) payable {
    mem[64] = 96
    require not msg.value
    if sub_7b40cc2f[address(msg.sender)] != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only deposit 1 grandmaster key'
    require ext_code.size(stor4)
    call stor4.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, 0, msg.sender, 2, 1, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not sub_7b40cc2f[address(msg.sender)]:
        revert with 'NH{q', 17
    sub_7b40cc2f[address(msg.sender)]--
    idx = 1
    while idx <= sub_61672539[address(msg.sender)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 17)
        _24 = mem[64]
        mem[64] = mem[64] + 160
        mem[_24] = sub_13053edc[address(msg.sender)][idx].field_0
        mem[_24 + 32] = sub_13053edc[address(msg.sender)][idx].field_256
        mem[_24 + 128] = sub_13053edc[address(msg.sender)][idx].field_1024
        if sub_13053edc[address(msg.sender)][idx].field_256 <= block.timestamp:
            if sub_13053edc[address(msg.sender)][idx].field_256 < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 < sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            mem[_24 + 96] = sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
        else:
            if block.timestamp < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 < block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            mem[_24 + 96] = sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
        mem[_24 + 64] = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 16
        idx = idx + 1
        continue 
}

function sub_fe0fab08(?) payable {
    mem[64] = 96
    require not msg.value
    if sub_7b40cc2f[address(msg.sender)] >= 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only deposit 1 grandmaster key'
    require ext_code.size(stor4)
    call stor4.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(this.address), 2, 1, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 1
    while idx <= sub_61672539[address(msg.sender)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 17)
        _25 = mem[64]
        mem[64] = mem[64] + 160
        mem[_25] = sub_13053edc[address(msg.sender)][idx].field_0
        mem[_25 + 32] = sub_13053edc[address(msg.sender)][idx].field_256
        mem[_25 + 128] = sub_13053edc[address(msg.sender)][idx].field_1024
        if sub_13053edc[address(msg.sender)][idx].field_256 <= block.timestamp:
            if sub_13053edc[address(msg.sender)][idx].field_256 < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 < sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            mem[_25 + 96] = sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
        else:
            if block.timestamp < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 < block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            mem[_25 + 96] = sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
        mem[_25 + 64] = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 16
        idx = idx + 1
        continue 
    if sub_7b40cc2f[address(msg.sender)] == -1:
        revert with 'NH{q', 17
    sub_7b40cc2f[address(msg.sender)]++
}

function sub_09a474d4(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_ce27f54d[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_ce27f54d[address(msg.sender)] + arg1 > 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can't deposit more than 10 master keys'
    require ext_code.size(stor4)
    call stor4.safeTransferFrom(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), address(this.address), 1, arg1, 160, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    idx = 1
    while idx <= sub_61672539[address(msg.sender)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 17)
        _25 = mem[64]
        mem[64] = mem[64] + 160
        mem[_25] = sub_13053edc[address(msg.sender)][idx].field_0
        mem[_25 + 32] = sub_13053edc[address(msg.sender)][idx].field_256
        mem[_25 + 128] = sub_13053edc[address(msg.sender)][idx].field_1024
        if sub_13053edc[address(msg.sender)][idx].field_256 <= block.timestamp:
            if sub_13053edc[address(msg.sender)][idx].field_256 < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 < sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            mem[_25 + 96] = sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
        else:
            if block.timestamp < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 < block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            mem[_25 + 96] = sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
        mem[_25 + 64] = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 16
        idx = idx + 1
        continue 
    if sub_ce27f54d[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    sub_ce27f54d[address(msg.sender)] += arg1
}

function sub_d947048e(?) payable {
    mem[64] = 96
    if block.timestamp > -stor20 - 1:
        revert with 'NH{q', 17
    idx = 1
    s = 0
    while idx <= sub_61672539[address(msg.sender)]:
        if sub_13053edc[address(msg.sender)][idx].field_256 > block.timestamp:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 16
            idx = idx + 1
            s = s
            continue 
        if s > -sub_113cf727 - 1:
            revert with 'NH{q', 17
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 17)
        _43 = mem[64]
        mem[64] = mem[64] + 160
        mem[_43] = sub_13053edc[address(msg.sender)][idx].field_0
        mem[_43 + 32] = sub_13053edc[address(msg.sender)][idx].field_256
        mem[_43 + 64] = sub_13053edc[address(msg.sender)][idx].field_512
        mem[_43 + 96] = sub_13053edc[address(msg.sender)][idx].field_768
        mem[_43 + 128] = sub_13053edc[address(msg.sender)][idx].field_1024
        if sub_13053edc[address(msg.sender)][idx].field_256 <= block.timestamp:
            if sub_13053edc[address(msg.sender)][idx].field_256 < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 < sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            sub_13053edc[address(msg.sender)][idx].field_768 = sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
        else:
            if block.timestamp < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 < block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            sub_13053edc[address(msg.sender)][idx].field_768 = sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
        sub_13053edc[address(msg.sender)][idx].field_256 = block.timestamp + stor20
        sub_13053edc[address(msg.sender)][idx].field_512 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 16
        idx = idx + 1
        s = s + sub_113cf727
        continue 
    if s != msg.value:
        revert with 0, 'Wrong message value'
    call _treasuryAddress with:
       value msg.value wei
         gas 21000 wei
    if not ext_call.success:
        revert with 0, 'Failed to send $AVAX'
}

function sub_d28ff4c3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1.field_0):
        revert with 0, 'Contract is paused'
    mem[32] = 16
    if sub_61672539[address(msg.sender)] > -arg1 - 1:
        revert with 'NH{q', 17
    if sub_61672539[address(msg.sender)] + arg1 > stor15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exceeds maximum vault amount for single wallet'
    if block.timestamp > -stor20 - 1:
        revert with 'NH{q', 17
    idx = 0
    while idx < arg1:
        if sub_61672539[address(msg.sender)] == -1:
            revert with 'NH{q', 17
        sub_61672539[address(msg.sender)]++
        mem[0] = sub_61672539[address(msg.sender)]
        mem[32] = sha3(address(msg.sender), 17)
        sub_13053edc[address(msg.sender)][stor16[address(msg.sender)]].field_0 = block.timestamp
        sub_13053edc[address(msg.sender)][stor16[address(msg.sender)]].field_256 = block.timestamp + stor20
        sub_13053edc[address(msg.sender)][stor16[address(msg.sender)]].field_512 = block.timestamp
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if entryFee and arg1 > -1 / entryFee:
        revert with 'NH{q', 17
    if entryFee * arg1 and sub_6d067696 > -1 / entryFee * arg1:
        revert with 'NH{q', 17
    if entryFee and arg1 > -1 / entryFee:
        revert with 'NH{q', 17
    if entryFee * arg1 and sub_1eaaf482 > -1 / entryFee * arg1:
        revert with 'NH{q', 17
    if entryFee and arg1 > -1 / entryFee:
        revert with 'NH{q', 17
    if entryFee * arg1 and sub_18a0561a > -1 / entryFee * arg1:
        revert with 'NH{q', 17
    if entryFee * arg1 * sub_1eaaf482 / 10000 > -(entryFee * arg1 * sub_18a0561a / 10000) - 1:
        revert with 'NH{q', 17
    mem[100] = msg.sender
    mem[132] = this.address
    mem[164] = (entryFee * arg1 * sub_1eaaf482 / 10000) + (entryFee * arg1 * sub_18a0561a / 10000)
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), (entryFee * arg1 * sub_1eaaf482 / 10000) + (entryFee * arg1 * sub_18a0561a / 10000)
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[ceil32(return_data.size) + 100] = msg.sender
    mem[ceil32(return_data.size) + 132] = _treasuryAddress
    mem[ceil32(return_data.size) + 164] = entryFee * arg1 * sub_6d067696 / 10000
    require ext_code.size(stor2)
    call stor2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(stor1.field_0), entryFee * arg1 * sub_6d067696 / 10000
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if Mask(255, 1, entryFee * arg1 * sub_1eaaf482 / 10000) and 2 > -1 / entryFee * arg1 * sub_1eaaf482 / 10000 / 2:
        revert with 'NH{q', 17
    mem[(2 * ceil32(return_data.size)) + 100] = stor3
    mem[(2 * ceil32(return_data.size)) + 132] = Mask(255, 1, entryFee * arg1 * sub_1eaaf482 / 10000)
    require ext_code.size(stor2)
    call stor2.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args stor3, Mask(255, 1, entryFee * arg1 * sub_1eaaf482 / 10000)
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 96] = 0x676528d100000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 100] = entryFee * arg1 * sub_1eaaf482 / 10000 / 2
    mem[(4 * ceil32(return_data.size)) + 132] = 1
    mem[(4 * ceil32(return_data.size)) + 164] = 160
    mem[(4 * ceil32(return_data.size)) + 260] = stor5.length
    mem[0] = 5
    idx = 0
    s = 0
    t = (4 * ceil32(return_data.size)) + 292
    while idx < stor5.length:
        mem[t] = stor5[s]
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(4 * ceil32(return_data.size)) + 196] = this.address
    mem[(4 * ceil32(return_data.size)) + 228] = block.timestamp
    require ext_code.size(stor3)
    call stor3.swapExactTokensForAVAX(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
         gas gas_remaining wei
        args Mask(255, 1, entryFee * arg1 * sub_1eaaf482 / 10000), 1, Array(len=stor5.length, data=mem[(4 * ceil32(return_data.size)) + 292 len 32 * stor5.length]), address(this.address), block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    _58 = mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, entryFee * arg1 * sub_1eaaf482 / 10000) >> 32
    require mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, entryFee * arg1 * sub_1eaaf482 / 10000) >> 32 <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, entryFee * arg1 * sub_1eaaf482 / 10000) >> 32 + 127 < (4 * ceil32(return_data.size)) + return_data.size + 96
    _59 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, entryFee * arg1 * sub_1eaaf482 / 10000) >> 32 + 96]
    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, entryFee * arg1 * sub_1eaaf482 / 10000) >> 32 + 96] > test266151307():
        revert with 'NH{q', 65
    if (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, entryFee * arg1 * sub_1eaaf482 / 10000) >> 32 + 96]) + 97 > test266151307() or floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, entryFee * arg1 * sub_1eaaf482 / 10000) >> 32 + 96]) + 1 < 0:
        revert with 'NH{q', 65
    mem[64] = (6 * ceil32(return_data.size)) + floor32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, entryFee * arg1 * sub_1eaaf482 / 10000) >> 32 + 96]) + 97
    mem[(6 * ceil32(return_data.size)) + 96] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 96 len 4], Mask(224, 32, entryFee * arg1 * sub_1eaaf482 / 10000) >> 32 + 96]
    require _58 + (32 * _59) + 32 <= return_data.size
    idx = 0
    s = (4 * ceil32(return_data.size)) + _58 + 128
    t = (6 * ceil32(return_data.size)) + 128
    while idx < _59:
        require mem[s] == mem[s]
        mem[t] = mem[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if 1 >= _59:
        revert with 'NH{q', 50
    _74 = mem[(6 * ceil32(return_data.size)) + 160]
    mem[mem[64] + 68] = 1
    mem[mem[64] + 100] = 1
    mem[mem[64] + 132] = _treasuryAddress
    mem[mem[64] + 164] = block.timestamp
    require ext_code.size(stor3)
    call stor3.addLiquidityAVAX(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
       value _74 wei
         gas gas_remaining wei
        args stor2, Mask(255, 1, entryFee * arg1 * sub_1eaaf482 / 10000), 1, 1, address(stor1.field_0), block.timestamp
    mem[mem[64] len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _77 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 96
    require mem[_77] == mem[_77]
    require mem[_77 + 32] == mem[_77 + 32]
    require mem[_77 + 64] == mem[_77 + 64]
    if sub_6b112afa > -arg1 - 1:
        revert with 'NH{q', 17
    sub_6b112afa += arg1
    emit 0xf2ac095c: arg1, block.timestamp + stor20, msg.sender
}

function sub_b6dee68c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if sub_13053edc[address(msg.sender)][arg1].field_0 <= 0:
        revert with 0, 'Nonexistant vault'
    if sub_113cf727 != msg.value:
        revert with 0, 'Wrong message value'
    if sub_13053edc[address(msg.sender)][arg1].field_256 >= block.timestamp:
        if sub_13053edc[address(msg.sender)][arg1].field_256 > -stor20 - 1:
            revert with 'NH{q', 17
        sub_13053edc[address(msg.sender)][arg1].field_256 += stor20
        if block.timestamp > -15552001:
            revert with 'NH{q', 17
        if block.timestamp + (4320 * 24 * 3600) < sub_13053edc[address(msg.sender)][arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only pay up to 180 days in advance'
    else:
        if sub_13053edc[address(msg.sender)][arg1].field_256 <= block.timestamp:
            if sub_13053edc[address(msg.sender)][arg1].field_256 < sub_13053edc[address(msg.sender)][arg1].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 < sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if sub_13053edc[address(msg.sender)][arg1].field_768 > (-1 * stakeReward * sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            sub_13053edc[address(msg.sender)][arg1].field_768 = sub_13053edc[address(msg.sender)][arg1].field_768 + (stakeReward * sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 - (sub_13053edc[address(msg.sender)][arg1].field_256 - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21)
        else:
            if block.timestamp < sub_13053edc[address(msg.sender)][arg1].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 < block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if sub_13053edc[address(msg.sender)][arg1].field_768 > (-1 * stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            sub_13053edc[address(msg.sender)][arg1].field_768 = sub_13053edc[address(msg.sender)][arg1].field_768 + (stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][arg1].field_512 % stor21) / stor21)
        sub_13053edc[address(msg.sender)][arg1].field_256 = block.timestamp
        sub_13053edc[address(msg.sender)][arg1].field_512 = block.timestamp
        if sub_13053edc[address(msg.sender)][arg1].field_256 > -stor20 - 1:
            revert with 'NH{q', 17
        sub_13053edc[address(msg.sender)][arg1].field_256 += stor20
        if block.timestamp > -15552001:
            revert with 'NH{q', 17
        if block.timestamp + (4320 * 24 * 3600) < sub_13053edc[address(msg.sender)][arg1].field_256:
            revert with 0, 'Can only pay up to 180 days in advance'
    ('ge', ('add', 15552000, 'timestamp'), ('field', 256, ('stor', ('map', ('param', 'arg1'), ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'sub_13053edc', 17))))))
    call _treasuryAddress with:
       value msg.value wei
         gas 21000 wei
    if not ext_call.success:
        revert with 0, 'Failed to send $AVAX'
}

function sub_9676ffbc(?) payable {
    mem[64] = 96
    require not msg.value
    idx = 1
    s = 0
    while idx <= sub_61672539[address(msg.sender)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 17)
        _22 = mem[64]
        mem[64] = mem[64] + 160
        mem[_22] = sub_13053edc[address(msg.sender)][idx].field_0
        mem[_22 + 32] = sub_13053edc[address(msg.sender)][idx].field_256
        mem[_22 + 64] = sub_13053edc[address(msg.sender)][idx].field_512
        mem[_22 + 96] = sub_13053edc[address(msg.sender)][idx].field_768
        mem[_22 + 128] = sub_13053edc[address(msg.sender)][idx].field_1024
        if sub_13053edc[address(msg.sender)][idx].field_256 <= block.timestamp:
            if sub_13053edc[address(msg.sender)][idx].field_256 < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 < sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if (stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) > -sub_13053edc[address(msg.sender)][idx].field_768 - 1:
                revert with 'NH{q', 17
            if s > (-1 * stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + -sub_13053edc[address(msg.sender)][idx].field_768 - 1:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 16
            idx = idx + 1
            s = s + (stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + sub_13053edc[address(msg.sender)][idx].field_768
            continue 
        if block.timestamp < sub_13053edc[address(msg.sender)][idx].field_512:
            revert with 'NH{q', 17
        if not stor21:
            revert with 'NH{q', 18
        if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 < block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
            revert with 'NH{q', 17
        if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
            revert with 'NH{q', 17
        if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
            revert with 'NH{q', 17
        if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
            revert with 'NH{q', 17
        if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
            revert with 'NH{q', 17
        if not stor21:
            revert with 'NH{q', 18
        if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
            revert with 'NH{q', 17
        if (stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) > -sub_13053edc[address(msg.sender)][idx].field_768 - 1:
            revert with 'NH{q', 17
        if s > (-1 * stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + -sub_13053edc[address(msg.sender)][idx].field_768 - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 16
        idx = idx + 1
        s = s + (stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + sub_13053edc[address(msg.sender)][idx].field_768
        continue 
    return s
}

function claimRewards() payable {
    mem[64] = 96
    if claimFee != msg.value:
        revert with 0, 'Wrong message value'
    mem[0] = msg.sender
    mem[32] = 16
    idx = 1
    s = 0
    while idx <= sub_61672539[address(msg.sender)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 17)
        _36 = mem[64]
        mem[64] = mem[64] + 160
        mem[_36] = sub_13053edc[address(msg.sender)][idx].field_0
        mem[_36 + 32] = sub_13053edc[address(msg.sender)][idx].field_256
        mem[_36 + 64] = sub_13053edc[address(msg.sender)][idx].field_512
        mem[_36 + 96] = sub_13053edc[address(msg.sender)][idx].field_768
        mem[_36 + 128] = sub_13053edc[address(msg.sender)][idx].field_1024
        if sub_13053edc[address(msg.sender)][idx].field_256 <= block.timestamp:
            if sub_13053edc[address(msg.sender)][idx].field_256 < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 < sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if (stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) <= 0:
                if idx == -1:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 16
                idx = idx + 1
                s = s
                continue 
            if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            if s > -sub_13053edc[address(msg.sender)][idx].field_768 + (-1 * stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            if sub_13053edc[address(msg.sender)][idx].field_512 > -sub_13053edc[address(msg.sender)][idx].field_256 + sub_13053edc[address(msg.sender)][idx].field_512 + (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) - 1:
                revert with 'NH{q', 17
            sub_13053edc[address(msg.sender)][idx].field_512 = sub_13053edc[address(msg.sender)][idx].field_256 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21)
            sub_13053edc[address(msg.sender)][idx].field_1024 = block.timestamp
            sub_13053edc[address(msg.sender)][idx].field_768 = 0
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 16
            idx = idx + 1
            s = s + sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
            continue 
        if block.timestamp < sub_13053edc[address(msg.sender)][idx].field_512:
            revert with 'NH{q', 17
        if not stor21:
            revert with 'NH{q', 18
        if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 < block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
            revert with 'NH{q', 17
        if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
            revert with 'NH{q', 17
        if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
            revert with 'NH{q', 17
        if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
            revert with 'NH{q', 17
        if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
            revert with 'NH{q', 17
        if not stor21:
            revert with 'NH{q', 18
        if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
            revert with 'NH{q', 17
        if (stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) <= 0:
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 16
            idx = idx + 1
            s = s
            continue 
        if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
            revert with 'NH{q', 17
        if s > -sub_13053edc[address(msg.sender)][idx].field_768 + (-1 * stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
            revert with 'NH{q', 17
        if sub_13053edc[address(msg.sender)][idx].field_512 > -block.timestamp + sub_13053edc[address(msg.sender)][idx].field_512 + (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) - 1:
            revert with 'NH{q', 17
        sub_13053edc[address(msg.sender)][idx].field_512 = block.timestamp - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21)
        sub_13053edc[address(msg.sender)][idx].field_1024 = block.timestamp
        sub_13053edc[address(msg.sender)][idx].field_768 = 0
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 16
        idx = idx + 1
        s = s + sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
        continue 
    if s <= 0:
        revert with 0, 'Can't withdraw 0'
    mem[mem[64] + 4] = msg.sender
    mem[mem[64] + 36] = s
    require ext_code.size(stor2)
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, s
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _45 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    require mem[_45] == bool(mem[_45])
    if totalClaimed > -s - 1:
        revert with 'NH{q', 17
    totalClaimed += s
    call _treasuryAddress with:
       value msg.value wei
         gas 21000 wei
    if not ext_call.success:
        revert with 0, 'Failed to send $AVAX'
    emit RewardsClaimed(s, msg.sender);
}

function getAllVaults() {
    mem[0] = msg.sender
    if sub_61672539[address(msg.sender)] > test266151307():
        revert with 'NH{q', 65
    mem[96] = sub_61672539[address(msg.sender)]
    mem[64] = (32 * sub_61672539[address(msg.sender)]) + 128
    if not sub_61672539[address(msg.sender)]:
        mem[0] = msg.sender
        mem[32] = 16
        idx = 1
        while idx <= sub_61672539[address(msg.sender)]:
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 17)
            _55 = mem[64]
            mem[64] = mem[64] + 160
            mem[_55] = sub_13053edc[address(msg.sender)][idx].field_0
            mem[_55 + 32] = sub_13053edc[address(msg.sender)][idx].field_256
            mem[_55 + 64] = sub_13053edc[address(msg.sender)][idx].field_512
            mem[_55 + 96] = sub_13053edc[address(msg.sender)][idx].field_768
            mem[_55 + 128] = sub_13053edc[address(msg.sender)][idx].field_1024
            if idx < 1:
                revert with 'NH{q', 17
            if idx - 1 >= mem[96]:
                revert with 'NH{q', 50
            mem[(32 * idx - 1) + 128] = _55
            if sub_13053edc[address(msg.sender)][idx].field_256 <= block.timestamp:
                if sub_13053edc[address(msg.sender)][idx].field_256 < sub_13053edc[address(msg.sender)][idx].field_512:
                    revert with 'NH{q', 17
                if not stor21:
                    revert with 'NH{q', 18
                if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 < sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                    revert with 'NH{q', 17
                if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                    revert with 'NH{q', 17
                if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                    revert with 'NH{q', 17
                if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                    revert with 'NH{q', 17
                if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                    revert with 'NH{q', 17
                if not stor21:
                    revert with 'NH{q', 18
                if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                    revert with 'NH{q', 17
                if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                    revert with 'NH{q', 17
                mem[_55 + 96] = sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
            else:
                if block.timestamp < sub_13053edc[address(msg.sender)][idx].field_512:
                    revert with 'NH{q', 17
                if not stor21:
                    revert with 'NH{q', 18
                if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 < block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                    revert with 'NH{q', 17
                if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                    revert with 'NH{q', 17
                if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                    revert with 'NH{q', 17
                if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                    revert with 'NH{q', 17
                if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                    revert with 'NH{q', 17
                if not stor21:
                    revert with 'NH{q', 18
                if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                    revert with 'NH{q', 17
                if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                    revert with 'NH{q', 17
                mem[_55 + 96] = sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
            if idx == -1:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 16
            idx = idx + 1
            continue 
        _57 = mem[64]
        mem[mem[64]] = 32
        _58 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _58:
            _102 = mem[s]
            mem[t] = mem[mem[s]]
            mem[t + 32] = mem[_102 + 32]
            mem[t + 64] = mem[_102 + 64]
            mem[t + 96] = mem[_102 + 96]
            mem[t + 128] = mem[_102 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _57 + (160 * _58) + -mem[64] + 64
    mem[64] = (32 * sub_61672539[address(msg.sender)]) + 288
    mem[(32 * sub_61672539[address(msg.sender)]) + 128] = 0
    mem[(32 * sub_61672539[address(msg.sender)]) + 160] = 0
    mem[(32 * sub_61672539[address(msg.sender)]) + 192] = 0
    mem[(32 * sub_61672539[address(msg.sender)]) + 224] = 0
    mem[(32 * sub_61672539[address(msg.sender)]) + 256] = 0
    mem[var9001] = (32 * sub_61672539[address(msg.sender)]) + 128
    s = var9001
    idx = var9002
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * sub_61672539[address(msg.sender)]) + 128] = 0
        mem[(32 * sub_61672539[address(msg.sender)]) + 160] = 0
        mem[(32 * sub_61672539[address(msg.sender)]) + 192] = 0
        mem[(32 * sub_61672539[address(msg.sender)]) + 224] = 0
        mem[(32 * sub_61672539[address(msg.sender)]) + 256] = 0
        mem[s + 32] = (32 * sub_61672539[address(msg.sender)]) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = msg.sender
    mem[32] = 16
    idx = 1
    while idx <= sub_61672539[address(msg.sender)]:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 17)
        _136 = mem[64]
        mem[64] = mem[64] + 160
        mem[_136] = sub_13053edc[address(msg.sender)][idx].field_0
        mem[_136 + 32] = sub_13053edc[address(msg.sender)][idx].field_256
        mem[_136 + 64] = sub_13053edc[address(msg.sender)][idx].field_512
        mem[_136 + 96] = sub_13053edc[address(msg.sender)][idx].field_768
        mem[_136 + 128] = sub_13053edc[address(msg.sender)][idx].field_1024
        if idx < 1:
            revert with 'NH{q', 17
        if idx - 1 >= mem[96]:
            revert with 'NH{q', 50
        mem[(32 * idx - 1) + 128] = _136
        if sub_13053edc[address(msg.sender)][idx].field_256 <= block.timestamp:
            if sub_13053edc[address(msg.sender)][idx].field_256 < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 < sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            mem[_136 + 96] = sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 - (sub_13053edc[address(msg.sender)][idx].field_256 - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
        else:
            if block.timestamp < sub_13053edc[address(msg.sender)][idx].field_512:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 < block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21:
                revert with 'NH{q', 17
            if sub_ce27f54d[address(msg.sender)] and sub_47b5ca60 > -1 / sub_ce27f54d[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward > (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) - 1:
                revert with 'NH{q', 17
            if sub_7b40cc2f[address(msg.sender)] and sub_efae5be4 > -1 / sub_7b40cc2f[address(msg.sender)]:
                revert with 'NH{q', 17
            if stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) > (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) - 1:
                revert with 'NH{q', 17
            if not stor21:
                revert with 'NH{q', 18
            if block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21 and stakeReward + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4) > -1 / block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21:
                revert with 'NH{q', 17
            if sub_13053edc[address(msg.sender)][idx].field_768 > (-1 * stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (-1 * sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) - 1:
                revert with 'NH{q', 17
            mem[_136 + 96] = sub_13053edc[address(msg.sender)][idx].field_768 + (stakeReward * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_ce27f54d[address(msg.sender)] * sub_47b5ca60 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21) + (sub_7b40cc2f[address(msg.sender)] * sub_efae5be4 * block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 - (block.timestamp - sub_13053edc[address(msg.sender)][idx].field_512 % stor21) / stor21)
        if idx == -1:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 16
        idx = idx + 1
        continue 
    _137 = mem[64]
    mem[mem[64]] = 32
    _138 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _138:
        _157 = mem[s]
        mem[t] = mem[mem[s]]
        mem[t + 32] = mem[_157 + 32]
        mem[t + 64] = mem[_157 + 64]
        mem[t + 96] = mem[_157 + 96]
        mem[t + 128] = mem[_157 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _137 + (160 * _138) + -mem[64] + 64
}



}
