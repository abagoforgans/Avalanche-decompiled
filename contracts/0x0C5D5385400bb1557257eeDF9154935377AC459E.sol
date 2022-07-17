contract main {




// =====================  Runtime code  =====================


const sub_135701f7(?) = 0

const sub_4594fac4(?) = 1

const sub_cf17d1b4(?) = 1

const GAME_ADMIN = sha3(336492626609784167942478)

const DEFAULT_ADMIN_ROLE = 0


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
array of struct roleAdmin;
address stor101;
address stor102;
address stor103;
uint8 stor104; offset 160
uint32 stor104;
uint128 stor104; offset 160
address stor104;
mapping of uint256 stor336492626609784167942478;

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_512
}

function isEnabled() payable {
    return bool(uint8(stor104.field_160))
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

function setEnabled(bool arg1) payable {
    require calldata.size - 4 >= 32
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'NA'
    Mask(96, 0, stor104.field_160) = Mask(96, 0, arg1)
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

function sub_f9519407(?) payable {
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + ('cd', 68).length + 36 <= calldata.size
    if not stor51[('name', 'stor4741', 336492626609784167942478)][1][address(msg.sender)]:
        if not roleAdmin[0][1][address(msg.sender)].field_0:
            revert with 0, 'NA'
    if not uint8(stor104.field_160):
        revert with 0, 'not enabled'
    require ('cd', 36).length
    require 1 < ('cd', 36).length
    require ext_code.size(stor101)
    call stor101.0xa058957a with:
         gas gas_remaining wei
        args 0, uint32(stor104.field_0), Mask(16, 16, ('cd', 36)[0]) << 224, Mask(8, 8, ('cd', 36)[0]) << 240, uint8(('cd', 36)[0]), ('cd', 36)[1], cd[4], Mask(24, 64, ('cd', 36)[0]) << 168, Mask(16, 88, ('cd', 36)[0]) >> 88
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 32, ('cd', 36)[0]):
        require ext_code.size(stor102)
        call stor102.setCharacterCosmetic(uint256 arg1, uint32 arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], Mask(32, 32, ('cd', 36)[0]) >> 32
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if ('cd', 68).length:
        require ext_code.size(stor103)
        call stor103.setName(uint256 arg1, string arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], Array(len=('cd', 68).length, data=call.data[cd[68] + 36 len ('cd', 68).length])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0]
}

function initialize(address arg1, address arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
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
    address(stor104.field_0) = arg1
    stor101 = arg2
    stor102 = arg3
    stor103 = arg4
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function sub_19dd746a(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor101)
    staticcall stor101.0x9507d39a with:
            gas gas_remaining wei
           args arg1
    mem[96 len 320] = ext_call.return_data[0 len 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_code.size(stor102)
    staticcall stor102.getCharacterCosmetic(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[96] = 0x3715665700000000000000000000000000000000000000000000000000000000
    mem[100] = arg1
    require ext_code.size(stor103)
    staticcall stor103.getCharacterRename(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _14 = mem[96 len 4], Mask(224, 32, arg1) >> 32
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] + mem[96 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], Mask(224, 32, arg1) >> 32 + 96]
    _17 = mem[_14 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_14 + 96])] = mem[_14 + 128 len ceil32(mem[_14 + 96])]
    if not _17 % 32:
        require ext_code.size(stor101)
        staticcall stor101.0x262b5814 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_17 + ceil32(return_data.size) + 128] = 2
        mem[_17 + ceil32(return_data.size) + 160 len 64] = call.data[calldata.size len 64]
        require ext_code.size(stor101)
        staticcall stor101.0x9507d39a with:
                gas gas_remaining wei
               args arg1
        mem[_17 + ceil32(return_data.size) + 224 len 320] = ext_call.return_data[0 len 320]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 320
        require ext_code.size(stor102)
        staticcall stor102.getCharacterCosmetic(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_17 + ceil32(return_data.size) + 224] = 0x3715665700000000000000000000000000000000000000000000000000000000
        mem[_17 + ceil32(return_data.size) + 228] = arg1
        require ext_code.size(stor103)
        staticcall stor103.getCharacterRename(uint256 arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[_17 + ceil32(return_data.size) + 224 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = _17 + (2 * ceil32(return_data.size)) + 224
        require return_data.size >= 32
        _193 = mem[_17 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32
        require mem[_17 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
        require mem[_17 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
        require return_data.size >= mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] + mem[_17 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224] <= 4294967296
        mem[_17 + (2 * ceil32(return_data.size)) + 224] = mem[_17 + ceil32(return_data.size) + mem[_17 + ceil32(return_data.size) + 224 len 4], Mask(224, 32, arg1) >> 32 + 224]
        _199 = mem[_17 + ceil32(return_data.size) + _193 + 224]
        mem[_17 + (2 * ceil32(return_data.size)) + 256 len ceil32(mem[_17 + ceil32(return_data.size) + _193 + 224])] = mem[_17 + ceil32(return_data.size) + _193 + 256 len ceil32(mem[_17 + ceil32(return_data.size) + _193 + 224])]
        if not _199 % 32:
            require ext_code.size(stor101)
            staticcall stor101.0x262b5814 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor101)
            staticcall stor101.0x783efb25 with:
                    gas gas_remaining wei
                   args arg1, 2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(stor101)
            staticcall stor101.0x783efb25 with:
                    gas gas_remaining wei
                   args arg1, 103
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_17 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
            mem[_17 + ceil32(return_data.size) + 191 len 1] = uint8(ext_call.return_data[64])
            mem[_17 + ceil32(return_data.size) + 190 len 1] = uint8(ext_call.return_data[32])
            mem[_17 + ceil32(return_data.size) + 188 len 2] = uint16(ext_call.return_data[0])
            mem[_17 + ceil32(return_data.size) + 184 len 4] = uint32(ext_call.return_data[0])
            mem[_17 + ceil32(return_data.size) + 181 len 3] = ext_call.return_data[0] % 16777216
            mem[_17 + ceil32(return_data.size) + 179 len 2] = uint16(ext_call.return_data[0])
            mem[_17 + ceil32(return_data.size) + 160 len 19] = 0
            mem[_199 + _17 + (2 * ceil32(return_data.size)) + 256] = 64
            mem[_199 + _17 + (2 * ceil32(return_data.size)) + 320] = 2
            mem[_199 + _17 + (2 * ceil32(return_data.size)) + 352 len 0] = None
            mem[_199 + _17 + (2 * ceil32(return_data.size)) + 288] = 160
            mem[_199 + _17 + (2 * ceil32(return_data.size)) + 416] = mem[ceil32(return_data.size) + 96]
            mem[_199 + _17 + (2 * ceil32(return_data.size)) + 448 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
            if not mem[ceil32(return_data.size) + 96] % 32:
                return 64, 
                       160,
                       2,
                       mem[_199 + _17 + (2 * ceil32(return_data.size)) + 352 len 64],
                       mem[ceil32(return_data.size) + 96],
                       mem[_199 + _17 + (2 * ceil32(return_data.size)) + 448 len mem[ceil32(return_data.size) + 96]]
            mem[floor32(mem[ceil32(return_data.size) + 96]) + _199 + _17 + (2 * ceil32(return_data.size)) + 448] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _199 + _17 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 480 len mem[ceil32(return_data.size) + 96] % 32]
            return 64, 
                   160,
                   2,
                   mem[_199 + _17 + (2 * ceil32(return_data.size)) + 352 len 64],
                   mem[ceil32(return_data.size) + 96],
                   mem[_199 + _17 + (2 * ceil32(return_data.size)) + 448 len floor32(mem[ceil32(return_data.size) + 96]) + 32]
        mem[floor32(_199) + _17 + (2 * ceil32(return_data.size)) + 256] = mem[floor32(_199) + _17 + (2 * ceil32(return_data.size)) + -(_199 % 32) + 288 len _199 % 32]
        require ext_code.size(stor101)
        staticcall stor101.0x262b5814 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor101)
        staticcall stor101.0x783efb25 with:
                gas gas_remaining wei
               args arg1, 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor101)
        staticcall stor101.0x783efb25 with:
                gas gas_remaining wei
               args arg1, 103
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_17 + ceil32(return_data.size) + 192] = ext_call.return_data[0]
        mem[_17 + ceil32(return_data.size) + 191 len 1] = uint8(ext_call.return_data[64])
        mem[_17 + ceil32(return_data.size) + 190 len 1] = uint8(ext_call.return_data[32])
        mem[_17 + ceil32(return_data.size) + 188 len 2] = uint16(ext_call.return_data[0])
        mem[_17 + ceil32(return_data.size) + 184 len 4] = uint32(ext_call.return_data[0])
        mem[_17 + ceil32(return_data.size) + 181 len 3] = ext_call.return_data[0] % 16777216
        mem[_17 + ceil32(return_data.size) + 179 len 2] = uint16(ext_call.return_data[0])
        mem[_17 + ceil32(return_data.size) + 160 len 19] = 0
        mem[floor32(_199) + _17 + (2 * ceil32(return_data.size)) + 288] = 64
        mem[floor32(_199) + _17 + (2 * ceil32(return_data.size)) + 352] = 2
        mem[floor32(_199) + _17 + (2 * ceil32(return_data.size)) + 384 len 0] = None
        mem[floor32(_199) + _17 + (2 * ceil32(return_data.size)) + 320] = 160
        mem[floor32(_199) + _17 + (2 * ceil32(return_data.size)) + 448] = mem[ceil32(return_data.size) + 96]
        mem[floor32(_199) + _17 + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 64, 160, 2, mem[floor32(_199) + _17 + (2 * ceil32(return_data.size)) + 384 len mem[ceil32(return_data.size) + 96] + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_199) + _17 + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_199) + _17 + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 512 len mem[ceil32(return_data.size) + 96] % 32]
        return 64, 
               160,
               2,
               mem[floor32(_199) + _17 + (2 * ceil32(return_data.size)) + 384 len floor32(mem[ceil32(return_data.size) + 96]) + 128]
    mem[floor32(_17) + ceil32(return_data.size) + 128] = mem[floor32(_17) + ceil32(return_data.size) + -(_17 % 32) + 160 len _17 % 32]
    require ext_code.size(stor101)
    staticcall stor101.0x262b5814 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_17) + ceil32(return_data.size) + 160] = 2
    mem[floor32(_17) + ceil32(return_data.size) + 192 len 64] = call.data[calldata.size len 64]
    require ext_code.size(stor101)
    staticcall stor101.0x9507d39a with:
            gas gas_remaining wei
           args arg1
    mem[floor32(_17) + ceil32(return_data.size) + 256 len 320] = ext_call.return_data[0 len 320]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 320
    require ext_code.size(stor102)
    staticcall stor102.getCharacterCosmetic(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_17) + ceil32(return_data.size) + 256] = 0x3715665700000000000000000000000000000000000000000000000000000000
    mem[floor32(_17) + ceil32(return_data.size) + 260] = arg1
    require ext_code.size(stor103)
    staticcall stor103.getCharacterRename(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[floor32(_17) + ceil32(return_data.size) + 256 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = floor32(_17) + (2 * ceil32(return_data.size)) + 256
    require return_data.size >= 32
    _196 = mem[floor32(_17) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg1) >> 32
    require mem[floor32(_17) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg1) >> 32 <= 4294967296
    require mem[floor32(_17) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg1) >> 32 + 32 <= return_data.size
    require return_data.size >= mem[floor32(_17) + ceil32(return_data.size) + mem[floor32(_17) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256] + mem[floor32(_17) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg1) >> 32 + 32 and mem[floor32(_17) + ceil32(return_data.size) + mem[floor32(_17) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256] <= 4294967296
    mem[floor32(_17) + (2 * ceil32(return_data.size)) + 256] = mem[floor32(_17) + ceil32(return_data.size) + mem[floor32(_17) + ceil32(return_data.size) + 256 len 4], Mask(224, 32, arg1) >> 32 + 256]
    _201 = mem[floor32(_17) + ceil32(return_data.size) + _196 + 256]
    mem[floor32(_17) + (2 * ceil32(return_data.size)) + 288 len ceil32(mem[floor32(_17) + ceil32(return_data.size) + _196 + 256])] = mem[floor32(_17) + ceil32(return_data.size) + _196 + 288 len ceil32(mem[floor32(_17) + ceil32(return_data.size) + _196 + 256])]
    if not _201 % 32:
        mem[64] = _201 + floor32(_17) + (2 * ceil32(return_data.size)) + 288
        require ext_code.size(stor101)
        staticcall stor101.0x262b5814 with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor101)
        staticcall stor101.0x783efb25 with:
                gas gas_remaining wei
               args arg1, 2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor101)
        staticcall stor101.0x783efb25 with:
                gas gas_remaining wei
               args arg1, 103
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[floor32(_17) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
        mem[floor32(_17) + ceil32(return_data.size) + 223 len 1] = uint8(ext_call.return_data[64])
        mem[floor32(_17) + ceil32(return_data.size) + 222 len 1] = uint8(ext_call.return_data[32])
        mem[floor32(_17) + ceil32(return_data.size) + 220 len 2] = uint16(ext_call.return_data[0])
        mem[floor32(_17) + ceil32(return_data.size) + 216 len 4] = uint32(ext_call.return_data[0])
        mem[floor32(_17) + ceil32(return_data.size) + 213 len 3] = ext_call.return_data[0] % 16777216
        mem[floor32(_17) + ceil32(return_data.size) + 211 len 2] = uint16(ext_call.return_data[0])
        mem[floor32(_17) + ceil32(return_data.size) + 192 len 19] = 0
        mem[_201 + floor32(_17) + (2 * ceil32(return_data.size)) + 288] = 64
        mem[_201 + floor32(_17) + (2 * ceil32(return_data.size)) + 352] = 2
        mem[_201 + floor32(_17) + (2 * ceil32(return_data.size)) + 384 len 0] = None
        mem[_201 + floor32(_17) + (2 * ceil32(return_data.size)) + 320] = 160
        mem[_201 + floor32(_17) + (2 * ceil32(return_data.size)) + 448] = mem[ceil32(return_data.size) + 96]
        mem[_201 + floor32(_17) + (2 * ceil32(return_data.size)) + 480 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 64, 160, 2, mem[_201 + floor32(_17) + (2 * ceil32(return_data.size)) + 384 len mem[ceil32(return_data.size) + 96] + 96]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _201 + floor32(_17) + (2 * ceil32(return_data.size)) + 480] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _201 + floor32(_17) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 512 len mem[ceil32(return_data.size) + 96] % 32]
        return 64, 
               160,
               2,
               mem[_201 + floor32(_17) + (2 * ceil32(return_data.size)) + 384 len floor32(mem[ceil32(return_data.size) + 96]) + 128]
    mem[floor32(_201) + floor32(_17) + (2 * ceil32(return_data.size)) + 288] = mem[floor32(_201) + floor32(_17) + (2 * ceil32(return_data.size)) + -(_201 % 32) + 320 len _201 % 32]
    mem[64] = floor32(_201) + floor32(_17) + (2 * ceil32(return_data.size)) + 320
    require ext_code.size(stor101)
    staticcall stor101.0x262b5814 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor101)
    staticcall stor101.0x783efb25 with:
            gas gas_remaining wei
           args arg1, 2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor101)
    staticcall stor101.0x783efb25 with:
            gas gas_remaining wei
           args arg1, 103
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[floor32(_17) + ceil32(return_data.size) + 224] = ext_call.return_data[0]
    mem[floor32(_17) + ceil32(return_data.size) + 223 len 1] = uint8(ext_call.return_data[64])
    mem[floor32(_17) + ceil32(return_data.size) + 222 len 1] = uint8(ext_call.return_data[32])
    mem[floor32(_17) + ceil32(return_data.size) + 220 len 2] = uint16(ext_call.return_data[0])
    mem[floor32(_17) + ceil32(return_data.size) + 216 len 4] = uint32(ext_call.return_data[0])
    mem[floor32(_17) + ceil32(return_data.size) + 213 len 3] = ext_call.return_data[0] % 16777216
    mem[floor32(_17) + ceil32(return_data.size) + 211 len 2] = uint16(ext_call.return_data[0])
    mem[floor32(_17) + ceil32(return_data.size) + 192 len 19] = 0
    mem[floor32(_201) + floor32(_17) + (2 * ceil32(return_data.size)) + 320] = 64
    mem[floor32(_201) + floor32(_17) + (2 * ceil32(return_data.size)) + 384] = 2
    mem[floor32(_201) + floor32(_17) + (2 * ceil32(return_data.size)) + 416 len 0] = None
    mem[floor32(_201) + floor32(_17) + (2 * ceil32(return_data.size)) + 352] = 160
    mem[floor32(_201) + floor32(_17) + (2 * ceil32(return_data.size)) + 480] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_201) + floor32(_17) + (2 * ceil32(return_data.size)) + 512 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 64, 
               160,
               2,
               mem[floor32(_201) + floor32(_17) + (2 * ceil32(return_data.size)) + 416 len mem[ceil32(return_data.size) + 96] + 96]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_201) + floor32(_17) + (2 * ceil32(return_data.size)) + 512] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_201) + floor32(_17) + (2 * ceil32(return_data.size)) + -(mem[ceil32(return_data.size) + 96] % 32) + 544 len mem[ceil32(return_data.size) + 96] % 32]
    return 64, 
           160,
           2,
           mem[floor32(_201) + floor32(_17) + (2 * ceil32(return_data.size)) + 416 len floor32(mem[ceil32(return_data.size) + 96]) + 128]
}



}
