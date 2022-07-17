contract main {




// =====================  Runtime code  =====================


const sub_22838c8d(?) = 1

const GAME_ADMIN = sha3(336492626609784167942478)

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
mapping of uint256 stor101;
address sub_212279b1Address;
mapping of uint8 stor103;
mapping of uint8 stor104;
mapping of address sub_4500ea43;
mapping of uint256 stor106;
mapping of uint256 sub_871f952e;
uint256 sub_6ac56ac0;
array of struct stor336492626609784167942478;
uint256 stor4D5A;

function sub_1962bf2f(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor103[arg1][arg2])
}

function sub_212279b1(?) payable {
    return sub_212279b1Address
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_4500ea43(?) payable {
    require calldata.size - 4 >= 32
    return sub_4500ea43[arg1]
}

function sub_4f8d587a(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor104[arg1][arg2])
}

function sub_6ac56ac0(?) payable {
    return sub_6ac56ac0
}

function sub_871f952e(?) payable {
    require calldata.size - 4 >= 32
    return sub_871f952e[arg1]
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

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function sub_e6f4ec05(?) payable {
    require calldata.size - 4 >= 64
    return bool(stor103[msg.sender][arg1]), bool(stor104[arg1][arg2])
}

function setVar(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    stor101[arg1] = arg2
}

function sub_564ef032(?) payable {
    require calldata.size - 4 >= 96
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    sub_4500ea43[stor108] = arg1
    stor106[stor108] = arg2
    sub_871f952e[stor108] = arg3 + block.timestamp
    sub_6ac56ac0++
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

function setVars(uint256[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        revert with 0, 'NGA'
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg1.length
        mem[0] = cd[((32 * idx) + arg1 + 36)]
        mem[32] = 101
        stor101[cd[((32 * idx) + arg1 + 36)]] = cd[((32 * idx) + arg2 + 36)]
        idx = idx + 1
        continue 
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
                    0x64416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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

function claimReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(sub_4500ea43[arg1])
    staticcall sub_4500ea43[arg1].0x6352211e with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Nft not owned'
    if stor103[msg.sender][arg1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x7452657761726420666f7220746869732077616c6c657420616c726561647920636c61696d65,
                    mem[202 len 26]
    if stor104[arg1][arg2]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6452657761726420666f722074686973204e465420616c726561647920636c61696d65,
                    mem[199 len 29]
    if block.timestamp > sub_871f952e[arg1]:
        revert with 0, 'Giveaway ended'
    stor103[msg.sender][arg1] = 1
    stor104[arg1][arg2] = 1
    require ext_code.size(sub_212279b1Address)
    call sub_212279b1Address.0xe1313160 with:
         gas gas_remaining wei
        args msg.sender, stor106[arg1], stor4D5A
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
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
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0:
        stor51[('name', 'stor4741', 336492626609784167942478)].field_0++
        stor51[('name', 'stor4741', 336492626609784167942478)][stor51[('name', 'stor4741', 336492626609784167942478)].field_0].field_0 = msg.sender
        stor51[('name', 'stor4741', 336492626609784167942478)][stor51[('name', 'stor4741', 336492626609784167942478)].field_0].field_160 = 0
        stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)].field_0 = stor51[('name', 'stor4741', 336492626609784167942478)].field_0
        emit RoleGranted(sha3(336492626609784167942478), msg.sender, msg.sender);
    sub_212279b1Address = arg1
    stor4D5A = 125
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
