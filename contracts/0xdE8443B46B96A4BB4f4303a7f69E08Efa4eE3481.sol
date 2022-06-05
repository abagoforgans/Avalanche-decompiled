contract main {




// =====================  Runtime code  =====================


const sub_dee88816(?) = 0x73bbbbed602cb1a083aeaca0409784b4efe3c4defa6ad6f92d275fc5387fbdc0

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
address tokenAddress;
address sub_c8ea4dd6Address;
array of struct sub_574726f2;
mapping of struct stor154;
mapping of uint8 stor155;
mapping of uint8 stor156;
mapping of uint8 stor157;
array of uint256 stor158;
array of uint256 stor51848699043762354786445001410105671568266765734117956169291548475795829136640;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_574726f2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_574726f2.length
    return sub_574726f2[arg1].field_0
}

function sub_5888c61f(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor157[arg1][arg2])
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(uint8(roleAdmin[arg1][address(arg2)].field_0))
}

function sub_ab5eba16(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return bool(stor156[arg1][arg2])
}

function sub_b56a6f37(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor155[arg1])
}

function sub_c8ea4dd6(?) payable {
    return sub_c8ea4dd6Address
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if uint8(roleAdmin[arg1][address(arg2)].field_0):
        uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_c10a476b(?) payable {
    if sub_574726f2.length:
        mem[128] = uint256(sub_574726f2.field_0)
        idx = 128
        s = 0
        while (32 * sub_574726f2.length) + 96 > idx:
            mem[idx + 32] = sub_574726f2[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=sub_574726f2.length, data=mem[128 len 32 * sub_574726f2.length])
    mem[(32 * sub_574726f2.length) + 128] = 32
    mem[(32 * sub_574726f2.length) + 160] = sub_574726f2.length
    mem[(32 * sub_574726f2.length) + 192 len 32 * sub_574726f2.length] = mem[128 len 32 * sub_574726f2.length]
    return memory
      from (32 * sub_574726f2.length) + 128
       len (96 * sub_574726f2.length) + 64
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    tokenAddress = arg1
    sub_c8ea4dd6Address = arg2
    if not uint8(roleAdmin[0][address(arg3)].field_0):
        uint8(roleAdmin[0][address(arg3)].field_0) = 1
        emit RoleGranted(0, arg3, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_18b18fb3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor158[address(arg1)] > test266151307():
        revert with 0, 65
    mem[96] = stor158[address(arg1)]
    if stor158[address(arg1)]:
        mem[128 len 32 * stor158[address(arg1)]] = call.data[calldata.size len 32 * stor158[address(arg1)]]
    idx = 0
    while idx < mem[96]:
        mem[32] = 158
        if idx >= stor158[address(arg1)]:
            revert with 0, 50
        mem[0] = sha3(address(arg1), 158)
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = stor158[address(arg1)][idx]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor158[address(arg1)]) + 128] = 32
    mem[(32 * stor158[address(arg1)]) + 160] = mem[96]
    mem[(32 * stor158[address(arg1)]) + 192 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[(32 * stor158[address(arg1)]) + 160 len (32 * mem[96]) + 32]
}

function sub_6476505d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        sub_c8ea4dd6Address = address(arg1)
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
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if uint8(roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0):
        if not uint8(roleAdmin[arg1][address(arg2)].field_0):
            uint8(roleAdmin[arg1][address(arg2)].field_0) = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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
}

function reward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor155[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AchievementsRegistry: this achievement does not exist'
    if not uint8(roleAdmin[0x73bbbbed602cb1a083aeaca0409784b4efe3c4defa6ad6f92d275fc5387fbdc0][address(msg.sender)].field_0):
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
            s = 0x73bbbbed602cb1a083aeaca0409784b4efe3c4defa6ad6f92d275fc5387fbdc0
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
    if stor156[address(arg1)][arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AchievementsRegistry: user already has this achievement'
    stor156[address(arg1)][arg2] = 1
    if not stor158[address(arg1)][1][arg2]:
        stor158[address(arg1)]++
        stor158[address(arg1)][stor158[address(arg1)]] = arg2
        stor158[address(arg1)][1][arg2] = stor158[address(arg1)]
    emit 0xd8d331a4: block.timestamp, arg1, arg2
}

function sub_561ec629(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not stor155[arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AchievementsRegistry: this achievement does not exist'
    if not uint8(roleAdmin[0x73bbbbed602cb1a083aeaca0409784b4efe3c4defa6ad6f92d275fc5387fbdc0][address(msg.sender)].field_0):
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
            s = 0x73bbbbed602cb1a083aeaca0409784b4efe3c4defa6ad6f92d275fc5387fbdc0
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
    if not stor156[address(arg1)][arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AchievementsRegistry: user dont have the achievement'
    stor156[address(arg1)][arg2] = 0
    if stor158[address(arg1)][1][arg2]:
        if stor158[address(arg1)][1][arg2] < 1:
            revert with 0, 17
        if stor158[address(arg1)] < 1:
            revert with 0, 17
        if stor158[address(arg1)] - 1 != stor158[address(arg1)][1][arg2] - 1:
            if stor158[address(arg1)] - 1 >= stor158[address(arg1)]:
                revert with 0, 50
            if stor158[address(arg1)][1][arg2] - 1 >= stor158[address(arg1)]:
                revert with 0, 50
            stor158[address(arg1)][stor158[address(arg1)][1][arg2]] = stor158[address(arg1)][stor158[address(arg1)]]
            stor158[address(arg1)][1][stor158[address(arg1)][stor158[address(arg1)]]] = stor158[address(arg1)][1][arg2]
        if not stor158[address(arg1)]:
            revert with 0, 49
        stor158[address(arg1)][stor158[address(arg1)]] = 0
        stor158[address(arg1)]--
        stor158[address(arg1)][1][arg2] = 0
    emit 0xd8d331a4: block.timestamp, address(arg1), arg2
}

function withdrawERC20(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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
    mem[100] = this.address
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 132] = msg.sender
    if ext_call.return_data[0] >= arg2:
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
        emit 0xef7246ed: arg2, block.timestamp, msg.sender
    else:
        mem[ceil32(return_data.size) + 164] = ext_call.return_data[0]
        mem[ceil32(return_data.size) + 96] = 68
        mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 196] = 32
        mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0
        mem[ceil32(return_data.size) + 328] = 0
        call arg1 with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, ext_call.return_data[0], 0) << 288)
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
        emit 0xef7246ed: ext_call.return_data[0], block.timestamp, msg.sender
}

function sub_40cd0c9e(?) payable {
    require calldata.size - 4 >= 192
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg5 == bool(arg5)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg6.length)) + 99 < 98 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 99 > test266151307():
        revert with 0, 65
    require arg6 + arg6.length + 36 <= calldata.size
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 131 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 131 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 227 len 66] = call.data[calldata.size len 66]
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 227 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 163 len 42], 8297, mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 291 len 66], 0, 0 >> 928,
                    0
    if stor155[arg1]:
        revert with 0, 'AchievementsRegistry: achievementId is already taken'
    if not arg5:
        stor155[arg1] = 1
        stor154[arg1].field_0 = arg1
        if bool(stor154[arg1].field_256):
            if bool(stor154[arg1].field_256) == uint255(stor154[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if arg2.length:
                stor154[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor154[arg1].field_256 = 0
                idx = 0
                while (uint255(stor154[arg1].field_256) * 0.5) + 31 / 32 > idx:
                    stor154[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor154[arg1].field_256) == stor154[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if arg2.length:
                stor154[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor154[arg1].field_256 = 0
                idx = 0
                while stor154[arg1].field_257 % 128 + 31 / 32 > idx:
                    stor154[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        if bool(stor154[arg1].field_512):
            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if arg3.length:
                stor154[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor154[arg1].field_512 = 0
                idx = 0
                while (uint255(stor154[arg1].field_512) * 0.5) + 31 / 32 > idx:
                    stor154[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if arg3.length:
                stor154[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor154[arg1].field_512 = 0
                idx = 0
                while stor154[arg1].field_513 % 128 + 31 / 32 > idx:
                    stor154[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
        stor154[arg1].field_768 = arg4
        uint8(stor154[arg1].field_1024) = uint8(bool(arg5))
        stor154[arg1].field_1280 = 0
    else:
        call sub_c8ea4dd6Address.create(string arg1) with:
             gas gas_remaining wei
            args Array(len=arg6.length, data=arg6[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        stor155[arg1] = 1
        stor154[arg1].field_0 = arg1
        if bool(stor154[arg1].field_256):
            if bool(stor154[arg1].field_256) == uint255(stor154[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if arg2.length:
                stor154[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor154[arg1].field_256 = 0
                idx = 0
                while (uint255(stor154[arg1].field_256) * 0.5) + 31 / 32 > idx:
                    stor154[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor154[arg1].field_256) == stor154[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if arg2.length:
                stor154[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor154[arg1].field_256 = 0
                idx = 0
                while stor154[arg1].field_257 % 128 + 31 / 32 > idx:
                    stor154[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        if bool(stor154[arg1].field_512):
            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if arg3.length:
                stor154[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor154[arg1].field_512 = 0
                idx = 0
                while (uint255(stor154[arg1].field_512) * 0.5) + 31 / 32 > idx:
                    stor154[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if arg3.length:
                stor154[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor154[arg1].field_512 = 0
                idx = 0
                while stor154[arg1].field_513 % 128 + 31 / 32 > idx:
                    stor154[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
        stor154[arg1].field_768 = arg4
        uint8(stor154[arg1].field_1024) = uint8(bool(arg5))
        stor154[arg1].field_1280 = ext_call.return_data[0]
    sub_574726f2.length++
    stor72A1[stor153.length] = arg1
    emit 0xd65a1cf8: block.timestamp, msg.sender, arg1
}

function sub_3d214ff1(?) payable {
    require calldata.size - 4 >= 192
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg2.length)) + 97 < 96 or ceil32(ceil32(arg2.length)) + 97 > test266151307():
        revert with 0, 65
    require arg2 + arg2.length + 36 <= calldata.size
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 98 < 97 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + 98 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require arg5 == bool(arg5)
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    if arg6.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg6.length)) + 99 < 98 or ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 99 > test266151307():
        revert with 0, 65
    require arg6 + arg6.length + 36 <= calldata.size
    if not uint8(roleAdmin[0][address(msg.sender)].field_0):
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 131 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 131 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 227 len 66] = call.data[calldata.size len 66]
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 227 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 163 len 42], 8297, mem[ceil32(ceil32(arg2.length)) + ceil32(ceil32(arg3.length)) + ceil32(ceil32(arg6.length)) + 291 len 66], 0, 0 >> 928,
                    0
    if uint8(stor154[arg1].field_1024):
        stor154[arg1].field_0 = arg1
        if bool(stor154[arg1].field_256):
            if bool(stor154[arg1].field_256) == uint255(stor154[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if arg2.length:
                stor154[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor154[arg1].field_256 = 0
                idx = 0
                while (uint255(stor154[arg1].field_256) * 0.5) + 31 / 32 > idx:
                    stor154[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor154[arg1].field_256) == stor154[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if arg2.length:
                stor154[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
            else:
                stor154[arg1].field_256 = 0
                idx = 0
                while stor154[arg1].field_257 % 128 + 31 / 32 > idx:
                    stor154[arg1][idx + 1].field_0 = 0
                    idx = idx + 1
                    continue 
        if bool(stor154[arg1].field_512):
            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if arg3.length:
                stor154[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor154[arg1].field_512 = 0
                idx = 0
                while (uint255(stor154[arg1].field_512) * 0.5) + 31 / 32 > idx:
                    stor154[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if arg3.length:
                stor154[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
            else:
                stor154[arg1].field_512 = 0
                idx = 0
                while stor154[arg1].field_513 % 128 + 31 / 32 > idx:
                    stor154[arg1][idx + 2].field_0 = 0
                    idx = idx + 1
                    continue 
        stor154[arg1].field_768 = arg4
        uint8(stor154[arg1].field_1024) = uint8(bool(arg5))
    else:
        if not arg5:
            stor154[arg1].field_0 = arg1
            if bool(stor154[arg1].field_256):
                if bool(stor154[arg1].field_256) == uint255(stor154[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if arg2.length:
                    stor154[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor154[arg1].field_256 = 0
                    idx = 0
                    while (uint255(stor154[arg1].field_256) * 0.5) + 31 / 32 > idx:
                        stor154[arg1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor154[arg1].field_256) == stor154[arg1].field_257 % 128 < 32:
                    revert with 0, 34
                if arg2.length:
                    stor154[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor154[arg1].field_256 = 0
                    idx = 0
                    while stor154[arg1].field_257 % 128 + 31 / 32 > idx:
                        stor154[arg1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            if bool(stor154[arg1].field_512):
                if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                    revert with 0, 34
                if arg3.length:
                    stor154[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
                else:
                    stor154[arg1].field_512 = 0
                    idx = 0
                    while (uint255(stor154[arg1].field_512) * 0.5) + 31 / 32 > idx:
                        stor154[arg1][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                    revert with 0, 34
                if arg3.length:
                    stor154[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
                else:
                    stor154[arg1].field_512 = 0
                    idx = 0
                    while stor154[arg1].field_513 % 128 + 31 / 32 > idx:
                        stor154[arg1][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
            stor154[arg1].field_768 = arg4
            uint8(stor154[arg1].field_1024) = uint8(bool(arg5))
        else:
            call sub_c8ea4dd6Address.create(string arg1) with:
                 gas gas_remaining wei
                args Array(len=arg6.length, data=arg6[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            stor154[arg1].field_0 = arg1
            if bool(stor154[arg1].field_256):
                if bool(stor154[arg1].field_256) == uint255(stor154[arg1].field_256) * 0.5 < 32:
                    revert with 0, 34
                if arg2.length:
                    stor154[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor154[arg1].field_256 = 0
                    idx = 0
                    while (uint255(stor154[arg1].field_256) * 0.5) + 31 / 32 > idx:
                        stor154[arg1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor154[arg1].field_256) == stor154[arg1].field_257 % 128 < 32:
                    revert with 0, 34
                if arg2.length:
                    stor154[arg1][1][].field_0 = Array(len=arg2.length, data=arg2[all])
                else:
                    stor154[arg1].field_256 = 0
                    idx = 0
                    while stor154[arg1].field_257 % 128 + 31 / 32 > idx:
                        stor154[arg1][idx + 1].field_0 = 0
                        idx = idx + 1
                        continue 
            if bool(stor154[arg1].field_512):
                if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                    revert with 0, 34
                if arg3.length:
                    stor154[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
                else:
                    stor154[arg1].field_512 = 0
                    idx = 0
                    while (uint255(stor154[arg1].field_512) * 0.5) + 31 / 32 > idx:
                        stor154[arg1][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                    revert with 0, 34
                if arg3.length:
                    stor154[arg1][2][].field_0 = Array(len=arg3.length, data=arg3[all])
                else:
                    stor154[arg1].field_512 = 0
                    idx = 0
                    while stor154[arg1].field_513 % 128 + 31 / 32 > idx:
                        stor154[arg1][idx + 2].field_0 = 0
                        idx = idx + 1
                        continue 
            stor154[arg1].field_768 = arg4
            uint8(stor154[arg1].field_1024) = uint8(bool(arg5))
            stor154[arg1].field_1280 = ext_call.return_data[0]
    emit 0x43060ca0: block.timestamp, msg.sender, arg1
}

function sub_27aed72e(?) payable {
    require calldata.size - 4 >= 32
    if bool(stor154[arg1].field_256):
        if bool(stor154[arg1].field_256) == uint255(stor154[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if bool(stor154[arg1].field_256):
            if bool(stor154[arg1].field_256) == uint255(stor154[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor154[arg1].field_256):
                if 31 >= uint255(stor154[arg1].field_256) * 0.5:
                    mem[128] = 256 * Mask(248, 0, stor154[arg1].field_264)
                else:
                    mem[128] = stor154[arg1][1].field_0
                    idx = 128
                    s = 0
                    while (uint255(stor154[arg1].field_256) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor154[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor154[arg1].field_256) == stor154[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if stor154[arg1].field_257 % 128:
                if 31 >= stor154[arg1].field_257 % 128:
                    mem[128] = 256 * Mask(248, 0, stor154[arg1].field_264)
                else:
                    mem[128] = stor154[arg1][1].field_0
                    idx = 128
                    s = 0
                    while stor154[arg1].field_257 % 128 + 96 > idx:
                        mem[idx + 32] = stor154[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        if bool(stor154[arg1].field_512):
            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if bool(stor154[arg1].field_512):
                if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                    revert with 0, 34
                if not Mask(256, -1, stor154[arg1].field_512):
                    if ceil32(uint255(stor154[arg1].field_256) * 0.5) > uint255(stor154[arg1].field_256) * 0.5:
                        mem[(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = uint255(stor154[arg1].field_512) * 0.5
                    mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor154[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor154[arg1].field_512) * 0.5)]
                    if ceil32(uint255(stor154[arg1].field_512) * 0.5) > uint255(stor154[arg1].field_512) * 0.5:
                        mem[(uint255(stor154[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416] = 0
                else:
                    if 31 >= uint255(stor154[arg1].field_512) * 0.5:
                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160] = 256 * Mask(248, 0, stor154[arg1].field_520)
                    else:
                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160] = stor154[arg1][2].field_0
                        idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 128 > idx:
                            mem[idx + 32] = stor154[arg1][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor154[arg1].field_256) * 0.5) > uint255(stor154[arg1].field_256) * 0.5:
                        mem[(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = uint255(stor154[arg1].field_512) * 0.5
                    mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor154[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor154[arg1].field_512) * 0.5)]
                    if ceil32(uint255(stor154[arg1].field_512) * 0.5) > uint255(stor154[arg1].field_512) * 0.5:
                        mem[(uint255(stor154[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416] = 0
            else:
                if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                    revert with 0, 34
                if not stor154[arg1].field_513 % 128:
                    if ceil32(uint255(stor154[arg1].field_256) * 0.5) > uint255(stor154[arg1].field_256) * 0.5:
                        mem[(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = uint255(stor154[arg1].field_512) * 0.5
                    mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor154[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor154[arg1].field_512) * 0.5)]
                    if ceil32(uint255(stor154[arg1].field_512) * 0.5) > uint255(stor154[arg1].field_512) * 0.5:
                        mem[(uint255(stor154[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416] = 0
                else:
                    if 31 >= stor154[arg1].field_513 % 128:
                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160] = 256 * Mask(248, 0, stor154[arg1].field_520)
                    else:
                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160] = stor154[arg1][2].field_0
                        idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160
                        s = 0
                        while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 128 > idx:
                            mem[idx + 32] = stor154[arg1][s + 2].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                    if ceil32(uint255(stor154[arg1].field_256) * 0.5) > uint255(stor154[arg1].field_256) * 0.5:
                        mem[(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = 0
                    mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = uint255(stor154[arg1].field_512) * 0.5
                    mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor154[arg1].field_512) * 0.5)] = mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor154[arg1].field_512) * 0.5)]
                    if ceil32(uint255(stor154[arg1].field_512) * 0.5) > uint255(stor154[arg1].field_512) * 0.5:
                        mem[(uint255(stor154[arg1].field_512) * 0.5) + (2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416] = 0
            return stor154[arg1].field_0, 
                   Array(len=2 * Mask(256, -1, stor154[arg1].field_256), data=mem[128 len ceil32(uint255(stor154[arg1].field_256) * 0.5)], 2 * Mask(256, -1, stor154[arg1].field_512), mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160 len ceil32(uint255(stor154[arg1].field_512) * 0.5)]),
                   ceil32(uint255(stor154[arg1].field_256) * 0.5) + 224,
                   stor154[arg1].field_768,
                   bool(uint8(stor154[arg1].field_1024)),
                   stor154[arg1].field_1280
        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if bool(stor154[arg1].field_512):
            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor154[arg1].field_512):
                if ceil32(uint255(stor154[arg1].field_256) * 0.5) > uint255(stor154[arg1].field_256) * 0.5:
                    mem[(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384] = 0
                mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(stor154[arg1].field_513 % 128) + 384] = stor154[arg1].field_513 % 128
                mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(stor154[arg1].field_513 % 128) + 416 len ceil32(stor154[arg1].field_513 % 128)] = mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160 len ceil32(stor154[arg1].field_513 % 128)]
                if ceil32(stor154[arg1].field_513 % 128) > stor154[arg1].field_513 % 128:
                    mem[stor154[arg1].field_513 % 128 + (2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(stor154[arg1].field_513 % 128) + 416] = 0
            else:
                if 31 >= uint255(stor154[arg1].field_512) * 0.5:
                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160] = 256 * Mask(248, 0, stor154[arg1].field_520)
                else:
                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160] = stor154[arg1][2].field_0
                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor154[arg1].field_256) * 0.5) > uint255(stor154[arg1].field_256) * 0.5:
                    mem[(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384] = 0
                mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(stor154[arg1].field_513 % 128) + 384] = stor154[arg1].field_513 % 128
                mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(stor154[arg1].field_513 % 128) + 416 len ceil32(stor154[arg1].field_513 % 128)] = mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160 len ceil32(stor154[arg1].field_513 % 128)]
                if ceil32(stor154[arg1].field_513 % 128) > stor154[arg1].field_513 % 128:
                    mem[stor154[arg1].field_513 % 128 + (2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(stor154[arg1].field_513 % 128) + 416] = 0
        else:
            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if not stor154[arg1].field_513 % 128:
                if ceil32(uint255(stor154[arg1].field_256) * 0.5) > uint255(stor154[arg1].field_256) * 0.5:
                    mem[(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384] = 0
                mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(stor154[arg1].field_513 % 128) + 384] = stor154[arg1].field_513 % 128
                mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(stor154[arg1].field_513 % 128) + 416 len ceil32(stor154[arg1].field_513 % 128)] = mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160 len ceil32(stor154[arg1].field_513 % 128)]
                if ceil32(stor154[arg1].field_513 % 128) > stor154[arg1].field_513 % 128:
                    mem[stor154[arg1].field_513 % 128 + (2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(stor154[arg1].field_513 % 128) + 416] = 0
            else:
                if 31 >= stor154[arg1].field_513 % 128:
                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160] = 256 * Mask(248, 0, stor154[arg1].field_520)
                else:
                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160] = stor154[arg1][2].field_0
                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160
                    s = 0
                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 128 > idx:
                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(uint255(stor154[arg1].field_256) * 0.5) > uint255(stor154[arg1].field_256) * 0.5:
                    mem[(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384] = 0
                mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(stor154[arg1].field_513 % 128) + 384] = stor154[arg1].field_513 % 128
                mem[(2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(stor154[arg1].field_513 % 128) + 416 len ceil32(stor154[arg1].field_513 % 128)] = mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160 len ceil32(stor154[arg1].field_513 % 128)]
                if ceil32(stor154[arg1].field_513 % 128) > stor154[arg1].field_513 % 128:
                    mem[stor154[arg1].field_513 % 128 + (2 * ceil32(uint255(stor154[arg1].field_256) * 0.5)) + ceil32(stor154[arg1].field_513 % 128) + 416] = 0
        return stor154[arg1].field_0, 
               Array(len=2 * Mask(256, -1, stor154[arg1].field_256), data=mem[128 len ceil32(uint255(stor154[arg1].field_256) * 0.5)], stor154[arg1].field_512 % 128, mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 160 len ceil32(stor154[arg1].field_513 % 128)]),
               ceil32(uint255(stor154[arg1].field_256) * 0.5) + 224,
               stor154[arg1].field_768,
               bool(uint8(stor154[arg1].field_1024)),
               stor154[arg1].field_1280
    if bool(stor154[arg1].field_256) == stor154[arg1].field_257 % 128 < 32:
        revert with 0, 34
    if bool(stor154[arg1].field_256):
        if bool(stor154[arg1].field_256) == uint255(stor154[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor154[arg1].field_256):
            if 31 >= uint255(stor154[arg1].field_256) * 0.5:
                mem[128] = 256 * Mask(248, 0, stor154[arg1].field_264)
            else:
                mem[128] = stor154[arg1][1].field_0
                idx = 128
                s = 0
                while (uint255(stor154[arg1].field_256) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor154[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if bool(stor154[arg1].field_256) == stor154[arg1].field_257 % 128 < 32:
            revert with 0, 34
        if stor154[arg1].field_257 % 128:
            if 31 >= stor154[arg1].field_257 % 128:
                mem[128] = 256 * Mask(248, 0, stor154[arg1].field_264)
            else:
                mem[128] = stor154[arg1][1].field_0
                idx = 128
                s = 0
                while stor154[arg1].field_257 % 128 + 96 > idx:
                    mem[idx + 32] = stor154[arg1][s + 1].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    if bool(stor154[arg1].field_512):
        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if bool(stor154[arg1].field_512):
            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor154[arg1].field_512):
                if ceil32(stor154[arg1].field_257 % 128) > stor154[arg1].field_257 % 128:
                    mem[stor154[arg1].field_257 % 128 + ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = 0
                mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = uint255(stor154[arg1].field_512) * 0.5
                mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor154[arg1].field_512) * 0.5)] = mem[ceil32(stor154[arg1].field_257 % 128) + 160 len ceil32(uint255(stor154[arg1].field_512) * 0.5)]
                if ceil32(uint255(stor154[arg1].field_512) * 0.5) > uint255(stor154[arg1].field_512) * 0.5:
                    mem[(uint255(stor154[arg1].field_512) * 0.5) + (2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416] = 0
            else:
                if 31 >= uint255(stor154[arg1].field_512) * 0.5:
                    mem[ceil32(stor154[arg1].field_257 % 128) + 160] = 256 * Mask(248, 0, stor154[arg1].field_520)
                else:
                    mem[ceil32(stor154[arg1].field_257 % 128) + 160] = stor154[arg1][2].field_0
                    idx = ceil32(stor154[arg1].field_257 % 128) + 160
                    s = 0
                    while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 128 > idx:
                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor154[arg1].field_257 % 128) > stor154[arg1].field_257 % 128:
                    mem[stor154[arg1].field_257 % 128 + ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = 0
                mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = uint255(stor154[arg1].field_512) * 0.5
                mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor154[arg1].field_512) * 0.5)] = mem[ceil32(stor154[arg1].field_257 % 128) + 160 len ceil32(uint255(stor154[arg1].field_512) * 0.5)]
                if ceil32(uint255(stor154[arg1].field_512) * 0.5) > uint255(stor154[arg1].field_512) * 0.5:
                    mem[(uint255(stor154[arg1].field_512) * 0.5) + (2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416] = 0
        else:
            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                revert with 0, 34
            if not stor154[arg1].field_513 % 128:
                if ceil32(stor154[arg1].field_257 % 128) > stor154[arg1].field_257 % 128:
                    mem[stor154[arg1].field_257 % 128 + ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = 0
                mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = uint255(stor154[arg1].field_512) * 0.5
                mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor154[arg1].field_512) * 0.5)] = mem[ceil32(stor154[arg1].field_257 % 128) + 160 len ceil32(uint255(stor154[arg1].field_512) * 0.5)]
                if ceil32(uint255(stor154[arg1].field_512) * 0.5) > uint255(stor154[arg1].field_512) * 0.5:
                    mem[(uint255(stor154[arg1].field_512) * 0.5) + (2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416] = 0
            else:
                if 31 >= stor154[arg1].field_513 % 128:
                    mem[ceil32(stor154[arg1].field_257 % 128) + 160] = 256 * Mask(248, 0, stor154[arg1].field_520)
                else:
                    mem[ceil32(stor154[arg1].field_257 % 128) + 160] = stor154[arg1][2].field_0
                    idx = ceil32(stor154[arg1].field_257 % 128) + 160
                    s = 0
                    while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 128 > idx:
                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                if ceil32(stor154[arg1].field_257 % 128) > stor154[arg1].field_257 % 128:
                    mem[stor154[arg1].field_257 % 128 + ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = 0
                mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384] = uint255(stor154[arg1].field_512) * 0.5
                mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416 len ceil32(uint255(stor154[arg1].field_512) * 0.5)] = mem[ceil32(stor154[arg1].field_257 % 128) + 160 len ceil32(uint255(stor154[arg1].field_512) * 0.5)]
                if ceil32(uint255(stor154[arg1].field_512) * 0.5) > uint255(stor154[arg1].field_512) * 0.5:
                    mem[(uint255(stor154[arg1].field_512) * 0.5) + (2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 416] = 0
        return stor154[arg1].field_0, 
               Array(len=stor154[arg1].field_256 % 128, data=mem[128 len ceil32(stor154[arg1].field_257 % 128)], 2 * Mask(256, -1, stor154[arg1].field_512), mem[ceil32(stor154[arg1].field_257 % 128) + 160 len ceil32(uint255(stor154[arg1].field_512) * 0.5)]),
               ceil32(stor154[arg1].field_257 % 128) + 224,
               stor154[arg1].field_768,
               bool(uint8(stor154[arg1].field_1024)),
               stor154[arg1].field_1280
    if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
        revert with 0, 34
    if bool(stor154[arg1].field_512):
        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
            revert with 0, 34
        if not Mask(256, -1, stor154[arg1].field_512):
            if ceil32(stor154[arg1].field_257 % 128) > stor154[arg1].field_257 % 128:
                mem[stor154[arg1].field_257 % 128 + ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384] = 0
            mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(stor154[arg1].field_513 % 128) + 384] = stor154[arg1].field_513 % 128
            mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(stor154[arg1].field_513 % 128) + 416 len ceil32(stor154[arg1].field_513 % 128)] = mem[ceil32(stor154[arg1].field_257 % 128) + 160 len ceil32(stor154[arg1].field_513 % 128)]
            if ceil32(stor154[arg1].field_513 % 128) > stor154[arg1].field_513 % 128:
                mem[stor154[arg1].field_513 % 128 + (2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(stor154[arg1].field_513 % 128) + 416] = 0
        else:
            if 31 >= uint255(stor154[arg1].field_512) * 0.5:
                mem[ceil32(stor154[arg1].field_257 % 128) + 160] = 256 * Mask(248, 0, stor154[arg1].field_520)
            else:
                mem[ceil32(stor154[arg1].field_257 % 128) + 160] = stor154[arg1][2].field_0
                idx = ceil32(stor154[arg1].field_257 % 128) + 160
                s = 0
                while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 128 > idx:
                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor154[arg1].field_257 % 128) > stor154[arg1].field_257 % 128:
                mem[stor154[arg1].field_257 % 128 + ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384] = 0
            mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(stor154[arg1].field_513 % 128) + 384] = stor154[arg1].field_513 % 128
            mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(stor154[arg1].field_513 % 128) + 416 len ceil32(stor154[arg1].field_513 % 128)] = mem[ceil32(stor154[arg1].field_257 % 128) + 160 len ceil32(stor154[arg1].field_513 % 128)]
            if ceil32(stor154[arg1].field_513 % 128) > stor154[arg1].field_513 % 128:
                mem[stor154[arg1].field_513 % 128 + (2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(stor154[arg1].field_513 % 128) + 416] = 0
    else:
        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
            revert with 0, 34
        if not stor154[arg1].field_513 % 128:
            if ceil32(stor154[arg1].field_257 % 128) > stor154[arg1].field_257 % 128:
                mem[stor154[arg1].field_257 % 128 + ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384] = 0
            mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(stor154[arg1].field_513 % 128) + 384] = stor154[arg1].field_513 % 128
            mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(stor154[arg1].field_513 % 128) + 416 len ceil32(stor154[arg1].field_513 % 128)] = mem[ceil32(stor154[arg1].field_257 % 128) + 160 len ceil32(stor154[arg1].field_513 % 128)]
            if ceil32(stor154[arg1].field_513 % 128) > stor154[arg1].field_513 % 128:
                mem[stor154[arg1].field_513 % 128 + (2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(stor154[arg1].field_513 % 128) + 416] = 0
        else:
            if 31 >= stor154[arg1].field_513 % 128:
                mem[ceil32(stor154[arg1].field_257 % 128) + 160] = 256 * Mask(248, 0, stor154[arg1].field_520)
            else:
                mem[ceil32(stor154[arg1].field_257 % 128) + 160] = stor154[arg1][2].field_0
                idx = ceil32(stor154[arg1].field_257 % 128) + 160
                s = 0
                while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 128 > idx:
                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
            if ceil32(stor154[arg1].field_257 % 128) > stor154[arg1].field_257 % 128:
                mem[stor154[arg1].field_257 % 128 + ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384] = 0
            mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(stor154[arg1].field_513 % 128) + 384] = stor154[arg1].field_513 % 128
            mem[(2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(stor154[arg1].field_513 % 128) + 416 len ceil32(stor154[arg1].field_513 % 128)] = mem[ceil32(stor154[arg1].field_257 % 128) + 160 len ceil32(stor154[arg1].field_513 % 128)]
            if ceil32(stor154[arg1].field_513 % 128) > stor154[arg1].field_513 % 128:
                mem[stor154[arg1].field_513 % 128 + (2 * ceil32(stor154[arg1].field_257 % 128)) + ceil32(stor154[arg1].field_513 % 128) + 416] = 0
    return stor154[arg1].field_0, 
           Array(len=stor154[arg1].field_256 % 128, data=mem[128 len ceil32(stor154[arg1].field_257 % 128)], stor154[arg1].field_512 % 128, mem[ceil32(stor154[arg1].field_257 % 128) + 160 len ceil32(stor154[arg1].field_513 % 128)]),
           ceil32(stor154[arg1].field_257 % 128) + 224,
           stor154[arg1].field_768,
           bool(uint8(stor154[arg1].field_1024)),
           stor154[arg1].field_1280
}

function sub_4b6e92ab(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    idx = cd[4] + 36
    s = 128
    while idx < cd[4] + (32 * ('cd', 4).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = cd[36] + 36
    s = ceil32(32 * ('cd', 4).length) + 129
    while idx < cd[36] + (32 * ('cd', 36).length) + 36:
        require cd[idx] <= test266151307()
        require cd[36] + cd[idx] + 67 < calldata.size
        if cd[(cd[36] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _2498 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[36] + cd[idx] + 36)])) + 1
        mem[_2498] = cd[(cd[36] + cd[idx] + 36)]
        require cd[36] + cd[idx] + cd[(cd[36] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_2498 + 32 len cd[(cd[36] + cd[idx] + 36)]] = call.data[cd[36] + cd[idx] + 68 len cd[(cd[36] + cd[idx] + 36)]]
        mem[_2498 + cd[(cd[36] + cd[idx] + 36)] + 32] = 0
        mem[s] = _2498
        idx = idx + 32
        s = s + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    _2499 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 68).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 68).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 68).length) + 1
    mem[_2499] = ('cd', 68).length
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    idx = cd[68] + 36
    s = _2499 + 32
    while idx < cd[68] + (32 * ('cd', 68).length) + 36:
        require cd[idx] <= test266151307()
        require cd[68] + cd[idx] + 67 < calldata.size
        if cd[(cd[68] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _3745 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[68] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[68] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[68] + cd[idx] + 36)])) + 1
        mem[_3745] = cd[(cd[68] + cd[idx] + 36)]
        require cd[68] + cd[idx] + cd[(cd[68] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_3745 + 32 len cd[(cd[68] + cd[idx] + 36)]] = call.data[cd[68] + cd[idx] + 68 len cd[(cd[68] + cd[idx] + 36)]]
        mem[_3745 + cd[(cd[68] + cd[idx] + 36)] + 32] = 0
        mem[s] = _3745
        idx = idx + 32
        s = s + 32
        continue 
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    _3746 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 100).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 100).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 100).length) + 1
    mem[_3746] = ('cd', 100).length
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    idx = cd[100] + 36
    s = _3746 + 32
    while idx < cd[100] + (32 * ('cd', 100).length) + 36:
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    if ('cd', 132).length > test266151307():
        revert with 0, 65
    _4990 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 132).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 132).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 132).length) + 1
    mem[_4990] = ('cd', 132).length
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    idx = cd[132] + 36
    s = _4990 + 32
    while idx < cd[132] + (32 * ('cd', 132).length) + 36:
        require cd[idx] == bool(cd[idx])
        mem[s] = cd[idx]
        idx = idx + 32
        s = s + 32
        continue 
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    if ('cd', 164).length > test266151307():
        revert with 0, 65
    _6233 = mem[64]
    if mem[64] + ceil32(32 * ('cd', 164).length) + 1 < mem[64] or mem[64] + ceil32(32 * ('cd', 164).length) + 1 > test266151307():
        revert with 0, 65
    mem[64] = mem[64] + ceil32(32 * ('cd', 164).length) + 1
    mem[_6233] = ('cd', 164).length
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    idx = cd[164] + 36
    s = _6233 + 32
    while idx < cd[164] + (32 * ('cd', 164).length) + 36:
        require cd[idx] <= test266151307()
        require cd[164] + cd[idx] + 67 < calldata.size
        if cd[(cd[164] + cd[idx] + 36)] > test266151307():
            revert with 0, 65
        _7477 = mem[64]
        if mem[64] + ceil32(ceil32(cd[(cd[164] + cd[idx] + 36)])) + 1 < mem[64] or mem[64] + ceil32(ceil32(cd[(cd[164] + cd[idx] + 36)])) + 1 > test266151307():
            revert with 0, 65
        mem[64] = mem[64] + ceil32(ceil32(cd[(cd[164] + cd[idx] + 36)])) + 1
        mem[_7477] = cd[(cd[164] + cd[idx] + 36)]
        require cd[164] + cd[idx] + cd[(cd[164] + cd[idx] + 36)] + 68 <= calldata.size
        mem[_7477 + 32 len cd[(cd[164] + cd[idx] + 36)]] = call.data[cd[164] + cd[idx] + 68 len cd[(cd[164] + cd[idx] + 36)]]
        mem[_7477 + cd[(cd[164] + cd[idx] + 36)] + 32] = 0
        mem[s] = _7477
        idx = idx + 32
        s = s + 32
        continue 
    mem[0] = msg.sender
    mem[32] = sha3(0, 101)
    if uint8(roleAdmin[0][address(msg.sender)].field_0):
        _7478 = mem[96]
        if mem[96] != mem[ceil32(32 * ('cd', 4).length) + 97]:
            revert with 0, 'Different lengths'
        if mem[_2499] != mem[96]:
            revert with 0, 'Different lengths'
        if mem[_3746] != mem[96]:
            revert with 0, 'Different lengths'
        if mem[_4990] != mem[96]:
            revert with 0, 'Different lengths'
        if mem[_6233] != mem[96]:
            revert with 0, 'Different lengths'
        idx = 0
        while idx < _7478:
            if idx >= mem[96]:
                revert with 0, 50
            _8717 = mem[(32 * idx) + 128]
            if idx >= mem[ceil32(32 * ('cd', 4).length) + 97]:
                revert with 0, 50
            _8721 = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 129]
            if idx >= mem[_2499]:
                revert with 0, 50
            _8724 = mem[(32 * idx) + _2499 + 32]
            if idx >= mem[_3746]:
                revert with 0, 50
            _8726 = mem[(32 * idx) + _3746 + 32]
            if idx >= mem[_4990]:
                revert with 0, 50
            _8728 = mem[(32 * idx) + _4990 + 32]
            if idx >= mem[_6233]:
                revert with 0, 50
            _8730 = mem[(32 * idx) + _6233 + 32]
            mem[0] = msg.sender
            mem[32] = sha3(0, 101)
            if not uint8(roleAdmin[0][address(msg.sender)].field_0):
                _8749 = mem[64]
                mem[mem[64]] = 42
                mem[64] = mem[64] + 96
                mem[_8749 + 32 len 42] = call.data[calldata.size len 42]
                if 0 >= mem[_8749]:
                    revert with 0, 50
                mem[_8749 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_8749]:
                    revert with 0, 50
                mem[_8749 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 41
                s = address(msg.sender)
                while idx > 1:
                    if s % 16 >= 16:
                        revert with 0, 50
                    if idx >= mem[_8749]:
                        revert with 0, 50
                    mem[idx + _8749 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    s = Mask(252, 0, s) * 0.0625
                    continue 
                if msg.sender + 10240:
                    revert with 0, 'Strings: hex length insufficient'
                _10013 = mem[64]
                mem[mem[64]] = 66
                mem[64] = mem[64] + 128
                mem[_10013 + 32 len 66] = call.data[calldata.size len 66]
                if 0 >= mem[_10013]:
                    revert with 0, 50
                mem[_10013 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
                if 1 >= mem[_10013]:
                    revert with 0, 50
                mem[_10013 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
                idx = 65
                while idx > 1:
                    if idx >= mem[_10013]:
                        revert with 0, 50
                    mem[idx + _10013 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
                    if not idx:
                        revert with 0, 17
                    idx = idx - 1
                    continue 
                _11387 = mem[64]
                mem[mem[64] + 32] = 'AccessControl: account '
                _11390 = mem[_8749]
                idx = 0
                while idx < _11390:
                    mem[idx + _11387 + 55] = mem[idx + _8749 + 32]
                    idx = idx + 32
                    continue 
                mem[_11387 + _11390 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
                if ceil32(_11390) <= _11390:
                    _12853 = mem[_10013]
                    idx = 0
                    while idx < _12853:
                        mem[idx + _11387 + _11390 + 72] = mem[idx + _10013 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_12853) <= _12853:
                        _13495 = mem[64]
                        mem[mem[64]] = _12853 + _11387 + _11390 + -mem[64] + 40
                        mem[64] = _12853 + _11387 + _11390 + 72
                        mem[_12853 + _11387 + _11390 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_12853 + _11387 + _11390 + 76] = 32
                        _13547 = mem[_13495]
                        mem[_12853 + _11387 + _11390 + 108] = mem[_13495]
                        idx = 0
                        while idx < _13547:
                            mem[idx + _12853 + _11387 + _11390 + 140] = mem[idx + _13495 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_13547) > _13547:
                            mem[_13547 + _12853 + _11387 + _11390 + 140] = 0
                        revert with 0, 32, mem[_12853 + _11387 + _11390 + 108 len ceil32(_13547) + 32]
                    mem[_12853 + _11387 + _11390 + 72] = 0
                    _13496 = mem[64]
                    mem[mem[64]] = _12853 + _11387 + _11390 + -mem[64] + 40
                    mem[64] = _12853 + _11387 + _11390 + 72
                    mem[_12853 + _11387 + _11390 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_12853 + _11387 + _11390 + 76] = 32
                    _13548 = mem[_13496]
                    mem[_12853 + _11387 + _11390 + 108] = mem[_13496]
                    idx = 0
                    while idx < _13548:
                        mem[idx + _12853 + _11387 + _11390 + 140] = mem[idx + _13496 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13548) > _13548:
                        mem[_13548 + _12853 + _11387 + _11390 + 140] = 0
                    revert with 0, 32, mem[_12853 + _11387 + _11390 + 108 len ceil32(_13548) + 32]
                _12854 = mem[_10013]
                idx = 0
                while idx < _12854:
                    mem[idx + _11387 + _11390 + 72] = mem[idx + _10013 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_12854) <= _12854:
                    _13497 = mem[64]
                    mem[mem[64]] = _12854 + _11387 + _11390 + -mem[64] + 40
                    mem[64] = _12854 + _11387 + _11390 + 72
                    mem[_12854 + _11387 + _11390 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_12854 + _11387 + _11390 + 76] = 32
                    _13549 = mem[_13497]
                    mem[_12854 + _11387 + _11390 + 108] = mem[_13497]
                    idx = 0
                    while idx < _13549:
                        mem[idx + _12854 + _11387 + _11390 + 140] = mem[idx + _13497 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_13549) > _13549:
                        mem[_13549 + _12854 + _11387 + _11390 + 140] = 0
                    revert with 0, 32, mem[_12854 + _11387 + _11390 + 108 len ceil32(_13549) + 32]
                mem[_12854 + _11387 + _11390 + 72] = 0
                _13498 = mem[64]
                mem[mem[64]] = _12854 + _11387 + _11390 + -mem[64] + 40
                mem[64] = _12854 + _11387 + _11390 + 72
                mem[_12854 + _11387 + _11390 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_12854 + _11387 + _11390 + 76] = 32
                _13550 = mem[_13498]
                mem[_12854 + _11387 + _11390 + 108] = mem[_13498]
                idx = 0
                while idx < _13550:
                    mem[idx + _12854 + _11387 + _11390 + 140] = mem[idx + _13498 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_13550) > _13550:
                    mem[_13550 + _12854 + _11387 + _11390 + 140] = 0
                revert with 0, 32, mem[_12854 + _11387 + _11390 + 108 len ceil32(_13550) + 32]
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 155
            if stor155[mem[(32 * idx) + 128]]:
                revert with 0, 'AchievementsRegistry: achievementId is already taken'
            if not _8728:
                _8738 = mem[64]
                mem[64] = mem[64] + 192
                mem[_8738] = mem[(32 * idx) + 128]
                mem[_8738 + 32] = _8721
                mem[_8738 + 64] = _8724
                mem[_8738 + 96] = _8726
                mem[_8738 + 128] = bool(_8728)
                mem[_8738 + 160] = 0
                mem[0] = _8717
                stor155[_8717] = 1
                mem[32] = 154
                stor154[_8717].field_0 = _8717
                _8743 = mem[_8721]
                if bool(stor154[_8717].field_256):
                    if bool(stor154[_8717].field_256) == uint255(stor154[_8717].field_256) * 0.5 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_8717, 154) + 1
                    if not _8743:
                        stor154[_8717].field_256 = 0
                        s = sha3(sha3(_8717, 154) + 1)
                        while sha3(sha3(_8717, 154) + 1) + ((uint255(stor154[_8717].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _9952 = mem[_8724]
                        if bool(stor154[_8717].field_512):
                            if bool(stor154[_8717].field_512) == uint255(stor154[_8717].field_512) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _9952:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor154[_8717].field_512 = (2 * _9952) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _9952 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _9952 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor154[_8717].field_512) == stor154[_8717].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _9952:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor154[_8717].field_512 = (2 * _9952) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _9952 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _9952 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        stor154[_8717].field_256 = (2 * _8743) + 1
                        t = sha3(sha3(_8717, 154) + 1)
                        s = _8721 + 32
                        while _8721 + _8743 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(_8717, 154) + 1) + (Mask(251, 0, _8743 + 31) >> 5)
                        while sha3(sha3(_8717, 154) + 1) + ((uint255(stor154[_8717].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _11210 = mem[_8724]
                        if bool(stor154[_8717].field_512):
                            if bool(stor154[_8717].field_512) == uint255(stor154[_8717].field_512) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _11210:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor154[_8717].field_512 = (2 * _11210) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _11210 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _11210 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor154[_8717].field_512) == stor154[_8717].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _11210:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor154[_8717].field_512 = (2 * _11210) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _11210 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _11210 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                else:
                    if bool(stor154[_8717].field_256) == stor154[_8717].field_257 % 128 < 32:
                        revert with 0, 34
                    mem[0] = sha3(_8717, 154) + 1
                    if not _8743:
                        stor154[_8717].field_256 = 0
                        s = sha3(sha3(_8717, 154) + 1)
                        while sha3(sha3(_8717, 154) + 1) + (stor154[_8717].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _9958 = mem[_8724]
                        if bool(stor154[_8717].field_512):
                            if bool(stor154[_8717].field_512) == uint255(stor154[_8717].field_512) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _9958:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor154[_8717].field_512 = (2 * _9958) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _9958 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _9958 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor154[_8717].field_512) == stor154[_8717].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _9958:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor154[_8717].field_512 = (2 * _9958) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _9958 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _9958 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                    else:
                        stor154[_8717].field_256 = (2 * _8743) + 1
                        t = sha3(sha3(_8717, 154) + 1)
                        s = _8721 + 32
                        while _8721 + _8743 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(_8717, 154) + 1) + (Mask(251, 0, _8743 + 31) >> 5)
                        while sha3(sha3(_8717, 154) + 1) + (stor154[_8717].field_257 % 128 + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _11302 = mem[_8724]
                        if bool(stor154[_8717].field_512):
                            if bool(stor154[_8717].field_512) == uint255(stor154[_8717].field_512) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _11302:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor154[_8717].field_512 = (2 * _11302) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _11302 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _11302 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor154[_8717].field_512) == stor154[_8717].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _11302:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor154[_8717].field_512 = (2 * _11302) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _11302 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _11302 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                stor154[_8717].field_768 = _8726
                uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                stor154[_8717].field_1280 = 0
            else:
                _8744 = mem[64]
                mem[mem[64]] = 0xb6a46b3b00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                _8746 = mem[_8730]
                mem[mem[64] + 36] = mem[_8730]
                s = 0
                while s < _8746:
                    mem[s + _8744 + 68] = mem[s + _8730 + 32]
                    s = s + 32
                    continue 
                if ceil32(_8746) <= _8746:
                    call sub_c8ea4dd6Address.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_8746) + _8744 + -mem[64] + 64]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9968 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9977 = mem[_9968]
                    _9993 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_9993] = _8717
                    mem[_9993 + 32] = _8721
                    mem[_9993 + 64] = _8724
                    mem[_9993 + 96] = _8726
                    mem[_9993 + 128] = bool(_8728)
                    mem[_9993 + 160] = _9977
                    mem[0] = _8717
                    stor155[_8717] = 1
                    mem[32] = 154
                    stor154[_8717].field_0 = _8717
                    _9998 = mem[_8721]
                    if bool(stor154[_8717].field_256):
                        if bool(stor154[_8717].field_256) == uint255(stor154[_8717].field_256) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_8717, 154) + 1
                        if not _9998:
                            stor154[_8717].field_256 = 0
                            s = sha3(sha3(_8717, 154) + 1)
                            while sha3(sha3(_8717, 154) + 1) + ((uint255(stor154[_8717].field_256) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            _11368 = mem[_8724]
                            if bool(stor154[_8717].field_512):
                                if bool(stor154[_8717].field_512) == uint255(stor154[_8717].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_8717, 154) + 2
                                if not _11368:
                                    stor154[_8717].field_512 = 0
                                    s = sha3(sha3(_8717, 154) + 2)
                                    while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor154[_8717].field_512 = (2 * _11368) + 1
                                    t = sha3(sha3(_8717, 154) + 2)
                                    s = _8724 + 32
                                    while _8724 + _11368 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _11368 + 31) >> 5)
                                    while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                stor154[_8717].field_768 = _8726
                                uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                                stor154[_8717].field_1280 = _9977
                                sub_574726f2.length++
                                mem[0] = 153
                                stor72A1[stor153.length] = _8717
                                mem[mem[64]] = block.timestamp
                                emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if bool(stor154[_8717].field_512) == stor154[_8717].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _11368:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor154[_8717].field_768 = _8726
                                uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                                stor154[_8717].field_1280 = _9977
                                sub_574726f2.length++
                                mem[0] = 153
                                stor72A1[stor153.length] = _8717
                                mem[mem[64]] = block.timestamp
                                emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor154[_8717].field_512 = (2 * _11368) + 1
                            t = sha3(sha3(_8717, 154) + 2)
                            s = _8724 + 32
                            while _8724 + _11368 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _11368 + 31) >> 5)
                            while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor154[_8717].field_768 = _8726
                            uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                            stor154[_8717].field_1280 = _9977
                            sub_574726f2.length++
                            mem[0] = 153
                            stor72A1[stor153.length] = _8717
                            mem[mem[64]] = block.timestamp
                            emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                            if sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) == -1:
                                revert with 0, 17
                            s = sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) + 1
                            continue 
                        stor154[_8717].field_256 = (2 * _9998) + 1
                        t = sha3(sha3(_8717, 154) + 1)
                        s = _8721 + 32
                        while _8721 + _9998 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(_8717, 154) + 1) + (Mask(251, 0, _9998 + 31) >> 5)
                        while sha3(sha3(_8717, 154) + 1) + ((uint255(stor154[_8717].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _12516 = mem[_8724]
                        if bool(stor154[_8717].field_512):
                            if bool(stor154[_8717].field_512) == uint255(stor154[_8717].field_512) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _12516:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor154[_8717].field_512 = (2 * _12516) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _12516 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _12516 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor154[_8717].field_512) == stor154[_8717].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _12516:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor154[_8717].field_768 = _8726
                                uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                                stor154[_8717].field_1280 = _9977
                                sub_574726f2.length++
                                mem[0] = 153
                                stor72A1[stor153.length] = _8717
                                mem[mem[64]] = block.timestamp
                                emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                                if sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) + 1
                                continue 
                            stor154[_8717].field_512 = (2 * _12516) + 1
                            t = sha3(sha3(_8717, 154) + 2)
                            s = _8724 + 32
                            while _8724 + _12516 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _12516 + 31) >> 5)
                            while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor154[_8717].field_256) == stor154[_8717].field_257 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_8717, 154) + 1
                        if not _9998:
                            stor154[_8717].field_256 = 0
                            s = sha3(sha3(_8717, 154) + 1)
                            while sha3(sha3(_8717, 154) + 1) + (stor154[_8717].field_257 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            _11374 = mem[_8724]
                            if bool(stor154[_8717].field_512):
                                if bool(stor154[_8717].field_512) == uint255(stor154[_8717].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_8717, 154) + 2
                                if not _11374:
                                    stor154[_8717].field_512 = 0
                                    s = sha3(sha3(_8717, 154) + 2)
                                    while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor154[_8717].field_768 = _8726
                                    uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                                    stor154[_8717].field_1280 = _9977
                                    sub_574726f2.length++
                                    mem[0] = 153
                                    stor72A1[stor153.length] = _8717
                                    mem[mem[64]] = block.timestamp
                                    emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                stor154[_8717].field_512 = (2 * _11374) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _11374 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _11374 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor154[_8717].field_768 = _8726
                                uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                                stor154[_8717].field_1280 = _9977
                                sub_574726f2.length++
                                mem[0] = 153
                                stor72A1[stor153.length] = _8717
                                mem[mem[64]] = block.timestamp
                                emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                                if sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) + 1
                                continue 
                            if bool(stor154[_8717].field_512) == stor154[_8717].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _11374:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor154[_8717].field_512 = (2 * _11374) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _11374 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _11374 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            stor154[_8717].field_256 = (2 * _9998) + 1
                            t = sha3(sha3(_8717, 154) + 1)
                            s = _8721 + 32
                            while _8721 + _9998 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(_8717, 154) + 1) + (Mask(251, 0, _9998 + 31) >> 5)
                            while sha3(sha3(_8717, 154) + 1) + (stor154[_8717].field_257 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            _12608 = mem[_8724]
                            if bool(stor154[_8717].field_512):
                                if bool(stor154[_8717].field_512) == uint255(stor154[_8717].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_8717, 154) + 2
                                if not _12608:
                                    stor154[_8717].field_512 = 0
                                    s = sha3(sha3(_8717, 154) + 2)
                                    while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor154[_8717].field_768 = _8726
                                    uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                                    stor154[_8717].field_1280 = _9977
                                    sub_574726f2.length++
                                    mem[0] = 153
                                    stor72A1[stor153.length] = _8717
                                    mem[mem[64]] = block.timestamp
                                    emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                                    if sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) == -1:
                                        revert with 0, 17
                                    s = sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) + 1
                                    continue 
                                stor154[_8717].field_512 = (2 * _12608) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _12608 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _12608 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor154[_8717].field_512) == stor154[_8717].field_513 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_8717, 154) + 2
                                if not _12608:
                                    stor154[_8717].field_512 = 0
                                    s = sha3(sha3(_8717, 154) + 2)
                                    while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor154[_8717].field_512 = (2 * _12608) + 1
                                    t = sha3(sha3(_8717, 154) + 2)
                                    s = _8724 + 32
                                    while _8724 + _12608 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _12608 + 31) >> 5)
                                    while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    stor154[_8717].field_768 = _8726
                    uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                    stor154[_8717].field_1280 = _9977
                else:
                    mem[_8746 + _8744 + 68] = 0
                    call sub_c8ea4dd6Address.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len ceil32(_8746) + _8744 + -mem[64] + 64]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _9969 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _9978 = mem[_9969]
                    _9999 = mem[64]
                    mem[64] = mem[64] + 192
                    mem[_9999] = _8717
                    mem[_9999 + 32] = _8721
                    mem[_9999 + 64] = _8724
                    mem[_9999 + 96] = _8726
                    mem[_9999 + 128] = bool(_8728)
                    mem[_9999 + 160] = _9978
                    mem[0] = _8717
                    stor155[_8717] = 1
                    mem[32] = 154
                    stor154[_8717].field_0 = _8717
                    _10004 = mem[_8721]
                    if bool(stor154[_8717].field_256):
                        if bool(stor154[_8717].field_256) == uint255(stor154[_8717].field_256) * 0.5 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_8717, 154) + 1
                        if not _10004:
                            stor154[_8717].field_256 = 0
                            s = sha3(sha3(_8717, 154) + 1)
                            while sha3(sha3(_8717, 154) + 1) + ((uint255(stor154[_8717].field_256) * 0.5) + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            _11380 = mem[_8724]
                            if bool(stor154[_8717].field_512):
                                if bool(stor154[_8717].field_512) == uint255(stor154[_8717].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_8717, 154) + 2
                                if not _11380:
                                    stor154[_8717].field_512 = 0
                                    s = sha3(sha3(_8717, 154) + 2)
                                    while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor154[_8717].field_512 = (2 * _11380) + 1
                                    t = sha3(sha3(_8717, 154) + 2)
                                    s = _8724 + 32
                                    while _8724 + _11380 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _11380 + 31) >> 5)
                                    while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                stor154[_8717].field_768 = _8726
                                uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                                stor154[_8717].field_1280 = _9978
                                sub_574726f2.length++
                                mem[0] = 153
                                stor72A1[stor153.length] = _8717
                                mem[mem[64]] = block.timestamp
                                emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if bool(stor154[_8717].field_512) == stor154[_8717].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _11380:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor154[_8717].field_768 = _8726
                                uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                                stor154[_8717].field_1280 = _9978
                                sub_574726f2.length++
                                mem[0] = 153
                                stor72A1[stor153.length] = _8717
                                mem[mem[64]] = block.timestamp
                                emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            stor154[_8717].field_512 = (2 * _11380) + 1
                            t = sha3(sha3(_8717, 154) + 2)
                            s = _8724 + 32
                            while _8724 + _11380 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _11380 + 31) >> 5)
                            while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            stor154[_8717].field_768 = _8726
                            uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                            stor154[_8717].field_1280 = _9978
                            sub_574726f2.length++
                            mem[0] = 153
                            stor72A1[stor153.length] = _8717
                            mem[mem[64]] = block.timestamp
                            emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                            if sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) == -1:
                                revert with 0, 17
                            s = sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) + 1
                            continue 
                        stor154[_8717].field_256 = (2 * _10004) + 1
                        t = sha3(sha3(_8717, 154) + 1)
                        s = _8721 + 32
                        while _8721 + _10004 + 32 > s:
                            stor[t] = mem[s]
                            t = t + 1
                            s = s + 32
                            continue 
                        s = sha3(sha3(_8717, 154) + 1) + (Mask(251, 0, _10004 + 31) >> 5)
                        while sha3(sha3(_8717, 154) + 1) + ((uint255(stor154[_8717].field_256) * 0.5) + 31 / 32) > s:
                            stor[s] = 0
                            s = s + 1
                            continue 
                        _12700 = mem[_8724]
                        if bool(stor154[_8717].field_512):
                            if bool(stor154[_8717].field_512) == uint255(stor154[_8717].field_512) * 0.5 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _12700:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor154[_8717].field_512 = (2 * _12700) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _12700 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _12700 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            if bool(stor154[_8717].field_512) == stor154[_8717].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _12700:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor154[_8717].field_768 = _8726
                                uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                                stor154[_8717].field_1280 = _9978
                                sub_574726f2.length++
                                mem[0] = 153
                                stor72A1[stor153.length] = _8717
                                mem[mem[64]] = block.timestamp
                                emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                                if sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) + 1
                                continue 
                            stor154[_8717].field_512 = (2 * _12700) + 1
                            t = sha3(sha3(_8717, 154) + 2)
                            s = _8724 + 32
                            while _8724 + _12700 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _12700 + 31) >> 5)
                            while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                    else:
                        if bool(stor154[_8717].field_256) == stor154[_8717].field_257 % 128 < 32:
                            revert with 0, 34
                        mem[0] = sha3(_8717, 154) + 1
                        if not _10004:
                            stor154[_8717].field_256 = 0
                            s = sha3(sha3(_8717, 154) + 1)
                            while sha3(sha3(_8717, 154) + 1) + (stor154[_8717].field_257 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            _11386 = mem[_8724]
                            if bool(stor154[_8717].field_512):
                                if bool(stor154[_8717].field_512) == uint255(stor154[_8717].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_8717, 154) + 2
                                if not _11386:
                                    stor154[_8717].field_512 = 0
                                    s = sha3(sha3(_8717, 154) + 2)
                                    while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor154[_8717].field_768 = _8726
                                    uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                                    stor154[_8717].field_1280 = _9978
                                    sub_574726f2.length++
                                    mem[0] = 153
                                    stor72A1[stor153.length] = _8717
                                    mem[mem[64]] = block.timestamp
                                    emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    continue 
                                stor154[_8717].field_512 = (2 * _11386) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _11386 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _11386 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                                stor154[_8717].field_768 = _8726
                                uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                                stor154[_8717].field_1280 = _9978
                                sub_574726f2.length++
                                mem[0] = 153
                                stor72A1[stor153.length] = _8717
                                mem[mem[64]] = block.timestamp
                                emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                                if sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) == -1:
                                    revert with 0, 17
                                s = sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) + 1
                                continue 
                            if bool(stor154[_8717].field_512) == stor154[_8717].field_513 % 128 < 32:
                                revert with 0, 34
                            mem[0] = sha3(_8717, 154) + 2
                            if not _11386:
                                stor154[_8717].field_512 = 0
                                s = sha3(sha3(_8717, 154) + 2)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                stor154[_8717].field_512 = (2 * _11386) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _11386 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _11386 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                        else:
                            stor154[_8717].field_256 = (2 * _10004) + 1
                            t = sha3(sha3(_8717, 154) + 1)
                            s = _8721 + 32
                            while _8721 + _10004 + 32 > s:
                                stor[t] = mem[s]
                                t = t + 1
                                s = s + 32
                                continue 
                            s = sha3(sha3(_8717, 154) + 1) + (Mask(251, 0, _10004 + 31) >> 5)
                            while sha3(sha3(_8717, 154) + 1) + (stor154[_8717].field_257 % 128 + 31 / 32) > s:
                                stor[s] = 0
                                s = s + 1
                                continue 
                            _12792 = mem[_8724]
                            if bool(stor154[_8717].field_512):
                                if bool(stor154[_8717].field_512) == uint255(stor154[_8717].field_512) * 0.5 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_8717, 154) + 2
                                if not _12792:
                                    stor154[_8717].field_512 = 0
                                    s = sha3(sha3(_8717, 154) + 2)
                                    while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                    stor154[_8717].field_768 = _8726
                                    uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                                    stor154[_8717].field_1280 = _9978
                                    sub_574726f2.length++
                                    mem[0] = 153
                                    stor72A1[stor153.length] = _8717
                                    mem[mem[64]] = block.timestamp
                                    emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
                                    if sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) == -1:
                                        revert with 0, 17
                                    s = sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) + 1
                                    continue 
                                stor154[_8717].field_512 = (2 * _12792) + 1
                                t = sha3(sha3(_8717, 154) + 2)
                                s = _8724 + 32
                                while _8724 + _12792 + 32 > s:
                                    stor[t] = mem[s]
                                    t = t + 1
                                    s = s + 32
                                    continue 
                                s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _12792 + 31) >> 5)
                                while sha3(sha3(_8717, 154) + 2) + ((uint255(stor154[_8717].field_512) * 0.5) + 31 / 32) > s:
                                    stor[s] = 0
                                    s = s + 1
                                    continue 
                            else:
                                if bool(stor154[_8717].field_512) == stor154[_8717].field_513 % 128 < 32:
                                    revert with 0, 34
                                mem[0] = sha3(_8717, 154) + 2
                                if not _12792:
                                    stor154[_8717].field_512 = 0
                                    s = sha3(sha3(_8717, 154) + 2)
                                    while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                                else:
                                    stor154[_8717].field_512 = (2 * _12792) + 1
                                    t = sha3(sha3(_8717, 154) + 2)
                                    s = _8724 + 32
                                    while _8724 + _12792 + 32 > s:
                                        stor[t] = mem[s]
                                        t = t + 1
                                        s = s + 32
                                        continue 
                                    s = sha3(sha3(_8717, 154) + 2) + (Mask(251, 0, _12792 + 31) >> 5)
                                    while sha3(sha3(_8717, 154) + 2) + (stor154[_8717].field_513 % 128 + 31 / 32) > s:
                                        stor[s] = 0
                                        s = s + 1
                                        continue 
                    stor154[_8717].field_768 = _8726
                    uint8(stor154[_8717].field_1024) = uint8(bool(_8728))
                    stor154[_8717].field_1280 = _9978
            sub_574726f2.length++
            mem[0] = 153
            stor72A1[stor153.length] = _8717
            mem[mem[64]] = block.timestamp
            emit 0xd65a1cf8: block.timestamp, msg.sender, _8717
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    _7495 = mem[64]
    mem[mem[64]] = 42
    mem[64] = mem[64] + 96
    mem[_7495 + 32 len 42] = call.data[calldata.size len 42]
    if 0 >= mem[_7495]:
        revert with 0, 50
    mem[_7495 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    if 1 >= mem[_7495]:
        revert with 0, 50
    mem[_7495 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 41
    s = address(msg.sender)
    while idx > 1:
        if s % 16 >= 16:
            revert with 0, 50
        if idx >= mem[_7495]:
            revert with 0, 50
        mem[idx + _7495 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        s = Mask(252, 0, s) * 0.0625
        continue 
    if msg.sender + 10240:
        revert with 0, 'Strings: hex length insufficient'
    _8733 = mem[64]
    mem[mem[64]] = 66
    mem[64] = mem[64] + 128
    mem[_8733 + 32 len 66] = call.data[calldata.size len 66]
    if 0 >= mem[_8733]:
        revert with 0, 50
    mem[_8733 + 32 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    if 1 >= mem[_8733]:
        revert with 0, 50
    mem[_8733 + 33 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 65
    while idx > 1:
        if idx >= mem[_8733]:
            revert with 0, 50
        mem[idx + _8733 + 32 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        if not idx:
            revert with 0, 17
        idx = idx - 1
        continue 
    _9960 = mem[64]
    mem[mem[64] + 32] = 'AccessControl: account '
    _9961 = mem[_7495]
    mem[mem[64] + 55 len ceil32(mem[_7495])] = mem[_7495 + 32 len ceil32(mem[_7495])]
    var144001 = ceil32(_9961)
    mem[mem[64] + _9961 + 55] = 0x206973206d697373696e6720726f6c6520000000000000000000000000000000
    if ceil32(_9961) <= _9961:
        _11388 = mem[_8733]
        mem[mem[64] + _9961 + 72 len ceil32(mem[_8733])] = mem[_8733 + 32 len ceil32(mem[_8733])]
        var150001 = ceil32(_11388)
        if ceil32(_11388) <= _11388:
            _12855 = mem[64]
            mem[mem[64]] = _11388 + _9961 + 40
            mem[64] = _11388 + mem[64] + _9961 + 72
            mem[_11388 + _9960 + _9961 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_11388 + _9960 + _9961 + 76] = 32
            _13001 = mem[_12855]
            mem[_11388 + _9960 + _9961 + 108] = mem[_12855]
            mem[_11388 + _9960 + _9961 + 140 len ceil32(_13001)] = mem[_12855 + 32 len ceil32(_13001)]
            var159001 = ceil32(_13001)
            if ceil32(_13001) > _13001:
                mem[_13001 + _11388 + _9960 + _9961 + 140] = 0
            revert with 0, 32, mem[_11388 + _9960 + _9961 + 108 len ceil32(_13001) + 32]
        mem[_11388 + mem[64] + _9961 + 72] = 0
        _12856 = mem[64]
        mem[mem[64]] = _11388 + _9961 + 40
        mem[64] = _11388 + mem[64] + _9961 + 72
        mem[_11388 + _9960 + _9961 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_11388 + _9960 + _9961 + 76] = 32
        _13002 = mem[_12856]
        mem[_11388 + _9960 + _9961 + 108] = mem[_12856]
        mem[_11388 + _9960 + _9961 + 140 len ceil32(_13002)] = mem[_12856 + 32 len ceil32(_13002)]
        var159001 = ceil32(_13002)
        if ceil32(_13002) > _13002:
            mem[_13002 + _11388 + _9960 + _9961 + 140] = 0
        revert with 0, 32, mem[_11388 + _9960 + _9961 + 108 len ceil32(_13002) + 32]
    _11389 = mem[_8733]
    mem[mem[64] + _9961 + 72 len ceil32(mem[_8733])] = mem[_8733 + 32 len ceil32(mem[_8733])]
    var150001 = ceil32(_11389)
    if ceil32(_11389) <= _11389:
        _12857 = mem[64]
        mem[mem[64]] = _11389 + _9961 + 40
        mem[64] = _11389 + mem[64] + _9961 + 72
        mem[_11389 + _9960 + _9961 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_11389 + _9960 + _9961 + 76] = 32
        _13003 = mem[_12857]
        mem[_11389 + _9960 + _9961 + 108] = mem[_12857]
        mem[_11389 + _9960 + _9961 + 140 len ceil32(_13003)] = mem[_12857 + 32 len ceil32(_13003)]
        var159001 = ceil32(_13003)
        if ceil32(_13003) > _13003:
            mem[_13003 + _11389 + _9960 + _9961 + 140] = 0
        revert with 0, 32, mem[_11389 + _9960 + _9961 + 108 len ceil32(_13003) + 32]
    mem[_11389 + mem[64] + _9961 + 72] = 0
    _12858 = mem[64]
    mem[mem[64]] = _11389 + _9960 + _9961 + -mem[64] + 40
    mem[64] = _11389 + _9960 + _9961 + 72
    mem[_11389 + _9960 + _9961 + 72] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[_11389 + _9960 + _9961 + 76] = 32
    _13004 = mem[_12858]
    mem[_11389 + _9960 + _9961 + 108] = mem[_12858]
    mem[_11389 + _9960 + _9961 + 140 len ceil32(_13004)] = mem[_12858 + 32 len ceil32(_13004)]
    var159001 = ceil32(_13004)
    if ceil32(_13004) > _13004:
        mem[_13004 + _11389 + _9960 + _9961 + 140] = 0
    revert with 0, 32, mem[_11389 + _9960 + _9961 + 108 len ceil32(_13004) + 32]
}

function claimReward(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor155[arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AchievementsRegistry: this achievement does not exist'
    if not stor156[msg.sender][arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AchievementsRegistry: you dont have the achievement'
    if stor157[msg.sender][arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'AchievementsRegistry: you have already claimed the reward'
    stor157[msg.sender][arg1] = 1
    if bool(stor154[arg1].field_256):
        if bool(stor154[arg1].field_256) == uint255(stor154[arg1].field_256) * 0.5 < 32:
            revert with 0, 34
        mem[288] = uint255(stor154[arg1].field_256) * 0.5
        if bool(stor154[arg1].field_256):
            if bool(stor154[arg1].field_256) == uint255(stor154[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor154[arg1].field_256):
                mem[128] = 288
                if bool(stor154[arg1].field_512):
                    if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                        revert with 0, 34
                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320] = uint255(stor154[arg1].field_512) * 0.5
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor154[arg1].field_512):
                            mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                        if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                s = 0
                                while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        if not stor154[arg1].field_513 % 128:
                            mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                        if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < stor154[arg1].field_513 % 128:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                s = 0
                                while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                        revert with 0, 34
                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320] = stor154[arg1].field_513 % 128
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor154[arg1].field_512):
                            mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                        if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                s = 0
                                while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        if not stor154[arg1].field_513 % 128:
                            mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                        if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < stor154[arg1].field_513 % 128:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                s = 0
                                while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if 31 >= uint255(stor154[arg1].field_256) * 0.5:
                    mem[320] = 256 * Mask(248, 0, stor154[arg1].field_264)
                    mem[128] = 288
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320] = uint255(stor154[arg1].field_512) * 0.5
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < stor154[arg1].field_513 % 128:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320] = stor154[arg1].field_513 % 128
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < stor154[arg1].field_513 % 128:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[320] = stor154[arg1][1].field_0
                    idx = 320
                    s = 0
                    while (uint255(stor154[arg1].field_256) * 0.5) + 288 > idx:
                        mem[idx + 32] = stor154[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[128] = 288
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320] = uint255(stor154[arg1].field_512) * 0.5
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= stor154[arg1].field_513 % 128:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320] = stor154[arg1].field_513 % 128
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= stor154[arg1].field_513 % 128:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if bool(stor154[arg1].field_256) == stor154[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if not stor154[arg1].field_257 % 128:
                mem[128] = 288
                if bool(stor154[arg1].field_512):
                    if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                        revert with 0, 34
                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320] = uint255(stor154[arg1].field_512) * 0.5
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor154[arg1].field_512):
                            mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                        if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                s = 0
                                while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        if not stor154[arg1].field_513 % 128:
                            mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                        if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < stor154[arg1].field_513 % 128:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                s = 0
                                while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                        revert with 0, 34
                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320] = stor154[arg1].field_513 % 128
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor154[arg1].field_512):
                            mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                        if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                s = 0
                                while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        if not stor154[arg1].field_513 % 128:
                            mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                        if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < stor154[arg1].field_513 % 128:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                s = 0
                                while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if 31 >= stor154[arg1].field_257 % 128:
                    mem[320] = 256 * Mask(248, 0, stor154[arg1].field_264)
                    mem[128] = 288
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320] = uint255(stor154[arg1].field_512) * 0.5
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < stor154[arg1].field_513 % 128:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320] = stor154[arg1].field_513 % 128
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < stor154[arg1].field_513 % 128:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[320] = stor154[arg1][1].field_0
                    idx = 320
                    s = 0
                    while stor154[arg1].field_257 % 128 + 288 > idx:
                        mem[idx + 32] = stor154[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[128] = 288
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320] = uint255(stor154[arg1].field_512) * 0.5
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= stor154[arg1].field_513 % 128:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320] = stor154[arg1].field_513 % 128
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= stor154[arg1].field_513 % 128:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 352
                                    s = 0
                                    while ceil32(uint255(stor154[arg1].field_256) * 0.5) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(uint255(stor154[arg1].field_256) * 0.5) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(uint255(stor154[arg1].field_256) * 0.5) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        if bool(stor154[arg1].field_256) == stor154[arg1].field_257 % 128 < 32:
            revert with 0, 34
        mem[288] = stor154[arg1].field_257 % 128
        if bool(stor154[arg1].field_256):
            if bool(stor154[arg1].field_256) == uint255(stor154[arg1].field_256) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, stor154[arg1].field_256):
                mem[128] = 288
                if bool(stor154[arg1].field_512):
                    if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                        revert with 0, 34
                    mem[ceil32(stor154[arg1].field_257 % 128) + 320] = uint255(stor154[arg1].field_512) * 0.5
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor154[arg1].field_512):
                            mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                        if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                s = 0
                                while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        if not stor154[arg1].field_513 % 128:
                            mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                        if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < stor154[arg1].field_513 % 128:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                s = 0
                                while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                        revert with 0, 34
                    mem[ceil32(stor154[arg1].field_257 % 128) + 320] = stor154[arg1].field_513 % 128
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor154[arg1].field_512):
                            mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                        if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                s = 0
                                while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        if not stor154[arg1].field_513 % 128:
                            mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                        if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < stor154[arg1].field_513 % 128:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                s = 0
                                while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if 31 >= uint255(stor154[arg1].field_256) * 0.5:
                    mem[320] = 256 * Mask(248, 0, stor154[arg1].field_264)
                    mem[128] = 288
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[ceil32(stor154[arg1].field_257 % 128) + 320] = uint255(stor154[arg1].field_512) * 0.5
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < stor154[arg1].field_513 % 128:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        mem[ceil32(stor154[arg1].field_257 % 128) + 320] = stor154[arg1].field_513 % 128
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < stor154[arg1].field_513 % 128:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[320] = stor154[arg1][1].field_0
                    idx = 320
                    s = 0
                    while (uint255(stor154[arg1].field_256) * 0.5) + 288 > idx:
                        mem[idx + 32] = stor154[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[128] = 288
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[ceil32(stor154[arg1].field_257 % 128) + 320] = uint255(stor154[arg1].field_512) * 0.5
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= stor154[arg1].field_513 % 128:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        mem[ceil32(stor154[arg1].field_257 % 128) + 320] = stor154[arg1].field_513 % 128
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= stor154[arg1].field_513 % 128:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            if bool(stor154[arg1].field_256) == stor154[arg1].field_257 % 128 < 32:
                revert with 0, 34
            if not stor154[arg1].field_257 % 128:
                mem[128] = 288
                if bool(stor154[arg1].field_512):
                    if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                        revert with 0, 34
                    mem[ceil32(stor154[arg1].field_257 % 128) + 320] = uint255(stor154[arg1].field_512) * 0.5
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor154[arg1].field_512):
                            mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                        if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                s = 0
                                while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        if not stor154[arg1].field_513 % 128:
                            mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                        if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < stor154[arg1].field_513 % 128:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                s = 0
                                while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                        revert with 0, 34
                    mem[ceil32(stor154[arg1].field_257 % 128) + 320] = stor154[arg1].field_513 % 128
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        if not Mask(256, -1, stor154[arg1].field_512):
                            mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                        if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                s = 0
                                while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        if not stor154[arg1].field_513 % 128:
                            mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                            mem[192] = stor154[arg1].field_768
                            mem[224] = bool(uint8(stor154[arg1].field_1024))
                            mem[256] = stor154[arg1].field_1280
                            if stor154[arg1].field_768:
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(tokenAddress):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                call tokenAddress with:
                                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if stor154[arg1].field_0:
                                            revert with memory
                                              from 128
                                               len stor154[arg1].field_0
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not stor154[arg1].field_0
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                        if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if 31 < stor154[arg1].field_513 % 128:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                s = 0
                                while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 320 > idx:
                                    mem[idx + 32] = stor154[arg1][s + 2].field_256
                                    idx = idx + 32
                                    s = s + 1
                                    continue 
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                if 31 >= stor154[arg1].field_257 % 128:
                    mem[320] = 256 * Mask(248, 0, stor154[arg1].field_264)
                    mem[128] = 288
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[ceil32(stor154[arg1].field_257 % 128) + 320] = uint255(stor154[arg1].field_512) * 0.5
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < stor154[arg1].field_513 % 128:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        mem[ceil32(stor154[arg1].field_257 % 128) + 320] = stor154[arg1].field_513 % 128
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 < stor154[arg1].field_513 % 128:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388 len 28] = Mask(224, 32, msg.sender) >> 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[320] = stor154[arg1][1].field_0
                    idx = 320
                    s = 0
                    while stor154[arg1].field_257 % 128 + 288 > idx:
                        mem[idx + 32] = stor154[arg1][s + 1].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[128] = 288
                    if bool(stor154[arg1].field_512):
                        if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                            revert with 0, 34
                        mem[ceil32(stor154[arg1].field_257 % 128) + 320] = uint255(stor154[arg1].field_512) * 0.5
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= stor154[arg1].field_513 % 128:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(uint255(stor154[arg1].field_512) * 0.5) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                            revert with 0, 34
                        mem[ceil32(stor154[arg1].field_257 % 128) + 320] = stor154[arg1].field_513 % 128
                        if bool(stor154[arg1].field_512):
                            if bool(stor154[arg1].field_512) == uint255(stor154[arg1].field_512) * 0.5 < 32:
                                revert with 0, 34
                            if not Mask(256, -1, stor154[arg1].field_512):
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= uint255(stor154[arg1].field_512) * 0.5:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + (uint255(stor154[arg1].field_512) * 0.5) + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            if bool(stor154[arg1].field_512) == stor154[arg1].field_513 % 128 < 32:
                                revert with 0, 34
                            if not stor154[arg1].field_513 % 128:
                                mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                mem[192] = stor154[arg1].field_768
                                mem[224] = bool(uint8(stor154[arg1].field_1024))
                                mem[256] = stor154[arg1].field_1280
                                if stor154[arg1].field_768:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(tokenAddress):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                    mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                    call tokenAddress with:
                                       funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if stor154[arg1].field_0:
                                                revert with memory
                                                  from 128
                                                   len stor154[arg1].field_0
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not stor154[arg1].field_0
                                    else:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                            if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if 31 >= stor154[arg1].field_513 % 128:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = 256 * Mask(248, 0, stor154[arg1].field_520)
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                           funct Mask(32, 224, 0, msg.sender, stor154[arg1].field_768, 0) >> 224
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(stor154[arg1].field_257 % 128) + 352] = stor154[arg1][2].field_0
                                    idx = ceil32(stor154[arg1].field_257 % 128) + 352
                                    s = 0
                                    while ceil32(stor154[arg1].field_257 % 128) + stor154[arg1].field_513 % 128 + 320 > idx:
                                        mem[idx + 32] = stor154[arg1][s + 2].field_256
                                        idx = idx + 32
                                        s = s + 1
                                        continue 
                                    mem[160] = ceil32(stor154[arg1].field_257 % 128) + 320
                                    mem[192] = stor154[arg1].field_768
                                    mem[224] = bool(uint8(stor154[arg1].field_1024))
                                    mem[256] = stor154[arg1].field_1280
                                    if stor154[arg1].field_768:
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 388] = msg.sender
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 420] = stor154[arg1].field_768
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 352] = 68
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 384 len 4] = unknown_0xa9059cbb(?????)
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 452] = 32
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 484] = 'SafeERC20: low-level call failed'
                                        if eth.balance(this.address) < 0:
                                            revert with 0, 'Address: insufficient balance for call'
                                        if not ext_code.size(tokenAddress):
                                            revert with 0, 'Address: call to non-contract'
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 516 len 96] = 0, msg.sender, stor154[arg1].field_768, 0
                                        mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 584] = 0
                                        call tokenAddress with:
                                             gas gas_remaining wei
                                            args (Mask(512, -288, 0, msg.sender, stor154[arg1].field_768, 0) << 288)
                                        if not return_data.size:
                                            if not ext_call.success:
                                                if stor154[arg1].field_0:
                                                    revert with memory
                                                      from 128
                                                       len stor154[arg1].field_0
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            require not stor154[arg1].field_0
                                        else:
                                            mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            if not ext_call.success:
                                                if return_data.size:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                revert with 0, 'SafeERC20: low-level call failed'
                                            if return_data.size:
                                                require return_data.size >= 32
                                                require mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548] == bool(mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548])
                                                if not mem[ceil32(stor154[arg1].field_257 % 128) + ceil32(stor154[arg1].field_513 % 128) + 548]:
                                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if uint8(stor154[arg1].field_1024):
        require ext_code.size(sub_c8ea4dd6Address)
        call sub_c8ea4dd6Address.mint(address arg1, uint256 arg2, uint256 arg3) with:
             gas gas_remaining wei
            args msg.sender, stor154[arg1].field_1280, 1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x8767df5b: block.timestamp, msg.sender, arg1, 0
}



}
