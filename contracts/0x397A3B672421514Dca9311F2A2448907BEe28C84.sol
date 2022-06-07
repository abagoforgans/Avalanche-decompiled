contract main {




// =====================  Runtime code  =====================


const sub_3fd2dfa7(?) = 0x92617c3bd8f36ff4377fff34329c403d3f8b8d1da14cf1bab802460bf97119ae

const version = 1000010

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint8 paused;
uint8 stor151; offset 184
uint32 stor151; offset 160
address stor151;
mapping of struct stor153;
mapping of address sub_d5b5f1aa;
address stor155;
mapping of struct sub_476c5ad2;
uint8 sub_e68fb507;
array of struct roleAdmin;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_476c5ad2(?) payable {
    require calldata.size - 4 >= 32
    return sub_476c5ad2[address(arg1)].field_0
}

function paused() payable {
    return bool(paused)
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleAdmin[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    return roleAdmin[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function sub_bd7319ad(?) payable {
    require calldata.size - 4 >= 64
    mem[128] = sub_bd7319ad[arg1][arg2][2].field_0
    idx = 128
    s = 0
    while sub_bd7319ad[arg1][arg2][2].length + 96 > idx:
        mem[idx + 32] = sub_bd7319ad[arg1][arg2][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=sub_bd7319ad[arg1][arg2][2].length, data=mem[128 len sub_bd7319ad[arg1][arg2][2].length]), 
           sub_bd7319ad[arg1][arg2].field_0,
           sub_bd7319ad[arg1][arg2].field_256
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_cec70b36(?) payable {
    require calldata.size - 4 >= 64
    require arg2 < sub_476c5ad2[address(arg1)].field_0
    return sub_cec70b36[uint8(arg2)]
}

function sub_d5b5f1aa(?) payable {
    require calldata.size - 4 >= 32
    return sub_d5b5f1aa[arg1]
}

function sub_e68fb507(?) payable {
    return sub_e68fb507
}

function _fallback() payable {
    revert
}

function sub_d8365416(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not the Admin'
    sub_e68fb507 = arg1
}

function pause() payable {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not the Admin'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function sub_fa35081f(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not the Admin'
    sub_d5b5f1aa[arg1] = arg2
    emit 0x5b493eeb: arg2, arg1
}

function unpause() payable {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not the Admin'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function recoverSigner(bytes32 arg1, bytes arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if arg2.length != 65:
        revert with 0, 'Incorrect signature length'
    signer = erecover(arg1, 0, mem[128], mem[160]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return address(signer)
}

function splitSignature(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    if arg1.length != 65:
        revert with 0, 'Incorrect signature length'
    _3 = mem[128]
    _4 = mem[160]
    mem[ceil32(arg1.length) + 128] = 0
    mem[ceil32(arg1.length) + 160] = _3
    return Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), 
           mem[arg1.length + 160 len ceil32(arg1.length) + -arg1.length + 32],
           _4
}

function sub_80d7d1d1(?) payable {
    require calldata.size - 4 >= 64
    if stor155 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x65546869732066756e6374696f6e20697320666f7220636c61696d53746f72616765206f6e6c,
                    mem[202 len 26]
    sub_476c5ad2[address(arg1)].field_0++
    sub_476c5ad2[address(arg1)][sub_476c5ad2[address(arg1)].field_2].field_0 = arg2 * 256^(8 * sub_476c5ad2[address(arg1)].field_0) or sub_476c5ad2[address(arg1)][sub_476c5ad2[address(arg1)].field_2].field_0 and !(test266151307() * 256^(8 * sub_476c5ad2[address(arg1)].field_0))
    if sub_e68fb507 < sub_476c5ad2[address(arg1)].field_0:
        revert with 0, 'Too many claims'
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[arg1][1][address(arg2)].field_0:
        roleAdmin[arg1].field_0++
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = arg2
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_160 = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function getProtectionData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor153[arg1].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6e50726f74656374696f6e20776974682073706563696669656420696420646f65736e27742065786973,
                    mem[206 len 22]
    require ext_code.size(stor153[arg1].field_0)
    staticcall stor153[arg1].field_0.0x92723d3d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return stor153[arg1].field_0, 
           ext_call.return_data[0],
           stor153[arg1].field_512,
           stor153[arg1].field_768,
           stor153[arg1].field_320,
           stor153[arg1].field_256
}

function withdrawPremium(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if stor153[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x745072656d69756d2063616e2062652077697468647261776e206279206261636b656420706f6f6c206f6e6c,
                    mem[208 len 20]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x745072656d69756d2063616e2062652077697468647261776e206279206261636b656420706f6f6c206f6e6c,
                    mem[208 len 20]
    if arg2 > stor153[arg1].field_768:
        revert with 0, 'Not enough premium left'
    if arg2 > stor153[arg1].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    stor153[arg1].field_768 -= arg2
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x64416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
                    mem[211 len 17]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[roleAdmin[arg1].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x79416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
                    mem[212 len 16]
    if roleAdmin[arg1][1][address(arg2)].field_0:
        require roleAdmin[arg1].field_0 - 1 < roleAdmin[arg1].field_0
        require roleAdmin[arg1][1][address(arg2)].field_0 - 1 < roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1][1][address(arg2)].field_0].field_0 = roleAdmin[arg1][roleAdmin[arg1].field_0].field_0
        roleAdmin[arg1][1][roleAdmin[arg1][roleAdmin[arg1].field_0].field_0].field_0 = roleAdmin[arg1][1][address(arg2)].field_0
        require roleAdmin[arg1].field_0
        roleAdmin[arg1][roleAdmin[arg1].field_0].field_0 = 0
        roleAdmin[arg1].field_0--
        roleAdmin[arg1][1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function sub_bc4980d5(?) payable {
    require calldata.size - 4 >= 32
    if not sub_bd7319ad[arg1].field_256:
        mem[(32 * sub_bd7319ad[arg1].field_256) + 128] = 32
        mem[(32 * sub_bd7319ad[arg1].field_256) + 160] = sub_bd7319ad[arg1].field_256
        mem[(32 * sub_bd7319ad[arg1].field_256) + 192 len floor32(sub_bd7319ad[arg1].field_256)] = mem[128 len floor32(sub_bd7319ad[arg1].field_256)]
        return memory
          from (32 * sub_bd7319ad[arg1].field_256) + 128
           len (96 * sub_bd7319ad[arg1].field_256) + 64
    mem[128] = sub_bd7319ad[arg1][1].field_0
    idx = 128
    s = 0
    while (32 * sub_bd7319ad[arg1].field_256) + 96 > idx:
        mem[idx + 32] = sub_bd7319ad[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * sub_bd7319ad[arg1].field_256) + 192 len floor32(sub_bd7319ad[arg1].field_256)] = mem[128 len floor32(sub_bd7319ad[arg1].field_256)]
    return Array(len=sub_bd7319ad[arg1].field_256, data=mem[128 len floor32(sub_bd7319ad[arg1].field_256)], mem[(32 * sub_bd7319ad[arg1].field_256) + floor32(sub_bd7319ad[arg1].field_256) + 192 len (32 * sub_bd7319ad[arg1].field_256) - floor32(sub_bd7319ad[arg1].field_256)]), 
}

function sub_19bf5e99(?) payable {
    require calldata.size - 4 >= 128
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    require ext_code.size(address(stor151.field_0))
    staticcall address(stor151.field_0).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7443616c6c6572206973206e6f7420746865204f776e6572206f662050726f74656374696f,
                    mem[201 len 27]
    if not arg2:
        revert with 0, 'Bad name'
    if not arg3.length:
        revert with 0, 'Bad uri'
    if not sub_bd7319ad[arg1][arg2].field_256:
        sub_bd7319ad[arg1].field_256++
        stor[sub_bd7319ad[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_bd7319ad', 152)))].field_0 = arg2
        sub_bd7319ad[arg1][2][arg2].field_0 = sub_bd7319ad[arg1].field_256
    sub_bd7319ad[arg1][arg2].field_0 = arg4
    sub_bd7319ad[arg1][arg2].field_256 = block.timestamp
    sub_bd7319ad[arg1][arg2][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    mem[ceil32(arg3.length) + 256] = arg4
    mem[ceil32(arg3.length) + 224] = 64
    mem[ceil32(arg3.length) + 288] = arg3.length
    emit 0x90f5ea70: Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 256 len (2 * ceil32(arg3.length)) + -arg3.length + 64], arg1, arg2
}

function sub_5ea308d8(?) payable {
    require calldata.size - 4 >= 32
    if sub_476c5ad2[address(arg1)].field_0:
        require ext_code.size(arg1)
        staticcall arg1.0xb1dd61b6 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[28 len 4] != 3:
            revert with 0, 'Incorrect pool type'
        require ext_code.size(arg1)
        staticcall arg1.0x92723d3d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = 0
        while idx < sub_476c5ad2[address(arg1)].field_0:
            require idx < sub_476c5ad2[address(arg1)].field_0
            require ext_code.size(stor155)
            staticcall stor155.0xa9f8cc34 with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], stor('array', ('div', 0.25, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor156', 156)))[uint8(idx)]
            mem[96 len 160] = ext_call.return_data[0 len 160]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if uint8(ext_call.return_data[0]) != 3:
                if 1 == uint8(ext_call.return_data[0]):
                    return 1
                if 2 == uint8(ext_call.return_data[0]):
                    return 1
            else:
                require ext_code.size(stor155)
                staticcall stor155.0xdab5cc51 with:
                        gas gas_remaining wei
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint64(ext_call.return_data[128] + ext_call.return_data[0]) >= uint64(block.timestamp):
                    return 1
            mem[0] = arg1
            mem[32] = 156
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}

function sub_a1358da4(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(stor151.field_0))
    staticcall address(stor151.field_0).ownerOf(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x7443616c6c6572206973206e6f7420746865204f776e6572206f662050726f74656374696f,
                    mem[201 len 27]
    if not sub_bd7319ad[arg1][arg2].field_256:
        revert with 0, 'Not existed'
    if sub_bd7319ad[arg1][2][arg2].field_0 - 1 != sub_bd7319ad[arg1].field_256 - 1:
        require sub_bd7319ad[arg1].field_256 - 1 < sub_bd7319ad[arg1].field_256
        require sub_bd7319ad[arg1][2][arg2].field_0 - 1 < sub_bd7319ad[arg1].field_256
        stor[sub_bd7319ad[arg1][2][arg2].field_0 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_bd7319ad', 152)))].field_0 = stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_bd7319ad', 152))) + sub_bd7319ad[arg1].field_256].field_0
        require sub_bd7319ad[arg1][2][arg2].field_0 - 1 < sub_bd7319ad[arg1].field_256
        sub_bd7319ad[arg1][2][stor[('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_bd7319ad', 152))) + sub_bd7319ad[arg1][2][arg2].field_0].field_0].field_0 = sub_bd7319ad[arg1][2][arg2].field_0
    require sub_bd7319ad[arg1].field_256
    stor[sub_bd7319ad[arg1].field_256 + ('array', 1, ('map', ('param', 'arg1'), ('name', 'sub_bd7319ad', 152)))].field_0 = 0
    sub_bd7319ad[arg1].field_256--
    mem[192] = sub_bd7319ad[arg1][arg2][2].field_0
    idx = 192
    s = 0
    while sub_bd7319ad[arg1][arg2][2].length + 192 > idx + 32:
        mem[idx + 32] = sub_bd7319ad[arg1][arg2][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x90074ef6: Array(len=sub_bd7319ad[arg1][arg2][2].length, data=mem[192 len sub_bd7319ad[arg1][arg2][2].length + (floor32(sub_bd7319ad[arg1][arg2][2].length - 1) + -sub_bd7319ad[arg1][arg2][2].length + 32 % 32)]), sub_bd7319ad[arg1][arg2].field_0, arg1, arg2
    sub_bd7319ad[arg1][arg2].field_0 = 0
    sub_bd7319ad[arg1][arg2].field_256 = 0
    sub_bd7319ad[arg1][arg2].field_512 = 0
    if 31 < sub_bd7319ad[arg1][arg2][2].length:
        idx = 0
        while sub_bd7319ad[arg1][arg2][2].length + 31 / 32 > idx:
            sub_bd7319ad[arg1][arg2][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
}

function sub_cae11129(?) payable {
    require calldata.size - 4 >= 64
    if stor155 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x65546869732066756e6374696f6e20697320666f7220636c61696d53746f72616765206f6e6c,
                    mem[202 len 26]
    if 1 < sub_476c5ad2[address(arg1)].field_0:
        idx = 0
        while idx < sub_476c5ad2[address(arg1)].field_0:
            require idx < sub_476c5ad2[address(arg1)].field_0
            if stor('array', ('div', 0.25, ('var', 0)), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor156', 156)))[uint8(idx)] != arg2:
                mem[0] = arg1
                mem[32] = 156
                idx = idx + 1
                continue 
            if idx < sub_476c5ad2[address(arg1)].field_0 - 1:
                require sub_476c5ad2[address(arg1)].field_0 - 1 < sub_476c5ad2[address(arg1)].field_0
                require idx < sub_476c5ad2[address(arg1)].field_0
                sub_476c5ad2[address(arg1)][0.25 / idx].field_0 = stor('array', ('div', 0.25, ('add', -1, ('stor', 256, 0, ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor156', 156))))), ('map', ('mask_shl', 160, 0, 96, ('param', 'arg1')), ('name', 'stor156', 156)))[uint8(stor156[address(arg1)].field_0 - 1)] * 256^(8 * idx % 4) or !(test266151307() * 256^(8 * idx % 4)) and sub_476c5ad2[address(arg1)][0.25 / idx].field_0
            require sub_476c5ad2[address(arg1)].field_0
            sub_476c5ad2[address(arg1)][0.25 / sub_476c5ad2[address(arg1)].field_0 - 1].field_0 = !(test266151307() * 256^(8 * sub_476c5ad2[address(arg1)].field_0 - 1 % 4)) and sub_476c5ad2[address(arg1)][0.25 / sub_476c5ad2[address(arg1)].field_0 - 1].field_0
            sub_476c5ad2[address(arg1)].field_0--
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7941637469766520636c61696d206e6f7420666f756e6420666f722072657175657374656420706f6f,
                    mem[205 len 23]
    require sub_476c5ad2[address(arg1)].field_0
    if sub_476c5ad2[address(arg1)].field_0 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x7941637469766520636c61696d206e6f7420666f756e6420666f722072657175657374656420706f6f,
                    mem[205 len 23]
    require sub_476c5ad2[address(arg1)].field_0
    sub_476c5ad2[address(arg1)][0.25 / sub_476c5ad2[address(arg1)].field_0 - 1].field_0 = !(test266151307() * 256^(8 * sub_476c5ad2[address(arg1)].field_0 - 1 % 4)) and sub_476c5ad2[address(arg1)][0.25 / sub_476c5ad2[address(arg1)].field_0 - 1].field_0
    sub_476c5ad2[address(arg1)].field_0--
}

function sub_24c55bae(?) payable {
    require calldata.size - 4 >= 64
    if not stor153[arg1].field_0:
        revert with 0, 'Pool not registered'
    require ext_code.size(stor153[arg1].field_0)
    staticcall stor153[arg1].field_0.0x92723d3d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor155)
    staticcall stor155.0xa9f8cc34 with:
            gas gas_remaining wei
           args ext_call.return_data[0], arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if not ext_call.return_data[31 len 1]:
        revert with 0, 'Claim not found'
    if ext_call.return_data[31 len 1] != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6e43616e2774206578657263697365207769746820756e617070726f76656420636c6169,
                    ext_call.return_data[104 len 28]
    if stor153[arg1].field_0 != ext_call.return_data[108 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x77436c61696d20706f6f6c207265666572656e636520646f65736e2774206d617463682070726f74656374696f6e20706f6f,
                    ext_call.return_data[118 len 14]
    if arg2 < stor153[arg1].field_320:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    88,
                    0x6c50726f74656374696f6e2069737375656420646174652069732067726561746572207468656e20636c61696d2066696c6c656420646174652e2043616e277420657865726369736520737563682070726f74656374696f,
                    ext_call.return_data[156 len 4],
                    mem[256 len 4]
    if arg2 > stor153[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x6c50726f74656374696f6e20657870697265642062792074686520436c61696d204576656e7420646174,
                    ext_call.return_data[110 len 22]
    require ext_code.size(stor155)
    staticcall stor155.0xdab5cc51 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint64(ext_call.return_data[128] + ext_call.return_data[0]) < uint64(block.timestamp):
        revert with 0, 'Protection payout period expired'
    if not stor153[arg1].field_512:
        stor153[arg1].field_512 = 0
        stor153[arg1].field_768 = 0
        require ext_code.size(stor153[arg1].field_0)
        call stor153[arg1].field_0.0xae8c7d5c with:
             gas gas_remaining wei
            args 0, uint32(arg1), stor153[arg1].field_768, 0, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x2f2b4fac: stor153[arg1].field_512, 0, arg1
    else:
        if uint8(ext_call.return_data[32]) * stor153[arg1].field_512 / stor153[arg1].field_512 != uint8(ext_call.return_data[32]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[101 len 31]
        stor153[arg1].field_512 = 0
        stor153[arg1].field_768 = 0
        require ext_code.size(stor153[arg1].field_0)
        call stor153[arg1].field_0.0xae8c7d5c with:
             gas gas_remaining wei
            args 0, uint32(arg1), stor153[arg1].field_768, uint8(ext_call.return_data[32]) * stor153[arg1].field_512 / 100, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit 0x2f2b4fac: stor153[arg1].field_512, uint8(ext_call.return_data[32]) * stor153[arg1].field_512 / 100, arg1
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        paused = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            paused = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                paused = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    paused = 0
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        paused = 0
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        if ext_code.size(this.address):
                            if uint8(stor0.field_0):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            46,
                                            0x64496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            paused = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            paused = 0
                            uint8(stor0.field_8) = 0
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x65496e636f72726563742075554e4e546f6b656e2061646472657373207370656369666965,
                    mem[201 len 27]
    if not arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0x64496e636f727265637420636c61696d53746f726167652061646472657373207370656369666965,
                    mem[204 len 24]
    address(stor151.field_0) = arg2
    stor155 = arg3
    if not roleAdmin[0][1][address(arg1)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = arg1
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(arg1)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg1, msg.sender);
    stor151.field_160 % 16777216 = 1000010
    uint8(stor151.field_184) = 0
    sub_e68fb507 = 10
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_e70dbc2c(?) payable {
    require calldata.size - 4 >= 384
    mem[96 len 288] = call.data[4 len 288]
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[384] = arg1.length
    mem[416 len arg1.length] = arg1[all]
    mem[arg1.length + 416] = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg3:
        revert with 0, 'Transaction expired'
    mem[ceil32(arg1.length) + 448] = call.data[4]
    mem[ceil32(arg1.length) + 480] = call.data[36]
    mem[ceil32(arg1.length) + 512] = call.data[68]
    mem[ceil32(arg1.length) + 544] = call.data[100]
    mem[ceil32(arg1.length) + 576] = call.data[132]
    mem[ceil32(arg1.length) + 608] = call.data[164]
    mem[ceil32(arg1.length) + 640] = call.data[196]
    mem[ceil32(arg1.length) + 672] = call.data[228]
    mem[ceil32(arg1.length) + 704] = call.data[260]
    mem[ceil32(arg1.length) + 416] = 288
    if arg1.length != 65:
        revert with 0, 'Incorrect signature length'
    signer = erecover(sha3(mem[ceil32(arg1.length) + 448 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 448 len -arg1.length + ceil32(arg1.length)]]), 0, mem[416], mem[448]) 
    mem[ceil32(arg1.length) + 736] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not roleAdmin[0x92617c3bd8f36ff4377fff34329c403d3f8b8d1da14cf1bab802460bf97119ae][1][address(signer)].field_0:
        revert with 0, 'Data Signature invalid'
    if block.timestamp > call.data[260]:
        revert with 0, 'Quotation expired'
    require ext_code.size(address(call.data[132]))
    staticcall address(call.data[132]).0xae61fd8d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 804] = msg.sender
    mem[ceil32(arg1.length) + 836] = this.address
    mem[ceil32(arg1.length) + 868] = call.data[36]
    mem[ceil32(arg1.length) + 768] = 100
    mem[ceil32(arg1.length) + 804 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(arg1.length) + 800 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(arg1.length) + 900] = 32
    mem[ceil32(arg1.length) + 932] = 'SafeERC20: low-level call failed'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg1.length) + 964 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), call.data[36 len 28]
    mem[ceil32(arg1.length) + 1088 len 4] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(736, -512, call.data[36 len 28]) << 512, mem[ceil32(arg1.length) + 1060 len 4]
    if not return_data.size:
        if not ext_call.success:
            if call.data[4]:
                revert with memory
                  from 128
                   len call.data[4]
            revert with 0, 'SafeERC20: low-level call failed'
        if call.data[4]:
            require call.data[4] >= 32
            if not call.data[36]:
                revert with 0, 
                            32,
                            42,
                            0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(arg1.length) + 1074 len 14],
                            0,
                            mem[ceil32(arg1.length) + 1092 len 4]
        require ext_code.size(call.data[144 len 20])
        staticcall call.data[144 len 20].0xae61fd8d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args call.data[144 len 20], call.data[36]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(call.data[132]))
        call address(call.data[132]).0x9900938f with:
             gas gas_remaining wei
            args address(this.address), call.data[4], call.data[36], call.data[100], call.data[68], call.data[164], call.data[196], call.data[228]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if call.data[68] + (block.timestamp << 64) < block.timestamp << 64:
            revert with 0, 'SafeMath: addition overflow'
        mem[ceil32(arg1.length) + 1188] = call.data[144 len 20]
        stor153[call.data[4]].field_0 = mem[ceil32(arg1.length) + 1200 len 20]
    else:
        mem[ceil32(arg1.length) + 996 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(arg1.length) + 996]:
                revert with 0, 
                            32,
                            42,
                            0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(arg1.length) + ceil32(return_data.size) + 1075 len 22]
        require ext_code.size(call.data[144 len 20])
        staticcall call.data[144 len 20].0xae61fd8d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args call.data[144 len 20], call.data[36]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(call.data[132]))
        call address(call.data[132]).0x9900938f with:
             gas gas_remaining wei
            args address(this.address), call.data[4], call.data[36], call.data[100], call.data[68], call.data[164], call.data[196], call.data[228]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if call.data[68] + (block.timestamp << 64) < block.timestamp << 64:
            revert with 0, 'SafeMath: addition overflow'
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 1189] = call.data[144 len 20]
        stor153[call.data[4]].field_0 = mem[ceil32(arg1.length) + ceil32(return_data.size) + 1201 len 20]
    stor153[call.data[4]].field_256 = call.data[68] + (block.timestamp << 64)
    stor153[call.data[4]].field_512 = call.data[100]
    stor153[call.data[4]].field_768 = call.data[36]
    stor153[call.data[4]].field_1024 = 0
    require ext_code.size(address(stor151.field_0))
    call address(stor151.field_0).mint(uint256 arg1, address arg2, address arg3) with:
         gas gas_remaining wei
        args call.data[4], this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x418439c3: call.data[4], address(call.data[132]), call.data[100], block.timestamp, call.data[68], call.data[36], arg2
    return this.address
}

function sub_d2fd0b12(?) payable {
    require calldata.size - 4 >= 352
    mem[96 len 288] = call.data[4 len 288]
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[384] = arg1.length
    mem[416 len arg1.length] = arg1[all]
    mem[arg1.length + 416] = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg2:
        revert with 0, 'Transaction expired'
    mem[ceil32(arg1.length) + 448] = call.data[4]
    mem[ceil32(arg1.length) + 480] = call.data[36]
    mem[ceil32(arg1.length) + 512] = call.data[68]
    mem[ceil32(arg1.length) + 544] = call.data[100]
    mem[ceil32(arg1.length) + 576] = call.data[132]
    mem[ceil32(arg1.length) + 608] = call.data[164]
    mem[ceil32(arg1.length) + 640] = call.data[196]
    mem[ceil32(arg1.length) + 672] = call.data[228]
    mem[ceil32(arg1.length) + 704] = call.data[260]
    mem[ceil32(arg1.length) + 416] = 288
    if arg1.length != 65:
        revert with 0, 'Incorrect signature length'
    signer = erecover(sha3(mem[ceil32(arg1.length) + 448 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 448 len -arg1.length + ceil32(arg1.length)]]), 0, mem[416], mem[448]) 
    mem[ceil32(arg1.length) + 736] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not roleAdmin[0x92617c3bd8f36ff4377fff34329c403d3f8b8d1da14cf1bab802460bf97119ae][1][address(signer)].field_0:
        revert with 0, 'Data Signature invalid'
    if block.timestamp > call.data[260]:
        revert with 0, 'Quotation expired'
    require ext_code.size(address(call.data[132]))
    staticcall address(call.data[132]).0xae61fd8d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg1.length) + 804] = msg.sender
    mem[ceil32(arg1.length) + 836] = this.address
    mem[ceil32(arg1.length) + 868] = call.data[36]
    mem[ceil32(arg1.length) + 768] = 100
    mem[ceil32(arg1.length) + 804 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[ceil32(arg1.length) + 800 len 4] = unknown_0x23b872dd(?????)
    mem[ceil32(arg1.length) + 900] = 32
    mem[ceil32(arg1.length) + 932] = 'SafeERC20: low-level call failed'
    if not ext_code.size(address(ext_call.return_data[0])):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(arg1.length) + 964 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), call.data[36 len 28]
    mem[ceil32(arg1.length) + 1088 len 4] = 0
    call address(ext_call.return_data[0]) with:
         gas gas_remaining wei
        args Mask(736, -512, call.data[36 len 28]) << 512, mem[ceil32(arg1.length) + 1060 len 4]
    if not return_data.size:
        if not ext_call.success:
            if call.data[4]:
                revert with memory
                  from 128
                   len call.data[4]
            revert with 0, 'SafeERC20: low-level call failed'
        if call.data[4]:
            require call.data[4] >= 32
            if not call.data[36]:
                revert with 0, 
                            32,
                            42,
                            0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(arg1.length) + 1074 len 14],
                            0,
                            mem[ceil32(arg1.length) + 1092 len 4]
        require ext_code.size(call.data[144 len 20])
        staticcall call.data[144 len 20].0xae61fd8d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args call.data[144 len 20], call.data[36]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(call.data[132]))
        call address(call.data[132]).0x9900938f with:
             gas gas_remaining wei
            args address(this.address), call.data[4], call.data[36], call.data[100], call.data[68], call.data[164], call.data[196], call.data[228]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if call.data[68] + (block.timestamp << 64) < block.timestamp << 64:
            revert with 0, 'SafeMath: addition overflow'
        mem[ceil32(arg1.length) + 1188] = call.data[144 len 20]
        stor153[call.data[4]].field_0 = mem[ceil32(arg1.length) + 1200 len 20]
    else:
        mem[ceil32(arg1.length) + 996 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[ceil32(arg1.length) + 996]:
                revert with 0, 
                            32,
                            42,
                            0x6d5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(arg1.length) + ceil32(return_data.size) + 1075 len 22]
        require ext_code.size(call.data[144 len 20])
        staticcall call.data[144 len 20].0xae61fd8d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).approve(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args call.data[144 len 20], call.data[36]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(call.data[132]))
        call address(call.data[132]).0x9900938f with:
             gas gas_remaining wei
            args address(this.address), call.data[4], call.data[36], call.data[100], call.data[68], call.data[164], call.data[196], call.data[228]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if call.data[68] + (block.timestamp << 64) < block.timestamp << 64:
            revert with 0, 'SafeMath: addition overflow'
        mem[ceil32(arg1.length) + ceil32(return_data.size) + 1189] = call.data[144 len 20]
        stor153[call.data[4]].field_0 = mem[ceil32(arg1.length) + ceil32(return_data.size) + 1201 len 20]
    stor153[call.data[4]].field_256 = call.data[68] + (block.timestamp << 64)
    stor153[call.data[4]].field_512 = call.data[100]
    stor153[call.data[4]].field_768 = call.data[36]
    stor153[call.data[4]].field_1024 = 0
    require ext_code.size(address(stor151.field_0))
    call address(stor151.field_0).mint(uint256 arg1, address arg2, address arg3) with:
         gas gas_remaining wei
        args call.data[4], this.address, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x418439c3: call.data[4], address(call.data[132]), call.data[100], block.timestamp, call.data[68], call.data[36], msg.sender
    return this.address
}



}
