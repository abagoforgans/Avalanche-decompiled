contract main {




// =====================  Runtime code  =====================


const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
address collateralReserveAddress;
address sub_679a9c2cAddress;
address sub_250d5f99Address;
address sub_db3a1c58Address;
address sub_a53dfb85Address;
address priceFeedAddress;
uint256 sub_6f802d73;
uint256 sub_9bb1aa93;
uint256 sub_e0f4bea5;
uint256 sub_c6e4c2c8;
uint256 lastUpdate;
uint8 isActive;

function isActive() payable {
    return bool(isActive)
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function sub_250d5f99(?) payable {
    return sub_250d5f99Address
}

function collateralReserve() payable {
    return collateralReserveAddress
}

function sub_679a9c2c(?) payable {
    return sub_679a9c2cAddress
}

function sub_6f802d73(?) payable {
    return sub_6f802d73
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

function sub_9bb1aa93(?) payable {
    return sub_9bb1aa93
}

function sub_a53dfb85(?) payable {
    return sub_a53dfb85Address
}

function lastUpdate() payable {
    return lastUpdate
}

function sub_c6e4c2c8(?) payable {
    return sub_c6e4c2c8
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function sub_db3a1c58(?) payable {
    return sub_db3a1c58Address
}

function priceFeedAddress() payable {
    return priceFeedAddress
}

function sub_e0f4bea5(?) payable {
    return sub_e0f4bea5
}

function _fallback() payable {
    revert
}

function activate(bool arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tCaller is not a maintainer'
    isActive = uint8(arg1)
}

function setInternalCooldown(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tCaller is not a maintainer'
    sub_c6e4c2c8 = arg1
}

function setPriceFeedAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tCaller is not a maintainer'
    priceFeedAddress = arg1
}

function setShareContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tCaller is not a maintainer'
    sub_db3a1c58Address = arg1
}

function setReserveTracker(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tCaller is not a maintainer'
    sub_a53dfb85Address = arg1
    sub_679a9c2cAddress = arg1
}

function setGrowthRatioBands(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tCaller is not a maintainer'
    sub_9bb1aa93 = arg1
    sub_e0f4bea5 = arg2
}

function setCollateralReserve(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tCaller is not a maintainer'
    sub_250d5f99Address = arg1
    collateralReserveAddress = arg1
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
                    0x77416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    if uint8(stor0.field_8):
        sub_250d5f99Address = arg1
        sub_db3a1c58Address = arg2
        sub_a53dfb85Address = arg3
        priceFeedAddress = arg4
        sub_679a9c2cAddress = arg3
        collateralReserveAddress = arg1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            sub_250d5f99Address = arg1
            sub_db3a1c58Address = arg2
            sub_a53dfb85Address = arg3
            priceFeedAddress = arg4
            sub_679a9c2cAddress = arg3
            collateralReserveAddress = arg1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            sub_250d5f99Address = arg1
            sub_db3a1c58Address = arg2
            sub_a53dfb85Address = arg3
            priceFeedAddress = arg4
            sub_679a9c2cAddress = arg3
            collateralReserveAddress = arg1
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                    0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
                                        0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
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
    if not roleAdmin[roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0++
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0].field_0 = msg.sender
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0].field_160 = 0
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0 = roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0
        emit RoleGranted(0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18, msg.sender, msg.sender);
    sub_9bb1aa93 = 10^15
    sub_e0f4bea5 = 10^15
    isActive = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function refreshCollateralRatio() payable {
    if lastUpdate > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - lastUpdate < sub_c6e4c2c8:
        revert with 0, 'internal cooldown not passed'
    if bool(isActive) != 1:
        revert with 0, 'unactive'
    require ext_code.size(sub_679a9c2cAddress)
    staticcall sub_679a9c2cAddress.0x9c636d08 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(priceFeedAddress)
    staticcall priceFeedAddress.0x3ddac953 with:
            gas gas_remaining wei
           args sub_db3a1c58Address, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(collateralReserveAddress)
        staticcall collateralReserveAddress.0x217bb9a0 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not sub_6f802d73:
            if 0 / ext_call.return_data[0] > 0:
                require ext_code.size(collateralReserveAddress)
                call collateralReserveAddress.0x8e7d71d8 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_6f802d73:
                    if 0 / ext_call.return_data[0] < 0:
                        require ext_code.size(collateralReserveAddress)
                        call collateralReserveAddress.0xfc3181d4 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if (10^18 * sub_6f802d73) - (sub_e0f4bea5 * sub_6f802d73) / sub_6f802d73 != -sub_e0f4bea5 + 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if 0 / ext_call.return_data[0] < (10^18 * sub_6f802d73) - (sub_e0f4bea5 * sub_6f802d73) / 10^18:
                        require ext_code.size(collateralReserveAddress)
                        call collateralReserveAddress.0xfc3181d4 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if (10^18 * sub_6f802d73) + (sub_9bb1aa93 * sub_6f802d73) / sub_6f802d73 != sub_9bb1aa93 + 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if 0 / ext_call.return_data[0] > (10^18 * sub_6f802d73) + (sub_9bb1aa93 * sub_6f802d73) / 10^18:
                require ext_code.size(collateralReserveAddress)
                call collateralReserveAddress.0x8e7d71d8 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_6f802d73:
                    if 0 / ext_call.return_data[0] < 0:
                        require ext_code.size(collateralReserveAddress)
                        call collateralReserveAddress.0xfc3181d4 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if (10^18 * sub_6f802d73) - (sub_e0f4bea5 * sub_6f802d73) / sub_6f802d73 != -sub_e0f4bea5 + 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if 0 / ext_call.return_data[0] < (10^18 * sub_6f802d73) - (sub_e0f4bea5 * sub_6f802d73) / 10^18:
                        require ext_code.size(collateralReserveAddress)
                        call collateralReserveAddress.0xfc3181d4 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        sub_6f802d73 = 0 / ext_call.return_data[0]
    else:
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(collateralReserveAddress)
        staticcall collateralReserveAddress.0x217bb9a0 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not sub_6f802d73:
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > 0:
                require ext_code.size(collateralReserveAddress)
                call collateralReserveAddress.0x8e7d71d8 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_6f802d73:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
                        require ext_code.size(collateralReserveAddress)
                        call collateralReserveAddress.0xfc3181d4 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if (10^18 * sub_6f802d73) - (sub_e0f4bea5 * sub_6f802d73) / sub_6f802d73 != -sub_e0f4bea5 + 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < (10^18 * sub_6f802d73) - (sub_e0f4bea5 * sub_6f802d73) / 10^18:
                        require ext_code.size(collateralReserveAddress)
                        call collateralReserveAddress.0xfc3181d4 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if (10^18 * sub_6f802d73) + (sub_9bb1aa93 * sub_6f802d73) / sub_6f802d73 != sub_9bb1aa93 + 10^18:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > (10^18 * sub_6f802d73) + (sub_9bb1aa93 * sub_6f802d73) / 10^18:
                require ext_code.size(collateralReserveAddress)
                call collateralReserveAddress.0x8e7d71d8 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                if not sub_6f802d73:
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < 0:
                        require ext_code.size(collateralReserveAddress)
                        call collateralReserveAddress.0xfc3181d4 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if (10^18 * sub_6f802d73) - (sub_e0f4bea5 * sub_6f802d73) / sub_6f802d73 != -sub_e0f4bea5 + 10^18:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] < (10^18 * sub_6f802d73) - (sub_e0f4bea5 * sub_6f802d73) / 10^18:
                        require ext_code.size(collateralReserveAddress)
                        call collateralReserveAddress.0xfc3181d4 with:
                             gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        sub_6f802d73 = ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]
    lastUpdate = block.timestamp
}



}
