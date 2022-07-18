contract main {




// =====================  Runtime code  =====================


const sub_18e891d3(?) = 0x5b6947f3b86eb89ea0c00007bd6ac176cfdb02ec4a33cbad598c2356b94e04e4

const sub_2107abb6(?) = 0x9ef30578889e2e109df9605c5a85b7368d15f0c54cd31174b47a452d2dd50d34

const sub_47bfdbb6(?) = 0x666e54d8ad6eaeb3a4971c9743e6b1746f23a7f1dd952d3b912a601137d12e93

const sub_4a07afd4(?) = 0xfe5b120ee4e73a450a28f2eda8d1d6b37c8b16215b29a969518f32ddfbe2689a

const sub_d9f21f6d(?) = 0xa5043bf7f3a9a7cdb7a5fa86405c2c1e0cfb1db2bcd2247bd0e9c0be71ccc0bb

const sub_de19ed6a(?) = 0x6791e2a10f4805e0e2cc8b01f5ac1e0fa1c938d37c82f3994293d698983a58b6

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of struct roleAdmin;
mapping of uint256 sub_22f3fd14;
mapping of uint256 sub_cf0b882f;
uint256 sub_aefa058d;
mapping of address sub_728a9224;
mapping of uint256 sub_aeb54111;
address sub_cbb666d8Address;

function sub_22f3fd14(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_22f3fd14[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_728a9224(?) payable {
    require calldata.size - 4 >= 32
    return sub_728a9224[arg1]
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function sub_aeb54111(?) payable {
    require calldata.size - 4 >= 32
    return sub_aeb54111[arg1]
}

function sub_aefa058d(?) payable {
    return sub_aefa058d
}

function sub_cbb666d8(?) payable {
    return sub_cbb666d8Address
}

function sub_cf0b882f(?) payable {
    require calldata.size - 4 >= 32
    return sub_cf0b882f[arg1]
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

function sub_5016128a(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    if not address(arg1):
        revert with 0, 'MarketData: zero address'
    if arg2 == sub_22f3fd14[address(arg1)]:
        revert with 0, 'MarketData: no change'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if not roleAdmin[0x9ef30578889e2e109df9605c5a85b7368d15f0c54cd31174b47a452d2dd50d34][address(msg.sender)].field_0:
            revert with 0, 'MarketData: cannot set collection owner'
    sub_22f3fd14[address(arg1)] = arg2
    emit 0x9a16fd0e: address(arg1), arg2
}

function initialize() payable {
    if uint8(stor0.field_8):
        if ext_code.size(this.address):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
    if not uint8(stor0.field_8):
        uint16(stor0.field_0) = 257
        sub_aefa058d = 8760 * 24 * 3600
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is not initializing'
    sub_aefa058d = 8760 * 24 * 3600
    if not roleAdmin[0][address(msg.sender)].field_0:
        roleAdmin[0][address(msg.sender)].field_0 = 1
        emit RoleGranted(0, msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_2a3a1f8d(?) payable {
    require calldata.size - 4 >= 64
    if roleAdmin[0x6791e2a10f4805e0e2cc8b01f5ac1e0fa1c938d37c82f3994293d698983a58b6][address(msg.sender)].field_0:
        sub_cf0b882f[arg1] = arg2
        emit 0xc8374a3c: arg2, msg.sender, arg1
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
        s = 0x6791e2a10f4805e0e2cc8b01f5ac1e0fa1c938d37c82f3994293d698983a58b6
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

function setReferralDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if roleAdmin[0x5b6947f3b86eb89ea0c00007bd6ac176cfdb02ec4a33cbad598c2356b94e04e4][address(msg.sender)].field_0:
        sub_aefa058d = arg1
        emit 0x2a41117a: msg.sender, arg1
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
        s = 0x5b6947f3b86eb89ea0c00007bd6ac176cfdb02ec4a33cbad598c2356b94e04e4
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

function sub_8e8975bb(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
    if roleAdmin[0xfe5b120ee4e73a450a28f2eda8d1d6b37c8b16215b29a969518f32ddfbe2689a][address(msg.sender)].field_0:
        sub_728a9224[arg1] = address(arg2)
        emit 0xa930dc84: arg1, address(arg2)
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
        s = 0xfe5b120ee4e73a450a28f2eda8d1d6b37c8b16215b29a969518f32ddfbe2689a
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

function sub_fbec89e9(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0xa5043bf7f3a9a7cdb7a5fa86405c2c1e0cfb1db2bcd2247bd0e9c0be71ccc0bb][address(msg.sender)].field_0:
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
            s = 0xa5043bf7f3a9a7cdb7a5fa86405c2c1e0cfb1db2bcd2247bd0e9c0be71ccc0bb
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
    if arg2 > 10000:
        revert with 0, 'MarketData: discount too high'
    if arg2 == sub_aeb54111[arg1]:
        revert with 0, 'MarketData: no change'
    sub_aeb54111[arg1] = arg2
    emit 0xe484e9e4: arg1, arg2
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function sub_c78723e1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not roleAdmin[0x666e54d8ad6eaeb3a4971c9743e6b1746f23a7f1dd952d3b912a601137d12e93][address(msg.sender)].field_0:
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
            s = 0x666e54d8ad6eaeb3a4971c9743e6b1746f23a7f1dd952d3b912a601137d12e93
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
    if sub_cbb666d8Address == address(arg1):
        revert with 0, 'MarketData: no change'
    if not address(arg1):
        revert with 0, 'MarketData: zero address'
    sub_cbb666d8Address = address(arg1)
    emit 0x2e7461db: msg.sender, address(arg1)
}

function sub_feb63662(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    if not roleAdmin[0xa5043bf7f3a9a7cdb7a5fa86405c2c1e0cfb1db2bcd2247bd0e9c0be71ccc0bb][address(msg.sender)].field_0:
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
            s = 0xa5043bf7f3a9a7cdb7a5fa86405c2c1e0cfb1db2bcd2247bd0e9c0be71ccc0bb
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
    if ('cd', 36).length != ('cd', 4).length:
        revert with 0, 'MarketData: Lengths not equal'
    idx = 0
    while idx < ('cd', 4).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if cd[((32 * idx) + cd[36] + 36)] > 10000:
            revert with 0, 'MarketData: discount too high'
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 155
        sub_aeb54111[cd[((32 * idx) + cd[4] + 36)]] = cd[((32 * idx) + cd[36] + 36)]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    require ('cd', 36).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    emit 0x3c9ddbc2: Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len 32 * ('cd', 4).length], ('cd', 36).length, call.data[cd[36] + 36 len 32 * ('cd', 36).length]), (32 * ('cd', 4).length) + 96
}



}
