contract main {




// =====================  Runtime code  =====================


#
#  - sub_2bb9c728(?)
#
const sub_a063f336(?) = 0xca4ff35aa85b5fefc8312f1391bd040d4b445859a4a611b13d905ef8daa4b19f

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
mapping of struct sub_14247090;
mapping of uint256 sub_20430318;
mapping of uint256 sub_b9bf8d36;
address burnAddress;
uint256 sub_cca7273b;
uint256 margin;
mapping of uint256 sub_8c811d67;

function sub_14247090(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_14247090[arg1].field_0, sub_14247090[arg1].field_256
}

function sub_20430318(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_20430318[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function burnAddress() payable {
    return burnAddress
}

function sub_8c811d67(?) payable {
    require calldata.size - 4 >= 32
    return sub_8c811d67[arg1]
}

function margin() payable {
    return margin
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_b9bf8d36(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_b9bf8d36[arg1]
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function sub_cca7273b(?) payable {
    return sub_cca7273b
}

function _fallback() payable {
    revert
}

function hashBytes(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return sha3(arg1)
}

function sub_f30af037(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'ONLY-ADMIN'
    sub_b9bf8d36[address(arg1)] = arg2
}

function setMaxPercWin(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'ONLY-ADMIN'
    if arg1 > 10000:
        revert with 0, 'NO-PERC-POINTS'
    sub_cca7273b = arg1
}

function setBurnAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'ONLY-ADMIN'
    if not arg1:
        revert with 0, 'ONLY-REAL-NULL'
    burnAddress = arg1
}

function sub_cc306aa7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'ONLY-ADMIN'
    if arg2 > 10000:
        revert with 0, 'NO-PERC-POINTS'
    sub_20430318[address(arg1)] = arg2
}

function sub_c9c66674(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_c4351361(?) payable {
    require calldata.size - 4 >= 288
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require 195 < calldata.size
    require calldata.size >= 292
    idx = 0
    s = 164
    t = 288
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return sha3(address(cd[4]), address(cd[36]), cd[68], cd[100], cd[132], mem[288 len 128])
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_8b8b0f83(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and sub_cca7273b > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * sub_cca7273b / 10000)
}

function sub_e229df5c(?) payable {
    require calldata.size - 4 >= 96
    if 0 >= arg3:
        revert with 0, 'PROBABILITY-OUT-OF-RANGE'
    if arg3 > arg2:
        revert with 0, 'PROBABILITY-OUT-OF-RANGE'
    if arg1 and margin > -1 / arg1:
        revert with 0, 17
    if arg1 < arg1 * margin / 10000:
        revert with 0, 17
    if arg1 - (arg1 * margin / 10000) and arg2 > -1 / arg1 - (arg1 * margin / 10000):
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    return ((arg1 * arg2) - (arg1 * margin / 10000 * arg2) / arg3)
}

function renounceRole(bytes32 arg1, address arg2) payable {
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

function grantRole(bytes32 arg1, address arg2) payable {
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

function revokeRole(bytes32 arg1, address arg2) payable {
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

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not roleAdmin[address(msg.sender)].field_0:
        revert with 0, 'ONLY-ADMIN'
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < arg2:
        revert with 0, 'TOO-LOW-FUNDS'
    mem[ceil32(return_data.size) + 132] = msg.sender
    mem[ceil32(return_data.size) + 164] = arg2
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg2, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg2, 0) << 288)
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

function sub_c999a7cc(?) payable {
    require calldata.size - 4 >= 320
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require 163 < calldata.size
    require calldata.size >= 260
    idx = 0
    s = 132
    t = 96
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) / 1000 > 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5604189374bc6a7:
        revert with 0, 17
    if sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) < 1000 * sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) / 1000:
        revert with 0, 17
    if not mem[192]:
        revert with 0, 18
    if not mem[128]:
        if sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) - (1000 * sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) / 1000) % mem[192] < mem[96]:
            if 0 >= mem[96]:
                revert with 0, 'PROBABILITY-OUT-OF-RANGE'
            if mem[96] > mem[192]:
                revert with 0, 'PROBABILITY-OUT-OF-RANGE'
            if mem[160] and margin > -1 / mem[160]:
                revert with 0, 17
            if mem[160] < mem[160] * margin / 10000:
                revert with 0, 17
            if mem[160] - (mem[160] * margin / 10000) and mem[192] > -1 / mem[160] - (mem[160] * margin / 10000):
                revert with 0, 17
            if not mem[96]:
                revert with 0, 18
            return sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) - (1000 * sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) / 1000) % mem[192], 
                   (mem[160] * mem[192]) - (mem[160] * margin / 10000 * mem[192]) / mem[96],
                   cd[4] << 192,
                   cd[36] << 192,
                   sha3(cd[292]),
                   cd[260],
                   cd[68],
                   mem[96 len 128],
                   sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128])
        if not mem[128]:
            return sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) - (1000 * sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) / 1000) % mem[192], 
                   0,
                   cd[4] << 192,
                   cd[36] << 192,
                   sha3(cd[292]),
                   cd[260],
                   cd[68],
                   mem[96 len 128],
                   sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128])
    if sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) - (1000 * sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) / 1000) % mem[192] <= mem[96]:
        return sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) - (1000 * sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) / 1000) % mem[192], 
               0,
               cd[4] << 192,
               cd[36] << 192,
               sha3(cd[292]),
               cd[260],
               cd[68],
               mem[96 len 128],
               sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128])
    if mem[192] < 1:
        revert with 0, 17
    if mem[192] - 1 < mem[96]:
        revert with 0, 17
    if 0 >= mem[192] + -mem[96] - 1:
        revert with 0, 'PROBABILITY-OUT-OF-RANGE'
    if mem[192] + -mem[96] - 1 > mem[192]:
        revert with 0, 'PROBABILITY-OUT-OF-RANGE'
    if mem[160] and margin > -1 / mem[160]:
        revert with 0, 17
    if mem[160] < mem[160] * margin / 10000:
        revert with 0, 17
    if mem[160] - (mem[160] * margin / 10000) and mem[192] > -1 / mem[160] - (mem[160] * margin / 10000):
        revert with 0, 17
    if not mem[192] + -mem[96] - 1:
        revert with 0, 18
    return sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) - (1000 * sha3(sha3(cd[292], sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128]), cd[100])) / 1000) % mem[192], 
           (mem[160] * mem[192]) - (mem[160] * margin / 10000 * mem[192]) / mem[192] + -mem[96] - 1,
           cd[4] << 192,
           cd[36] << 192,
           sha3(cd[292]),
           cd[260],
           cd[68],
           mem[96 len 128],
           sha3(cd[4] << 192, address(cd[36]), sha3(cd[292]), cd[260], cd[68], mem[96 len 128])
}

function sub_50a1ecc1(?) payable {
    require calldata.size - 4 >= 224
    require cd[4] == address(cd[4])
    require 67 < calldata.size
    require calldata.size >= 164
    idx = 0
    s = 36
    t = 96
    while idx < 4:
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if msg.sender != tx.origin:
        revert with 0, 'no indirect calls'
    if ext_code.size(msg.sender):
        revert with 0, 'no indirect calls'
    if mem[160] < sub_b9bf8d36[address(cd[4])]:
        revert with 0, 'BET-AMOUNT-TOO-LOW'
    mem[260] = msg.sender
    mem[292] = this.address
    mem[324] = mem[160]
    mem[224] = 100
    mem[256 len 4] = unknown_0x23b872dd(?????)
    mem[356] = 32
    mem[388] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(address(cd[4])):
        revert with 0, 'Address: call to non-contract'
    mem[420 len 128] = 0, msg.sender, address(this.address), mem[160], 0
    mem[520] = 0
    call address(cd[4]) with:
       funct Mask(32, 224, 0, msg.sender, address(this.address), mem[160], 0) >> 224
         gas gas_remaining wei
        args (Mask(768, -544, 0, msg.sender, address(this.address), mem[160], 0) << 544)
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[452 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[452] == bool(mem[452])
            if not mem[452]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if mem[128]:
        if mem[128] != 1:
            revert with 0, 'INVALID-ROLL-VALUE'
    if 1 >= mem[192]:
        revert with 0, 'INVALID-MODULO-VALUE'
    if not mem[128]:
        if 0 >= mem[96]:
            revert with 0, 'PROBABILITY-OUT-OF-RANGE'
        if mem[96] > mem[192]:
            revert with 0, 'PROBABILITY-OUT-OF-RANGE'
        if mem[160] and margin > -1 / mem[160]:
            revert with 0, 17
        if mem[160] < mem[160] * margin / 10000:
            revert with 0, 17
        if mem[160] - (mem[160] * margin / 10000) and mem[192] > -1 / mem[160] - (mem[160] * margin / 10000):
            revert with 0, 17
        if not mem[96]:
            revert with 0, 18
        if (mem[160] * mem[192]) - (mem[160] * margin / 10000 * mem[192]) / mem[96] < mem[160]:
            revert with 0, 17
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and sub_cca7273b > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ((mem[160] * mem[192]) - (mem[160] * margin / 10000 * mem[192]) / mem[96]) - mem[160] > ext_call.return_data[0] * sub_cca7273b / 10000:
            revert with 0, 'WIN-AMOUNT-TOO-HIGH'
    else:
        if mem[192] < 1:
            revert with 0, 17
        if mem[192] - 1 < mem[96]:
            revert with 0, 17
        if 0 >= mem[192] + -mem[96] - 1:
            revert with 0, 'PROBABILITY-OUT-OF-RANGE'
        if mem[192] + -mem[96] - 1 > mem[192]:
            revert with 0, 'PROBABILITY-OUT-OF-RANGE'
        if mem[160] and margin > -1 / mem[160]:
            revert with 0, 17
        if mem[160] < mem[160] * margin / 10000:
            revert with 0, 17
        if mem[160] - (mem[160] * margin / 10000) and mem[192] > -1 / mem[160] - (mem[160] * margin / 10000):
            revert with 0, 17
        if not mem[192] + -mem[96] - 1:
            revert with 0, 18
        if (mem[160] * mem[192]) - (mem[160] * margin / 10000 * mem[192]) / mem[192] + -mem[96] - 1 < mem[160]:
            revert with 0, 17
        require ext_code.size(address(cd[4]))
        staticcall address(cd[4]).0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] and sub_cca7273b > -1 / ext_call.return_data[0]:
            revert with 0, 17
        if ((mem[160] * mem[192]) - (mem[160] * margin / 10000 * mem[192]) / mem[192] + -mem[96] - 1) - mem[160] > ext_call.return_data[0] * sub_cca7273b / 10000:
            revert with 0, 'WIN-AMOUNT-TOO-HIGH'
    if sub_8c811d67[address(cd[4])][msg.sender][cd[196]][cd[164]][block.number][mem[96 len 128]]:
        revert with 0, 'BET-ALREADY-EXIST'
    sub_8c811d67[address(cd[4])][msg.sender][cd[196]][cd[164]][block.number][mem[96 len 128]] = block.timestamp
    emit 0x807999e5: cd[4] << 192, msg.sender, cd[196], cd[164], block.number, mem[96 len 128], sha3(address(cd[4]), msg.sender, cd[196], cd[164], block.number, mem[96 len 128])
}



}
