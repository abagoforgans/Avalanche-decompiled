contract main {




// =====================  Runtime code  =====================


const OWNER = 0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b

const ADMIN_ROLE = 0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42

const DEFAULT_ADMIN_ROLE = 0

const BUYER = 0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6


mapping of struct roleAdmin;
array of struct roleMember;
address synthAddress;
address sub_3a89df44Address;
uint256 rate;
uint8 rateDecimals;
uint8 stor5; offset 8
uint8 stor5; offset 16

function synth() payable {
    return synthAddress
}

function rateDecimals() payable {
    return rateDecimals
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return roleAdmin[arg1].field_256
}

function rate() payable {
    return rate
}

function sub_3a89df44(?) payable {
    return sub_3a89df44Address
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

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if Mask(32, 224, arg1) == 0x5a05180f00000000000000000000000000000000000000000000000000000000:
        return True
    if Mask(32, 224, arg1) == 0x7965db0b00000000000000000000000000000000000000000000000000000000:
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
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

function changeRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][address(msg.sender)].field_0:
        rate = arg1
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
    s = 0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42
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

function buyers() payable {
    if roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0 <= 0:
        revert with 0, 'No buyers'
    if roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0 > test266151307():
        revert with 'NH{q', 65
    mem[96] = roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0
    mem[64] = (32 * roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0) + 128
    if roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0:
        mem[128 len 32 * roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0] = call.data[calldata.size len 32 * roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0]
    idx = 0
    while idx < roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0:
        mem[32] = 1
        if idx >= roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6, 1)
        if idx >= roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][idx].field_0
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0) + 128] = 32
    mem[(32 * roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0) + 160] = roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0) + -mem[64] + 192
}

function admins() payable {
    if roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0 <= 0:
        revert with 0, 'No admins'
    if roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0 > test266151307():
        revert with 'NH{q', 65
    mem[96] = roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0
    mem[64] = (32 * roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0) + 128
    if roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0:
        mem[128 len 32 * roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0] = call.data[calldata.size len 32 * roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0]
    idx = 0
    while idx < roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0:
        mem[32] = 1
        if idx >= roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0:
            revert with 'NH{q', 50
        mem[0] = sha3(0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42, 1)
        if idx >= roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0:
            revert with 'NH{q', 50
        mem[(32 * idx) + 128] = roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][idx].field_0
        if not idx - 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[(32 * roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0) + 128] = 32
    mem[(32 * roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0) + 160] = roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0) + -mem[64] + 192
}

function sub_4b71c5f3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][address(msg.sender)].field_0:
        if not address(arg1):
            revert with 0, 'Invalid address'
        synthAddress = address(arg1)
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        uint8(stor5.field_16) = ext_call.return_data[31 len 1]
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
    s = 0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42
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

function sub_0c1c2996(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][address(msg.sender)].field_0:
        if not address(arg1):
            revert with 0, 'Invalid address'
        sub_3a89df44Address = address(arg1)
        staticcall address(arg1).0x313ce567 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        uint8(stor5.field_8) = ext_call.return_data[31 len 1]
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
    s = 0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42
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

function sub_cfa8e4e0(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][address(msg.sender)].field_0:
        staticcall synthAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg1:
            revert with 0, 'Not enough synth to withdraw'
        call synthAddress.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    s = 0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42
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

function sub_c4b1e6cc(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    if roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][address(msg.sender)].field_0:
        staticcall sub_3a89df44Address.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg1:
            revert with 0, 'Not enough opToken to withdraw'
        call sub_3a89df44Address.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
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
    s = 0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42
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

function addAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
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
            s = 0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b
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
    if roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][address(arg1)].field_0:
        revert with 0, 'already admin'
    if roleAdmin[roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_256][address(msg.sender)].field_0:
        if not roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][address(arg1)].field_0:
            roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][address(arg1)].field_0 = 1
            emit RoleGranted(0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42, arg1, msg.sender);
        if not roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][1][address(arg1)].field_0:
            roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0++
            roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0].field_0 = arg1
            roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0].field_160 = 0
            roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][1][address(arg1)].field_0 = roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0
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
    s = roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_256
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
    if roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_256 + 16384:
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

function addBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][address(msg.sender)].field_0:
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
        s = 0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42
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
    else:
        if roleAdmin[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][address(arg1)].field_0:
            revert with 0, 'already buyer'
        if roleAdmin[roleAdmin[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_256][address(msg.sender)].field_0:
            if not roleAdmin[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][address(arg1)].field_0:
                roleAdmin[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][address(arg1)].field_0 = 1
                emit RoleGranted(0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6, arg1, msg.sender);
            if not roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][1][address(arg1)].field_0:
                roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0++
                roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0].field_0 = arg1
                roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0].field_160 = 0
                roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][1][address(arg1)].field_0 = roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0
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
        s = roleAdmin[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_256
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
        if roleAdmin[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_256 + 16384:
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

function removeAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b][address(msg.sender)].field_0:
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
            s = 0x6270edb7c868f86fda4adedba75108201087268ea345934db8bad688e1feb91b
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
    if roleAdmin[roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_256][address(msg.sender)].field_0:
        if roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][address(arg1)].field_0:
            roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][address(arg1)].field_0 = 0
            emit RoleRevoked(0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42, arg1, msg.sender);
        if roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][1][address(arg1)].field_0:
            if roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][1][address(arg1)].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0 < 1:
                revert with 'NH{q', 17
            if roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0 - 1 != roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][1][address(arg1)].field_0 - 1:
                if roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0 - 1 >= roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0:
                    revert with 'NH{q', 50
                if roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][1][address(arg1)].field_0 - 1 >= roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0:
                    revert with 'NH{q', 50
                roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][1][address(arg1)].field_0].field_0 = roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0].field_0
                roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][1][roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0].field_0].field_0 = roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][1][address(arg1)].field_0
            if not roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0:
                revert with 'NH{q', 49
            roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0].field_0 = 0
            roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_0--
            roleMember[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][1][address(arg1)].field_0 = 0
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
    s = roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_256
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
    if roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42].field_256 + 16384:
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

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][address(msg.sender)].field_0:
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
        s = 0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6
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
    if not uint8(stor5.field_8):
        if arg1 and rate > -1 / arg1:
            revert with 'NH{q', 17
        staticcall synthAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] < arg1 * rate:
            revert with 0, 'Not enough synth to buy'
        call sub_3a89df44Address.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call synthAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg1 * rate
    else:
        if bool(bool(uint8(stor5.field_8) < 78)) or bool(bool(uint8(stor5.field_8) < 32)):
            if 10^uint8(stor5.field_8) > -1:
                revert with 'NH{q', 17
            if arg1 and rate > -1 / arg1:
                revert with 'NH{q', 17
            if not 10^uint8(stor5.field_8):
                revert with 'NH{q', 18
            staticcall synthAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg1 * rate / 10^uint8(stor5.field_8):
                revert with 0, 'Not enough synth to buy'
            call sub_3a89df44Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call synthAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 * rate / 10^uint8(stor5.field_8)
        else:
            s = 10
            t = 1
            idx = uint8(stor5.field_8)
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if arg1 and rate > -1 / arg1:
                revert with 'NH{q', 17
            if not t * s:
                revert with 'NH{q', 18
            staticcall synthAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg1 * rate / t * s:
                revert with 0, 'Not enough synth to buy'
            call sub_3a89df44Address.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call synthAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 * rate / t * s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function removeBuyer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42][address(msg.sender)].field_0:
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
        s = 0xdf8b4c520ffe197c5343c6f5aec59570151ef9a492f2c624fd45ddde6135ec42
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
    else:
        if roleAdmin[roleAdmin[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_256][address(msg.sender)].field_0:
            if roleAdmin[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][address(arg1)].field_0:
                roleAdmin[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][address(arg1)].field_0 = 0
                emit RoleRevoked(0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6, arg1, msg.sender);
            if roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][1][address(arg1)].field_0:
                if roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][1][address(arg1)].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0 < 1:
                    revert with 'NH{q', 17
                if roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0 - 1 != roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][1][address(arg1)].field_0 - 1:
                    if roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0 - 1 >= roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0:
                        revert with 'NH{q', 50
                    if roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][1][address(arg1)].field_0 - 1 >= roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0:
                        revert with 'NH{q', 50
                    roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][1][address(arg1)].field_0].field_0 = roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0].field_0
                    roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][1][roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0].field_0].field_0 = roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][1][address(arg1)].field_0
                if not roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0:
                    revert with 'NH{q', 49
                roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0].field_0 = 0
                roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_0--
                roleMember[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][1][address(arg1)].field_0 = 0
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
        s = roleAdmin[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_256
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
        if roleAdmin[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6].field_256 + 16384:
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

function sell(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6][address(msg.sender)].field_0:
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
        s = 0xeeccd0cdb44235955432f589255f62b95683f64165b40b022d338b8009cf79b6
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
    if uint8(stor5.field_16) < uint8(stor5.field_8):
        revert with 'NH{q', 17
    if not uint8(uint8(stor5.field_16) - uint8(stor5.field_8)):
        if not rateDecimals:
            if arg1 and 1 > -1 / arg1:
                revert with 'NH{q', 17
            if not rate:
                revert with 'NH{q', 18
            staticcall sub_3a89df44Address.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if ext_call.return_data[0] < arg1 / rate:
                revert with 0, 'Not enough opToken to sell'
            call synthAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            call sub_3a89df44Address.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, arg1 / rate
        else:
            if bool(bool(rateDecimals < 78)) or bool(bool(rateDecimals < 32)):
                if 10^rateDecimals > -1:
                    revert with 'NH{q', 17
                if arg1 and 10^rateDecimals > -1 / arg1:
                    revert with 'NH{q', 17
                if not rate:
                    revert with 'NH{q', 18
                staticcall sub_3a89df44Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < arg1 * 10^rateDecimals / rate:
                    revert with 0, 'Not enough opToken to sell'
                call synthAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call sub_3a89df44Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * 10^rateDecimals / rate
            else:
                s = 10
                t = 1
                idx = rateDecimals
                while idx > 1:
                    if s > -1 / s:
                        revert with 'NH{q', 17
                    if not bool(idx):
                        s = s * s
                        t = t
                        idx = uint255(idx) * 0.5
                        continue 
                    s = s * s
                    t = t * s
                    idx = uint255(idx) * 0.5
                    continue 
                if t > -1 / s:
                    revert with 'NH{q', 17
                if arg1 and t * s > -1 / arg1:
                    revert with 'NH{q', 17
                if not rate:
                    revert with 'NH{q', 18
                staticcall sub_3a89df44Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < arg1 * t * s / rate:
                    revert with 0, 'Not enough opToken to sell'
                call synthAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call sub_3a89df44Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 * t * s / rate
    else:
        if bool(bool(uint8(uint8(stor5.field_16) - uint8(stor5.field_8)) < 78)) or bool(bool(uint8(uint8(stor5.field_16) - uint8(stor5.field_8)) < 32)):
            if 10^uint8(uint8(stor5.field_16) - uint8(stor5.field_8)) > -1:
                revert with 'NH{q', 17
            if not rateDecimals:
                if arg1 and 1 > -1 / arg1:
                    revert with 'NH{q', 17
                if not rate:
                    revert with 'NH{q', 18
                if not 10^uint8(uint8(stor5.field_16) - uint8(stor5.field_8)):
                    revert with 'NH{q', 18
                staticcall sub_3a89df44Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < arg1 / rate / 10^uint8(uint8(stor5.field_16) - uint8(stor5.field_8)):
                    revert with 0, 'Not enough opToken to sell'
                call synthAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call sub_3a89df44Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 / rate / 10^uint8(uint8(stor5.field_16) - uint8(stor5.field_8))
            else:
                if bool(bool(rateDecimals < 78)) or bool(bool(rateDecimals < 32)):
                    if 10^rateDecimals > -1:
                        revert with 'NH{q', 17
                    if arg1 and 10^rateDecimals > -1 / arg1:
                        revert with 'NH{q', 17
                    if not rate:
                        revert with 'NH{q', 18
                    if not 10^uint8(uint8(stor5.field_16) - uint8(stor5.field_8)):
                        revert with 'NH{q', 18
                    staticcall sub_3a89df44Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < arg1 * 10^rateDecimals / rate / 10^uint8(uint8(stor5.field_16) - uint8(stor5.field_8)):
                        revert with 0, 'Not enough opToken to sell'
                    call synthAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call sub_3a89df44Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * 10^rateDecimals / rate / 10^uint8(uint8(stor5.field_16) - uint8(stor5.field_8))
                else:
                    s = 10
                    t = 1
                    idx = rateDecimals
                    while idx > 1:
                        if s > -1 / s:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = t * s
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 'NH{q', 17
                    if arg1 and t * s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not rate:
                        revert with 'NH{q', 18
                    if not 10^uint8(uint8(stor5.field_16) - uint8(stor5.field_8)):
                        revert with 'NH{q', 18
                    staticcall sub_3a89df44Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < arg1 * t * s / rate / 10^uint8(uint8(stor5.field_16) - uint8(stor5.field_8)):
                        revert with 0, 'Not enough opToken to sell'
                    call synthAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call sub_3a89df44Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * t * s / rate / 10^uint8(uint8(stor5.field_16) - uint8(stor5.field_8))
        else:
            s = 10
            t = 1
            idx = uint8(uint8(stor5.field_16) - uint8(stor5.field_8))
            while idx > 1:
                if s > -1 / s:
                    revert with 'NH{q', 17
                if not bool(idx):
                    s = s * s
                    t = t
                    idx = uint255(idx) * 0.5
                    continue 
                s = s * s
                t = t * s
                idx = uint255(idx) * 0.5
                continue 
            if t > -1 / s:
                revert with 'NH{q', 17
            if not rateDecimals:
                if arg1 and 1 > -1 / arg1:
                    revert with 'NH{q', 17
                if not rate:
                    revert with 'NH{q', 18
                if not t * s:
                    revert with 'NH{q', 18
                staticcall sub_3a89df44Address.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] < arg1 / rate / t * s:
                    revert with 0, 'Not enough opToken to sell'
                call synthAddress.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(this.address), arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                call sub_3a89df44Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, arg1 / rate / t * s
            else:
                if bool(bool(rateDecimals < 78)) or bool(bool(rateDecimals < 32)):
                    if 10^rateDecimals > -1:
                        revert with 'NH{q', 17
                    if arg1 and 10^rateDecimals > -1 / arg1:
                        revert with 'NH{q', 17
                    if not rate:
                        revert with 'NH{q', 18
                    if not t * s:
                        revert with 'NH{q', 18
                    staticcall sub_3a89df44Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < arg1 * 10^rateDecimals / rate / t * s:
                        revert with 0, 'Not enough opToken to sell'
                    call synthAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call sub_3a89df44Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * 10^rateDecimals / rate / t * s
                else:
                    u = 10
                    v = 1
                    idx = rateDecimals
                    while idx > 1:
                        if u > -1 / u:
                            revert with 'NH{q', 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = v * u
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 'NH{q', 17
                    if arg1 and v * u > -1 / arg1:
                        revert with 'NH{q', 17
                    if not rate:
                        revert with 'NH{q', 18
                    if not t * s:
                        revert with 'NH{q', 18
                    staticcall sub_3a89df44Address.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] < arg1 * v * u / rate / t * s:
                        revert with 0, 'Not enough opToken to sell'
                    call synthAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == bool(ext_call.return_data[0])
                    call sub_3a89df44Address.0xa9059cbb with:
                         gas gas_remaining wei
                        args msg.sender, arg1 * v * u / rate / t * s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
