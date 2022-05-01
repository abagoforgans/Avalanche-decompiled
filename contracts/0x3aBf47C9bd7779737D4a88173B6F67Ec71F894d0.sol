contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
address stor101;
array of address sub_66fbac83;
mapping of uint8 stor103;
uint256 sub_594e76f7;
array of address stor31803416089537561239136862248731574845551118351359000136225178771603843531604;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_4f03407d(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor103[arg1])
}

function sub_594e76f7(?) payable {
    return sub_594e76f7
}

function sub_66fbac83(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_66fbac83.length
    return sub_66fbac83[arg1]
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

function addSharePair(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xd88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18cb][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a maintainer'
    if stor103[address(arg1)]:
        revert with 0, 'Address already exists'
    stor103[address(arg1)] = 1
    sub_66fbac83.length++
    stor4650[stor102.length] = arg1
}

function removeSharePair(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0xd88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18cb][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not a maintainer'
    if bool(stor103[address(arg1)]) != 1:
        revert with 0, 'Address nonexistant'
    stor103[address(arg1)] = 0
    idx = 0
    while idx < sub_66fbac83.length:
        mem[0] = 102
        if sub_66fbac83[idx] != arg1:
            idx = idx + 1
            continue 
        require idx < sub_66fbac83.length
        sub_66fbac83[idx] = 0
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

function getShareReserves() payable {
    idx = 0
    s = 0
    while idx < sub_66fbac83.length:
        mem[0] = 102
        if not sub_66fbac83[idx]:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_66fbac83.length
        require ext_code.size(sub_66fbac83[idx])
        staticcall sub_66fbac83[idx].token0() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < sub_66fbac83.length
        mem[0] = 102
        require ext_code.size(sub_66fbac83[idx])
        if ext_call.return_data[12 len 20] == stor101:
            staticcall sub_66fbac83[idx].getReserves() with:
                    gas gas_remaining wei
            mem[96 len 96] = ext_call.return_data[0 len 96]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if ext_call.return_data[18 len 14] + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = ext_call.return_data[18 len 14] + s
            continue 
        staticcall sub_66fbac83[idx].0xd21220a7 with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] != stor101:
            idx = idx + 1
            s = s
            continue 
        require idx < sub_66fbac83.length
        mem[0] = 102
        require ext_code.size(sub_66fbac83[idx])
        staticcall sub_66fbac83[idx].getReserves() with:
                gas gas_remaining wei
        mem[96 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[50 len 14] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = ext_call.return_data[50 len 14] + s
        continue 
    return s
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        stor101 = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x65496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            stor101 = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            stor101 = arg1
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
    if not roleAdmin[roleAdmin[0xd88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18cb].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0xd88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18cb][1][address(msg.sender)].field_0:
        roleAdmin[0xd88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18cb].field_0++
        roleAdmin[0xd88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18cb][roleAdmin[0xd88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18cb].field_0].field_0 = msg.sender
        roleAdmin[0xd88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18cb][roleAdmin[0xd88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18cb].field_0].field_160 = 0
        roleAdmin[0xd88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18cb][1][address(msg.sender)].field_0 = roleAdmin[0xd88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18cb].field_0
        emit RoleGranted(0xd88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18cb, msg.sender, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
