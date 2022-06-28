contract main {




// =====================  Runtime code  =====================


const sub_23e67ca2(?) = 0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of struct roleAdmin;
address sub_68b577ffAddress;
address sub_0de239aaAddress;
uint256 sub_34350993;
mapping of struct stor154;
array of uint256 sub_44a6030e;
array of uint256 sub_fd2cc6a9;
array of uint256 sub_9fb2a02a;
array of struct sub_4834bd63;
mapping of uint256 sub_545efd47;
mapping of uint8 stor160;

function sub_0de239aa(?) payable {
    return sub_0de239aaAddress
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_34350993(?) payable {
    return sub_34350993
}

function sub_44a6030e(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_44a6030e[arg1]
    return sub_44a6030e[arg1][arg2]
}

function sub_4834bd63(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < 3
    return sub_4834bd63[arg1][arg2].field_0
}

function sub_545efd47(?) payable {
    require calldata.size - 4 >= 64
    return sub_545efd47[arg1][arg2]
}

function sub_68b577ff(?) payable {
    return sub_68b577ffAddress
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_9fb2a02a(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_9fb2a02a[arg1]
    return sub_9fb2a02a[arg1][arg2]
}

function sub_a2cb5c55(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor160[arg1][arg2])
}

function sub_fd2cc6a9(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_fd2cc6a9[arg1]
    return sub_fd2cc6a9[arg1][arg2]
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
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_fecc76f2(?) payable {
    require calldata.size - 4 >= 32
    if not sub_44a6030e[arg1]:
        return 0
    idx = 0
    s = 0
    while idx < sub_44a6030e[arg1]:
        if idx >= sub_44a6030e[arg1]:
            revert with 0, 50
        if idx == -1:
            revert with 0, 17
        mem[0] = arg1
        mem[32] = 155
        if stor154[stor155[arg1][idx]].field_512 <= 0:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    return bool(s)
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    sub_0de239aaAddress = arg1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function setContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if roleAdmin[0][address(msg.sender)].field_0:
        if not roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg1)].field_0:
            roleAdmin[0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225][address(arg1)].field_0 = 1
            emit RoleGranted(0x2ef95c09adbda1fe811cc11a0030b2f946f64d1df024c7190c885de55385c225, arg1, msg.sender);
        sub_68b577ffAddress = arg1
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function revokeRole(bytes32 arg1, address arg2) payable {
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
}

function bosses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor154[arg1].field_1024:
        if stor154[arg1].field_1024 == stor154[arg1].field_1025 < 32:
            revert with 0, 34
        if stor154[arg1].field_1024:
            if stor154[arg1].field_1024 == stor154[arg1].field_1025 < 32:
                revert with 0, 34
            if stor154[arg1].field_1025:
                if 31 >= stor154[arg1].field_1025:
                    mem[128] = 256 * stor154[arg1].field_1032
                else:
                    mem[128] = stor154[arg1][4].field_0
                    idx = 128
                    s = 0
                    while stor154[arg1].field_1025 + 96 > idx:
                        mem[idx + 32] = stor154[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if stor154[arg1].field_1024 == stor154[arg1].field_1025 < 32:
                revert with 0, 34
            if stor154[arg1].field_1025:
                if 31 >= stor154[arg1].field_1025:
                    mem[128] = 256 * stor154[arg1].field_1032
                else:
                    mem[128] = stor154[arg1][4].field_0
                    idx = 128
                    s = 0
                    while stor154[arg1].field_1025 + 96 > idx:
                        mem[idx + 32] = stor154[arg1][s + 4].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        return stor154[arg1].field_0, 
               stor154[arg1].field_256,
               stor154[arg1].field_512,
               stor154[arg1].field_768,
               Array(len=2 * Mask(256, -1, stor154[arg1].field_1025), data=mem[128 len ceil32(stor154[arg1].field_1025)]),
               stor154[arg1].field_1280
    if stor154[arg1].field_1024 == stor154[arg1].field_1025 < 32:
        revert with 0, 34
    if stor154[arg1].field_1024:
        if stor154[arg1].field_1024 == stor154[arg1].field_1025 < 32:
            revert with 0, 34
        if stor154[arg1].field_1025:
            if 31 >= stor154[arg1].field_1025:
                mem[128] = 256 * stor154[arg1].field_1032
            else:
                mem[128] = stor154[arg1][4].field_0
                idx = 128
                s = 0
                while stor154[arg1].field_1025 + 96 > idx:
                    mem[idx + 32] = stor154[arg1][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    else:
        if stor154[arg1].field_1024 == stor154[arg1].field_1025 < 32:
            revert with 0, 34
        if stor154[arg1].field_1025:
            if 31 >= stor154[arg1].field_1025:
                mem[128] = 256 * stor154[arg1].field_1032
            else:
                mem[128] = stor154[arg1][4].field_0
                idx = 128
                s = 0
                while stor154[arg1].field_1025 + 96 > idx:
                    mem[idx + 32] = stor154[arg1][s + 4].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
    return stor154[arg1].field_0, 
           stor154[arg1].field_256,
           stor154[arg1].field_512,
           stor154[arg1].field_768,
           Array(len=stor154[arg1].field_1024, data=mem[128 len ceil32(stor154[arg1].field_1025)]),
           stor154[arg1].field_1280
}

function sub_cb978e89(?) payable {
    require calldata.size - 4 >= 96
    require arg3 <= test266151307()
    require calldata.size > arg3 + 35
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    if not roleAdmin[0][address(msg.sender)].field_0:
        mem[ceil32(ceil32(arg3.length)) + 129 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg3.length)) + 129 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[ceil32(ceil32(arg3.length)) + 225 len 66] = call.data[calldata.size len 66]
        idx = 65
        while idx > 1:
            if idx >= 66:
                revert with 0, 50
            mem[idx + ceil32(ceil32(arg3.length)) + 225 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            continue 
        revert with 0, 
                    32,
                    148,
                    'AccessControl: account ', mem[ceil32(ceil32(arg3.length)) + 161 len 42], ' is missing role ', mem[ceil32(ceil32(arg3.length)) + 289 len 66], 0, 0 >> 928,
                    0
    stor154[stor153].field_0 = sub_34350993
    stor154[stor153].field_256 = arg1
    stor154[stor153].field_512 = arg1
    stor154[stor153].field_768 = arg2
    if stor154[stor153].field_1024:
        if stor154[stor153].field_1024 == stor154[stor153].field_1025 < 32:
            revert with 0, 34
        if arg3.length:
            stor154[stor153][4][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor154[stor153].field_1024 = 0
            idx = 0
            while stor154[stor153].field_1025 + 31 / 32 > idx:
                stor154[stor153][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    else:
        if stor154[stor153].field_1024 == stor154[stor153].field_1025 < 32:
            revert with 0, 34
        if arg3.length:
            stor154[stor153][4][].field_0 = Array(len=arg3.length, data=arg3[all])
        else:
            stor154[stor153].field_1024 = 0
            idx = 0
            while stor154[stor153].field_1025 + 31 / 32 > idx:
                stor154[stor153][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
    mem[ceil32(ceil32(arg3.length)) + 97] = 10001
    mem[ceil32(ceil32(arg3.length)) + 129] = 10001
    mem[ceil32(ceil32(arg3.length)) + 161] = 10001
    s = 0
    idx = ceil32(ceil32(arg3.length)) + 97
    while ceil32(ceil32(arg3.length)) + 193 > idx:
        sub_4834bd63[stor153][s].field_0 = mem[idx + 30 len 2]
        sub_4834bd63[stor153][s].field_16 = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while 3 > idx:
        sub_4834bd63[stor153][idx].field_0 = 0
        idx = idx + 1
        continue 
    stor154[stor153].field_1280 = 0
    sub_44a6030e[stor154[stor153].field_768]++
    sub_44a6030e[stor154[stor153].field_768][sub_44a6030e[stor154[stor153].field_768]] = sub_34350993
    if sub_34350993 > -2:
        revert with 0, 17
    sub_34350993++
    if stor154[stor153].field_1024:
        if stor154[stor153].field_1024 == stor154[stor153].field_1025 < 32:
            revert with 0, 34
        if not stor154[stor153].field_1024:
            emit 0x7f252df8: stor154[stor153].field_0, Array(len=2 * Mask(256, -1, stor154[stor153].field_1025), data=Mask(248, 8, stor154[stor153].field_1024)), stor154[stor153].field_768, stor154[stor153].field_256
        else:
            if stor154[stor153].field_1024 != 1:
                emit 0x7f252df8: mem[ceil32(ceil32(arg3.length)) + 193 len -ceil32(ceil32(arg3.length)) - 193]
            else:
                idx = 0
                s = 0
                while idx < stor154[stor153].field_1025:
                    mem[idx + ceil32(ceil32(arg3.length)) + 353] = stor154[stor153][s + 4].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x7f252df8: stor154[stor153].field_0, Array(len=2 * Mask(256, -1, stor154[stor153].field_1025), data=mem[ceil32(ceil32(arg3.length)) + 353 len ceil32(stor154[stor153].field_1025)]), stor154[stor153].field_768, stor154[stor153].field_256
    else:
        if stor154[stor153].field_1024 == stor154[stor153].field_1025 < 32:
            revert with 0, 34
        if not stor154[stor153].field_1024:
            emit 0x7f252df8: stor154[stor153].field_0, Array(len=stor154[stor153].field_1024, data=Mask(248, 8, stor154[stor153].field_1024)), stor154[stor153].field_768, stor154[stor153].field_256
        else:
            if stor154[stor153].field_1024 != 1:
                emit 0x7f252df8: mem[ceil32(ceil32(arg3.length)) + 193 len -ceil32(ceil32(arg3.length)) - 193]
            else:
                idx = 0
                s = 0
                while idx < stor154[stor153].field_1025:
                    mem[idx + ceil32(ceil32(arg3.length)) + 353] = stor154[stor153][s + 4].field_0
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x7f252df8: stor154[stor153].field_0, Array(len=stor154[stor153].field_1024, data=mem[ceil32(ceil32(arg3.length)) + 353 len ceil32(stor154[stor153].field_1025)]), stor154[stor153].field_768, stor154[stor153].field_256
}

function sub_38887d3f(?) payable {
    require calldata.size - 4 >= 96
    mem[0] = arg3
    mem[32] = 154
    mem[96] = 0xbfccdc6800000000000000000000000000000000000000000000000000000000
    mem[100] = arg2
    require ext_code.size(sub_0de239aaAddress)
    staticcall sub_0de239aaAddress.0xbfccdc68 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 160
    require uint32(arg2), mem[132 len 28] == mem[140 len 20]
    _7 = mem[160]
    _8 = mem[192]
    require mem[192] <= test266151307()
    require return_data.size + 96 > mem[192] + 127
    _9 = mem[mem[192] + 96]
    if mem[mem[192] + 96] > test266151307():
        revert with 0, 65
    if ceil32(ceil32(mem[mem[192] + 96])) + 1 < 0 or ceil32(return_data.size) + ceil32(ceil32(mem[mem[192] + 96])) + 97 > test266151307():
        revert with 0, 65
    mem[64] = ceil32(return_data.size) + ceil32(ceil32(mem[mem[192] + 96])) + 97
    mem[ceil32(return_data.size) + 96] = _9
    require _8 + _9 + 32 <= return_data.size
    mem[ceil32(return_data.size) + 128 len ceil32(_9)] = mem[_8 + 128 len ceil32(_9)]
    if ceil32(_9) <= _9:
        if _7 != stor154[arg3].field_768:
            revert with 0, 'Boss not in range of ant'
        if stor154[arg3].field_512 <= 0:
            revert with 0, 'Boss is already dead'
        mem[mem[64] + 4] = arg2
        require ext_code.size(sub_0de239aaAddress)
        staticcall sub_0de239aaAddress.0x6352211e with:
                gas gas_remaining wei
               args arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _640 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_640] == mem[_640 + 12 len 20]
        if mem[_640 + 12 len 20] != msg.sender:
            revert with 0, 'Not your ant'
    else:
        mem[ceil32(return_data.size) + _9 + 128] = 0
        if _7 != stor154[arg3].field_768:
            revert with 0, 'Boss not in range of ant'
        if stor154[arg3].field_512 <= 0:
            revert with 0, 'Boss is already dead'
        mem[mem[64] + 4] = arg2
        require ext_code.size(sub_0de239aaAddress)
        staticcall sub_0de239aaAddress.0x6352211e with:
                gas gas_remaining wei
               args arg2
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _642 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_642] == mem[_642 + 12 len 20]
        if mem[_642 + 12 len 20] != msg.sender:
            revert with 0, 'Not your ant'
    if arg1 <= stor154[arg3].field_512:
        if stor154[arg3].field_512 < arg1:
            revert with 0, 17
        stor154[arg3].field_512 -= arg1
        require ext_code.size(sub_68b577ffAddress)
        call sub_68b577ffAddress.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor160[arg3][arg2]:
            if sub_545efd47[arg3][arg2] >= sub_9fb2a02a[arg3]:
                revert with 0, 50
            if sub_9fb2a02a[arg3][stor159[arg3][arg2]] > !arg1:
                revert with 0, 17
            sub_9fb2a02a[arg3][stor159[arg3][arg2]] += arg1
        else:
            sub_545efd47[arg3][arg2] = stor154[arg3].field_1280
            sub_9fb2a02a[arg3]++
            sub_9fb2a02a[arg3][sub_9fb2a02a[arg3]] = arg1
            sub_fd2cc6a9[arg3]++
            sub_fd2cc6a9[arg3][sub_fd2cc6a9[arg3]] = arg2
            if stor154[arg3].field_1280 > -2:
                revert with 0, 17
            stor154[arg3].field_1280++
            stor160[arg3][arg2] = 1
        if 1 == stor154[arg3].field_1280:
            sub_4834bd63[arg3].field_0 = arg2
        else:
            if sub_545efd47[arg3][stor158[arg3].field_0] >= sub_9fb2a02a[arg3]:
                revert with 0, 50
            if sub_545efd47[arg3][arg2] >= sub_9fb2a02a[arg3]:
                revert with 0, 50
            if sub_9fb2a02a[arg3][stor159[arg3][arg2]] > sub_9fb2a02a[arg3][stor159[arg3][stor158[arg3].field_0]]:
                sub_4834bd63[arg3].field_0 = arg2
                sub_4834bd63[arg3].field_256 = sub_4834bd63[arg3].field_0
                if arg2 != sub_4834bd63[arg3].field_256:
                    sub_4834bd63[arg3].field_512 = sub_4834bd63[arg3].field_256
            else:
                if 2 == stor154[arg3].field_1280:
                    sub_4834bd63[arg3].field_256 = arg2
                    sub_4834bd63[arg3].field_512 = sub_4834bd63[arg3].field_256
                else:
                    if sub_545efd47[arg3][stor158[arg3].field_256] >= sub_9fb2a02a[arg3]:
                        revert with 0, 50
                    if sub_545efd47[arg3][arg2] >= sub_9fb2a02a[arg3]:
                        revert with 0, 50
                    if sub_9fb2a02a[arg3][stor159[arg3][arg2]] > sub_9fb2a02a[arg3][stor159[arg3][stor158[arg3].field_256]]:
                        sub_4834bd63[arg3].field_256 = arg2
                        sub_4834bd63[arg3].field_512 = sub_4834bd63[arg3].field_256
                    else:
                        if 3 == stor154[arg3].field_1280:
                            sub_4834bd63[arg3].field_512 = arg2
                        else:
                            if sub_545efd47[arg3][stor158[arg3].field_512] >= sub_9fb2a02a[arg3]:
                                revert with 0, 50
                            if sub_545efd47[arg3][arg2] >= sub_9fb2a02a[arg3]:
                                revert with 0, 50
                            if sub_9fb2a02a[arg3][stor159[arg3][arg2]] > sub_9fb2a02a[arg3][stor159[arg3][stor158[arg3].field_512]]:
                                sub_4834bd63[arg3].field_512 = arg2
        emit 0xcc2a91f1: arg3, arg2, arg1
    else:
        if stor154[arg3].field_512 < stor154[arg3].field_512:
            revert with 0, 17
        stor154[arg3].field_512 = 0
        require ext_code.size(sub_68b577ffAddress)
        call sub_68b577ffAddress.0x9dc29fac with:
             gas gas_remaining wei
            args msg.sender, stor154[arg3].field_512
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if stor160[arg3][arg2]:
            if sub_545efd47[arg3][arg2] >= sub_9fb2a02a[arg3]:
                revert with 0, 50
            if sub_9fb2a02a[arg3][stor159[arg3][arg2]] > !arg1:
                revert with 0, 17
            sub_9fb2a02a[arg3][stor159[arg3][arg2]] += arg1
        else:
            sub_545efd47[arg3][arg2] = stor154[arg3].field_1280
            sub_9fb2a02a[arg3]++
            sub_9fb2a02a[arg3][sub_9fb2a02a[arg3]] = stor154[arg3].field_512
            sub_fd2cc6a9[arg3]++
            sub_fd2cc6a9[arg3][sub_fd2cc6a9[arg3]] = arg2
            if stor154[arg3].field_1280 > -2:
                revert with 0, 17
            stor154[arg3].field_1280++
            stor160[arg3][arg2] = 1
        if 1 == stor154[arg3].field_1280:
            sub_4834bd63[arg3].field_0 = arg2
        else:
            if sub_545efd47[arg3][stor158[arg3].field_0] >= sub_9fb2a02a[arg3]:
                revert with 0, 50
            if sub_545efd47[arg3][arg2] >= sub_9fb2a02a[arg3]:
                revert with 0, 50
            if sub_9fb2a02a[arg3][stor159[arg3][arg2]] > sub_9fb2a02a[arg3][stor159[arg3][stor158[arg3].field_0]]:
                sub_4834bd63[arg3].field_0 = arg2
                sub_4834bd63[arg3].field_256 = sub_4834bd63[arg3].field_0
                if arg2 != sub_4834bd63[arg3].field_256:
                    sub_4834bd63[arg3].field_512 = sub_4834bd63[arg3].field_256
            else:
                if 2 == stor154[arg3].field_1280:
                    sub_4834bd63[arg3].field_256 = arg2
                    sub_4834bd63[arg3].field_512 = sub_4834bd63[arg3].field_256
                else:
                    if sub_545efd47[arg3][stor158[arg3].field_256] >= sub_9fb2a02a[arg3]:
                        revert with 0, 50
                    if sub_545efd47[arg3][arg2] >= sub_9fb2a02a[arg3]:
                        revert with 0, 50
                    if sub_9fb2a02a[arg3][stor159[arg3][arg2]] > sub_9fb2a02a[arg3][stor159[arg3][stor158[arg3].field_256]]:
                        sub_4834bd63[arg3].field_256 = arg2
                        sub_4834bd63[arg3].field_512 = sub_4834bd63[arg3].field_256
                    else:
                        if 3 == stor154[arg3].field_1280:
                            sub_4834bd63[arg3].field_512 = arg2
                        else:
                            if sub_545efd47[arg3][stor158[arg3].field_512] >= sub_9fb2a02a[arg3]:
                                revert with 0, 50
                            if sub_545efd47[arg3][arg2] >= sub_9fb2a02a[arg3]:
                                revert with 0, 50
                            if sub_9fb2a02a[arg3][stor159[arg3][arg2]] > sub_9fb2a02a[arg3][stor159[arg3][stor158[arg3].field_512]]:
                                sub_4834bd63[arg3].field_512 = arg2
        emit 0xcc2a91f1: arg3, arg2, stor154[arg3].field_512
    if not stor154[arg3].field_512:
        emit 0x3c1f714b: arg3
}



}
