contract main {




// =====================  Runtime code  =====================


#
#  - sub_8a459d38(?)
#
const version = 1000010

const sub_8c3bf9b9(?) = 0x7724d766ec0f1bfbd75ff2bcd2034fbf5cbb00e3d6a7a59d2b365558f2842a46

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
uint8 paused;
bool stor151; offset 256
uint8 stor151;
uint8 stor151; offset 64
uint32 stor151; offset 128
uint64 stor151; offset 152
uint64 stor151; offset 8
uint64 stor151; offset 72
uint64 stor151;
uint64 stor151; offset 64
uint64 sub_dab5cc51; offset 128
uint256 stor151; offset 64
address stor152;
mapping of struct sub_a9f8cc34;
uint32 stor154;
uint64 stor154; offset 160
address feesCollectorAddress;
uint256 stor154;
uint256 stor154;
bool stor155; offset 256
uint16 stor155; offset 72
uint32 stor155;
uint64 stor155; offset 88
uint64 stor155; offset 24
uint64 challengePeriod;
uint64 sub_10e6b69a; offset 64

function sub_10e6b69a(?) payable {
    return sub_10e6b69a
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
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
    return address(roleAdmin[arg1][arg2].field_0)
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(roleAdmin[arg1][1][address(arg2)].field_0)
}

function sub_a9f8cc34(?) payable {
    require calldata.size - 4 >= 64
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    return uint8(sub_a9f8cc34[arg1][arg2 << 192].field_768), 
           uint8(sub_a9f8cc34[arg1][arg2 << 192].field_768),
           sub_a9f8cc34[arg1][arg2 << 192].field_256,
           address(sub_a9f8cc34[arg1][arg2 << 192].field_0),
           uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function feesCollectorAddress() payable {
    return feesCollectorAddress
}

function sub_dab5cc51(?) payable {
    return sub_dab5cc51
}

function challengePeriod() payable {
    return challengePeriod
}

function _fallback() payable {
    revert
}

function sub_b96b4ec6(?) payable {
    return uint64(stor151.field_0), uint64(stor151.field_0), uint64(stor154.field_160)
}

function sub_5b6577d8(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'yCaller is not the Admin'
    sub_10e6b69a = arg1
}

function sub_8e25588f(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'yCaller is not the Admin'
    sub_dab5cc51 = arg1
}

function sub_9c7b8a36(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'yCaller is not the Admin'
    challengePeriod = arg1
}

function pause() payable {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'yCaller is not the Admin'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'yCaller is not the Admin'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function sub_f599a2e6(?) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'yCaller is not the Admin'
    if not arg1:
        revert with 0, 'Incorrect address specified'
    feesCollectorAddress = arg1
}

function sub_609ab8ae(?) payable {
    require calldata.size - 4 >= 96
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'yCaller is not the Admin'
    uint64(stor151.field_0) = arg1
    uint64(stor151.field_64) = arg2
    Mask(192, 0, stor151.field_64) = 0
    uint64(stor154.field_160) = arg3
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
        address(roleAdmin[arg1][roleAdmin[arg1].field_0].field_0) = arg2
        Mask(96, 0, roleAdmin[arg1][roleAdmin[arg1].field_0].field_160) = 0
        roleAdmin[arg1][1][address(arg2)].field_0 = roleAdmin[arg1].field_0
        emit RoleGranted(arg1, arg2, msg.sender);
}

function sub_8270eba3(?) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 0:
        revert with 0, 'Claim not found'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) != 3:
        revert with 0, 'yIncorrect claim status'
    if uint64(uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) + sub_dab5cc51) >= uint64(block.timestamp):
        revert with 0, 'Payout period is not expired yet'
    require ext_code.size(stor152)
    call stor152.0xcae11129 with:
         gas gas_remaining wei
        args address(sub_a9f8cc34[arg1][arg2 << 192].field_0), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3b049ac9(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x7724d766ec0f1bfbd75ff2bcd2034fbf5cbb00e3d6a7a59d2b365558f2842a46][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not Claim Manager'
    if paused:
        revert with 0, 'Pausable: paused'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 0:
        revert with 0, 'Claim not found'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) != 1:
        revert with 0, 'yIncorrect claim status'
    uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
    uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 2
    Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
    sub_a9f8cc34[arg1][arg2 << 192].field_1024 % 1 = 0
    emit 0x7a345116: 1, 2, arg1, arg2
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
                    0x416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b00,
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

function sub_4668f5ad(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x7724d766ec0f1bfbd75ff2bcd2034fbf5cbb00e3d6a7a59d2b365558f2842a46][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not Claim Manager'
    if paused:
        revert with 0, 'Pausable: paused'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 0:
        revert with 0, 'Claim not found'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) != 2:
        revert with 0, 'yIncorrect claim status'
    uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
    uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 4
    Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
    sub_a9f8cc34[arg1][arg2 << 192].field_1024 % 1 = 0
    require ext_code.size(stor152)
    call stor152.0xcae11129 with:
         gas gas_remaining wei
        args address(sub_a9f8cc34[arg1][arg2 << 192].field_0), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7a345116: 2, 4, arg1, arg2
}

function sub_b29a1f40(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x7724d766ec0f1bfbd75ff2bcd2034fbf5cbb00e3d6a7a59d2b365558f2842a46][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not Claim Manager'
    if paused:
        revert with 0, 'Pausable: paused'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 0:
        revert with 0, 'Claim not found'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) != 5:
        revert with 0, 'yIncorrect claim status'
    uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
    uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 6
    Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
    sub_a9f8cc34[arg1][arg2 << 192].field_1024 % 1 = 0
    require ext_code.size(stor152)
    call stor152.0xcae11129 with:
         gas gas_remaining wei
        args address(sub_a9f8cc34[arg1][arg2 << 192].field_0), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x7a345116: 5, 6, arg1, arg2
}

function sub_15ec1ca3(?) payable {
    require calldata.size - 4 >= 96
    if not roleAdmin[0x7724d766ec0f1bfbd75ff2bcd2034fbf5cbb00e3d6a7a59d2b365558f2842a46][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not Claim Manager'
    if paused:
        revert with 0, 'Pausable: paused'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 0:
        revert with 0, 'Claim not found'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) != 2:
        require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
        if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) != 5:
            revert with 0, 'yIncorrect claim status'
    if arg3 <= 0:
        revert with 0, 'Incorrect payout percentage'
    if arg3 > 100:
        revert with 0, 'Incorrect payout percentage'
    uint8(sub_a9f8cc34[arg1][arg2 << 192].field_768) = arg3
    uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
    uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 3
    Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    emit 0x7a345116: uint8(sub_a9f8cc34[arg1][arg2 << 192].field_768), 3, arg1, arg2
    emit 0xf4691f72: arg3, arg1, arg2
}

function sub_39a23eb9(?) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) != 3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6c526566756e6420697320617661696c61626c6520666f7220417070726f76656420636c61696d73206f6e6c,
                    mem[208 len 20]
    if sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0:
        sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 = 0
        require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
        staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xae61fd8d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 0, sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_32)
        mem[324 len 0] = 0
        call address(ext_call.return_data[0]) with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(480, 0, sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0), mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), msg.sender, sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0
            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 32, 42, 0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        emit 0x4ebf8811: sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0, msg.sender, arg1, arg2
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if uint8(stor0.field_8):
        paused = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x48496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                0x48496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                    0x48496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                        0x48496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                            0x48496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            paused = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            paused = 0
                            uint8(stor0.field_8) = 0
    if not roleAdmin[0][1][address(arg1)].field_0:
        roleAdmin[0].field_0++
        address(roleAdmin[0][roleAdmin[0].field_0].field_0) = arg1
        Mask(96, 0, roleAdmin[0][roleAdmin[0].field_0].field_160) = 0
        roleAdmin[0][1][address(arg1)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg1, msg.sender);
    if not arg2:
        revert with 0, 'Incorrect scProtections address'
    stor152 = arg2
    uint8(stor151.field_0) = 10
    stor151.field_8 % 72057594037927936 = 0
    uint8(stor151.field_64) = 5
    stor151.field_72 % 72057594037927936 = 0
    stor151.field_128 % 16777216 = 72 * 24 * 3600
    stor151.field_152 % 1099511627776 = 0
    stor151.field_256 % 1 = 0
    stor151.field_256 % 1 = 0
    stor155.field_0 % 16777216 = 24 * 3600
    stor155.field_24 % 281474976710656 = 0
    uint16(stor155.field_72) = 10125
    stor155.field_88 % 1099511627776 = 0
    stor155.field_256 % 1 = 0
    uint256(stor154.field_0) = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_078501c7(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor152)
    staticcall stor152.0xd5b5f1aa with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x745468657265206973206e6f205343506f6f6c20666f72207370656369666965642070726f746f636f,
                    mem[205 len 23]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xb1dd61b6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[28 len 4] != 3:
        revert with 0, 'Incorrect pool type'
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd7256b4c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint64(stor151.field_0):
        require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
        if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) != 4:
            if not sub_a9f8cc34[arg1][arg2 << 192].field_256:
                return 0
            require sub_a9f8cc34[arg1][arg2 << 192].field_256 - 1 < sub_a9f8cc34[arg1][arg2 << 192].field_256
            if not sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0:
                return 0
            if uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0 / sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0 != uint64(stor151.field_64):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0)
    else:
        if ext_call.return_data[0] * uint64(stor151.field_0) / uint64(stor151.field_0) != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
        if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) != 4:
            if not sub_a9f8cc34[arg1][arg2 << 192].field_256:
                return (ext_call.return_data[0] * uint64(stor151.field_0))
            require sub_a9f8cc34[arg1][arg2 << 192].field_256 - 1 < sub_a9f8cc34[arg1][arg2 << 192].field_256
            if not sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0:
                return 0
            if uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0 / sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0 != uint64(stor151.field_64):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0)
    ('eq', ('type', 8, ('field', 840, ('stor', ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))))), 4)
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd7256b4c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint64(stor154.field_160):
        return 0
    if ext_call.return_data[0] * uint64(stor154.field_160) / uint64(stor154.field_160) != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * uint64(stor154.field_160))
}

function sub_81fdc151(?) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) == 4:
        idx = 0
        s = 0
        while idx < sub_a9f8cc34[arg1][arg2 << 192].field_256:
            require idx < sub_a9f8cc34[arg1][arg2 << 192].field_256
            _158 = sha3(address(sub_a9f8cc34[arg1][arg2 << 192][idx + 1].field_0), sha3(arg2 << 192, sha3(arg1, 153)) + 2)
            if sub_a9f8cc34[arg1][arg2 << 192][2][address(sub_a9f8cc34[arg1][arg2 << 192][idx + 1].field_0)].field_0 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(arg1, 153)
            idx = idx + 1
            s = sub_a9f8cc34[arg1][arg2 << 192][2][address(sub_a9f8cc34[arg1][arg2 << 192][idx + 1].field_0)].field_0 + s
            continue 
        uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 7
        require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
        staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xae61fd8d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor154.field_0), uint32(stor154.field_0), Mask(224, 32, stor[_158] * sub_a9f8cc34[arg1][arg2 << 192].field_256) >> 32
        mem[324 len 0] = 0
        call address(ext_call.return_data[0]) with:
           funct uint32(stor154.field_0)
             gas gas_remaining wei
            args Mask(224, 32, stor[_158] * sub_a9f8cc34[arg1][arg2 << 192].field_256) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), 
                            Mask(224, 0, stor154.field_0),
                            uint32(stor154.field_0),
                            stor[_158] * sub_a9f8cc34[arg1][arg2 << 192].field_256
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor154.field_0):
                revert with 0, 32, 42, 0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        emit 0x277f2e7e: (stor[_158] * sub_a9f8cc34[arg1][arg2 << 192].field_256), arg1, arg2
    else:
        require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
        if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) != 6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x654665657320646973747269627574696f6e20697320617661696c61626c6520666f72207465726d696e616c20737461746573206f6e6c,
                        mem[219 len 9]
        idx = 0
        s = 0
        while idx < sub_a9f8cc34[arg1][arg2 << 192].field_256:
            require idx < sub_a9f8cc34[arg1][arg2 << 192].field_256
            _162 = sha3(address(sub_a9f8cc34[arg1][arg2 << 192][idx + 1].field_0), sha3(arg2 << 192, sha3(arg1, 153)) + 2)
            if sub_a9f8cc34[arg1][arg2 << 192][2][address(sub_a9f8cc34[arg1][arg2 << 192][idx + 1].field_0)].field_0 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = arg2
            mem[32] = sha3(arg1, 153)
            idx = idx + 1
            s = sub_a9f8cc34[arg1][arg2 << 192][2][address(sub_a9f8cc34[arg1][arg2 << 192][idx + 1].field_0)].field_0 + s
            continue 
        uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 7
        require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
        staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xae61fd8d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[260 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor154.field_0), uint32(stor154.field_0), Mask(224, 32, stor[_162] * sub_a9f8cc34[arg1][arg2 << 192].field_256) >> 32
        mem[324 len 0] = 0
        call address(ext_call.return_data[0]) with:
           funct uint32(stor154.field_0)
             gas gas_remaining wei
            args Mask(224, 32, stor[_162] * sub_a9f8cc34[arg1][arg2 << 192].field_256) << 224, mem[324 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0xa9059cbb(?????), 
                            Mask(224, 0, stor154.field_0),
                            uint32(stor154.field_0),
                            stor[_162] * sub_a9f8cc34[arg1][arg2 << 192].field_256
            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor154.field_0):
                revert with 0, 32, 42, 0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
        else:
            mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[292]:
                    revert with 0, 
                                32,
                                42,
                                0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 371 len 22]
        emit 0x277f2e7e: (stor[_162] * sub_a9f8cc34[arg1][arg2 << 192].field_256), arg1, arg2
}

function sub_8d8bd640(?) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 0:
        revert with 0, 'Claim not found'
    require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
    if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) != 4:
        revert with 0, 'yIncorrect claim status'
    if uint64(uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) + challengePeriod) < uint64(block.timestamp):
        revert with 0, 'Challenge period expired'
    require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
    staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xd7256b4c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint64(stor151.field_0):
        require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
        if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) != 4:
            if not sub_a9f8cc34[arg1][arg2 << 192].field_256:
                sub_a9f8cc34[arg1][arg2 << 192].field_256++
                stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0)
                if sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 < sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
                uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 5
                Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
                sub_a9f8cc34[arg1][arg2 << 192].field_1024 % 1 = 0
                require ext_code.size(stor152)
                call stor152.0x80d7d1d1 with:
                     gas gas_remaining wei
                    args address(sub_a9f8cc34[arg1][arg2 << 192].field_0), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
                staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xae61fd8d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0) << 512, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                require sub_a9f8cc34[arg1][arg2 << 192].field_256 - 1 < sub_a9f8cc34[arg1][arg2 << 192].field_256
                if not sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0:
                    sub_a9f8cc34[arg1][arg2 << 192].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0)
                    if sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 < sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
                    uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 5
                    Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
                    sub_a9f8cc34[arg1][arg2 << 192].field_1024 % 1 = 0
                    require ext_code.size(stor152)
                    call stor152.0x80d7d1d1 with:
                         gas gas_remaining wei
                        args address(sub_a9f8cc34[arg1][arg2 << 192].field_0), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
                    staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xae61fd8d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                    mem[416 len 4] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args 0, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    if uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0 / sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0 != uint64(stor151.field_64):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    sub_a9f8cc34[arg1][arg2 << 192].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0)
                    if (uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) + sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 < sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 += uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0
                    uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
                    uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 5
                    Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
                    sub_a9f8cc34[arg1][arg2 << 192].field_1024 % 1 = 0
                    require ext_code.size(stor152)
                    call stor152.0x80d7d1d1 with:
                         gas gas_remaining wei
                        args address(sub_a9f8cc34[arg1][arg2 << 192].field_0), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
                    staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xae61fd8d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) >> 32
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(224, 32, uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        msg.sender,
                                        address(this.address),
                                        uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
        else:
            require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
            staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xd7256b4c with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint64(stor154.field_160):
                sub_a9f8cc34[arg1][arg2 << 192].field_256++
                stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0)
                if sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 < sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
                uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 5
                Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
                sub_a9f8cc34[arg1][arg2 << 192].field_1024 % 1 = 0
                require ext_code.size(stor152)
                call stor152.0x80d7d1d1 with:
                     gas gas_remaining wei
                    args address(sub_a9f8cc34[arg1][arg2 << 192].field_0), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
                staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xae61fd8d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0) << 512, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                if ext_call.return_data[0] * uint64(stor154.field_160) / uint64(stor154.field_160) != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                sub_a9f8cc34[arg1][arg2 << 192].field_256++
                stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0)
                if (ext_call.return_data[0] * uint64(stor154.field_160)) + sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 < sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 += ext_call.return_data[0] * uint64(stor154.field_160)
                uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
                uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 5
                Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
                sub_a9f8cc34[arg1][arg2 << 192].field_1024 % 1 = 0
                require ext_code.size(stor152)
                call stor152.0x80d7d1d1 with:
                     gas gas_remaining wei
                    args address(sub_a9f8cc34[arg1][arg2 << 192].field_0), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
                staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xae61fd8d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] * uint64(stor154.field_160)) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] * uint64(stor154.field_160)) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0] * uint64(stor154.field_160)
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
    else:
        if ext_call.return_data[0] * uint64(stor151.field_0) / uint64(stor151.field_0) != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) <= 7
        if uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) != 4:
            if not sub_a9f8cc34[arg1][arg2 << 192].field_256:
                sub_a9f8cc34[arg1][arg2 << 192].field_256++
                stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0)
                if (ext_call.return_data[0] * uint64(stor151.field_0)) + sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 < sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 += ext_call.return_data[0] * uint64(stor151.field_0)
                uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
                uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 5
                Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
                sub_a9f8cc34[arg1][arg2 << 192].field_1024 % 1 = 0
                require ext_code.size(stor152)
                call stor152.0x80d7d1d1 with:
                     gas gas_remaining wei
                    args address(sub_a9f8cc34[arg1][arg2 << 192].field_0), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
                staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xae61fd8d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] * uint64(stor151.field_0)) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] * uint64(stor151.field_0)) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0] * uint64(stor151.field_0)
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                require sub_a9f8cc34[arg1][arg2 << 192].field_256 - 1 < sub_a9f8cc34[arg1][arg2 << 192].field_256
                if not sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0:
                    sub_a9f8cc34[arg1][arg2 << 192].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0)
                    if sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 < sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
                    uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 5
                    Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
                    sub_a9f8cc34[arg1][arg2 << 192].field_1024 % 1 = 0
                    require ext_code.size(stor152)
                    call stor152.0x80d7d1d1 with:
                         gas gas_remaining wei
                        args address(sub_a9f8cc34[arg1][arg2 << 192].field_0), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
                    staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xae61fd8d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0) << 512, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    if uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0 / sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0 != uint64(stor151.field_64):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    sub_a9f8cc34[arg1][arg2 << 192].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0)
                    if (uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) + sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 < sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 += uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0
                    uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
                    uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 5
                    Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
                    sub_a9f8cc34[arg1][arg2 << 192].field_1024 % 1 = 0
                    require ext_code.size(stor152)
                    call stor152.0x80d7d1d1 with:
                         gas gas_remaining wei
                        args address(sub_a9f8cc34[arg1][arg2 << 192].field_0), arg2
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
                    staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xae61fd8d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) >> 32
                    mem[416 len 4] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(224, 32, uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), 
                                        msg.sender,
                                        address(this.address),
                                        uint64(stor151.field_64) * sub_a9f8cc34[arg1][arg2 << 192][2][address(stor[sub_a9f8cc34[arg1][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
        else:
            require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
            staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xd7256b4c with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint64(stor154.field_160):
                sub_a9f8cc34[arg1][arg2 << 192].field_256++
                stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0)
                if sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 < sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
                uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 5
                Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
                sub_a9f8cc34[arg1][arg2 << 192].field_1024 % 1 = 0
                require ext_code.size(stor152)
                call stor152.0x80d7d1d1 with:
                     gas gas_remaining wei
                    args address(sub_a9f8cc34[arg1][arg2 << 192].field_0), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
                staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xae61fd8d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                mem[416 len 4] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args 0, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
            else:
                if ext_call.return_data[0] * uint64(stor154.field_160) / uint64(stor154.field_160) != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                sub_a9f8cc34[arg1][arg2 << 192].field_256++
                stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('param', 'arg1'), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[arg1][arg2 << 192].field_256].field_0)
                if (ext_call.return_data[0] * uint64(stor154.field_160)) + sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 < sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                sub_a9f8cc34[arg1][arg2 << 192][2][msg.sender].field_0 += ext_call.return_data[0] * uint64(stor154.field_160)
                uint64(sub_a9f8cc34[arg1][arg2 << 192].field_776) = uint64(block.timestamp)
                uint8(sub_a9f8cc34[arg1][arg2 << 192].field_840) = 5
                Mask(184, 0, sub_a9f8cc34[arg1][arg2 << 192].field_840) = 0
                sub_a9f8cc34[arg1][arg2 << 192].field_1024 % 1 = 0
                require ext_code.size(stor152)
                call stor152.0x80d7d1d1 with:
                     gas gas_remaining wei
                    args address(sub_a9f8cc34[arg1][arg2 << 192].field_0), arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require ext_code.size(address(sub_a9f8cc34[arg1][arg2 << 192].field_0))
                staticcall address(sub_a9f8cc34[arg1][arg2 << 192].field_0).0xae61fd8d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] * uint64(stor154.field_160)) >> 32
                mem[416 len 4] = 0
                mem[388 len 0] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args Mask(224, 32, ext_call.return_data[0] * uint64(stor154.field_160)) << 480, mem[388 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0] * uint64(stor154.field_160)
                    if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 
                                    32,
                                    42,
                                    0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[402 len 14],
                                    0,
                                    mem[420 len 4]
                else:
                    mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[324]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 403 len 22]
    emit 0x7a345116: 4, 5, arg1, arg2
}

function sub_022690eb(?) payable {
    require calldata.size - 4 >= 64
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        revert with 0, 'Pool address incorrect'
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
    if arg2 >= block.timestamp:
        revert with 0, 'Incorrect claim timestamp'
    if uint64(24 * 3600 * arg2 / 24 * 3600) <= block.timestamp + -sub_10e6b69a - (24 * 3600):
        revert with 0, 'Claim event date is too old'
    require ext_code.size(arg1)
    staticcall arg1.0xd7256b4c with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint64(stor151.field_0):
        require uint8(sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_840) <= 7
        if uint8(sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_840) != 4:
            if not sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256:
                require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840):
                    require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                    if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) == 1:
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0) << 512, mem[388 len 4]
                    else:
                        require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                        if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 2:
                            revert with 0, 'yIncorrect claim status'
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                        mem[416 len 4] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args 0, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    mem[256] = 0
                    mem[128] = 256
                    mem[160] = 0
                    mem[192] = uint64(block.timestamp)
                    mem[224] = 1
                    address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_0) = arg1
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 = 0
                    idx = 0
                    while sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 > idx:
                        address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                    uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                    uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) = 1
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                    require ext_code.size(stor152)
                    call stor152.0x80d7d1d1 with:
                         gas gas_remaining wei
                        args address(arg1), uint64(24 * 3600 * arg2 / 24 * 3600)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                    if sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(arg1)
                    staticcall arg1.0xae61fd8d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[324] = msg.sender
                    mem[356] = this.address
                    mem[388] = 0
                    mem[288] = 100
                    mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[320 len 4] = unknown_0x23b872dd(?????)
                    mem[420] = 32
                    mem[452] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                    mem[608 len 4] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args 0, mem[580 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg1:
                                revert with memory
                                  from 128
                                   len arg1
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg1:
                            require arg1 >= 32
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                emit 0x4327d622: address(arg1), 0, msg.sender, ext_call.return_data[0], uint64(24 * 3600 * arg2 / 24 * 3600)
            else:
                require sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 - 1 < sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256
                if not sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0:
                    require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                    if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840):
                        require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                        if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 1:
                            require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                            if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 2:
                                revert with 0, 'yIncorrect claim status'
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0) << 512, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                    else:
                        mem[256] = 0
                        mem[128] = 256
                        mem[160] = 0
                        mem[192] = uint64(block.timestamp)
                        mem[224] = 1
                        address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_0) = arg1
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 = 0
                        idx = 0
                        while sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 > idx:
                            address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][idx + 1].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                        uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                        uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                        uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                        uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) = 1
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                        require ext_code.size(stor152)
                        call stor152.0x80d7d1d1 with:
                             gas gas_remaining wei
                            args address(arg1), uint64(24 * 3600 * arg2 / 24 * 3600)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324] = msg.sender
                        mem[356] = this.address
                        mem[388] = 0
                        mem[288] = 100
                        mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[320 len 4] = unknown_0x23b872dd(?????)
                        mem[420] = 32
                        mem[452] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                        mem[608 len 4] = 0
                        mem[580 len 0] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0) << 512, mem[580 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if arg1:
                                    revert with memory
                                      from 128
                                       len arg1
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg1:
                                require arg1 >= 32
                        else:
                            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[516]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 595 len 22]
                    emit 0x4327d622: address(arg1), 0, msg.sender, ext_call.return_data[0], uint64(24 * 3600 * arg2 / 24 * 3600)
                else:
                    if uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0 / sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0 != uint64(stor151.field_64):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                    if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840):
                        require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                        if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) == 1:
                            sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                            stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                            if (uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 += uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0
                            require ext_code.size(arg1)
                            staticcall arg1.0xae61fd8d with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) >> 32
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                        else:
                            require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                            if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 2:
                                revert with 0, 'yIncorrect claim status'
                            sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                            stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                            if (uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 += uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0
                            require ext_code.size(arg1)
                            staticcall arg1.0xae61fd8d with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) >> 32
                            mem[416 len 4] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), 
                                            msg.sender,
                                            address(this.address),
                                            uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                    else:
                        mem[256] = 0
                        mem[128] = 256
                        mem[160] = 0
                        mem[192] = uint64(block.timestamp)
                        mem[224] = 1
                        address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_0) = arg1
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 = 0
                        idx = 0
                        while sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 > idx:
                            address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][idx + 1].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                        uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                        uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                        uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                        uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) = 1
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                        require ext_code.size(stor152)
                        call stor152.0x80d7d1d1 with:
                             gas gas_remaining wei
                            args address(arg1), uint64(24 * 3600 * arg2 / 24 * 3600)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if (uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 += uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324] = msg.sender
                        mem[356] = this.address
                        mem[388] = uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0
                        mem[288] = 100
                        mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[320 len 4] = unknown_0x23b872dd(?????)
                        mem[420] = 32
                        mem[452] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) >> 32
                        mem[608 len 4] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) << 480, mem[580 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if arg1:
                                    revert with memory
                                      from 128
                                       len arg1
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg1:
                                require arg1 >= 32
                        else:
                            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[516]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 595 len 22]
                    emit 0x4327d622: address(arg1), uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0, msg.sender, ext_call.return_data[0], uint64(24 * 3600 * arg2 / 24 * 3600)
        else:
            require ext_code.size(arg1)
            staticcall arg1.0xd7256b4c with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint64(stor154.field_160):
                require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840):
                    require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                    if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 1:
                        require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                        if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 2:
                            revert with 0, 'yIncorrect claim status'
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                    if sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(arg1)
                    staticcall arg1.0xae61fd8d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                    mem[416 len 4] = 0
                    mem[388 len 0] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0) << 512, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    mem[256] = 0
                    mem[128] = 256
                    mem[160] = 0
                    mem[192] = uint64(block.timestamp)
                    mem[224] = 1
                    address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_0) = arg1
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 = 0
                    idx = 0
                    while sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 > idx:
                        address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                    uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                    uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) = 1
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                    require ext_code.size(stor152)
                    call stor152.0x80d7d1d1 with:
                         gas gas_remaining wei
                        args address(arg1), uint64(24 * 3600 * arg2 / 24 * 3600)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                    if sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(arg1)
                    staticcall arg1.0xae61fd8d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[324] = msg.sender
                    mem[356] = this.address
                    mem[388] = 0
                    mem[288] = 100
                    mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[320 len 4] = unknown_0x23b872dd(?????)
                    mem[420] = 32
                    mem[452] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                    mem[608 len 4] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args 0, mem[580 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg1:
                                revert with memory
                                  from 128
                                   len arg1
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg1:
                            require arg1 >= 32
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                emit 0x4327d622: address(arg1), 0, msg.sender, ext_call.return_data[0], uint64(24 * 3600 * arg2 / 24 * 3600)
            else:
                if ext_call.return_data[0] * uint64(stor154.field_160) / uint64(stor154.field_160) != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840):
                    require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                    if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) == 1:
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if (ext_call.return_data[0] * uint64(stor154.field_160)) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 += ext_call.return_data[0] * uint64(stor154.field_160)
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] * uint64(stor154.field_160)) >> 32
                        mem[416 len 4] = 0
                    else:
                        require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                        if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 2:
                            revert with 0, 'yIncorrect claim status'
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if (ext_call.return_data[0] * uint64(stor154.field_160)) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 += ext_call.return_data[0] * uint64(stor154.field_160)
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] * uint64(stor154.field_160)) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] * uint64(stor154.field_160)) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0] * uint64(stor154.field_160)
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    mem[256] = 0
                    mem[128] = 256
                    mem[160] = 0
                    mem[192] = uint64(block.timestamp)
                    mem[224] = 1
                    address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_0) = arg1
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 = 0
                    idx = 0
                    while sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 > idx:
                        address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                    uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                    uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) = 1
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                    require ext_code.size(stor152)
                    call stor152.0x80d7d1d1 with:
                         gas gas_remaining wei
                        args address(arg1), uint64(24 * 3600 * arg2 / 24 * 3600)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                    if (ext_call.return_data[0] * uint64(stor154.field_160)) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 += ext_call.return_data[0] * uint64(stor154.field_160)
                    require ext_code.size(arg1)
                    staticcall arg1.0xae61fd8d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[324] = msg.sender
                    mem[356] = this.address
                    mem[388] = ext_call.return_data[0] * uint64(stor154.field_160)
                    mem[288] = 100
                    mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[320 len 4] = unknown_0x23b872dd(?????)
                    mem[420] = 32
                    mem[452] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] * uint64(stor154.field_160)) >> 32
                    mem[608 len 4] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] * uint64(stor154.field_160)) << 480, mem[580 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg1:
                                revert with memory
                                  from 128
                                   len arg1
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg1:
                            require arg1 >= 32
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                emit 0x4327d622: address(arg1), ext_call.return_data[0] * uint64(stor154.field_160), msg.sender, ext_call.return_data[0], uint64(24 * 3600 * arg2 / 24 * 3600)
    else:
        if ext_call.return_data[0] * uint64(stor151.field_0) / uint64(stor151.field_0) != ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        require uint8(sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_840) <= 7
        if uint8(sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_840) != 4:
            if not sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256:
                require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840):
                    require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                    if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) == 1:
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if (ext_call.return_data[0] * uint64(stor151.field_0)) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 += ext_call.return_data[0] * uint64(stor151.field_0)
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] * uint64(stor151.field_0)) >> 32
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                    else:
                        require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                        if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 2:
                            revert with 0, 'yIncorrect claim status'
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if (ext_call.return_data[0] * uint64(stor151.field_0)) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 += ext_call.return_data[0] * uint64(stor151.field_0)
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] * uint64(stor151.field_0)) >> 32
                        mem[416 len 4] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] * uint64(stor151.field_0)) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0] * uint64(stor151.field_0)
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    mem[256] = 0
                    mem[128] = 256
                    mem[160] = 0
                    mem[192] = uint64(block.timestamp)
                    mem[224] = 1
                    address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_0) = arg1
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 = 0
                    idx = 0
                    while sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 > idx:
                        address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                    uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                    uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) = 1
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                    require ext_code.size(stor152)
                    call stor152.0x80d7d1d1 with:
                         gas gas_remaining wei
                        args address(arg1), uint64(24 * 3600 * arg2 / 24 * 3600)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                    if (ext_call.return_data[0] * uint64(stor151.field_0)) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 += ext_call.return_data[0] * uint64(stor151.field_0)
                    require ext_code.size(arg1)
                    staticcall arg1.0xae61fd8d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[324] = msg.sender
                    mem[356] = this.address
                    mem[388] = ext_call.return_data[0] * uint64(stor151.field_0)
                    mem[288] = 100
                    mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[320 len 4] = unknown_0x23b872dd(?????)
                    mem[420] = 32
                    mem[452] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] * uint64(stor151.field_0)) >> 32
                    mem[608 len 4] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] * uint64(stor151.field_0)) << 480, mem[580 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg1:
                                revert with memory
                                  from 128
                                   len arg1
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg1:
                            require arg1 >= 32
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                emit 0x4327d622: address(arg1), ext_call.return_data[0] * uint64(stor151.field_0), msg.sender, ext_call.return_data[0], uint64(24 * 3600 * arg2 / 24 * 3600)
            else:
                require sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 - 1 < sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256
                if not sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0:
                    require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                    if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840):
                        require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                        if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) == 1:
                            sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                            stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                            if sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(arg1)
                            staticcall arg1.0xae61fd8d with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                            mem[416 len 4] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args 0, mem[388 len 4]
                        else:
                            require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                            if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 2:
                                revert with 0, 'yIncorrect claim status'
                            sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                            stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                            if sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                                revert with 0, 'SafeMath: addition overflow'
                            require ext_code.size(arg1)
                            staticcall arg1.0xae61fd8d with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_code.size(address(ext_call.return_data[0])):
                                revert with 0, 'Address: call to non-contract'
                            mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                            mem[416 len 4] = 0
                            mem[388 len 0] = 0
                            call address(ext_call.return_data[0]) with:
                                 gas gas_remaining wei
                                args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0) << 512, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                    else:
                        mem[256] = 0
                        mem[128] = 256
                        mem[160] = 0
                        mem[192] = uint64(block.timestamp)
                        mem[224] = 1
                        address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_0) = arg1
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 = 0
                        idx = 0
                        while sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 > idx:
                            address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][idx + 1].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                        uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                        uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                        uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                        uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) = 1
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                        require ext_code.size(stor152)
                        call stor152.0x80d7d1d1 with:
                             gas gas_remaining wei
                            args address(arg1), uint64(24 * 3600 * arg2 / 24 * 3600)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324] = msg.sender
                        mem[356] = this.address
                        mem[388] = 0
                        mem[288] = 100
                        mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[320 len 4] = unknown_0x23b872dd(?????)
                        mem[420] = 32
                        mem[452] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                        mem[608 len 4] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args 0, mem[580 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if arg1:
                                    revert with memory
                                      from 128
                                       len arg1
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg1:
                                require arg1 >= 32
                        else:
                            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[516]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 595 len 22]
                    emit 0x4327d622: address(arg1), 0, msg.sender, ext_call.return_data[0], uint64(24 * 3600 * arg2 / 24 * 3600)
                else:
                    if uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0 / sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0 != uint64(stor151.field_64):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                    if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840):
                        require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                        if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 1:
                            require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                            if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 2:
                                revert with 0, 'yIncorrect claim status'
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if (uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 += uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) >> 32
                        mem[416 len 4] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) << 480, mem[388 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0x23b872dd(?????), 
                                            msg.sender,
                                            address(this.address),
                                            uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0
                            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[402 len 14],
                                            0,
                                            mem[420 len 4]
                        else:
                            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[324]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 403 len 22]
                    else:
                        mem[256] = 0
                        mem[128] = 256
                        mem[160] = 0
                        mem[192] = uint64(block.timestamp)
                        mem[224] = 1
                        address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_0) = arg1
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 = 0
                        idx = 0
                        while sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 > idx:
                            address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][idx + 1].field_0) = 0
                            idx = idx + 1
                            continue 
                        uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                        uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                        uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                        uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                        uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) = 1
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                        require ext_code.size(stor152)
                        call stor152.0x80d7d1d1 with:
                             gas gas_remaining wei
                            args address(arg1), uint64(24 * 3600 * arg2 / 24 * 3600)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if (uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 += uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[324] = msg.sender
                        mem[356] = this.address
                        mem[388] = uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0
                        mem[288] = 100
                        mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                        mem[320 len 4] = unknown_0x23b872dd(?????)
                        mem[420] = 32
                        mem[452] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) >> 32
                        mem[608 len 4] = 0
                        mem[580 len 0] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args Mask(224, 32, uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0) << 480, mem[580 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if arg1:
                                    revert with memory
                                      from 128
                                       len arg1
                                revert with 0, 'SafeERC20: low-level call failed'
                            if arg1:
                                require arg1 >= 32
                        else:
                            mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[516]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 595 len 22]
                    emit 0x4327d622: address(arg1), uint64(stor151.field_64) * sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192][2][address(stor[sub_a9f8cc34[ext_call.return_data[0]][arg2 << 192].field_256 + ('array', 1, ('map', ('mask_shl', 64, 0, 192, ('param', 'arg2')), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153))))].field_0)].field_0, msg.sender, ext_call.return_data[0], uint64(24 * 3600 * arg2 / 24 * 3600)
        else:
            require ext_code.size(arg1)
            staticcall arg1.0xd7256b4c with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not uint64(stor154.field_160):
                require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840):
                    require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                    if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) == 1:
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                        mem[416 len 4] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args 0, mem[388 len 4]
                    else:
                        require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                        if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 2:
                            revert with 0, 'yIncorrect claim status'
                        sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                        stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                        if sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                            revert with 0, 'SafeMath: addition overflow'
                        require ext_code.size(arg1)
                        staticcall arg1.0xae61fd8d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_code.size(address(ext_call.return_data[0])):
                            revert with 0, 'Address: call to non-contract'
                        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                        mem[416 len 4] = 0
                        mem[388 len 0] = 0
                        call address(ext_call.return_data[0]) with:
                             gas gas_remaining wei
                            args Mask(736, -512, unknown_0x23b872dd(?????), msg.sender, address(this.address), 0) << 512, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    mem[256] = 0
                    mem[128] = 256
                    mem[160] = 0
                    mem[192] = uint64(block.timestamp)
                    mem[224] = 1
                    address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_0) = arg1
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 = 0
                    idx = 0
                    while sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 > idx:
                        address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                    uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                    uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) = 1
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                    require ext_code.size(stor152)
                    call stor152.0x80d7d1d1 with:
                         gas gas_remaining wei
                        args address(arg1), uint64(24 * 3600 * arg2 / 24 * 3600)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                    if sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    require ext_code.size(arg1)
                    staticcall arg1.0xae61fd8d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[324] = msg.sender
                    mem[356] = this.address
                    mem[388] = 0
                    mem[288] = 100
                    mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[320 len 4] = unknown_0x23b872dd(?????)
                    mem[420] = 32
                    mem[452] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), 0
                    mem[608 len 4] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args 0, mem[580 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg1:
                                revert with memory
                                  from 128
                                   len arg1
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg1:
                            require arg1 >= 32
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                emit 0x4327d622: address(arg1), 0, msg.sender, ext_call.return_data[0], uint64(24 * 3600 * arg2 / 24 * 3600)
            else:
                if ext_call.return_data[0] * uint64(stor154.field_160) / uint64(stor154.field_160) != ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840):
                    require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                    if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 1:
                        require uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) <= 7
                        if uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) != 2:
                            revert with 0, 'yIncorrect claim status'
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                    if (ext_call.return_data[0] * uint64(stor154.field_160)) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 += ext_call.return_data[0] * uint64(stor154.field_160)
                    require ext_code.size(arg1)
                    staticcall arg1.0xae61fd8d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] * uint64(stor154.field_160)) >> 32
                    mem[416 len 4] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] * uint64(stor154.field_160)) << 480, mem[388 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), ext_call.return_data[0] * uint64(stor154.field_160)
                        if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 
                                        32,
                                        42,
                                        0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[402 len 14],
                                        0,
                                        mem[420 len 4]
                    else:
                        mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[324]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 403 len 22]
                else:
                    mem[256] = 0
                    mem[128] = 256
                    mem[160] = 0
                    mem[192] = uint64(block.timestamp)
                    mem[224] = 1
                    address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_0) = arg1
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 = 0
                    idx = 0
                    while sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256 > idx:
                        address(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][idx + 1].field_0) = 0
                        idx = idx + 1
                        continue 
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                    uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_768) = 0
                    uint64(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_776) = uint64(block.timestamp)
                    uint8(sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_840) = 1
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_1024 % 1 = 0
                    require ext_code.size(stor152)
                    call stor152.0x80d7d1d1 with:
                         gas gas_remaining wei
                        args address(arg1), uint64(24 * 3600 * arg2 / 24 * 3600)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256++
                    stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0 = msg.sender or Mask(96, 160, stor[('array', 1, ('map', ('mask_shl', 64, 0, 192, ('mul', 86400, ('div', ('param', 'arg2'), 86400))), ('map', ('ext_call.return_data', 0, 32), ('name', 'sub_a9f8cc34', 153)))) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192].field_256].field_0)
                    if (ext_call.return_data[0] * uint64(stor154.field_160)) + sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 < sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_a9f8cc34[ext_call.return_data[0]][24 * 3600 * arg2 / 24 * 3600 << 192][2][msg.sender].field_0 += ext_call.return_data[0] * uint64(stor154.field_160)
                    require ext_code.size(arg1)
                    staticcall arg1.0xae61fd8d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[324] = msg.sender
                    mem[356] = this.address
                    mem[388] = ext_call.return_data[0] * uint64(stor154.field_160)
                    mem[288] = 100
                    mem[324 len 28] = Mask(224, 32, msg.sender) >> 32
                    mem[320 len 4] = unknown_0x23b872dd(?????)
                    mem[420] = 32
                    mem[452] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[484 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, ext_call.return_data[0] * uint64(stor154.field_160)) >> 32
                    mem[608 len 4] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(224, 32, ext_call.return_data[0] * uint64(stor154.field_160)) << 480, mem[580 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if arg1:
                                revert with memory
                                  from 128
                                   len arg1
                            revert with 0, 'SafeERC20: low-level call failed'
                        if arg1:
                            require arg1 >= 32
                    else:
                        mem[516 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[516]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x305361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 595 len 22]
                emit 0x4327d622: address(arg1), ext_call.return_data[0] * uint64(stor154.field_160), msg.sender, ext_call.return_data[0], uint64(24 * 3600 * arg2 / 24 * 3600)
}



}
