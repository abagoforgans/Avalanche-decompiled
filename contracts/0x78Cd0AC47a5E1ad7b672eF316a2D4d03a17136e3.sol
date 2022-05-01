contract main {




// =====================  Runtime code  =====================


#
#  - quickMint(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5)
#
const PRICE_PRECISION = 10^18

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
uint256 stor101;
address oracleAddress;
address collateralAddress;
address shareAddress;
address collateralReserveAddress;
address routerAddress;
array of address sub_0589e546;
mapping of uint8 stor157;

function sub_0589e546(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_0589e546.length
    return sub_0589e546[arg1]
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function collateralReserve() payable {
    return collateralReserveAddress
}

function oracle() payable {
    return oracleAddress
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

function share() payable {
    return shareAddress
}

function whitelistContracts(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor157[arg1])
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_0
}

function collateral() payable {
    return collateralAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tCaller is not a maintainer'
    oracleAddress = arg1
}

function removeWhitelistContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tCaller is not a maintainer'
    if not stor157[address(arg1)]:
        revert with 0, 'Contract was not whitelisted'
    stor157[address(arg1)] = 0
}

function addWhitelistContract(address arg1) payable {
    require calldata.size - 4 >= 32
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tCaller is not a maintainer'
    if not arg1:
        revert with 0, 'Invalid address'
    if stor157[address(arg1)]:
        revert with 0, 'Contract was whitelisted'
    stor157[address(arg1)] = 1
}

function sub_19df09af(?) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tCaller is not a maintainer'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function revokeAllowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tCaller is not a maintainer'
    require ext_code.size(arg1)
    call arg1.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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

function setRouter(address arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(msg.sender)].field_0:
        revert with 0, 'tCaller is not a maintainer'
    if not arg1:
        revert with 0, 'Invalid router'
    routerAddress = arg1
    sub_0589e546.length = arg2.length
    if not arg2.length:
        idx = 0
        while sub_0589e546.length > idx:
            sub_0589e546[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = arg2 + 36
        while arg2 + (32 * arg2.length) + 36 > idx:
            sub_0589e546[s] = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * arg2.length) + 31) >> 5
        while sub_0589e546.length > idx:
            sub_0589e546[idx] = 0
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

function initialize(address arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    if uint8(stor0.field_8):
        collateralReserveAddress = arg1
        shareAddress = arg2
        collateralAddress = arg3
        oracleAddress = arg4
        stor101 = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            collateralReserveAddress = arg1
            shareAddress = arg2
            collateralAddress = arg3
            oracleAddress = arg4
            stor101 = 1
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            collateralReserveAddress = arg1
            shareAddress = arg2
            collateralAddress = arg3
            oracleAddress = arg4
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                stor101 = 1
            else:
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
                if uint8(stor0.field_8):
                    stor101 = 1
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
                                        0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        stor101 = 1
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
                                            0xcb496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor101 = 1
                        else:
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
                            if uint8(stor0.field_8):
                                stor101 = 1
                            else:
                                uint8(stor0.field_0) = 1
                                uint8(stor0.field_8) = 1
                                Mask(248, 0, stor0.field_8) = 0
                                stor101 = 1
                                uint8(stor0.field_8) = 0
                                uint8(stor0.field_8) = 0
    if not roleAdmin[0][1][address(arg5)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = arg5
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(arg5)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg5, msg.sender);
    if not roleAdmin[roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_512][1][address(msg.sender)].field_0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x73416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f206772616e,
                    mem[211 len 17]
    if not roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(arg5)].field_0:
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0++
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0].field_0 = arg5
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0].field_160 = 0
        roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18][1][address(arg5)].field_0 = roleAdmin[0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18].field_0
        emit RoleGranted(0x65d88b35d7427a01a8e16d8a129535b4cf3150edf8d92c0a44dc1eba73bdaf18, arg5, msg.sender);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
