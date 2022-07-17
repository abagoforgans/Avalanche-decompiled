contract main {




// =====================  Runtime code  =====================


const GAME_ADMIN = sha3(336492626609784167942478)

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
uint256 sub_95b54f8f;
uint256 sub_ced94e08;
uint256 sub_c59fe3bb;
mapping of uint256 sub_9316e85a;
mapping of uint256 sub_b6a525aa;
mapping of uint256 sub_b7783c3f;
array of uint256 sub_856311e7;
uint8 sub_b33a204e;
uint256 sub_9b5a5381;
uint8 sub_873eeac1;
uint8 sub_7257dc03; offset 8
uint8 sub_3ea2c974; offset 16
uint256 stor110; offset 16
uint256 stor110; offset 8
mapping of uint256 stor336492626609784167942478;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_3ea2c974(?) payable {
    return bool(sub_3ea2c974)
}

function sub_7257dc03(?) payable {
    return bool(sub_7257dc03)
}

function sub_78f50849(?) payable {
    require calldata.size - 4 >= 64
    return bool(sub_b6a525aa[address(arg1)][arg2])
}

function sub_856311e7(?) payable {
    require calldata.size - 4 >= 96
    require arg3 < sub_856311e7[arg1][arg2]
    return sub_856311e7[arg1][arg2][arg3]
}

function sub_873eeac1(?) payable {
    return bool(sub_873eeac1)
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

function sub_9316e85a(?) payable {
    require calldata.size - 4 >= 32
    return sub_9316e85a[arg1]
}

function sub_95b54f8f(?) payable {
    return sub_95b54f8f
}

function sub_9b5a5381(?) payable {
    return sub_9b5a5381
}

function sub_b33a204e(?) payable {
    return bool(sub_b33a204e)
}

function sub_b6a525aa(?) payable {
    require calldata.size - 4 >= 64
    return sub_b6a525aa[arg1][arg2]
}

function sub_b7783c3f(?) payable {
    require calldata.size - 4 >= 64
    return sub_b7783c3f[arg1][arg2]
}

function sub_c59fe3bb(?) payable {
    return sub_c59fe3bb
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_ced94e08(?) payable {
    return sub_ced94e08
}

function sub_d88f7319(?) payable {
    require calldata.size - 4 >= 32
    return sub_856311e7[msg.sender][arg1]
}

function _fallback() payable {
    revert
}

function sub_2d9e1693(?) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    sub_9b5a5381 = arg1
}

function sub_63468149(?) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    sub_b33a204e = uint8(arg1)
}

function sub_862c62d3(?) payable {
    require calldata.size - 4 >= 96
    if sub_9316e85a[stor105[address(arg1)][arg2]]:
        return sha3(sub_9316e85a[stor105[address(arg1)][arg2]], arg1, arg2)
    require arg3
    return 0
}

function sub_de5c2922(?) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    sub_873eeac1 = uint8(arg1)
}

function sub_9c445a97(?) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    Mask(248, 0, stor110.field_8) = Mask(248, 0, arg1)
}

function sub_95aee432(?) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    Mask(240, 0, stor110.field_16) = Mask(240, 0, arg1)
}

function encode(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    return sha3(call.data[arg1 + 36 len 32 * arg1.length])
}

function sub_2bec2fa1(?) payable {
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    if block.number > sub_c59fe3bb:
        if sub_c59fe3bb >= sub_ced94e08:
            sub_95b54f8f++
            sub_9316e85a[stor101] = block.hash(block.number - 1)
            sub_ced94e08 = block.number
            if sub_873eeac1:
                emit 0xc6d88e4a: msg.sender, sub_95b54f8f
}

function sub_42016a56(?) payable {
    require calldata.size - 4 >= 96
    require sub_856311e7[address(arg1)][arg2] - 1 < sub_856311e7[address(arg1)][arg2]
    if not arg3:
        require sha3(sub_9316e85a[stor107[address(arg1)][arg2][stor107[address(arg1)][arg2]]], arg1, arg2, sub_856311e7[address(arg1)][arg2] - 1)
    return sha3(sub_9316e85a[stor107[address(arg1)][arg2][stor107[address(arg1)][arg2]]], arg1, arg2, sub_856311e7[address(arg1)][arg2] - 1)
}

function sub_27b0a0d7(?) payable {
    if not sub_b33a204e:
        if block.number > sub_c59fe3bb:
            if sub_c59fe3bb >= sub_ced94e08:
                sub_95b54f8f++
                sub_9316e85a[stor101] = block.hash(block.number - 1)
                sub_ced94e08 = block.number
                if sub_873eeac1:
                    emit 0xc6d88e4a: msg.sender, sub_95b54f8f
    else:
        if block.number < sub_c59fe3bb + sub_9b5a5381:
            if block.number > sub_c59fe3bb:
                if sub_c59fe3bb >= sub_ced94e08:
                    sub_95b54f8f++
                    sub_9316e85a[stor101] = block.hash(block.number - 1)
                    sub_ced94e08 = block.number
                    if sub_873eeac1:
                        emit 0xc6d88e4a: msg.sender, sub_95b54f8f
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
                    0x74416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function sub_775eb0e2(?) payable {
    require calldata.size - 4 >= 64
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    if not sub_b33a204e:
        if block.number > sub_c59fe3bb:
            if sub_c59fe3bb >= sub_ced94e08:
                sub_95b54f8f++
                sub_9316e85a[stor101] = block.hash(block.number - 1)
                sub_ced94e08 = block.number
                if sub_873eeac1:
                    emit 0xc6d88e4a: arg1, sub_95b54f8f
    else:
        if block.number < sub_c59fe3bb + sub_9b5a5381:
            if block.number > sub_c59fe3bb:
                if sub_c59fe3bb >= sub_ced94e08:
                    sub_95b54f8f++
                    sub_9316e85a[stor101] = block.hash(block.number - 1)
                    sub_ced94e08 = block.number
                    if sub_873eeac1:
                        emit 0xc6d88e4a: arg1, sub_95b54f8f
    require not sub_b6a525aa[address(arg1)][arg2]
    sub_b6a525aa[address(arg1)][arg2] = sub_95b54f8f
    if sub_c59fe3bb < sub_ced94e08:
        sub_c59fe3bb = block.number
    if sub_7257dc03:
        emit 0xd30ed664: arg1, arg2
}

function sub_49e9e07e(?) payable {
    require calldata.size - 4 >= 96
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    if not sub_b33a204e:
        if block.number > sub_c59fe3bb:
            if sub_c59fe3bb >= sub_ced94e08:
                sub_95b54f8f++
                sub_9316e85a[stor101] = block.hash(block.number - 1)
                sub_ced94e08 = block.number
                if sub_873eeac1:
                    emit 0xc6d88e4a: arg1, sub_95b54f8f
    else:
        if block.number < sub_c59fe3bb + sub_9b5a5381:
            if block.number > sub_c59fe3bb:
                if sub_c59fe3bb >= sub_ced94e08:
                    sub_95b54f8f++
                    sub_9316e85a[stor101] = block.hash(block.number - 1)
                    sub_ced94e08 = block.number
                    if sub_873eeac1:
                        emit 0xc6d88e4a: arg1, sub_95b54f8f
    if not arg3:
        require not sub_b6a525aa[address(arg1)][arg2]
    sub_b6a525aa[address(arg1)][arg2] = sub_95b54f8f
    if sub_c59fe3bb < sub_ced94e08:
        sub_c59fe3bb = block.number
    if sub_7257dc03:
        emit 0xd30ed664: arg1, arg2
}

function sub_aa87deac(?) payable {
    require calldata.size - 4 >= 96
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    if arg3:
        if not sub_b33a204e:
            if block.number > sub_c59fe3bb:
                if sub_c59fe3bb >= sub_ced94e08:
                    sub_95b54f8f++
                    sub_9316e85a[stor101] = block.hash(block.number - 1)
                    sub_ced94e08 = block.number
                    if sub_873eeac1:
                        emit 0xc6d88e4a: arg1, sub_95b54f8f
        else:
            if block.number < sub_c59fe3bb + sub_9b5a5381:
                if block.number > sub_c59fe3bb:
                    if sub_c59fe3bb >= sub_ced94e08:
                        sub_95b54f8f++
                        sub_9316e85a[stor101] = block.hash(block.number - 1)
                        sub_ced94e08 = block.number
                        if sub_873eeac1:
                            emit 0xc6d88e4a: arg1, sub_95b54f8f
    require sub_9316e85a[stor105[address(arg1)][arg2]]
    sub_b7783c3f[address(arg1)][arg2] = sha3(sub_9316e85a[stor105[address(arg1)][arg2]], sub_b7783c3f[address(arg1)][arg2])
    return sha3(sub_9316e85a[stor105[address(arg1)][arg2]], sub_b7783c3f[address(arg1)][arg2])
}

function sub_fd4cc5c4(?) payable {
    require calldata.size - 4 >= 128
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    if arg3:
        if not sub_b33a204e:
            if block.number > sub_c59fe3bb:
                if sub_c59fe3bb >= sub_ced94e08:
                    sub_95b54f8f++
                    sub_9316e85a[stor101] = block.hash(block.number - 1)
                    sub_ced94e08 = block.number
                    if sub_873eeac1:
                        emit 0xc6d88e4a: arg1, sub_95b54f8f
        else:
            if block.number < sub_c59fe3bb + sub_9b5a5381:
                if block.number > sub_c59fe3bb:
                    if sub_c59fe3bb >= sub_ced94e08:
                        sub_95b54f8f++
                        sub_9316e85a[stor101] = block.hash(block.number - 1)
                        sub_ced94e08 = block.number
                        if sub_873eeac1:
                            emit 0xc6d88e4a: arg1, sub_95b54f8f
    require sub_9316e85a[stor105[address(arg1)][arg2]]
    sub_b6a525aa[address(arg1)][arg2] = 0
    if sub_3ea2c974:
        emit 0xcabe8c22: arg1, arg2
    if arg4:
        sub_b6a525aa[address(arg1)][arg2] = sub_95b54f8f
        if sub_c59fe3bb < sub_ced94e08:
            sub_c59fe3bb = block.number
        if sub_7257dc03:
            emit 0xd30ed664: arg1, arg2
    return sha3(sub_9316e85a[stor105[address(arg1)][arg2]], arg1, arg2)
}

function sub_60b08eb5(?) payable {
    require calldata.size - 4 >= 128
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    if arg3:
        if not sub_b33a204e:
            if block.number > sub_c59fe3bb:
                if sub_c59fe3bb >= sub_ced94e08:
                    sub_95b54f8f++
                    sub_9316e85a[stor101] = block.hash(block.number - 1)
                    sub_ced94e08 = block.number
                    if sub_873eeac1:
                        emit 0xc6d88e4a: arg1, sub_95b54f8f
        else:
            if block.number < sub_c59fe3bb + sub_9b5a5381:
                if block.number > sub_c59fe3bb:
                    if sub_c59fe3bb >= sub_ced94e08:
                        sub_95b54f8f++
                        sub_9316e85a[stor101] = block.hash(block.number - 1)
                        sub_ced94e08 = block.number
                        if sub_873eeac1:
                            emit 0xc6d88e4a: arg1, sub_95b54f8f
    require sub_856311e7[address(arg1)][arg2] - 1 < sub_856311e7[address(arg1)][arg2]
    require sha3(sub_9316e85a[stor107[address(arg1)][arg2][stor107[address(arg1)][arg2]]], arg1, arg2, sub_856311e7[address(arg1)][arg2] - 1)
    require sub_856311e7[address(arg1)][arg2]
    sub_856311e7[address(arg1)][arg2][sub_856311e7[address(arg1)][arg2]] = 0
    sub_856311e7[address(arg1)][arg2]--
    if sub_3ea2c974:
        emit 0xcabe8c22: arg1, arg2
    if arg4:
        sub_856311e7[address(arg1)][arg2]++
        sub_856311e7[address(arg1)][arg2][sub_856311e7[address(arg1)][arg2]] = sub_95b54f8f
        if sub_c59fe3bb < sub_ced94e08:
            sub_c59fe3bb = block.number
        if sub_7257dc03:
            emit 0xd30ed664: arg1, arg2
    return sha3(sub_9316e85a[stor107[address(arg1)][arg2][stor107[address(arg1)][arg2]]], arg1, arg2, sub_856311e7[address(arg1)][arg2] - 1)
}

function initialize() payable {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if not uint8(stor0.field_8):
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if not uint8(stor0.field_8):
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if not uint8(stor0.field_8):
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = msg.sender
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(msg.sender)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, msg.sender, msg.sender);
    sub_95b54f8f = 1
    sub_ced94e08 = block.number
    sub_c59fe3bb = block.number - 1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_536c5f30(?) payable {
    require calldata.size - 4 >= 64
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        revert with 0, 'Not admin'
    if not sub_b33a204e:
        if block.number <= sub_c59fe3bb:
            sub_856311e7[address(arg1)][arg2]++
            sub_856311e7[address(arg1)][arg2][sub_856311e7[address(arg1)][arg2]] = sub_95b54f8f
            if sub_c59fe3bb < sub_ced94e08:
                sub_c59fe3bb = block.number
            if sub_7257dc03:
                emit 0xd30ed664: arg1, arg2
        else:
            if sub_c59fe3bb < sub_ced94e08:
                sub_856311e7[address(arg1)][arg2]++
                sub_856311e7[address(arg1)][arg2][sub_856311e7[address(arg1)][arg2]] = sub_95b54f8f
                sub_c59fe3bb = block.number
                if sub_7257dc03:
                    emit 0xd30ed664: arg1, arg2
            else:
                sub_95b54f8f++
                sub_9316e85a[stor101] = block.hash(block.number - 1)
                sub_ced94e08 = block.number
                if sub_873eeac1:
                    emit 0xc6d88e4a: arg1, sub_95b54f8f
                sub_856311e7[address(arg1)][arg2]++
                sub_856311e7[address(arg1)][arg2][sub_856311e7[address(arg1)][arg2]] = sub_95b54f8f
                if sub_c59fe3bb < sub_ced94e08:
                    sub_c59fe3bb = block.number
                if sub_7257dc03:
                    emit 0xd30ed664: arg1, arg2
    else:
        if block.number >= sub_c59fe3bb + sub_9b5a5381:
            sub_856311e7[address(arg1)][arg2]++
            sub_856311e7[address(arg1)][arg2][sub_856311e7[address(arg1)][arg2]] = sub_95b54f8f
            if sub_c59fe3bb < sub_ced94e08:
                sub_c59fe3bb = block.number
            if sub_7257dc03:
                emit 0xd30ed664: arg1, arg2
        else:
            if block.number <= sub_c59fe3bb:
                sub_856311e7[address(arg1)][arg2]++
                sub_856311e7[address(arg1)][arg2][sub_856311e7[address(arg1)][arg2]] = sub_95b54f8f
                if sub_c59fe3bb < sub_ced94e08:
                    sub_c59fe3bb = block.number
                if sub_7257dc03:
                    emit 0xd30ed664: arg1, arg2
            else:
                if sub_c59fe3bb < sub_ced94e08:
                    sub_856311e7[address(arg1)][arg2]++
                    sub_856311e7[address(arg1)][arg2][sub_856311e7[address(arg1)][arg2]] = sub_95b54f8f
                    sub_c59fe3bb = block.number
                    if sub_7257dc03:
                        emit 0xd30ed664: arg1, arg2
                else:
                    sub_95b54f8f++
                    sub_9316e85a[stor101] = block.hash(block.number - 1)
                    sub_ced94e08 = block.number
                    if sub_873eeac1:
                        emit 0xc6d88e4a: arg1, sub_95b54f8f
                    sub_856311e7[address(arg1)][arg2]++
                    sub_856311e7[address(arg1)][arg2][sub_856311e7[address(arg1)][arg2]] = sub_95b54f8f
                    if sub_c59fe3bb < sub_ced94e08:
                        sub_c59fe3bb = block.number
                    if sub_7257dc03:
                        emit 0xd30ed664: arg1, arg2
}



}
