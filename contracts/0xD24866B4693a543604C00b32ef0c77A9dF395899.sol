contract main {




// =====================  Runtime code  =====================


const sub_b20764c9(?) = 0xbabe61b00ef2310b7a8a34c567c8c759960450addb8f5e7da66fccee89fc79d7

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
mapping of struct dex;
uint256 sub_b0379695;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function sub_6338a7c0(?) payable {
    require calldata.size - 4 >= 32
    return dex[arg1].field_0, dex[arg1].field_256
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

function sub_b0379695(?) payable {
    return sub_b0379695
}

function getDex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return dex[arg1].field_0, dex[arg1].field_256
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function _fallback() payable {
    revert
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

function sub_8c77ef7d(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    if roleAdmin[0xbabe61b00ef2310b7a8a34c567c8c759960450addb8f5e7da66fccee89fc79d7][address(msg.sender)].field_0:
        dex[arg1].field_0 = address(arg2)
        dex[arg1].field_256 = address(arg3)
        if sub_b0379695 > -2:
            revert with 0, 17
        sub_b0379695++
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
    s = 0xbabe61b00ef2310b7a8a34c567c8c759960450addb8f5e7da66fccee89fc79d7
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
    revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
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

function sub_214fa040(?) payable {
    require calldata.size - 4 >= 160
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = msg.sender
    mem[32] = sha3(0xbabe61b00ef2310b7a8a34c567c8c759960450addb8f5e7da66fccee89fc79d7, 0)
    if not roleAdmin[0xbabe61b00ef2310b7a8a34c567c8c759960450addb8f5e7da66fccee89fc79d7][address(msg.sender)].field_0:
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
        s = 0xbabe61b00ef2310b7a8a34c567c8c759960450addb8f5e7da66fccee89fc79d7
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
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
    if cd[36] < eth.balance(this.address):
        if cd[36] and cd[68] > -1 / cd[36]:
            revert with 0, 17
        if block.timestamp > !cd[132]:
            revert with 0, 17
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = cd[36]
        mem[132] = cd[36] * cd[68] / 10000
        mem[164] = 160
        mem[260] = ('cd', 4).length
        idx = 0
        s = 292
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = this.address
        mem[228] = block.timestamp + cd[132]
        call dex[cd[100]].field_0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args cd[36], cd[36] * cd[68] / 10000, Array(len=('cd', 4).length, data=mem[292 len 32 * ('cd', 4).length]), address(this.address), block.timestamp + cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 127 < return_data.size + 96
        if mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        require (32 * mem[mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 96]) + mem[96 len 4], Mask(224, 32, cd[36]) >> 32 + 32 <= return_data.size
    else:
        if eth.balance(this.address) and cd[68] > -1 / eth.balance(this.address):
            revert with 0, 17
        if block.timestamp > !cd[132]:
            revert with 0, 17
        mem[96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
        mem[100] = eth.balance(this.address)
        mem[132] = eth.balance(this.address) * cd[68] / 10000
        mem[164] = 160
        mem[260] = ('cd', 4).length
        idx = 0
        s = 292
        t = cd[4] + 36
        while idx < ('cd', 4).length:
            require cd[t] == address(cd[t])
            mem[s] = address(cd[t])
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        mem[196] = this.address
        mem[228] = block.timestamp + cd[132]
        call dex[cd[100]].field_0.swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
             gas gas_remaining wei
            args eth.balance(this.address), eth.balance(this.address) * cd[68] / 10000, Array(len=('cd', 4).length, data=mem[292 len 32 * ('cd', 4).length]), address(this.address), block.timestamp + cd[132]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        require mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 <= test266151307()
        require mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 127 < return_data.size + 96
        if mem[mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96] > test266151307():
            revert with 0, 65
        if ceil32(return_data.size) + ceil32(32 * mem[mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96]) + 97 > test266151307() or ceil32(32 * mem[mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96]) + 1 < 0:
            revert with 0, 65
        require (32 * mem[mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 96]) + mem[96 len 4], Mask(224, 32, eth.balance(this.address)) >> 32 + 32 <= return_data.size
}

function sub_e234768a(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[0] = cd[36]
    mem[32] = 2
    mem[64] = 160
    mem[96] = dex[cd[36]].field_0
    mem[128] = dex[cd[36]].field_256
    if ('cd', 4).length < 1:
        revert with 0, 17
    if var82002 < ('cd', 4).length - 1:
        if var84001 >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * var84001) + cd[4] + 36)] == address(cd[((32 * var84001) + cd[4] + 36)])
        s = var84001
        t = mem[128]
        idx = var84001
        u = var84002
        u = var84003
        u = var84004
        while 1 <= !idx:
            if idx + 1 >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
            if address(cd[((32 * s) + cd[4] + 36)]) == address(cd[((32 * idx + 1) + cd[4] + 36)]):
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if address(cd[((32 * s) + cd[4] + 36)]) < address(cd[((32 * idx + 1) + cd[4] + 36)]):
                if not address(cd[((32 * s) + cd[4] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _1130 = mem[64]
                mem[mem[64] + 32] = address(cd[((32 * s) + cd[4] + 36)])
                mem[mem[64] + 52] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                _1131 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _1133 = sha3(mem[_1131 + 32 len mem[_1131]])
                mem[_1130 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1130 + 105] = address(t)
                mem[_1130 + 125] = _1133
                mem[_1130 + 157] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                mem[_1130 + 72] = 85
                staticcall address(sha3(0, address(t), _1133, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                mem[_1130 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                staticcall address(sha3(0, address(t), _1133, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                        gas gas_remaining wei
                mem[_1130 + ceil32(return_data.size) + 349] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_1130 + ceil32(return_data.size) + 189] = ext_call.return_data[12 len 20]
                staticcall address(sha3(0, address(t), _1133, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                        gas gas_remaining wei
                mem[_1130 + (2 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_1130 + ceil32(return_data.size) + 221] = ext_call.return_data[12 len 20]
                mem[_1130 + ceil32(return_data.size) + 253] = Mask(112, 0, ext_call.return_data[0])
                mem[_1130 + ceil32(return_data.size) + 285] = Mask(112, 0, ext_call.return_data[32])
                staticcall address(sha3(0, address(t), _1133, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                        gas gas_remaining wei
                mem[_1130 + (4 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1130 + (6 * ceil32(return_data.size)) + 349
                require return_data.size >= 32
                mem[_1130 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _1130 + ceil32(return_data.size) + 189
                if idx == -1:
                    revert with 0, 17
                if ('cd', 4).length < 1:
                    revert with 0, 17
                if idx + 1 < ('cd', 4).length - 1:
                    require cd[((32 * idx + 2) + cd[4] + 36)] == address(cd[((32 * idx + 2) + cd[4] + 36)])
                    s = idx + 1
                    t = mem[128]
                    idx = idx + 1
                    u = ext_call.return_data[32]
                    u = ext_call.return_data[0]
                    u = sha3(0, address(t), _1133, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)
                    continue 
                if ('cd', 4).length < 1:
                    revert with 0, 17
                if ('cd', 4).length - 1 >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
                if 0 >= ('cd', 4).length:
                    revert with 0, 50
                require ('cd', 4)[0] == address(('cd', 4)[0])
                if address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]) == address(('cd', 4)[0]):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]) < address(('cd', 4)[0]):
                    if not address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    mem[_1130 + (6 * ceil32(return_data.size)) + 381] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
                    mem[_1130 + (6 * ceil32(return_data.size)) + 401] = address(('cd', 4)[0])
                    mem[_1130 + (6 * ceil32(return_data.size)) + 349] = 40
                    mem[_1130 + (6 * ceil32(return_data.size)) + 453] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1130 + (6 * ceil32(return_data.size)) + 454] = address(mem[128])
                    mem[_1130 + (6 * ceil32(return_data.size)) + 474] = sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0]))
                    mem[_1130 + (6 * ceil32(return_data.size)) + 506] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                    mem[_1130 + (6 * ceil32(return_data.size)) + 421] = 85
                    staticcall address(sha3(0, mem[140 len 20], sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                            gas gas_remaining wei
                    mem[_1130 + (6 * ceil32(return_data.size)) + 538 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    staticcall address(sha3(0, mem[140 len 20], sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                            gas gas_remaining wei
                    mem[_1130 + (7 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1130 + (7 * ceil32(return_data.size)) + 538] = ext_call.return_data[12 len 20]
                    mem[_1130 + (9 * ceil32(return_data.size)) + 698] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    staticcall address(sha3(0, mem[140 len 20], sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                            gas gas_remaining wei
                           args mem[_1130 + (9 * ceil32(return_data.size)) + 702 len 4 * ceil32(return_data.size)]
                    mem[_1130 + (9 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_1130 + (7 * ceil32(return_data.size)) + 570] = ext_call.return_data[12 len 20]
                    mem[_1130 + (7 * ceil32(return_data.size)) + 602] = Mask(112, 0, ext_call.return_data[0])
                    mem[_1130 + (7 * ceil32(return_data.size)) + 634] = Mask(112, 0, ext_call.return_data[32])
                    mem[_1130 + (11 * ceil32(return_data.size)) + 698] = 0x7464fc3d00000000000000000000000000000000000000000000000000000000
                    staticcall address(sha3(0, mem[140 len 20], sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                            gas gas_remaining wei
                           args mem[_1130 + (11 * ceil32(return_data.size)) + 702 len 8 * ceil32(return_data.size)]
                    mem[_1130 + (11 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _1130 + (12 * ceil32(return_data.size)) + 698
                    require return_data.size >= 32
                    mem[_1130 + (7 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                    if ('cd', 4).length >= mem[96]:
                        revert with 0, 50
                    mem[(32 * ('cd', 4).length) + 128] = _1130 + (7 * ceil32(return_data.size)) + 538
                    mem[_1130 + (12 * ceil32(return_data.size)) + 698] = 32
                    _1320 = mem[96]
                    mem[_1130 + (12 * ceil32(return_data.size)) + 730] = mem[96]
                    idx = 0
                    t = 128
                    u = _1130 + (12 * ceil32(return_data.size)) + 762
                    while idx < mem[96]:
                        _1352 = mem[t]
                        mem[u] = mem[mem[t] + 12 len 20]
                        mem[u + 32] = mem[_1352 + 44 len 20]
                        mem[u + 64] = mem[_1352 + 82 len 14]
                        mem[u + 96] = mem[_1352 + 114 len 14]
                        mem[u + 128] = mem[_1352 + 128]
                        require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 160
                        continue 
                    return memory
                      from mem[64]
                       len _1130 + (12 * ceil32(return_data.size)) + (160 * _1320) + -mem[64] + 762
                if not address(('cd', 4)[0]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[_1130 + (6 * ceil32(return_data.size)) + 381] = address(('cd', 4)[0])
                mem[_1130 + (6 * ceil32(return_data.size)) + 401] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
                mem[_1130 + (6 * ceil32(return_data.size)) + 349] = 40
                mem[_1130 + (6 * ceil32(return_data.size)) + 453] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1130 + (6 * ceil32(return_data.size)) + 454] = address(mem[128])
                mem[_1130 + (6 * ceil32(return_data.size)) + 474] = sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]))
                mem[_1130 + (6 * ceil32(return_data.size)) + 506] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                mem[_1130 + (6 * ceil32(return_data.size)) + 421] = 85
                staticcall address(sha3(0, mem[140 len 20], sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                mem[_1130 + (6 * ceil32(return_data.size)) + 538 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                staticcall address(sha3(0, mem[140 len 20], sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                        gas gas_remaining wei
                mem[_1130 + (7 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_1130 + (7 * ceil32(return_data.size)) + 538] = ext_call.return_data[12 len 20]
                mem[_1130 + (9 * ceil32(return_data.size)) + 698] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                staticcall address(sha3(0, mem[140 len 20], sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                        gas gas_remaining wei
                       args mem[_1130 + (9 * ceil32(return_data.size)) + 702 len 4 * ceil32(return_data.size)]
                mem[_1130 + (9 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_1130 + (7 * ceil32(return_data.size)) + 570] = ext_call.return_data[12 len 20]
                mem[_1130 + (7 * ceil32(return_data.size)) + 602] = Mask(112, 0, ext_call.return_data[0])
                mem[_1130 + (7 * ceil32(return_data.size)) + 634] = Mask(112, 0, ext_call.return_data[32])
                mem[_1130 + (11 * ceil32(return_data.size)) + 698] = 0x7464fc3d00000000000000000000000000000000000000000000000000000000
                staticcall address(sha3(0, mem[140 len 20], sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                        gas gas_remaining wei
                       args mem[_1130 + (11 * ceil32(return_data.size)) + 702 len 8 * ceil32(return_data.size)]
                mem[_1130 + (11 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1130 + (12 * ceil32(return_data.size)) + 698
                require return_data.size >= 32
                mem[_1130 + (7 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                if ('cd', 4).length >= mem[96]:
                    revert with 0, 50
                mem[(32 * ('cd', 4).length) + 128] = _1130 + (7 * ceil32(return_data.size)) + 538
                mem[_1130 + (12 * ceil32(return_data.size)) + 698] = 32
                _1321 = mem[96]
                mem[_1130 + (12 * ceil32(return_data.size)) + 730] = mem[96]
                idx = 0
                t = 128
                u = _1130 + (12 * ceil32(return_data.size)) + 762
                while idx < mem[96]:
                    _1358 = mem[t]
                    mem[u] = mem[mem[t] + 12 len 20]
                    mem[u + 32] = mem[_1358 + 44 len 20]
                    mem[u + 64] = mem[_1358 + 82 len 14]
                    mem[u + 96] = mem[_1358 + 114 len 14]
                    mem[u + 128] = mem[_1358 + 128]
                    require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 160
                    continue 
                return memory
                  from mem[64]
                   len _1130 + (12 * ceil32(return_data.size)) + (160 * _1321) + -mem[64] + 762
            if not address(cd[((32 * idx + 1) + cd[4] + 36)]):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            _1136 = mem[64]
            mem[mem[64] + 32] = address(cd[((32 * idx + 1) + cd[4] + 36)])
            mem[mem[64] + 52] = address(cd[((32 * s) + cd[4] + 36)])
            _1137 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            _1139 = sha3(mem[_1137 + 32 len mem[_1137]])
            mem[_1136 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[_1136 + 105] = address(t)
            mem[_1136 + 125] = _1139
            mem[_1136 + 157] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
            mem[_1136 + 72] = 85
            staticcall address(sha3(0, address(t), _1139, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                    gas gas_remaining wei
            mem[_1136 + 189 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            staticcall address(sha3(0, address(t), _1139, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                    gas gas_remaining wei
            mem[_1136 + ceil32(return_data.size) + 349] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_1136 + ceil32(return_data.size) + 189] = ext_call.return_data[12 len 20]
            staticcall address(sha3(0, address(t), _1139, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                    gas gas_remaining wei
            mem[_1136 + (2 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_1136 + ceil32(return_data.size) + 221] = ext_call.return_data[12 len 20]
            mem[_1136 + ceil32(return_data.size) + 253] = Mask(112, 0, ext_call.return_data[0])
            mem[_1136 + ceil32(return_data.size) + 285] = Mask(112, 0, ext_call.return_data[32])
            staticcall address(sha3(0, address(t), _1139, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                    gas gas_remaining wei
            mem[_1136 + (4 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1136 + (6 * ceil32(return_data.size)) + 349
            require return_data.size >= 32
            mem[_1136 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _1136 + ceil32(return_data.size) + 189
            if idx == -1:
                revert with 0, 17
            if ('cd', 4).length < 1:
                revert with 0, 17
            if idx + 1 < ('cd', 4).length - 1:
                require cd[((32 * idx + 2) + cd[4] + 36)] == address(cd[((32 * idx + 2) + cd[4] + 36)])
                s = idx + 1
                t = mem[128]
                idx = idx + 1
                u = ext_call.return_data[32]
                u = ext_call.return_data[0]
                u = sha3(0, address(t), _1139, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)
                continue 
            if ('cd', 4).length < 1:
                revert with 0, 17
            if ('cd', 4).length - 1 >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
            if 0 >= ('cd', 4).length:
                revert with 0, 50
            require ('cd', 4)[0] == address(('cd', 4)[0])
            if address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]) == address(('cd', 4)[0]):
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]) < address(('cd', 4)[0]):
                if not address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[_1136 + (6 * ceil32(return_data.size)) + 381] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
                mem[_1136 + (6 * ceil32(return_data.size)) + 401] = address(('cd', 4)[0])
                mem[_1136 + (6 * ceil32(return_data.size)) + 349] = 40
                mem[_1136 + (6 * ceil32(return_data.size)) + 453] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_1136 + (6 * ceil32(return_data.size)) + 454] = address(mem[128])
                mem[_1136 + (6 * ceil32(return_data.size)) + 474] = sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0]))
                mem[_1136 + (6 * ceil32(return_data.size)) + 506] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                mem[_1136 + (6 * ceil32(return_data.size)) + 421] = 85
                staticcall address(sha3(0, mem[140 len 20], sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                mem[_1136 + (6 * ceil32(return_data.size)) + 538 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                staticcall address(sha3(0, mem[140 len 20], sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                        gas gas_remaining wei
                mem[_1136 + (7 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_1136 + (7 * ceil32(return_data.size)) + 538] = ext_call.return_data[12 len 20]
                mem[_1136 + (9 * ceil32(return_data.size)) + 698] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                staticcall address(sha3(0, mem[140 len 20], sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                        gas gas_remaining wei
                       args mem[_1136 + (9 * ceil32(return_data.size)) + 702 len 4 * ceil32(return_data.size)]
                mem[_1136 + (9 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_1136 + (7 * ceil32(return_data.size)) + 570] = ext_call.return_data[12 len 20]
                mem[_1136 + (7 * ceil32(return_data.size)) + 602] = Mask(112, 0, ext_call.return_data[0])
                mem[_1136 + (7 * ceil32(return_data.size)) + 634] = Mask(112, 0, ext_call.return_data[32])
                mem[_1136 + (11 * ceil32(return_data.size)) + 698] = 0x7464fc3d00000000000000000000000000000000000000000000000000000000
                staticcall address(sha3(0, mem[140 len 20], sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                        gas gas_remaining wei
                       args mem[_1136 + (11 * ceil32(return_data.size)) + 702 len 8 * ceil32(return_data.size)]
                mem[_1136 + (11 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _1136 + (12 * ceil32(return_data.size)) + 698
                require return_data.size >= 32
                mem[_1136 + (7 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                if ('cd', 4).length >= mem[96]:
                    revert with 0, 50
                mem[(32 * ('cd', 4).length) + 128] = _1136 + (7 * ceil32(return_data.size)) + 538
                mem[_1136 + (12 * ceil32(return_data.size)) + 698] = 32
                _1322 = mem[96]
                mem[_1136 + (12 * ceil32(return_data.size)) + 730] = mem[96]
                idx = 0
                t = 128
                u = _1136 + (12 * ceil32(return_data.size)) + 762
                while idx < mem[96]:
                    _1364 = mem[t]
                    mem[u] = mem[mem[t] + 12 len 20]
                    mem[u + 32] = mem[_1364 + 44 len 20]
                    mem[u + 64] = mem[_1364 + 82 len 14]
                    mem[u + 96] = mem[_1364 + 114 len 14]
                    mem[u + 128] = mem[_1364 + 128]
                    require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 160
                    continue 
                return memory
                  from mem[64]
                   len _1136 + (12 * ceil32(return_data.size)) + (160 * _1322) + -mem[64] + 762
            if not address(('cd', 4)[0]):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            mem[_1136 + (6 * ceil32(return_data.size)) + 381] = address(('cd', 4)[0])
            mem[_1136 + (6 * ceil32(return_data.size)) + 401] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
            mem[_1136 + (6 * ceil32(return_data.size)) + 349] = 40
            mem[_1136 + (6 * ceil32(return_data.size)) + 453] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[_1136 + (6 * ceil32(return_data.size)) + 454] = address(mem[128])
            mem[_1136 + (6 * ceil32(return_data.size)) + 474] = sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]))
            mem[_1136 + (6 * ceil32(return_data.size)) + 506] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
            mem[_1136 + (6 * ceil32(return_data.size)) + 421] = 85
            staticcall address(sha3(0, mem[140 len 20], sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                    gas gas_remaining wei
            mem[_1136 + (6 * ceil32(return_data.size)) + 538 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            staticcall address(sha3(0, mem[140 len 20], sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                    gas gas_remaining wei
            mem[_1136 + (7 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_1136 + (7 * ceil32(return_data.size)) + 538] = ext_call.return_data[12 len 20]
            mem[_1136 + (9 * ceil32(return_data.size)) + 698] = 0xd21220a700000000000000000000000000000000000000000000000000000000
            staticcall address(sha3(0, mem[140 len 20], sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                    gas gas_remaining wei
                   args mem[_1136 + (9 * ceil32(return_data.size)) + 702 len 4 * ceil32(return_data.size)]
            mem[_1136 + (9 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_1136 + (7 * ceil32(return_data.size)) + 570] = ext_call.return_data[12 len 20]
            mem[_1136 + (7 * ceil32(return_data.size)) + 602] = Mask(112, 0, ext_call.return_data[0])
            mem[_1136 + (7 * ceil32(return_data.size)) + 634] = Mask(112, 0, ext_call.return_data[32])
            mem[_1136 + (11 * ceil32(return_data.size)) + 698] = 0x7464fc3d00000000000000000000000000000000000000000000000000000000
            staticcall address(sha3(0, mem[140 len 20], sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                    gas gas_remaining wei
                   args mem[_1136 + (11 * ceil32(return_data.size)) + 702 len 8 * ceil32(return_data.size)]
            mem[_1136 + (11 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _1136 + (12 * ceil32(return_data.size)) + 698
            require return_data.size >= 32
            mem[_1136 + (7 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
            if ('cd', 4).length >= mem[96]:
                revert with 0, 50
            mem[(32 * ('cd', 4).length) + 128] = _1136 + (7 * ceil32(return_data.size)) + 538
            mem[_1136 + (12 * ceil32(return_data.size)) + 698] = 32
            _1323 = mem[96]
            mem[_1136 + (12 * ceil32(return_data.size)) + 730] = mem[96]
            idx = 0
            t = 128
            u = _1136 + (12 * ceil32(return_data.size)) + 762
            while idx < mem[96]:
                _1370 = mem[t]
                mem[u] = mem[mem[t] + 12 len 20]
                mem[u + 32] = mem[_1370 + 44 len 20]
                mem[u + 64] = mem[_1370 + 82 len 14]
                mem[u + 96] = mem[_1370 + 114 len 14]
                mem[u + 128] = mem[_1370 + 128]
                require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                idx = idx + 1
                t = t + 32
                u = u + 160
                continue 
            return memory
              from mem[64]
               len _1136 + (12 * ceil32(return_data.size)) + (160 * _1323) + -mem[64] + 762
        revert with 0, 17
    if ('cd', 4).length < 1:
        revert with 0, 17
    if ('cd', 4).length - 1 >= ('cd', 4).length:
        revert with 0, 50
    require cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)] == address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
    if 0 >= ('cd', 4).length:
        revert with 0, 50
    require ('cd', 4)[0] == address(('cd', 4)[0])
    if address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]) == address(('cd', 4)[0]):
        revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
    if address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]) < address(('cd', 4)[0]):
        if not address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        mem[192] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
        mem[212] = address(('cd', 4)[0])
        mem[160] = 40
        mem[264] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[265] = dex[cd[36]].field_256
        mem[285] = sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0]))
        mem[317] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
        mem[232] = 85
        staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                gas gas_remaining wei
        mem[349 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 509] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 349] = ext_call.return_data[12 len 20]
        staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 509] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 381] = ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 413] = Mask(112, 0, ext_call.return_data[0])
        mem[ceil32(return_data.size) + 445] = Mask(112, 0, ext_call.return_data[32])
        staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 509] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 509
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 477] = ext_call.return_data[0]
        if ('cd', 4).length >= dex[cd[36]].field_0:
            revert with 0, 50
        mem[(32 * ('cd', 4).length) + 128] = ceil32(return_data.size) + 349
        mem[(6 * ceil32(return_data.size)) + 509] = 32
        mem[(6 * ceil32(return_data.size)) + 541] = dex[cd[36]].field_0
        idx = 0
        s = 128
        t = (6 * ceil32(return_data.size)) + 573
        while idx < mem[96]:
            _886 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_886 + 44 len 20]
            mem[t + 64] = mem[_886 + 82 len 14]
            mem[t + 96] = mem[_886 + 114 len 14]
            mem[t + 128] = mem[_886 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
    else:
        if not address(('cd', 4)[0]):
            revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
        mem[192] = address(('cd', 4)[0])
        mem[212] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
        mem[160] = 40
        mem[264] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[265] = dex[cd[36]].field_256
        mem[285] = sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]))
        mem[317] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
        mem[232] = 85
        staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                gas gas_remaining wei
        mem[349 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 509] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 349] = ext_call.return_data[12 len 20]
        staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 509] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 381] = ext_call.return_data[12 len 20]
        mem[ceil32(return_data.size) + 413] = Mask(112, 0, ext_call.return_data[0])
        mem[ceil32(return_data.size) + 445] = Mask(112, 0, ext_call.return_data[32])
        staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                gas gas_remaining wei
        mem[(4 * ceil32(return_data.size)) + 509] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (6 * ceil32(return_data.size)) + 509
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 477] = ext_call.return_data[0]
        if ('cd', 4).length >= dex[cd[36]].field_0:
            revert with 0, 50
        mem[(32 * ('cd', 4).length) + 128] = ceil32(return_data.size) + 349
        mem[(6 * ceil32(return_data.size)) + 509] = 32
        mem[(6 * ceil32(return_data.size)) + 541] = dex[cd[36]].field_0
        idx = 0
        s = 128
        t = (6 * ceil32(return_data.size)) + 573
        while idx < mem[96]:
            _892 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_892 + 44 len 20]
            mem[t + 64] = mem[_892 + 82 len 14]
            mem[t + 96] = mem[_892 + 114 len 14]
            mem[t + 128] = mem[_892 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
    return memory
      from mem[64]
       len (6 * ceil32(return_data.size)) + (160 * dex[cd[36]].field_0) + -mem[64] + 573
}



}
