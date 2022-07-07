contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


uint8 stor1;
uint8 stor1; offset 8
uint256 stor1; offset 8

function getRoleAdmin(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getRoleMember(bytes32 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if roleAdmin[arg1].field_0 <= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0xfe456e756d657261626c655365743a20696e646578206f7574206f6620626f756e64,
                    mem[198 len 30]
    require arg2 < roleAdmin[arg1].field_0
    return roleAdmin[arg1][arg2].field_0
}

function getRoleMemberCount(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function _fallback() payable {
    revert
}

function requestRandom(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    emit 0xb6e59f52: arg1, arg2
}

function hasRole(bytes32 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return not not roleAdmin[arg1][1][address(arg2)].field_0
}

function sub_ef0cb717(?) {
    require calldata.size - 4 >= 96
    if not roleAdmin[0x14d4070d66d6b4dd68bb5bf9850e790ed1f6421ad9a735c71940b3d4ae58d40b][1][address(msg.sender)].field_0:
        revert with 0, 'only operator'
    require ext_code.size(arg1)
    call arg1.0xdf7afa1b with:
         gas gas_remaining wei
        args arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function grantRole(bytes32 arg1, address arg2) {
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

function renounceRole(bytes32 arg1, address arg2) {
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

function revokeRole(bytes32 arg1, address arg2) {
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

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not uint8(stor1.field_8):
        if ext_code.size(this.address) > 0:
            if uint8(stor1.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor1.field_8):
            Mask(248, 0, stor1.field_8) = 1
            uint8(stor1.field_0) = 1
    if not roleAdmin[1][address(arg1)].field_0:
        uint256(roleAdmin.field_0)++
        stor[sha3(('name', 'roleAdmin', 0)) + uint256(roleAdmin.field_0)].field_0 = arg1
        stor[sha3(('name', 'roleAdmin', 0)) + uint256(roleAdmin.field_0)].field_160 = 0
        roleAdmin[1][address(arg1)].field_0 = uint256(roleAdmin.field_0)
        emit RoleGranted(0, arg1, msg.sender);
    if not roleAdmin[0x14d4070d66d6b4dd68bb5bf9850e790ed1f6421ad9a735c71940b3d4ae58d40b][1][address(arg2)].field_0:
        roleAdmin[0x14d4070d66d6b4dd68bb5bf9850e790ed1f6421ad9a735c71940b3d4ae58d40b].field_0++
        roleAdmin[0x14d4070d66d6b4dd68bb5bf9850e790ed1f6421ad9a735c71940b3d4ae58d40b][roleAdmin[0x14d4070d66d6b4dd68bb5bf9850e790ed1f6421ad9a735c71940b3d4ae58d40b].field_0].field_0 = arg2
        roleAdmin[0x14d4070d66d6b4dd68bb5bf9850e790ed1f6421ad9a735c71940b3d4ae58d40b][roleAdmin[0x14d4070d66d6b4dd68bb5bf9850e790ed1f6421ad9a735c71940b3d4ae58d40b].field_0].field_160 = 0
        roleAdmin[0x14d4070d66d6b4dd68bb5bf9850e790ed1f6421ad9a735c71940b3d4ae58d40b][1][address(arg2)].field_0 = roleAdmin[0x14d4070d66d6b4dd68bb5bf9850e790ed1f6421ad9a735c71940b3d4ae58d40b].field_0
        emit RoleGranted(0x14d4070d66d6b4dd68bb5bf9850e790ed1f6421ad9a735c71940b3d4ae58d40b, arg2, msg.sender);
    if not uint8(stor1.field_8):
        Mask(248, 0, stor1.field_8) = 0
}



}
