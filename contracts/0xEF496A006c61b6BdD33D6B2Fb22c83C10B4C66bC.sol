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

function sub_14337135(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if roleAdmin[0xbabe61b00ef2310b7a8a34c567c8c759960450addb8f5e7da66fccee89fc79d7][address(msg.sender)].field_0:
        dex[stor3].field_0 = address(arg1)
        dex[stor3].field_256 = address(arg2)
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
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    if not ('cd', 4).length:
        mem[0] = cd[36]
        mem[32] = 2
        mem[64] = (32 * ('cd', 4).length) + 192
        mem[(32 * ('cd', 4).length) + 128] = dex[cd[36]].field_0
        mem[(32 * ('cd', 4).length) + 160] = dex[cd[36]].field_256
        if ('cd', 4).length < 1:
            revert with 0, 17
        if var84002 < ('cd', 4).length - 1:
            if var86001 >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * var86001) + cd[4] + 36)] == address(cd[((32 * var86001) + cd[4] + 36)])
            s = var86001
            t = mem[(32 * ('cd', 4).length) + 160]
            idx = var86001
            u = var86002
            u = var86003
            u = var86004
            while 1 <= !idx:
                if idx + 1 >= ('cd', 4).length:
                    revert with 0, 50
                require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
                if address(cd[((32 * s) + cd[4] + 36)]) == address(cd[((32 * idx + 1) + cd[4] + 36)]):
                    revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
                if address(cd[((32 * s) + cd[4] + 36)]) < address(cd[((32 * idx + 1) + cd[4] + 36)]):
                    if not address(cd[((32 * s) + cd[4] + 36)]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    _2180 = mem[64]
                    mem[mem[64] + 32] = address(cd[((32 * s) + cd[4] + 36)])
                    mem[mem[64] + 52] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                    _2181 = mem[64]
                    mem[mem[64]] = 40
                    mem[64] = mem[64] + 72
                    _2183 = sha3(mem[_2181 + 32 len mem[_2181]])
                    mem[_2180 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2180 + 105] = address(t)
                    mem[_2180 + 125] = _2183
                    mem[_2180 + 157] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                    mem[_2180 + 72] = 85
                    staticcall address(sha3(0, address(t), _2183, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                            gas gas_remaining wei
                    mem[_2180 + 189 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    staticcall address(sha3(0, address(t), _2183, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                            gas gas_remaining wei
                    mem[_2180 + ceil32(return_data.size) + 349] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_2180 + ceil32(return_data.size) + 189] = ext_call.return_data[12 len 20]
                    staticcall address(sha3(0, address(t), _2183, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                            gas gas_remaining wei
                    mem[_2180 + (2 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_2180 + ceil32(return_data.size) + 221] = ext_call.return_data[12 len 20]
                    mem[_2180 + ceil32(return_data.size) + 253] = Mask(112, 0, ext_call.return_data[0])
                    mem[_2180 + ceil32(return_data.size) + 285] = Mask(112, 0, ext_call.return_data[32])
                    staticcall address(sha3(0, address(t), _2183, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                            gas gas_remaining wei
                    mem[_2180 + (4 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2180 + (6 * ceil32(return_data.size)) + 349
                    require return_data.size >= 32
                    mem[_2180 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                    if idx >= mem[96]:
                        revert with 0, 50
                    mem[(32 * idx) + 128] = _2180 + ceil32(return_data.size) + 189
                    if idx == -1:
                        revert with 0, 17
                    if ('cd', 4).length < 1:
                        revert with 0, 17
                    if idx + 1 < ('cd', 4).length - 1:
                        require cd[((32 * idx + 2) + cd[4] + 36)] == address(cd[((32 * idx + 2) + cd[4] + 36)])
                        s = idx + 1
                        t = mem[(32 * ('cd', 4).length) + 160]
                        idx = idx + 1
                        u = ext_call.return_data[32]
                        u = ext_call.return_data[0]
                        u = sha3(0, address(t), _2183, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)
                        continue 
                    _2298 = mem[(32 * ('cd', 4).length) + 160]
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
                        mem[_2180 + (6 * ceil32(return_data.size)) + 381] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
                        mem[_2180 + (6 * ceil32(return_data.size)) + 401] = address(('cd', 4)[0])
                        mem[_2180 + (6 * ceil32(return_data.size)) + 349] = 40
                        mem[_2180 + (6 * ceil32(return_data.size)) + 453] = 0xff00000000000000000000000000000000000000000000000000000000000000
                        mem[_2180 + (6 * ceil32(return_data.size)) + 454] = address(_2298)
                        mem[_2180 + (6 * ceil32(return_data.size)) + 474] = sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0]))
                        mem[_2180 + (6 * ceil32(return_data.size)) + 506] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                        mem[_2180 + (6 * ceil32(return_data.size)) + 421] = 85
                        staticcall address(sha3(0, address(_2298), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                                gas gas_remaining wei
                        mem[_2180 + (6 * ceil32(return_data.size)) + 538 len 96] = ext_call.return_data[0 len 96]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                        staticcall address(sha3(0, address(_2298), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                                gas gas_remaining wei
                        mem[_2180 + (7 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_2180 + (7 * ceil32(return_data.size)) + 538] = ext_call.return_data[12 len 20]
                        mem[_2180 + (9 * ceil32(return_data.size)) + 698] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                        staticcall address(sha3(0, address(_2298), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                                gas gas_remaining wei
                               args mem[_2180 + (9 * ceil32(return_data.size)) + 702 len 4 * ceil32(return_data.size)]
                        mem[_2180 + (9 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        mem[_2180 + (7 * ceil32(return_data.size)) + 570] = ext_call.return_data[12 len 20]
                        mem[_2180 + (7 * ceil32(return_data.size)) + 602] = Mask(112, 0, ext_call.return_data[0])
                        mem[_2180 + (7 * ceil32(return_data.size)) + 634] = Mask(112, 0, ext_call.return_data[32])
                        mem[_2180 + (11 * ceil32(return_data.size)) + 698] = 0x7464fc3d00000000000000000000000000000000000000000000000000000000
                        staticcall address(sha3(0, address(_2298), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                                gas gas_remaining wei
                               args mem[_2180 + (11 * ceil32(return_data.size)) + 702 len 8 * ceil32(return_data.size)]
                        mem[_2180 + (11 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _2180 + (12 * ceil32(return_data.size)) + 698
                        require return_data.size >= 32
                        mem[_2180 + (7 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                        if ('cd', 4).length >= mem[96]:
                            revert with 0, 50
                        mem[(32 * ('cd', 4).length) + 128] = _2180 + (7 * ceil32(return_data.size)) + 538
                        mem[_2180 + (12 * ceil32(return_data.size)) + 698] = 32
                        _2558 = mem[96]
                        mem[_2180 + (12 * ceil32(return_data.size)) + 730] = mem[96]
                        idx = 0
                        t = 128
                        u = _2180 + (12 * ceil32(return_data.size)) + 762
                        while idx < mem[96]:
                            _2626 = mem[t]
                            mem[u] = mem[mem[t] + 12 len 20]
                            mem[u + 32] = mem[_2626 + 44 len 20]
                            mem[u + 64] = mem[_2626 + 82 len 14]
                            mem[u + 96] = mem[_2626 + 114 len 14]
                            mem[u + 128] = mem[_2626 + 128]
                            require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                            idx = idx + 1
                            t = t + 32
                            u = u + 160
                            continue 
                        return memory
                          from mem[64]
                           len _2180 + (12 * ceil32(return_data.size)) + (160 * _2558) + -mem[64] + 762
                    if not address(('cd', 4)[0]):
                        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                    mem[_2180 + (6 * ceil32(return_data.size)) + 381] = address(('cd', 4)[0])
                    mem[_2180 + (6 * ceil32(return_data.size)) + 401] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
                    mem[_2180 + (6 * ceil32(return_data.size)) + 349] = 40
                    mem[_2180 + (6 * ceil32(return_data.size)) + 453] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2180 + (6 * ceil32(return_data.size)) + 454] = address(_2298)
                    mem[_2180 + (6 * ceil32(return_data.size)) + 474] = sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]))
                    mem[_2180 + (6 * ceil32(return_data.size)) + 506] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                    mem[_2180 + (6 * ceil32(return_data.size)) + 421] = 85
                    staticcall address(sha3(0, address(_2298), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                            gas gas_remaining wei
                    mem[_2180 + (6 * ceil32(return_data.size)) + 538 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    staticcall address(sha3(0, address(_2298), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                            gas gas_remaining wei
                    mem[_2180 + (7 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_2180 + (7 * ceil32(return_data.size)) + 538] = ext_call.return_data[12 len 20]
                    mem[_2180 + (9 * ceil32(return_data.size)) + 698] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    staticcall address(sha3(0, address(_2298), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                            gas gas_remaining wei
                           args mem[_2180 + (9 * ceil32(return_data.size)) + 702 len 4 * ceil32(return_data.size)]
                    mem[_2180 + (9 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_2180 + (7 * ceil32(return_data.size)) + 570] = ext_call.return_data[12 len 20]
                    mem[_2180 + (7 * ceil32(return_data.size)) + 602] = Mask(112, 0, ext_call.return_data[0])
                    mem[_2180 + (7 * ceil32(return_data.size)) + 634] = Mask(112, 0, ext_call.return_data[32])
                    mem[_2180 + (11 * ceil32(return_data.size)) + 698] = 0x7464fc3d00000000000000000000000000000000000000000000000000000000
                    staticcall address(sha3(0, address(_2298), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                            gas gas_remaining wei
                           args mem[_2180 + (11 * ceil32(return_data.size)) + 702 len 8 * ceil32(return_data.size)]
                    mem[_2180 + (11 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2180 + (12 * ceil32(return_data.size)) + 698
                    require return_data.size >= 32
                    mem[_2180 + (7 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                    if ('cd', 4).length >= mem[96]:
                        revert with 0, 50
                    mem[(32 * ('cd', 4).length) + 128] = _2180 + (7 * ceil32(return_data.size)) + 538
                    mem[_2180 + (12 * ceil32(return_data.size)) + 698] = 32
                    _2559 = mem[96]
                    mem[_2180 + (12 * ceil32(return_data.size)) + 730] = mem[96]
                    idx = 0
                    t = 128
                    u = _2180 + (12 * ceil32(return_data.size)) + 762
                    while idx < mem[96]:
                        _2632 = mem[t]
                        mem[u] = mem[mem[t] + 12 len 20]
                        mem[u + 32] = mem[_2632 + 44 len 20]
                        mem[u + 64] = mem[_2632 + 82 len 14]
                        mem[u + 96] = mem[_2632 + 114 len 14]
                        mem[u + 128] = mem[_2632 + 128]
                        require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 160
                        continue 
                    return memory
                      from mem[64]
                       len _2180 + (12 * ceil32(return_data.size)) + (160 * _2559) + -mem[64] + 762
                if not address(cd[((32 * idx + 1) + cd[4] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _2186 = mem[64]
                mem[mem[64] + 32] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                mem[mem[64] + 52] = address(cd[((32 * s) + cd[4] + 36)])
                _2187 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _2189 = sha3(mem[_2187 + 32 len mem[_2187]])
                mem[_2186 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_2186 + 105] = address(t)
                mem[_2186 + 125] = _2189
                mem[_2186 + 157] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                mem[_2186 + 72] = 85
                staticcall address(sha3(0, address(t), _2189, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                mem[_2186 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                staticcall address(sha3(0, address(t), _2189, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                        gas gas_remaining wei
                mem[_2186 + ceil32(return_data.size) + 349] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_2186 + ceil32(return_data.size) + 189] = ext_call.return_data[12 len 20]
                staticcall address(sha3(0, address(t), _2189, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                        gas gas_remaining wei
                mem[_2186 + (2 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_2186 + ceil32(return_data.size) + 221] = ext_call.return_data[12 len 20]
                mem[_2186 + ceil32(return_data.size) + 253] = Mask(112, 0, ext_call.return_data[0])
                mem[_2186 + ceil32(return_data.size) + 285] = Mask(112, 0, ext_call.return_data[32])
                staticcall address(sha3(0, address(t), _2189, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                        gas gas_remaining wei
                mem[_2186 + (4 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2186 + (6 * ceil32(return_data.size)) + 349
                require return_data.size >= 32
                mem[_2186 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _2186 + ceil32(return_data.size) + 189
                if idx == -1:
                    revert with 0, 17
                if ('cd', 4).length < 1:
                    revert with 0, 17
                if idx + 1 < ('cd', 4).length - 1:
                    require cd[((32 * idx + 2) + cd[4] + 36)] == address(cd[((32 * idx + 2) + cd[4] + 36)])
                    s = idx + 1
                    t = mem[(32 * ('cd', 4).length) + 160]
                    idx = idx + 1
                    u = ext_call.return_data[32]
                    u = ext_call.return_data[0]
                    u = sha3(0, address(t), _2189, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)
                    continue 
                _2300 = mem[(32 * ('cd', 4).length) + 160]
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
                    mem[_2186 + (6 * ceil32(return_data.size)) + 381] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
                    mem[_2186 + (6 * ceil32(return_data.size)) + 401] = address(('cd', 4)[0])
                    mem[_2186 + (6 * ceil32(return_data.size)) + 349] = 40
                    mem[_2186 + (6 * ceil32(return_data.size)) + 453] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2186 + (6 * ceil32(return_data.size)) + 454] = address(_2300)
                    mem[_2186 + (6 * ceil32(return_data.size)) + 474] = sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0]))
                    mem[_2186 + (6 * ceil32(return_data.size)) + 506] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                    mem[_2186 + (6 * ceil32(return_data.size)) + 421] = 85
                    staticcall address(sha3(0, address(_2300), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                            gas gas_remaining wei
                    mem[_2186 + (6 * ceil32(return_data.size)) + 538 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    staticcall address(sha3(0, address(_2300), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                            gas gas_remaining wei
                    mem[_2186 + (7 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_2186 + (7 * ceil32(return_data.size)) + 538] = ext_call.return_data[12 len 20]
                    mem[_2186 + (9 * ceil32(return_data.size)) + 698] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    staticcall address(sha3(0, address(_2300), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                            gas gas_remaining wei
                           args mem[_2186 + (9 * ceil32(return_data.size)) + 702 len 4 * ceil32(return_data.size)]
                    mem[_2186 + (9 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_2186 + (7 * ceil32(return_data.size)) + 570] = ext_call.return_data[12 len 20]
                    mem[_2186 + (7 * ceil32(return_data.size)) + 602] = Mask(112, 0, ext_call.return_data[0])
                    mem[_2186 + (7 * ceil32(return_data.size)) + 634] = Mask(112, 0, ext_call.return_data[32])
                    mem[_2186 + (11 * ceil32(return_data.size)) + 698] = 0x7464fc3d00000000000000000000000000000000000000000000000000000000
                    staticcall address(sha3(0, address(_2300), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                            gas gas_remaining wei
                           args mem[_2186 + (11 * ceil32(return_data.size)) + 702 len 8 * ceil32(return_data.size)]
                    mem[_2186 + (11 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2186 + (12 * ceil32(return_data.size)) + 698
                    require return_data.size >= 32
                    mem[_2186 + (7 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                    if ('cd', 4).length >= mem[96]:
                        revert with 0, 50
                    mem[(32 * ('cd', 4).length) + 128] = _2186 + (7 * ceil32(return_data.size)) + 538
                    mem[_2186 + (12 * ceil32(return_data.size)) + 698] = 32
                    _2560 = mem[96]
                    mem[_2186 + (12 * ceil32(return_data.size)) + 730] = mem[96]
                    idx = 0
                    t = 128
                    u = _2186 + (12 * ceil32(return_data.size)) + 762
                    while idx < mem[96]:
                        _2638 = mem[t]
                        mem[u] = mem[mem[t] + 12 len 20]
                        mem[u + 32] = mem[_2638 + 44 len 20]
                        mem[u + 64] = mem[_2638 + 82 len 14]
                        mem[u + 96] = mem[_2638 + 114 len 14]
                        mem[u + 128] = mem[_2638 + 128]
                        require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 160
                        continue 
                    return memory
                      from mem[64]
                       len _2186 + (12 * ceil32(return_data.size)) + (160 * _2560) + -mem[64] + 762
                if not address(('cd', 4)[0]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[_2186 + (6 * ceil32(return_data.size)) + 381] = address(('cd', 4)[0])
                mem[_2186 + (6 * ceil32(return_data.size)) + 401] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
                mem[_2186 + (6 * ceil32(return_data.size)) + 349] = 40
                mem[_2186 + (6 * ceil32(return_data.size)) + 453] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_2186 + (6 * ceil32(return_data.size)) + 454] = address(_2300)
                mem[_2186 + (6 * ceil32(return_data.size)) + 474] = sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]))
                mem[_2186 + (6 * ceil32(return_data.size)) + 506] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                mem[_2186 + (6 * ceil32(return_data.size)) + 421] = 85
                staticcall address(sha3(0, address(_2300), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                mem[_2186 + (6 * ceil32(return_data.size)) + 538 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                staticcall address(sha3(0, address(_2300), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                        gas gas_remaining wei
                mem[_2186 + (7 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_2186 + (7 * ceil32(return_data.size)) + 538] = ext_call.return_data[12 len 20]
                mem[_2186 + (9 * ceil32(return_data.size)) + 698] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                staticcall address(sha3(0, address(_2300), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                        gas gas_remaining wei
                       args mem[_2186 + (9 * ceil32(return_data.size)) + 702 len 4 * ceil32(return_data.size)]
                mem[_2186 + (9 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_2186 + (7 * ceil32(return_data.size)) + 570] = ext_call.return_data[12 len 20]
                mem[_2186 + (7 * ceil32(return_data.size)) + 602] = Mask(112, 0, ext_call.return_data[0])
                mem[_2186 + (7 * ceil32(return_data.size)) + 634] = Mask(112, 0, ext_call.return_data[32])
                mem[_2186 + (11 * ceil32(return_data.size)) + 698] = 0x7464fc3d00000000000000000000000000000000000000000000000000000000
                staticcall address(sha3(0, address(_2300), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                        gas gas_remaining wei
                       args mem[_2186 + (11 * ceil32(return_data.size)) + 702 len 8 * ceil32(return_data.size)]
                mem[_2186 + (11 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2186 + (12 * ceil32(return_data.size)) + 698
                require return_data.size >= 32
                mem[_2186 + (7 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                if ('cd', 4).length >= mem[96]:
                    revert with 0, 50
                mem[(32 * ('cd', 4).length) + 128] = _2186 + (7 * ceil32(return_data.size)) + 538
                mem[_2186 + (12 * ceil32(return_data.size)) + 698] = 32
                _2561 = mem[96]
                mem[_2186 + (12 * ceil32(return_data.size)) + 730] = mem[96]
                idx = 0
                t = 128
                u = _2186 + (12 * ceil32(return_data.size)) + 762
                while idx < mem[96]:
                    _2644 = mem[t]
                    mem[u] = mem[mem[t] + 12 len 20]
                    mem[u + 32] = mem[_2644 + 44 len 20]
                    mem[u + 64] = mem[_2644 + 82 len 14]
                    mem[u + 96] = mem[_2644 + 114 len 14]
                    mem[u + 128] = mem[_2644 + 128]
                    require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 160
                    continue 
                return memory
                  from mem[64]
                   len _2186 + (12 * ceil32(return_data.size)) + (160 * _2561) + -mem[64] + 762
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
            mem[(32 * ('cd', 4).length) + 224] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
            mem[(32 * ('cd', 4).length) + 244] = address(('cd', 4)[0])
            mem[(32 * ('cd', 4).length) + 192] = 40
            mem[(32 * ('cd', 4).length) + 296] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 4).length) + 297] = dex[cd[36]].field_256
            mem[(32 * ('cd', 4).length) + 317] = sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0]))
            mem[(32 * ('cd', 4).length) + 349] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
            mem[(32 * ('cd', 4).length) + 264] = 85
            staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 4).length) + 381 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 541] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 381] = ext_call.return_data[12 len 20]
            staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 541] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 413] = ext_call.return_data[12 len 20]
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 445] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 477] = Mask(112, 0, ext_call.return_data[32])
            staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 541] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 541
            require return_data.size >= 32
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 509] = ext_call.return_data[0]
            if ('cd', 4).length >= ('cd', 4).length:
                revert with 0, 50
            mem[(32 * ('cd', 4).length) + 128] = (32 * ('cd', 4).length) + ceil32(return_data.size) + 381
            mem[(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 541] = 32
            mem[(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 573] = ('cd', 4).length
            idx = 0
            s = 128
            t = (32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 605
            while idx < mem[96]:
                _1613 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1613 + 44 len 20]
                mem[t + 64] = mem[_1613 + 82 len 14]
                mem[t + 96] = mem[_1613 + 114 len 14]
                mem[t + 128] = mem[_1613 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
        else:
            if not address(('cd', 4)[0]):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            mem[(32 * ('cd', 4).length) + 224] = address(('cd', 4)[0])
            mem[(32 * ('cd', 4).length) + 244] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
            mem[(32 * ('cd', 4).length) + 192] = 40
            mem[(32 * ('cd', 4).length) + 296] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[(32 * ('cd', 4).length) + 297] = dex[cd[36]].field_256
            mem[(32 * ('cd', 4).length) + 317] = sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]))
            mem[(32 * ('cd', 4).length) + 349] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
            mem[(32 * ('cd', 4).length) + 264] = 85
            staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 4).length) + 381 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 541] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 381] = ext_call.return_data[12 len 20]
            staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 4).length) + (2 * ceil32(return_data.size)) + 541] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 413] = ext_call.return_data[12 len 20]
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 445] = Mask(112, 0, ext_call.return_data[0])
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 477] = Mask(112, 0, ext_call.return_data[32])
            staticcall address(sha3(0, dex[cd[36]].field_256, sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                    gas gas_remaining wei
            mem[(32 * ('cd', 4).length) + (4 * ceil32(return_data.size)) + 541] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = (32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 541
            require return_data.size >= 32
            mem[(32 * ('cd', 4).length) + ceil32(return_data.size) + 509] = ext_call.return_data[0]
            if ('cd', 4).length >= ('cd', 4).length:
                revert with 0, 50
            mem[(32 * ('cd', 4).length) + 128] = (32 * ('cd', 4).length) + ceil32(return_data.size) + 381
            mem[(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 541] = 32
            mem[(32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 573] = ('cd', 4).length
            idx = 0
            s = 128
            t = (32 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + 605
            while idx < mem[96]:
                _1619 = mem[s]
                mem[t] = mem[mem[s] + 12 len 20]
                mem[t + 32] = mem[_1619 + 44 len 20]
                mem[t + 64] = mem[_1619 + 82 len 14]
                mem[t + 96] = mem[_1619 + 114 len 14]
                mem[t + 128] = mem[_1619 + 128]
                idx = idx + 1
                s = s + 32
                t = t + 160
                continue 
        return memory
          from mem[64]
           len (193 * ('cd', 4).length) + (6 * ceil32(return_data.size)) + -mem[64] + 605
    mem[64] = (32 * ('cd', 4).length) + 288
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 160
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    mem[0] = cd[36]
    mem[32] = 2
    _297 = mem[64]
    mem[64] = mem[64] + 64
    mem[_297] = dex[cd[36]].field_0
    mem[_297 + 32] = dex[cd[36]].field_256
    if ('cd', 4).length < 1:
        revert with 0, 17
    if var88002 < ('cd', 4).length - 1:
        if var90001 >= ('cd', 4).length:
            revert with 0, 50
        require cd[((32 * var90001) + cd[4] + 36)] == address(cd[((32 * var90001) + cd[4] + 36)])
        s = var90001
        t = mem[_297 + 32]
        idx = var90001
        u = var90002
        u = var90003
        u = var90004
        while 1 <= !idx:
            if idx + 1 >= ('cd', 4).length:
                revert with 0, 50
            require cd[((32 * idx + 1) + cd[4] + 36)] == address(cd[((32 * idx + 1) + cd[4] + 36)])
            if address(cd[((32 * s) + cd[4] + 36)]) == address(cd[((32 * idx + 1) + cd[4] + 36)]):
                revert with 0, 'UniswapV2Library: IDENTICAL_ADDRESSES'
            if address(cd[((32 * s) + cd[4] + 36)]) < address(cd[((32 * idx + 1) + cd[4] + 36)]):
                if not address(cd[((32 * s) + cd[4] + 36)]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                _2658 = mem[64]
                mem[mem[64] + 32] = address(cd[((32 * s) + cd[4] + 36)])
                mem[mem[64] + 52] = address(cd[((32 * idx + 1) + cd[4] + 36)])
                _2659 = mem[64]
                mem[mem[64]] = 40
                mem[64] = mem[64] + 72
                _2661 = sha3(mem[_2659 + 32 len mem[_2659]])
                mem[_2658 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_2658 + 105] = address(t)
                mem[_2658 + 125] = _2661
                mem[_2658 + 157] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                mem[_2658 + 72] = 85
                staticcall address(sha3(0, address(t), _2661, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                mem[_2658 + 189 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                staticcall address(sha3(0, address(t), _2661, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                        gas gas_remaining wei
                mem[_2658 + ceil32(return_data.size) + 349] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_2658 + ceil32(return_data.size) + 189] = ext_call.return_data[12 len 20]
                staticcall address(sha3(0, address(t), _2661, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                        gas gas_remaining wei
                mem[_2658 + (2 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_2658 + ceil32(return_data.size) + 221] = ext_call.return_data[12 len 20]
                mem[_2658 + ceil32(return_data.size) + 253] = Mask(112, 0, ext_call.return_data[0])
                mem[_2658 + ceil32(return_data.size) + 285] = Mask(112, 0, ext_call.return_data[32])
                staticcall address(sha3(0, address(t), _2661, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                        gas gas_remaining wei
                mem[_2658 + (4 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2658 + (6 * ceil32(return_data.size)) + 349
                require return_data.size >= 32
                mem[_2658 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
                if idx >= mem[96]:
                    revert with 0, 50
                mem[(32 * idx) + 128] = _2658 + ceil32(return_data.size) + 189
                if idx == -1:
                    revert with 0, 17
                if ('cd', 4).length < 1:
                    revert with 0, 17
                if idx + 1 < ('cd', 4).length - 1:
                    require cd[((32 * idx + 2) + cd[4] + 36)] == address(cd[((32 * idx + 2) + cd[4] + 36)])
                    s = idx + 1
                    t = mem[_297 + 32]
                    idx = idx + 1
                    u = ext_call.return_data[32]
                    u = ext_call.return_data[0]
                    u = sha3(0, address(t), _2661, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)
                    continue 
                _2716 = mem[_297 + 32]
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
                    mem[_2658 + (6 * ceil32(return_data.size)) + 381] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
                    mem[_2658 + (6 * ceil32(return_data.size)) + 401] = address(('cd', 4)[0])
                    mem[_2658 + (6 * ceil32(return_data.size)) + 349] = 40
                    mem[_2658 + (6 * ceil32(return_data.size)) + 453] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_2658 + (6 * ceil32(return_data.size)) + 454] = address(_2716)
                    mem[_2658 + (6 * ceil32(return_data.size)) + 474] = sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0]))
                    mem[_2658 + (6 * ceil32(return_data.size)) + 506] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                    mem[_2658 + (6 * ceil32(return_data.size)) + 421] = 85
                    staticcall address(sha3(0, address(_2716), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                            gas gas_remaining wei
                    mem[_2658 + (6 * ceil32(return_data.size)) + 538 len 96] = ext_call.return_data[0 len 96]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                    staticcall address(sha3(0, address(_2716), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                            gas gas_remaining wei
                    mem[_2658 + (7 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_2658 + (7 * ceil32(return_data.size)) + 538] = ext_call.return_data[12 len 20]
                    mem[_2658 + (9 * ceil32(return_data.size)) + 698] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                    staticcall address(sha3(0, address(_2716), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                            gas gas_remaining wei
                           args mem[_2658 + (9 * ceil32(return_data.size)) + 702 len 4 * ceil32(return_data.size)]
                    mem[_2658 + (9 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_2658 + (7 * ceil32(return_data.size)) + 570] = ext_call.return_data[12 len 20]
                    mem[_2658 + (7 * ceil32(return_data.size)) + 602] = Mask(112, 0, ext_call.return_data[0])
                    mem[_2658 + (7 * ceil32(return_data.size)) + 634] = Mask(112, 0, ext_call.return_data[32])
                    mem[_2658 + (11 * ceil32(return_data.size)) + 698] = 0x7464fc3d00000000000000000000000000000000000000000000000000000000
                    staticcall address(sha3(0, address(_2716), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                            gas gas_remaining wei
                           args mem[_2658 + (11 * ceil32(return_data.size)) + 702 len 8 * ceil32(return_data.size)]
                    mem[_2658 + (11 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2658 + (12 * ceil32(return_data.size)) + 698
                    require return_data.size >= 32
                    mem[_2658 + (7 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                    if ('cd', 4).length >= mem[96]:
                        revert with 0, 50
                    mem[(32 * ('cd', 4).length) + 128] = _2658 + (7 * ceil32(return_data.size)) + 538
                    mem[_2658 + (12 * ceil32(return_data.size)) + 698] = 32
                    _2848 = mem[96]
                    mem[_2658 + (12 * ceil32(return_data.size)) + 730] = mem[96]
                    idx = 0
                    t = 128
                    u = _2658 + (12 * ceil32(return_data.size)) + 762
                    while idx < mem[96]:
                        _2880 = mem[t]
                        mem[u] = mem[mem[t] + 12 len 20]
                        mem[u + 32] = mem[_2880 + 44 len 20]
                        mem[u + 64] = mem[_2880 + 82 len 14]
                        mem[u + 96] = mem[_2880 + 114 len 14]
                        mem[u + 128] = mem[_2880 + 128]
                        require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                        idx = idx + 1
                        t = t + 32
                        u = u + 160
                        continue 
                    return memory
                      from mem[64]
                       len _2658 + (12 * ceil32(return_data.size)) + (160 * _2848) + -mem[64] + 762
                if not address(('cd', 4)[0]):
                    revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
                mem[_2658 + (6 * ceil32(return_data.size)) + 381] = address(('cd', 4)[0])
                mem[_2658 + (6 * ceil32(return_data.size)) + 401] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
                mem[_2658 + (6 * ceil32(return_data.size)) + 349] = 40
                mem[_2658 + (6 * ceil32(return_data.size)) + 453] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_2658 + (6 * ceil32(return_data.size)) + 454] = address(_2716)
                mem[_2658 + (6 * ceil32(return_data.size)) + 474] = sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]))
                mem[_2658 + (6 * ceil32(return_data.size)) + 506] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                mem[_2658 + (6 * ceil32(return_data.size)) + 421] = 85
                staticcall address(sha3(0, address(_2716), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                mem[_2658 + (6 * ceil32(return_data.size)) + 538 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                staticcall address(sha3(0, address(_2716), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                        gas gas_remaining wei
                mem[_2658 + (7 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_2658 + (7 * ceil32(return_data.size)) + 538] = ext_call.return_data[12 len 20]
                mem[_2658 + (9 * ceil32(return_data.size)) + 698] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                staticcall address(sha3(0, address(_2716), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                        gas gas_remaining wei
                       args mem[_2658 + (9 * ceil32(return_data.size)) + 702 len 4 * ceil32(return_data.size)]
                mem[_2658 + (9 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_2658 + (7 * ceil32(return_data.size)) + 570] = ext_call.return_data[12 len 20]
                mem[_2658 + (7 * ceil32(return_data.size)) + 602] = Mask(112, 0, ext_call.return_data[0])
                mem[_2658 + (7 * ceil32(return_data.size)) + 634] = Mask(112, 0, ext_call.return_data[32])
                mem[_2658 + (11 * ceil32(return_data.size)) + 698] = 0x7464fc3d00000000000000000000000000000000000000000000000000000000
                staticcall address(sha3(0, address(_2716), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                        gas gas_remaining wei
                       args mem[_2658 + (11 * ceil32(return_data.size)) + 702 len 8 * ceil32(return_data.size)]
                mem[_2658 + (11 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2658 + (12 * ceil32(return_data.size)) + 698
                require return_data.size >= 32
                mem[_2658 + (7 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                if ('cd', 4).length >= mem[96]:
                    revert with 0, 50
                mem[(32 * ('cd', 4).length) + 128] = _2658 + (7 * ceil32(return_data.size)) + 538
                mem[_2658 + (12 * ceil32(return_data.size)) + 698] = 32
                _2849 = mem[96]
                mem[_2658 + (12 * ceil32(return_data.size)) + 730] = mem[96]
                idx = 0
                t = 128
                u = _2658 + (12 * ceil32(return_data.size)) + 762
                while idx < mem[96]:
                    _2886 = mem[t]
                    mem[u] = mem[mem[t] + 12 len 20]
                    mem[u + 32] = mem[_2886 + 44 len 20]
                    mem[u + 64] = mem[_2886 + 82 len 14]
                    mem[u + 96] = mem[_2886 + 114 len 14]
                    mem[u + 128] = mem[_2886 + 128]
                    require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 160
                    continue 
                return memory
                  from mem[64]
                   len _2658 + (12 * ceil32(return_data.size)) + (160 * _2849) + -mem[64] + 762
            if not address(cd[((32 * idx + 1) + cd[4] + 36)]):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            _2664 = mem[64]
            mem[mem[64] + 32] = address(cd[((32 * idx + 1) + cd[4] + 36)])
            mem[mem[64] + 52] = address(cd[((32 * s) + cd[4] + 36)])
            _2665 = mem[64]
            mem[mem[64]] = 40
            mem[64] = mem[64] + 72
            _2667 = sha3(mem[_2665 + 32 len mem[_2665]])
            mem[_2664 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[_2664 + 105] = address(t)
            mem[_2664 + 125] = _2667
            mem[_2664 + 157] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
            mem[_2664 + 72] = 85
            staticcall address(sha3(0, address(t), _2667, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                    gas gas_remaining wei
            mem[_2664 + 189 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            staticcall address(sha3(0, address(t), _2667, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                    gas gas_remaining wei
            mem[_2664 + ceil32(return_data.size) + 349] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_2664 + ceil32(return_data.size) + 189] = ext_call.return_data[12 len 20]
            staticcall address(sha3(0, address(t), _2667, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                    gas gas_remaining wei
            mem[_2664 + (2 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_2664 + ceil32(return_data.size) + 221] = ext_call.return_data[12 len 20]
            mem[_2664 + ceil32(return_data.size) + 253] = Mask(112, 0, ext_call.return_data[0])
            mem[_2664 + ceil32(return_data.size) + 285] = Mask(112, 0, ext_call.return_data[32])
            staticcall address(sha3(0, address(t), _2667, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                    gas gas_remaining wei
            mem[_2664 + (4 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _2664 + (6 * ceil32(return_data.size)) + 349
            require return_data.size >= 32
            mem[_2664 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _2664 + ceil32(return_data.size) + 189
            if idx == -1:
                revert with 0, 17
            if ('cd', 4).length < 1:
                revert with 0, 17
            if idx + 1 < ('cd', 4).length - 1:
                require cd[((32 * idx + 2) + cd[4] + 36)] == address(cd[((32 * idx + 2) + cd[4] + 36)])
                s = idx + 1
                t = mem[_297 + 32]
                idx = idx + 1
                u = ext_call.return_data[32]
                u = ext_call.return_data[0]
                u = sha3(0, address(t), _2667, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)
                continue 
            _2718 = mem[_297 + 32]
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
                mem[_2664 + (6 * ceil32(return_data.size)) + 381] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
                mem[_2664 + (6 * ceil32(return_data.size)) + 401] = address(('cd', 4)[0])
                mem[_2664 + (6 * ceil32(return_data.size)) + 349] = 40
                mem[_2664 + (6 * ceil32(return_data.size)) + 453] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_2664 + (6 * ceil32(return_data.size)) + 454] = address(_2718)
                mem[_2664 + (6 * ceil32(return_data.size)) + 474] = sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0]))
                mem[_2664 + (6 * ceil32(return_data.size)) + 506] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
                mem[_2664 + (6 * ceil32(return_data.size)) + 421] = 85
                staticcall address(sha3(0, address(_2718), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                        gas gas_remaining wei
                mem[_2664 + (6 * ceil32(return_data.size)) + 538 len 96] = ext_call.return_data[0 len 96]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                require ext_call.return_data[0] == ext_call.return_data[18 len 14]
                require ext_call.return_data[32] == ext_call.return_data[50 len 14]
                require ext_call.return_data[64] == ext_call.return_data[92 len 4]
                staticcall address(sha3(0, address(_2718), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                        gas gas_remaining wei
                mem[_2664 + (7 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_2664 + (7 * ceil32(return_data.size)) + 538] = ext_call.return_data[12 len 20]
                mem[_2664 + (9 * ceil32(return_data.size)) + 698] = 0xd21220a700000000000000000000000000000000000000000000000000000000
                staticcall address(sha3(0, address(_2718), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                        gas gas_remaining wei
                       args mem[_2664 + (9 * ceil32(return_data.size)) + 702 len 4 * ceil32(return_data.size)]
                mem[_2664 + (9 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[_2664 + (7 * ceil32(return_data.size)) + 570] = ext_call.return_data[12 len 20]
                mem[_2664 + (7 * ceil32(return_data.size)) + 602] = Mask(112, 0, ext_call.return_data[0])
                mem[_2664 + (7 * ceil32(return_data.size)) + 634] = Mask(112, 0, ext_call.return_data[32])
                mem[_2664 + (11 * ceil32(return_data.size)) + 698] = 0x7464fc3d00000000000000000000000000000000000000000000000000000000
                staticcall address(sha3(0, address(_2718), sha3(address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]), address(('cd', 4)[0])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                        gas gas_remaining wei
                       args mem[_2664 + (11 * ceil32(return_data.size)) + 702 len 8 * ceil32(return_data.size)]
                mem[_2664 + (11 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _2664 + (12 * ceil32(return_data.size)) + 698
                require return_data.size >= 32
                mem[_2664 + (7 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
                if ('cd', 4).length >= mem[96]:
                    revert with 0, 50
                mem[(32 * ('cd', 4).length) + 128] = _2664 + (7 * ceil32(return_data.size)) + 538
                mem[_2664 + (12 * ceil32(return_data.size)) + 698] = 32
                _2850 = mem[96]
                mem[_2664 + (12 * ceil32(return_data.size)) + 730] = mem[96]
                idx = 0
                t = 128
                u = _2664 + (12 * ceil32(return_data.size)) + 762
                while idx < mem[96]:
                    _2892 = mem[t]
                    mem[u] = mem[mem[t] + 12 len 20]
                    mem[u + 32] = mem[_2892 + 44 len 20]
                    mem[u + 64] = mem[_2892 + 82 len 14]
                    mem[u + 96] = mem[_2892 + 114 len 14]
                    mem[u + 128] = mem[_2892 + 128]
                    require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                    idx = idx + 1
                    t = t + 32
                    u = u + 160
                    continue 
                return memory
                  from mem[64]
                   len _2664 + (12 * ceil32(return_data.size)) + (160 * _2850) + -mem[64] + 762
            if not address(('cd', 4)[0]):
                revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
            mem[_2664 + (6 * ceil32(return_data.size)) + 381] = address(('cd', 4)[0])
            mem[_2664 + (6 * ceil32(return_data.size)) + 401] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
            mem[_2664 + (6 * ceil32(return_data.size)) + 349] = 40
            mem[_2664 + (6 * ceil32(return_data.size)) + 453] = 0xff00000000000000000000000000000000000000000000000000000000000000
            mem[_2664 + (6 * ceil32(return_data.size)) + 454] = address(_2718)
            mem[_2664 + (6 * ceil32(return_data.size)) + 474] = sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)]))
            mem[_2664 + (6 * ceil32(return_data.size)) + 506] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
            mem[_2664 + (6 * ceil32(return_data.size)) + 421] = 85
            staticcall address(sha3(0, address(_2718), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                    gas gas_remaining wei
            mem[_2664 + (6 * ceil32(return_data.size)) + 538 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            require ext_call.return_data[0] == ext_call.return_data[18 len 14]
            require ext_call.return_data[32] == ext_call.return_data[50 len 14]
            require ext_call.return_data[64] == ext_call.return_data[92 len 4]
            staticcall address(sha3(0, address(_2718), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                    gas gas_remaining wei
            mem[_2664 + (7 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_2664 + (7 * ceil32(return_data.size)) + 538] = ext_call.return_data[12 len 20]
            mem[_2664 + (9 * ceil32(return_data.size)) + 698] = 0xd21220a700000000000000000000000000000000000000000000000000000000
            staticcall address(sha3(0, address(_2718), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                    gas gas_remaining wei
                   args mem[_2664 + (9 * ceil32(return_data.size)) + 702 len 4 * ceil32(return_data.size)]
            mem[_2664 + (9 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[_2664 + (7 * ceil32(return_data.size)) + 570] = ext_call.return_data[12 len 20]
            mem[_2664 + (7 * ceil32(return_data.size)) + 602] = Mask(112, 0, ext_call.return_data[0])
            mem[_2664 + (7 * ceil32(return_data.size)) + 634] = Mask(112, 0, ext_call.return_data[32])
            mem[_2664 + (11 * ceil32(return_data.size)) + 698] = 0x7464fc3d00000000000000000000000000000000000000000000000000000000
            staticcall address(sha3(0, address(_2718), sha3(address(('cd', 4)[0]), address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])), 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                    gas gas_remaining wei
                   args mem[_2664 + (11 * ceil32(return_data.size)) + 702 len 8 * ceil32(return_data.size)]
            mem[_2664 + (11 * ceil32(return_data.size)) + 698] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[64] = _2664 + (12 * ceil32(return_data.size)) + 698
            require return_data.size >= 32
            mem[_2664 + (7 * ceil32(return_data.size)) + 666] = ext_call.return_data[0]
            if ('cd', 4).length >= mem[96]:
                revert with 0, 50
            mem[(32 * ('cd', 4).length) + 128] = _2664 + (7 * ceil32(return_data.size)) + 538
            mem[_2664 + (12 * ceil32(return_data.size)) + 698] = 32
            _2851 = mem[96]
            mem[_2664 + (12 * ceil32(return_data.size)) + 730] = mem[96]
            idx = 0
            t = 128
            u = _2664 + (12 * ceil32(return_data.size)) + 762
            while idx < mem[96]:
                _2898 = mem[t]
                mem[u] = mem[mem[t] + 12 len 20]
                mem[u + 32] = mem[_2898 + 44 len 20]
                mem[u + 64] = mem[_2898 + 82 len 14]
                mem[u + 96] = mem[_2898 + 114 len 14]
                mem[u + 128] = mem[_2898 + 128]
                require cd[((32 * s) + cd[4] + 36)] == address(cd[((32 * s) + cd[4] + 36)])
                idx = idx + 1
                t = t + 32
                u = u + 160
                continue 
            return memory
              from mem[64]
               len _2664 + (12 * ceil32(return_data.size)) + (160 * _2851) + -mem[64] + 762
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
        _1659 = mem[64]
        mem[mem[64] + 32] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
        mem[mem[64] + 52] = address(('cd', 4)[0])
        _1660 = mem[64]
        mem[mem[64]] = 40
        mem[64] = mem[64] + 72
        _1662 = sha3(mem[_1660 + 32 len mem[_1660]])
        mem[_1659 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[_1659 + 105] = dex[cd[36]].field_256
        mem[_1659 + 125] = _1662
        mem[_1659 + 157] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
        mem[_1659 + 72] = 85
        staticcall address(sha3(0, dex[cd[36]].field_256, _1662, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
                gas gas_remaining wei
        mem[_1659 + 189 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require ext_call.return_data[0] == ext_call.return_data[18 len 14]
        require ext_call.return_data[32] == ext_call.return_data[50 len 14]
        require ext_call.return_data[64] == ext_call.return_data[92 len 4]
        staticcall address(sha3(0, dex[cd[36]].field_256, _1662, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
                gas gas_remaining wei
        mem[_1659 + ceil32(return_data.size) + 349] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[_1659 + ceil32(return_data.size) + 189] = ext_call.return_data[12 len 20]
        staticcall address(sha3(0, dex[cd[36]].field_256, _1662, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
                gas gas_remaining wei
        mem[_1659 + (2 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[_1659 + ceil32(return_data.size) + 221] = ext_call.return_data[12 len 20]
        mem[_1659 + ceil32(return_data.size) + 253] = Mask(112, 0, ext_call.return_data[0])
        mem[_1659 + ceil32(return_data.size) + 285] = Mask(112, 0, ext_call.return_data[32])
        staticcall address(sha3(0, dex[cd[36]].field_256, _1662, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
                gas gas_remaining wei
        mem[_1659 + (4 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = _1659 + (6 * ceil32(return_data.size)) + 349
        require return_data.size >= 32
        mem[_1659 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
        if ('cd', 4).length >= mem[96]:
            revert with 0, 50
        mem[(32 * ('cd', 4).length) + 128] = _1659 + ceil32(return_data.size) + 189
        mem[_1659 + (6 * ceil32(return_data.size)) + 349] = 32
        _1817 = mem[96]
        mem[_1659 + (6 * ceil32(return_data.size)) + 381] = mem[96]
        idx = 0
        s = 128
        t = _1659 + (6 * ceil32(return_data.size)) + 413
        while idx < mem[96]:
            _2160 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_2160 + 44 len 20]
            mem[t + 64] = mem[_2160 + 82 len 14]
            mem[t + 96] = mem[_2160 + 114 len 14]
            mem[t + 128] = mem[_2160 + 128]
            idx = idx + 1
            s = s + 32
            t = t + 160
            continue 
        return memory
          from mem[64]
           len _1659 + (6 * ceil32(return_data.size)) + (160 * _1817) + -mem[64] + 413
    if not address(('cd', 4)[0]):
        revert with 0, 'UniswapV2Library: ZERO_ADDRESS'
    _1665 = mem[64]
    mem[mem[64] + 32] = address(('cd', 4)[0])
    mem[mem[64] + 52] = address(cd[((32 * ('cd', 4).length - 1) + cd[4] + 36)])
    _1666 = mem[64]
    mem[mem[64]] = 40
    mem[64] = mem[64] + 72
    _1668 = sha3(mem[_1666 + 32 len mem[_1666]])
    mem[_1665 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
    mem[_1665 + 105] = dex[cd[36]].field_256
    mem[_1665 + 125] = _1668
    mem[_1665 + 157] = 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2
    mem[_1665 + 72] = 85
    staticcall address(sha3(0, dex[cd[36]].field_256, _1668, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).getReserves() with:
            gas gas_remaining wei
    mem[_1665 + 189 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    staticcall address(sha3(0, dex[cd[36]].field_256, _1668, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token0() with:
            gas gas_remaining wei
    mem[_1665 + ceil32(return_data.size) + 349] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[_1665 + ceil32(return_data.size) + 189] = ext_call.return_data[12 len 20]
    staticcall address(sha3(0, dex[cd[36]].field_256, _1668, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).token1() with:
            gas gas_remaining wei
    mem[_1665 + (2 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[_1665 + ceil32(return_data.size) + 221] = ext_call.return_data[12 len 20]
    mem[_1665 + ceil32(return_data.size) + 253] = Mask(112, 0, ext_call.return_data[0])
    mem[_1665 + ceil32(return_data.size) + 285] = Mask(112, 0, ext_call.return_data[32])
    staticcall address(sha3(0, dex[cd[36]].field_256, _1668, 0xcdf2deca40a0bd56de8e3ce5c7df6727e5b1bf2ac96f283fa9c4b3e6b42ea9d2)).kLast() with:
            gas gas_remaining wei
    mem[_1665 + (4 * ceil32(return_data.size)) + 349] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = _1665 + (6 * ceil32(return_data.size)) + 349
    require return_data.size >= 32
    mem[_1665 + ceil32(return_data.size) + 317] = ext_call.return_data[0]
    if ('cd', 4).length >= mem[96]:
        revert with 0, 50
    mem[(32 * ('cd', 4).length) + 128] = _1665 + ceil32(return_data.size) + 189
    mem[_1665 + (6 * ceil32(return_data.size)) + 349] = 32
    _1818 = mem[96]
    mem[_1665 + (6 * ceil32(return_data.size)) + 381] = mem[96]
    idx = 0
    s = 128
    t = _1665 + (6 * ceil32(return_data.size)) + 413
    while idx < mem[96]:
        _2166 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_2166 + 44 len 20]
        mem[t + 64] = mem[_2166 + 82 len 14]
        mem[t + 96] = mem[_2166 + 114 len 14]
        mem[t + 128] = mem[_2166 + 128]
        idx = idx + 1
        s = s + 32
        t = t + 160
        continue 
    return memory
      from mem[64]
       len _1665 + (6 * ceil32(return_data.size)) + (160 * _1818) + -mem[64] + 413
}



}
