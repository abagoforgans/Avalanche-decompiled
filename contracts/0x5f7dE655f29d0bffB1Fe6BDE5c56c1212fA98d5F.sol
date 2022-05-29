contract main {




// =====================  Runtime code  =====================


#
#  - sub_3e556f7f(?)
#
const sub_3fd2dfa7(?) = 0x92617c3bd8f36ff4377fff34329c403d3f8b8d1da14cf1bab802460bf97119ae

const version = 1010000

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
uint8 stor101;
uint8 stor151; offset 184
uint32 stor151; offset 160
address stor151;
mapping of struct protectionData;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function getProtectionData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return protectionData[arg1].field_0, 
           protectionData[arg1].field_512,
           protectionData[arg1].field_768,
           protectionData[arg1].field_1024,
           protectionData[arg1].field_320,
           protectionData[arg1].field_256
}

function paused() payable {
    return bool(stor101)
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

function pause() payable {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not the Admin'
    if stor101:
        revert with 0, 'Pausable: paused'
    stor101 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if not roleAdmin[0][1][address(msg.sender)].field_0:
        revert with 0, 'Caller is not the Admin'
    if not stor101:
        revert with 0, 'Pausable: not paused'
    stor101 = 0
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

function withdrawPremium(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if protectionData[arg1].field_0 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6e5072656d69756d2063616e2062652077697468647261776e206279206261636b656420706f6f6c206f6e6c,
                    mem[208 len 20]
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x6e5072656d69756d2063616e2062652077697468647261776e206279206261636b656420706f6f6c206f6e6c,
                    mem[208 len 20]
    if arg2 > protectionData[arg1].field_1024:
        revert with 0, 'Not enough premium left'
    if arg2 > protectionData[arg1].field_1024:
        revert with 0, 'SafeMath: subtraction overflow'
    protectionData[arg1].field_1024 -= arg2
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x65416363657373436f6e74726f6c3a2063616e206f6e6c792072656e6f756e636520726f6c657320666f722073656c,
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
                    0x6c416363657373436f6e74726f6c3a2073656e646572206d75737420626520616e2061646d696e20746f207265766f6b,
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
    if uint8(stor0.field_8):
        stor101 = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            stor101 = 0
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                stor101 = 0
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    stor101 = 0
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
                                        0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        stor101 = 0
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
                                            0x6e496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                                            mem[210 len 18]
                        if uint8(stor0.field_8):
                            stor101 = 0
                        else:
                            uint8(stor0.field_0) = 1
                            uint8(stor0.field_8) = 1
                            Mask(248, 0, stor0.field_8) = 0
                            stor101 = 0
                            uint8(stor0.field_8) = 0
    address(stor151.field_0) = arg2
    if not roleAdmin[0][1][address(arg1)].field_0:
        roleAdmin[0].field_0++
        roleAdmin[0][roleAdmin[0].field_0].field_0 = arg1
        roleAdmin[0][roleAdmin[0].field_0].field_160 = 0
        roleAdmin[0][1][address(arg1)].field_0 = roleAdmin[0].field_0
        emit RoleGranted(0, arg1, msg.sender);
    stor151.field_160 % 16777216 = 1010000
    uint8(stor151.field_184) = 0
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function exercise(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(address(stor151.field_0))
    staticcall address(stor151.field_0).0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x6543616c6c6572206973206e6f7420746865204f776e6572206f662050726f74656374696f,
                    mem[201 len 27]
    require ext_code.size(protectionData[arg1].field_0)
    staticcall protectionData[arg1].field_0.poolType() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[28 len 4] != 1:
        revert with 0, 'Incorrect protection pool type'
    if protectionData[arg1].field_256 < block.timestamp:
        revert with 0, 'Protection expired'
    if arg2 > protectionData[arg1].field_512:
        revert with 0, 'Amount too high'
    require ext_code.size(protectionData[arg1].field_0)
    staticcall protectionData[arg1].field_0.getLatestPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > protectionData[arg1].field_768:
        revert with 0, 'Current price is too high'
    require ext_code.size(protectionData[arg1].field_0)
    staticcall protectionData[arg1].field_0.getPriceDecimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > protectionData[arg1].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    if not protectionData[arg1].field_768 - ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(protectionData[arg1].field_0)
        staticcall protectionData[arg1].field_0.getAssetTokenDecimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(protectionData[arg1].field_0)
        staticcall protectionData[arg1].field_0.0xd7256b4c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] < protectionData[arg1].field_1024:
                if 0 / ext_call.return_data[0] > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 -= 0 / ext_call.return_data[0]
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(arg1), 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], msg.sender
            else:
                if protectionData[arg1].field_1024 > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 = 0
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(arg1), protectionData[arg1].field_1024, 0 / ext_call.return_data[0], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error doing coverage payout'
            if arg2 > protectionData[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            protectionData[arg1].field_512 -= arg2
            emit 0x2f2b4fac: arg2, 0 / ext_call.return_data[0], arg1
        else:
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] < protectionData[arg1].field_1024:
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 -= ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(arg1), ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0], msg.sender
            else:
                if protectionData[arg1].field_1024 > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 = 0
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(arg1), protectionData[arg1].field_1024, ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error doing coverage payout'
            if arg2 > protectionData[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            protectionData[arg1].field_512 -= arg2
            emit 0x2f2b4fac: arg2, ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0], arg1
    else:
        if (protectionData[arg1].field_768 * arg2) - (ext_call.return_data[0] * arg2) / protectionData[arg1].field_768 - ext_call.return_data[0] != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(protectionData[arg1].field_0)
        staticcall protectionData[arg1].field_0.getAssetTokenDecimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(protectionData[arg1].field_0)
        staticcall protectionData[arg1].field_0.0xd7256b4c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not (protectionData[arg1].field_768 * arg2) - (ext_call.return_data[0] * arg2) / ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] < protectionData[arg1].field_1024:
                if 0 / ext_call.return_data[0] > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 -= 0 / ext_call.return_data[0]
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(arg1), 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], msg.sender
            else:
                if protectionData[arg1].field_1024 > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 = 0
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(arg1), protectionData[arg1].field_1024, 0 / ext_call.return_data[0], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error doing coverage payout'
            if arg2 > protectionData[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            protectionData[arg1].field_512 -= arg2
            emit 0x2f2b4fac: arg2, 0 / ext_call.return_data[0], arg1
        else:
            if ext_call.return_data[0] * (protectionData[arg1].field_768 * arg2) - (ext_call.return_data[0] * arg2) / ext_call.return_data[0] / (protectionData[arg1].field_768 * arg2) - (ext_call.return_data[0] * arg2) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if ext_call.return_data[0] * (protectionData[arg1].field_768 * arg2) - (ext_call.return_data[0] * arg2) / ext_call.return_data[0] / ext_call.return_data[0] < protectionData[arg1].field_1024:
                if ext_call.return_data[0] * (protectionData[arg1].field_768 * arg2) - (ext_call.return_data[0] * arg2) / ext_call.return_data[0] / ext_call.return_data[0] > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 -= ext_call.return_data[0] * (protectionData[arg1].field_768 * arg2) - (ext_call.return_data[0] * arg2) / ext_call.return_data[0] / ext_call.return_data[0]
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(arg1), ext_call.return_data[0] * (protectionData[arg1].field_768 * arg2) - (ext_call.return_data[0] * arg2) / ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * (protectionData[arg1].field_768 * arg2) - (ext_call.return_data[0] * arg2) / ext_call.return_data[0] / ext_call.return_data[0], msg.sender
            else:
                if protectionData[arg1].field_1024 > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 = 0
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args 0, uint32(arg1), protectionData[arg1].field_1024, ext_call.return_data[0] * (protectionData[arg1].field_768 * arg2) - (ext_call.return_data[0] * arg2) / ext_call.return_data[0] / ext_call.return_data[0], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error doing coverage payout'
            if arg2 > protectionData[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            protectionData[arg1].field_512 -= arg2
            emit 0x2f2b4fac: arg2, ext_call.return_data[0] * (protectionData[arg1].field_768 * arg2) - (ext_call.return_data[0] * arg2) / ext_call.return_data[0] / ext_call.return_data[0], arg1
}

function sub_f7b1f334(?) payable {
    require calldata.size - 4 >= 192
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[256 len arg2.length] = arg2[all]
    mem[arg2.length + 256] = 0
    if stor101:
        revert with 0, 'Pausable: paused'
    require ext_code.size(address(stor151.field_0))
    staticcall address(stor151.field_0).0x6352211e with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 
                    32,
                    37,
                    0x6543616c6c6572206973206e6f7420746865204f776e6572206f662050726f74656374696f,
                    mem[ceil32(arg2.length) + 361 len 27]
    require ext_code.size(protectionData[arg1].field_0)
    staticcall protectionData[arg1].field_0.poolType() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[28 len 4] != 4:
        revert with 0, 'Incorrect protection pool type'
    mem[ceil32(arg2.length) + 288] = call.data[36]
    mem[ceil32(arg2.length) + 256] = 128
    if arg2.length != 65:
        revert with 0, 'Incorrect signature length'
    signer = erecover(sha3(mem[ceil32(arg2.length) + 288 len 0, 128]), 0, mem[256], mem[288]) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not roleAdmin[0x92617c3bd8f36ff4377fff34329c403d3f8b8d1da14cf1bab802460bf97119ae][1][address(signer)].field_0:
        revert with 0, 'Data Signature invalid'
    if arg1 != call.data[36]:
        revert with 0, 
                    32,
                    48,
                    0x65546f6b656e20494420646f65736e2774206d61746368207769746820746865206f6e6520696e2071756f746174696f,
                    mem[308 len 12],
                    mem[ceil32(arg2.length) + 576 len 4]
    if block.timestamp > call.data[132]:
        revert with 0, 'Exercise quotation expired'
    if protectionData[arg1].field_256 < block.timestamp:
        revert with 0, 'Protection expired'
    if call.data[100] > protectionData[arg1].field_512:
        revert with 0, 'Amount too high'
    if protectionData[arg1].field_768 < call.data[68]:
        revert with 0, 'Current price is too high'
    require ext_code.size(protectionData[arg1].field_0)
    staticcall protectionData[arg1].field_0.getPriceDecimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if call.data[68] > protectionData[arg1].field_768:
        revert with 0, 'SafeMath: subtraction overflow'
    if not protectionData[arg1].field_768 - call.data[68]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(protectionData[arg1].field_0)
        staticcall protectionData[arg1].field_0.getAssetTokenDecimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(protectionData[arg1].field_0)
        staticcall protectionData[arg1].field_0.0xd7256b4c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not 0 / ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] < protectionData[arg1].field_1024:
                if 0 / ext_call.return_data[0] > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 -= 0 / ext_call.return_data[0]
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args arg1, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], msg.sender
            else:
                if protectionData[arg1].field_1024 > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 = 0
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args arg1, protectionData[arg1].field_1024, 0 / ext_call.return_data[0], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error doing coverage payout'
            if call.data[100] > protectionData[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            protectionData[arg1].field_512 -= call.data[100]
            emit 0x2f2b4fac: call.data[100], 0 / ext_call.return_data[0], arg1
        else:
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[293 len 27],
                            mem[ceil32(arg2.length) + 576 len 4]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] < protectionData[arg1].field_1024:
                if ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 -= ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0], msg.sender
            else:
                if protectionData[arg1].field_1024 > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 = 0
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args arg1, protectionData[arg1].field_1024, ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error doing coverage payout'
            if call.data[100] > protectionData[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            protectionData[arg1].field_512 -= call.data[100]
            emit 0x2f2b4fac: call.data[100], ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0], arg1
    else:
        if (protectionData[arg1].field_768 * call.data[100]) - (call.data[68] * call.data[100]) / protectionData[arg1].field_768 - call.data[68] != call.data[100]:
            revert with 0, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[293 len 27],
                        mem[ceil32(arg2.length) + 576 len 4]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        require ext_code.size(protectionData[arg1].field_0)
        staticcall protectionData[arg1].field_0.getAssetTokenDecimals() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(protectionData[arg1].field_0)
        staticcall protectionData[arg1].field_0.0xd7256b4c with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not (protectionData[arg1].field_768 * call.data[100]) - (call.data[68] * call.data[100]) / ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] < protectionData[arg1].field_1024:
                if 0 / ext_call.return_data[0] > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 -= 0 / ext_call.return_data[0]
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args arg1, 0 / ext_call.return_data[0], 0 / ext_call.return_data[0], msg.sender
            else:
                if protectionData[arg1].field_1024 > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 = 0
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args arg1, protectionData[arg1].field_1024, 0 / ext_call.return_data[0], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error doing coverage payout'
            if call.data[100] > protectionData[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            protectionData[arg1].field_512 -= call.data[100]
            emit 0x2f2b4fac: call.data[100], 0 / ext_call.return_data[0], arg1
        else:
            if ext_call.return_data[0] * (protectionData[arg1].field_768 * call.data[100]) - (call.data[68] * call.data[100]) / ext_call.return_data[0] / (protectionData[arg1].field_768 * call.data[100]) - (call.data[68] * call.data[100]) / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[293 len 27],
                            mem[ceil32(arg2.length) + 576 len 4]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if ext_call.return_data[0] * (protectionData[arg1].field_768 * call.data[100]) - (call.data[68] * call.data[100]) / ext_call.return_data[0] / ext_call.return_data[0] < protectionData[arg1].field_1024:
                if ext_call.return_data[0] * (protectionData[arg1].field_768 * call.data[100]) - (call.data[68] * call.data[100]) / ext_call.return_data[0] / ext_call.return_data[0] > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 -= ext_call.return_data[0] * (protectionData[arg1].field_768 * call.data[100]) - (call.data[68] * call.data[100]) / ext_call.return_data[0] / ext_call.return_data[0]
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args arg1, ext_call.return_data[0] * (protectionData[arg1].field_768 * call.data[100]) - (call.data[68] * call.data[100]) / ext_call.return_data[0] / ext_call.return_data[0], ext_call.return_data[0] * (protectionData[arg1].field_768 * call.data[100]) - (call.data[68] * call.data[100]) / ext_call.return_data[0] / ext_call.return_data[0], msg.sender
            else:
                if protectionData[arg1].field_1024 > protectionData[arg1].field_1024:
                    revert with 0, 'SafeMath: subtraction overflow'
                protectionData[arg1].field_1024 = 0
                require ext_code.size(protectionData[arg1].field_0)
                call protectionData[arg1].field_0.onPayoutCoverage(uint256 arg1, uint256 arg2, uint256 arg3, address arg4) with:
                     gas gas_remaining wei
                    args arg1, protectionData[arg1].field_1024, ext_call.return_data[0] * (protectionData[arg1].field_768 * call.data[100]) - (call.data[68] * call.data[100]) / ext_call.return_data[0] / ext_call.return_data[0], msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Error doing coverage payout'
            if call.data[100] > protectionData[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            protectionData[arg1].field_512 -= call.data[100]
            emit 0x2f2b4fac: call.data[100], ext_call.return_data[0] * (protectionData[arg1].field_768 * call.data[100]) - (call.data[68] * call.data[100]) / ext_call.return_data[0] / ext_call.return_data[0], arg1
}

function sub_74a3467a(?) payable {
    require calldata.size - 4 >= 544
    mem[96 len 352] = call.data[164 len 352]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    mem[448] = arg5.length
    mem[480 len arg5.length] = arg5[all]
    mem[arg5.length + 480] = 0
    if stor101:
        revert with 0, 'Pausable: paused'
    mem[ceil32(arg5.length) + 512] = call.data[164]
    mem[ceil32(arg5.length) + 544] = call.data[196]
    mem[ceil32(arg5.length) + 576] = call.data[228]
    mem[ceil32(arg5.length) + 608] = call.data[260]
    mem[ceil32(arg5.length) + 640] = call.data[292]
    mem[ceil32(arg5.length) + 672] = call.data[324]
    mem[ceil32(arg5.length) + 704] = call.data[356]
    mem[ceil32(arg5.length) + 736] = call.data[388]
    mem[ceil32(arg5.length) + 768] = call.data[420]
    mem[ceil32(arg5.length) + 800] = call.data[452]
    mem[ceil32(arg5.length) + 832] = call.data[484]
    mem[ceil32(arg5.length) + 480] = 352
    if arg5.length != 65:
        revert with 0, 'Incorrect signature length'
    signer = erecover(sha3(mem[ceil32(arg5.length) + 512 len Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[arg5.length + 512 len -arg5.length + ceil32(arg5.length)]]), 0, mem[480], mem[512]) 
    mem[ceil32(arg5.length) + 864] = signer
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(arg5.length) + 896 len 192] = call.data[calldata.size len 192]
    mem[ceil32(arg5.length) + 1088] = call.data[164]
    mem[ceil32(arg5.length) + 1120] = call.data[196]
    mem[ceil32(arg5.length) + 1152] = arg2
    mem[ceil32(arg5.length) + 1184] = arg3
    mem[ceil32(arg5.length) + 1216] = arg4
    require ext_code.size(arg1)
    staticcall arg1.getLatestPrice() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(arg5.length) + 1248] = ext_call.return_data[0]
    if not roleAdmin[0x92617c3bd8f36ff4377fff34329c403d3f8b8d1da14cf1bab802460bf97119ae][1][address(signer)].field_0:
        revert with 0, 'Data Signature invalid'
    if arg2 != call.data[260]:
        revert with 0, 'Incorrect data package (period)'
    if arg3 != call.data[292]:
        revert with 0, 'Incorrect data package (amount)'
    if arg4 != call.data[324]:
        revert with 0, 'Incorrect data package (strike)'
    if arg1 != call.data[356]:
        revert with 0, 'Incorrect data package (pool)'
    require ext_code.size(arg1)
    staticcall arg1.poolType() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 1 == ext_call.return_data[28 len 4]:
        if ext_call.return_data[0] < call.data[228]:
            revert with 0, 
                        32,
                        119,
                        0x7441737365742063757272656e742073706f742070726963652077656e742062656c6f77206d696e696d756d20707269636520616c6c6f7765642e204275792071756f7461696f6e206973206e6f206c6f6e6765722076616c69642e20506c656173652074727920616761696e20696e2061207768696c,
                        mem[ceil32(arg5.length) + 1467 len 9]
        if block.timestamp > call.data[484]:
            revert with 0, 'quotation expired'
        require ext_code.size(arg1)
        staticcall arg1.0xae61fd8d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg5.length) + 1316] = msg.sender
        mem[ceil32(arg5.length) + 1348] = this.address
        mem[ceil32(arg5.length) + 1380] = call.data[196]
        mem[ceil32(arg5.length) + 1280] = 100
        mem[ceil32(arg5.length) + 1316 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(arg5.length) + 1312 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(arg5.length) + 1412] = 32
        mem[ceil32(arg5.length) + 1444] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x79416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(arg5.length) + 1582 len 26]
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(arg5.length) + 1476 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), call.data[196 len 28]
        mem[ceil32(arg5.length) + 1600 len 4] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args Mask(736, -512, call.data[196 len 28]) << 512, mem[ceil32(arg5.length) + 1572 len 4]
        if not return_data.size:
            if not ext_call.success:
                if call.data[164]:
                    revert with memory
                      from 128
                       len call.data[164]
                revert with 0, 'SafeERC20: low-level call failed'
            if not call.data[164]:
                require ext_code.size(arg1)
                staticcall arg1.0xae61fd8d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not call.data[196]:
                    mem[ceil32(arg5.length) + 1512] = arg1
                    mem[ceil32(arg5.length) + 1544] = call.data[196]
                    mem[ceil32(arg5.length) + 1476] = 68
                    mem[ceil32(arg5.length) + 1512 len 28] = address(arg1) << 64
                    mem[ceil32(arg5.length) + 1508 len 4] = approve(address arg1, uint256 arg2)
                    mem[ceil32(arg5.length) + 1576] = 32
                    mem[ceil32(arg5.length) + 1608] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x79416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg5.length) + 1746 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(arg5.length) + 1640 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, call.data[196 len 28]
                    mem[ceil32(arg5.length) + 1732 len 4] = 0
                    mem[ceil32(arg5.length) + 1704 len 0] = 0
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(arg5.length) + 1598 len 2],
                                    0,
                                    mem[ceil32(arg5.length) + 1604 len 4]
                    mem[ceil32(arg5.length) + 1512] = arg1
                    mem[ceil32(arg5.length) + 1544] = call.data[196]
                    mem[ceil32(arg5.length) + 1476] = 68
                    mem[ceil32(arg5.length) + 1512 len 28] = address(arg1) << 64
                    mem[ceil32(arg5.length) + 1508 len 4] = approve(address arg1, uint256 arg2)
                    mem[ceil32(arg5.length) + 1576] = 32
                    mem[ceil32(arg5.length) + 1608] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x79416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg5.length) + 1746 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(arg5.length) + 1640 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, call.data[196 len 28]
                    mem[ceil32(arg5.length) + 1732 len 4] = 0
            else:
                require call.data[164] >= 32
                if not call.data[196]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(arg5.length) + 1586 len 14],
                                0,
                                mem[ceil32(arg5.length) + 1604 len 4]
                require ext_code.size(arg1)
                staticcall arg1.0xae61fd8d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if call.data[196]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(arg5.length) + 1598 len 2],
                                    0,
                                    mem[ceil32(arg5.length) + 1604 len 4]
                mem[ceil32(arg5.length) + 1512] = arg1
                mem[ceil32(arg5.length) + 1544] = call.data[196]
                mem[ceil32(arg5.length) + 1476] = 68
                mem[ceil32(arg5.length) + 1512 len 28] = address(arg1) << 64
                mem[ceil32(arg5.length) + 1508 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(arg5.length) + 1576] = 32
                mem[ceil32(arg5.length) + 1608] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x79416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg5.length) + 1746 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(arg5.length) + 1640 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, call.data[196 len 28]
                mem[ceil32(arg5.length) + 1732 len 4] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args Mask(480, -256, call.data[196 len 28]) << 256, mem[ceil32(arg5.length) + 1704 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if call.data[164]:
                        revert with memory
                          from 128
                           len call.data[164]
                    revert with 0, 'SafeERC20: low-level call failed'
                if call.data[164]:
                    require call.data[164] >= 32
                    if not call.data[196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg5.length) + 1750 len 22]
                require ext_code.size(arg1)
                staticcall arg1.getPriceDecimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg4:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x9900938f with:
                         gas gas_remaining wei
                        args address(this.address), call.data[164], call.data[196], 0 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                else:
                    if arg3 * arg4 / arg4 != arg3:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg5.length) + 1741 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x9900938f with:
                         gas gas_remaining wei
                        args address(this.address), call.data[164], call.data[196], arg3 * arg4 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
            else:
                mem[ceil32(arg5.length) + 1672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(arg5.length) + 1672]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1751 len 22]
                require ext_code.size(arg1)
                staticcall arg1.getPriceDecimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg4:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x9900938f with:
                         gas gas_remaining wei
                        args address(this.address), call.data[164], call.data[196], 0 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                else:
                    if arg3 * arg4 / arg4 != arg3:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1742 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x9900938f with:
                         gas gas_remaining wei
                        args address(this.address), call.data[164], call.data[196], arg3 * arg4 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
        else:
            mem[ceil32(arg5.length) + 1476] = return_data.size
            mem[ceil32(arg5.length) + 1508 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(arg5.length) + 1508]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1587 len 22]
            require ext_code.size(arg1)
            staticcall arg1.0xae61fd8d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if call.data[196]:
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, arg1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                54,
                                0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1599 len 10]
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1513] = arg1
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1545] = call.data[196]
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1477] = 68
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1513 len 28] = address(arg1) << 64
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1509 len 4] = approve(address arg1, uint256 arg2)
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1577] = 32
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1609] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x79416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1747 len 26]
            if not ext_code.size(address(ext_call.return_data[0])):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1641 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, call.data[196 len 28]
            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1733 len 4] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args Mask(480, -256, call.data[196 len 28]) << 256, mem[ceil32(arg5.length) + ceil32(return_data.size) + 1705 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if call.data[164]:
                        revert with memory
                          from 128
                           len call.data[164]
                    revert with 0, 'SafeERC20: low-level call failed'
                if call.data[164]:
                    require call.data[164] >= 32
                    if not call.data[196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1751 len 22]
                require ext_code.size(arg1)
                staticcall arg1.getPriceDecimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg4:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x9900938f with:
                         gas gas_remaining wei
                        args address(this.address), call.data[164], call.data[196], 0 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                else:
                    if arg3 * arg4 / arg4 != arg3:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1742 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x9900938f with:
                         gas gas_remaining wei
                        args address(this.address), call.data[164], call.data[196], arg3 * arg4 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
            else:
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1673 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(arg5.length) + ceil32(return_data.size) + 1673]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1752 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                require ext_code.size(arg1)
                staticcall arg1.getPriceDecimals() with:
                        gas gas_remaining wei
                       args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x1b30aafc00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg4:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 
                                    'SafeMath: division by zero',
                                    mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1742 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x9900938f with:
                         gas gas_remaining wei
                        args address(this.address), call.data[164], call.data[196], 0 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                else:
                    if arg3 * arg4 / arg4 != arg3:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1743 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 
                                    'SafeMath: division by zero',
                                    mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1742 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x9900938f with:
                         gas gas_remaining wei
                        args address(this.address), call.data[164], call.data[196], arg3 * arg4 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
    else:
        require ext_code.size(arg1)
        staticcall arg1.poolType() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[28 len 4] != 4:
            revert with 0, 'Incorrect target pool type'
        if block.timestamp > call.data[484]:
            revert with 0, 'quotation expired'
        require ext_code.size(arg1)
        staticcall arg1.0xae61fd8d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(arg5.length) + 1316] = msg.sender
        mem[ceil32(arg5.length) + 1348] = this.address
        mem[ceil32(arg5.length) + 1380] = call.data[196]
        mem[ceil32(arg5.length) + 1280] = 100
        mem[ceil32(arg5.length) + 1316 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(arg5.length) + 1312 len 4] = unknown_0x23b872dd(?????)
        mem[ceil32(arg5.length) + 1412] = 32
        mem[ceil32(arg5.length) + 1444] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x79416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[ceil32(arg5.length) + 1582 len 26]
        if not ext_code.size(address(ext_call.return_data[0])):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(arg5.length) + 1476 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), call.data[196 len 28]
        mem[ceil32(arg5.length) + 1600 len 4] = 0
        call address(ext_call.return_data[0]) with:
             gas gas_remaining wei
            args Mask(736, -512, call.data[196 len 28]) << 512, mem[ceil32(arg5.length) + 1572 len 4]
        if not return_data.size:
            if not ext_call.success:
                if call.data[164]:
                    revert with memory
                      from 128
                       len call.data[164]
                revert with 0, 'SafeERC20: low-level call failed'
            if not call.data[164]:
                require ext_code.size(arg1)
                staticcall arg1.0xae61fd8d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not call.data[196]:
                    mem[ceil32(arg5.length) + 1512] = arg1
                    mem[ceil32(arg5.length) + 1544] = call.data[196]
                    mem[ceil32(arg5.length) + 1476] = 68
                    mem[ceil32(arg5.length) + 1512 len 28] = address(arg1) << 64
                    mem[ceil32(arg5.length) + 1508 len 4] = approve(address arg1, uint256 arg2)
                    mem[ceil32(arg5.length) + 1576] = 32
                    mem[ceil32(arg5.length) + 1608] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x79416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg5.length) + 1746 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(arg5.length) + 1640 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, call.data[196 len 28]
                    mem[ceil32(arg5.length) + 1732 len 4] = 0
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(arg5.length) + 1598 len 2],
                                    0,
                                    mem[ceil32(arg5.length) + 1604 len 4]
                    mem[ceil32(arg5.length) + 1512] = arg1
                    mem[ceil32(arg5.length) + 1544] = call.data[196]
                    mem[ceil32(arg5.length) + 1476] = 68
                    mem[ceil32(arg5.length) + 1512 len 28] = address(arg1) << 64
                    mem[ceil32(arg5.length) + 1508 len 4] = approve(address arg1, uint256 arg2)
                    mem[ceil32(arg5.length) + 1576] = 32
                    mem[ceil32(arg5.length) + 1608] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x79416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg5.length) + 1746 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(arg5.length) + 1640 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, call.data[196 len 28]
                    mem[ceil32(arg5.length) + 1732 len 4] = 0
                    mem[ceil32(arg5.length) + 1704 len 0] = 0
            else:
                require call.data[164] >= 32
                if not call.data[196]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(arg5.length) + 1586 len 14],
                                0,
                                mem[ceil32(arg5.length) + 1604 len 4]
                require ext_code.size(arg1)
                staticcall arg1.0xae61fd8d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if call.data[196]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(arg5.length) + 1598 len 2],
                                    0,
                                    mem[ceil32(arg5.length) + 1604 len 4]
                mem[ceil32(arg5.length) + 1512] = arg1
                mem[ceil32(arg5.length) + 1544] = call.data[196]
                mem[ceil32(arg5.length) + 1476] = 68
                mem[ceil32(arg5.length) + 1512 len 28] = address(arg1) << 64
                mem[ceil32(arg5.length) + 1508 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(arg5.length) + 1576] = 32
                mem[ceil32(arg5.length) + 1608] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x79416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg5.length) + 1746 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(arg5.length) + 1640 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, call.data[196 len 28]
                mem[ceil32(arg5.length) + 1732 len 4] = 0
            call address(ext_call.return_data[0]) with:
                 gas gas_remaining wei
                args Mask(480, -256, call.data[196 len 28]) << 256, mem[ceil32(arg5.length) + 1704 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if call.data[164]:
                        revert with memory
                          from 128
                           len call.data[164]
                    revert with 0, 'SafeERC20: low-level call failed'
                if call.data[164]:
                    require call.data[164] >= 32
                    if not call.data[196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg5.length) + 1750 len 22]
                require ext_code.size(arg1)
                staticcall arg1.getPriceDecimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg4:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x9900938f with:
                         gas gas_remaining wei
                        args address(this.address), call.data[164], call.data[196], 0 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                else:
                    if arg3 * arg4 / arg4 != arg3:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg5.length) + 1741 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x9900938f with:
                         gas gas_remaining wei
                        args address(this.address), call.data[164], call.data[196], arg3 * arg4 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
            else:
                mem[ceil32(arg5.length) + 1672 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[ceil32(arg5.length) + 1672]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1751 len 22]
                require ext_code.size(arg1)
                staticcall arg1.getPriceDecimals() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not arg4:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x9900938f with:
                         gas gas_remaining wei
                        args address(this.address), call.data[164], call.data[196], 0 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                else:
                    if arg3 * arg4 / arg4 != arg3:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1742 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    require ext_code.size(arg1)
                    call arg1.0x9900938f with:
                         gas gas_remaining wei
                        args address(this.address), call.data[164], call.data[196], arg3 * arg4 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
        else:
            mem[ceil32(arg5.length) + 1476] = return_data.size
            mem[ceil32(arg5.length) + 1508 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if not return_data.size:
                require ext_code.size(arg1)
                staticcall arg1.0xae61fd8d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if call.data[196]:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1599 len 10]
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1513] = arg1
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1545] = call.data[196]
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1477] = 68
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1513 len 28] = address(arg1) << 64
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1509 len 4] = approve(address arg1, uint256 arg2)
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1577] = 32
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1609] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 
                                32,
                                38,
                                0x79416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1747 len 26]
                if not ext_code.size(address(ext_call.return_data[0])):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1641 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, call.data[196 len 28]
                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1733 len 4] = 0
                call address(ext_call.return_data[0]) with:
                     gas gas_remaining wei
                    args Mask(480, -256, call.data[196 len 28]) << 256, mem[ceil32(arg5.length) + ceil32(return_data.size) + 1705 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if call.data[164]:
                            revert with memory
                              from 128
                               len call.data[164]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if call.data[164]:
                        require call.data[164] >= 32
                        if not call.data[196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg5.length) + ceil32(return_data.size) + 1751 len 22]
                    require ext_code.size(arg1)
                    staticcall arg1.getPriceDecimals() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg4:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0x9900938f with:
                             gas gas_remaining wei
                            args address(this.address), call.data[164], call.data[196], 0 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                    else:
                        if arg3 * arg4 / arg4 != arg3:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(arg5.length) + ceil32(return_data.size) + 1742 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0x9900938f with:
                             gas gas_remaining wei
                            args address(this.address), call.data[164], call.data[196], arg3 * arg4 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                else:
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1673 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[ceil32(arg5.length) + ceil32(return_data.size) + 1673]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1752 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                    require ext_code.size(arg1)
                    staticcall arg1.getPriceDecimals() with:
                            gas gas_remaining wei
                           args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x1b30aafc00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not arg4:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 
                                        'SafeMath: division by zero',
                                        mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1742 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0x9900938f with:
                             gas gas_remaining wei
                            args address(this.address), call.data[164], call.data[196], 0 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                    else:
                        if arg3 * arg4 / arg4 != arg3:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1743 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 
                                        'SafeMath: division by zero',
                                        mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1742 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                        require ext_call.return_data[0]
                        require ext_code.size(arg1)
                        call arg1.0x9900938f with:
                             gas gas_remaining wei
                            args address(this.address), call.data[164], call.data[196], arg3 * arg4 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
            else:
                require return_data.size >= 32
                if not mem[ceil32(arg5.length) + 1508]:
                    revert with 0, 
                                32,
                                42,
                                0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(arg5.length) + ceil32(return_data.size) + 1587 len 22]
                require ext_code.size(arg1)
                staticcall arg1.0xae61fd8d with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not call.data[196]:
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1513] = arg1
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1545] = call.data[196]
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1477] = 68
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1513 len 28] = address(arg1) << 64
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1509 len 4] = approve(address arg1, uint256 arg2)
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1577] = 32
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1609] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x79416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1747 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1641 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, call.data[196 len 28]
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1733 len 4] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, call.data[196 len 28]) << 256, mem[ceil32(arg5.length) + ceil32(return_data.size) + 1705 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if call.data[164]:
                                revert with memory
                                  from 128
                                   len call.data[164]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if call.data[164]:
                            require call.data[164] >= 32
                            if not call.data[196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1751 len 22]
                        require ext_code.size(arg1)
                        staticcall arg1.getPriceDecimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg4:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            call arg1.0x9900938f with:
                                 gas gas_remaining wei
                                args address(this.address), call.data[164], call.data[196], 0 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                        else:
                            if arg3 * arg4 / arg4 != arg3:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1742 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            call arg1.0x9900938f with:
                                 gas gas_remaining wei
                                args address(this.address), call.data[164], call.data[196], arg3 * arg4 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                    else:
                        mem[ceil32(arg5.length) + ceil32(return_data.size) + 1673 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(arg5.length) + ceil32(return_data.size) + 1673]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1752 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        require ext_code.size(arg1)
                        staticcall arg1.getPriceDecimals() with:
                                gas gas_remaining wei
                               args (Mask(8 * (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size)), -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256, 0x1b30aafc00000000000000000000000000000000000000000000000000000000) >> -(8 * (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 4) + 256)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg4:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 
                                            'SafeMath: division by zero',
                                            mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1742 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            call arg1.0x9900938f with:
                                 gas gas_remaining wei
                                args address(this.address), call.data[164], call.data[196], 0 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                        else:
                            if arg3 * arg4 / arg4 != arg3:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1743 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 
                                            'SafeMath: division by zero',
                                            mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1742 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            call arg1.0x9900938f with:
                                 gas gas_remaining wei
                                args address(this.address), call.data[164], call.data[196], arg3 * arg4 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                else:
                    require ext_code.size(address(ext_call.return_data[0]))
                    staticcall address(ext_call.return_data[0]).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    54,
                                    0x645361666545524332303a20617070726f76652066726f6d206e6f6e2d7a65726f20746f206e6f6e2d7a65726f20616c6c6f77616e63,
                                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1599 len 10]
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1513] = arg1
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1545] = call.data[196]
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1477] = 68
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1513 len 28] = address(arg1) << 64
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1509 len 4] = approve(address arg1, uint256 arg2)
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1577] = 32
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1609] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 
                                    32,
                                    38,
                                    0x79416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1747 len 26]
                    if not ext_code.size(address(ext_call.return_data[0])):
                        revert with 0, 'Address: call to non-contract'
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1641 len 64] = approve(address arg1, uint256 arg2), address(arg1) << 64, 0, call.data[196 len 28]
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1733 len 4] = 0
                    mem[ceil32(arg5.length) + ceil32(return_data.size) + 1705 len 0] = 0
                    call address(ext_call.return_data[0]) with:
                         gas gas_remaining wei
                        args Mask(480, -256, call.data[196 len 28]) << 256, mem[ceil32(arg5.length) + ceil32(return_data.size) + 1705 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if call.data[164]:
                                revert with memory
                                  from 128
                                   len call.data[164]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if call.data[164]:
                            require call.data[164] >= 32
                            if not call.data[196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1751 len 22]
                        require ext_code.size(arg1)
                        staticcall arg1.getPriceDecimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg4:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            call arg1.0x9900938f with:
                                 gas gas_remaining wei
                                args address(this.address), call.data[164], call.data[196], 0 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                        else:
                            if arg3 * arg4 / arg4 != arg3:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(arg5.length) + ceil32(return_data.size) + 1742 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            call arg1.0x9900938f with:
                                 gas gas_remaining wei
                                args address(this.address), call.data[164], call.data[196], arg3 * arg4 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                    else:
                        mem[ceil32(arg5.length) + ceil32(return_data.size) + 1673 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[ceil32(arg5.length) + ceil32(return_data.size) + 1673]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1752 len 22]
                        require ext_code.size(arg1)
                        staticcall arg1.getPriceDecimals() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not arg4:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            call arg1.0x9900938f with:
                                 gas gas_remaining wei
                                args address(this.address), call.data[164], call.data[196], 0 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
                        else:
                            if arg3 * arg4 / arg4 != arg3:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[ceil32(arg5.length) + (2 * ceil32(return_data.size)) + 1743 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            require ext_code.size(arg1)
                            call arg1.0x9900938f with:
                                 gas gas_remaining wei
                                args address(this.address), call.data[164], call.data[196], arg3 * arg4 / ext_call.return_data[0], call.data[260], call.data[388], call.data[420], call.data[452]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg2 + (block.timestamp << 64) < block.timestamp << 64:
        revert with 0, 'SafeMath: addition overflow'
    protectionData[call.data[164]].field_0 = arg1
    protectionData[call.data[164]].field_256 = arg2 + (block.timestamp << 64)
    protectionData[call.data[164]].field_512 = arg3
    protectionData[call.data[164]].field_768 = arg4
    protectionData[call.data[164]].field_1024 = call.data[196]
    protectionData[call.data[164]].field_1280 = 0
    require ext_code.size(address(stor151.field_0))
    call address(stor151.field_0).mint(uint256 arg1, address arg2, address arg3) with:
         gas gas_remaining wei
        args call.data[164], this.address, msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x64514b8a: call.data[164], address(arg1), arg3, arg4, block.timestamp, arg2, call.data[196], ext_call.return_data[0], msg.sender
    return this.address
}



}
