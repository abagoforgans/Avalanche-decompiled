contract main {




// =====================  Runtime code  =====================


#
#  - getFNFTCurrentValue(uint256 arg1)
#  - withdrawToken(uint256 arg1, uint256 arg2, address arg3)
#
const sub_88305548(?) = 0xd1a3af5a00000000000000000000000000000000000000000000000000000000

const DEFAULT_ADMIN_ROLE = 0


mapping of struct roleAdmin;
array of struct roleMember;
address owner;
address stor3;
mapping of struct splitsRemaining;
mapping of struct sub_628645c0;

function getSplitsRemaining(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return splitsRemaining[arg1].field_1024
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function getFNFT(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return splitsRemaining[arg1].field_0, 
           splitsRemaining[arg1].field_256,
           splitsRemaining[arg1].field_512,
           splitsRemaining[arg1].field_768,
           splitsRemaining[arg1].field_1024,
           splitsRemaining[arg1].field_1280,
           bool(splitsRemaining[arg1].field_1536),
           bool(splitsRemaining[arg1].field_1544),
           bool(splitsRemaining[arg1].field_1552)
}

function sub_628645c0(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_628645c0[arg1].field_0, sub_628645c0[arg1].field_256
}

function owner() payable {
    return owner
}

function getRoleMember(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 >= roleMember[arg1].field_0:
        revert with 0, 50
    return roleMember[arg1][arg2].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function getRoleMemberCount(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleMember[arg1].field_0
}

function getNontransferable(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(splitsRemaining[arg1].field_1552)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setAddressRegistry(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor3 = arg1
}

function sub_0bb007b8(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg7 == bool(arg7)
    require arg8 == bool(arg8)
    require arg9 == bool(arg9)
    return arg1 << 192, address(arg2), arg3, arg4, arg5, arg6, bool(arg7), bool(arg8), bool(arg9)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x5a05180f00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_3c8b3b62(?) payable {
    require calldata.size - 4 >= 320
    require calldata.size - 36 >= 288
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg8 == bool(arg8)
    require arg9 == bool(arg9)
    require arg10 == bool(arg10)
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor3)
    staticcall stor3.0xf97e7d74 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'E017'
    splitsRemaining[arg1].field_0 = address(arg2)
    splitsRemaining[arg1].field_512 = arg4
    if arg5:
        splitsRemaining[arg1].field_768 = arg5
    if arg6:
        splitsRemaining[arg1].field_1024 = arg6
    if arg8:
        splitsRemaining[arg1].field_1536 = uint8(bool(arg8))
    if address(arg3):
        splitsRemaining[arg1].field_256 = address(arg3)
    if arg9:
        splitsRemaining[arg1].field_1544 = Mask(248, 0, bool(arg9))
        splitsRemaining[arg1].field_1280 = arg7
    if arg10:
        splitsRemaining[arg1].field_1552 = Mask(240, 0, bool(arg10))
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    if not roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 1
        emit RoleGranted(arg1, arg2, msg.sender);
    if not roleMember[arg1][1][address(arg2)].field_0:
        roleMember[arg1].field_0++
        roleMember[arg1][roleMember[arg1].field_0].field_0 = arg2
        roleMember[arg1][roleMember[arg1].field_0].field_160 = 0
        roleMember[arg1][1][address(arg2)].field_0 = roleMember[arg1].field_0
}

function depositToken(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor3)
    staticcall stor3.0xf97e7d74 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'E017'
    if arg3 and arg2 > -1 / arg3:
        revert with 0, 17
    if not splitsRemaining[arg1].field_0:
        if not sub_628645c0[stor4[arg1].field_0].field_0:
            sub_628645c0[stor4[arg1].field_0].field_256 = 10^18
        else:
            if sub_628645c0[stor4[arg1].field_0].field_0 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not sub_628645c0[stor4[arg1].field_0].field_0:
                revert with 0, 18
            sub_628645c0[stor4[arg1].field_0].field_256 = 10^18 * sub_628645c0[stor4[arg1].field_0].field_0 / sub_628645c0[stor4[arg1].field_0].field_0
        if sub_628645c0[stor4[arg1].field_0].field_0 > !(arg3 * arg2):
            revert with 0, 17
        sub_628645c0[stor4[arg1].field_0].field_0 += arg3 * arg2
    else:
        require ext_code.size(splitsRemaining[arg1].field_0)
        staticcall splitsRemaining[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_628645c0[stor4[arg1].field_0].field_0:
            sub_628645c0[stor4[arg1].field_0].field_256 = 10^18
        else:
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not sub_628645c0[stor4[arg1].field_0].field_0:
                revert with 0, 18
            sub_628645c0[stor4[arg1].field_0].field_256 = 10^18 * ext_call.return_data[0] / sub_628645c0[stor4[arg1].field_0].field_0
        if ext_call.return_data[0] > !(arg3 * arg2):
            revert with 0, 17
        sub_628645c0[stor4[arg1].field_0].field_0 = ext_call.return_data[0] + (arg3 * arg2)
    splitsRemaining[arg1].field_768 = sub_628645c0[stor4[arg1].field_0].field_256
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        mem[128 len 42] = call.data[calldata.size len 42]
        idx = 41
        s = address(msg.sender)
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 42:
                revert with 0, 50
            mem[idx + 128 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if msg.sender + 10240:
            revert with 0, 'Strings: hex length insufficient'
        mem[224 len 66] = call.data[calldata.size len 66]
        idx = 65
        s = roleAdmin[arg1].field_256
        while idx > 1:
            if s % 16 >= 16:
                revert with 0, 50
            if idx >= 66:
                revert with 0, 50
            mem[idx + 224 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
            if not idx:
                revert with 0, 17
            idx = idx - 1
            s = Mask(252, 0, s) * 0.0625
            continue 
        if roleAdmin[arg1].field_256 + 16384:
            revert with 0, 'Strings: hex length insufficient'
        revert with 0, 32, 148, 'AccessControl: account ', mem[160 len 42], ' is missing role ', mem[288 len 66], 0, 0 >> 928, 0
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
    if roleMember[arg1][1][address(arg2)].field_0:
        if roleMember[arg1][1][address(arg2)].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 < 1:
            revert with 0, 17
        if roleMember[arg1].field_0 - 1 != roleMember[arg1][1][address(arg2)].field_0 - 1:
            if roleMember[arg1].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            if roleMember[arg1][1][address(arg2)].field_0 - 1 >= roleMember[arg1].field_0:
                revert with 0, 50
            roleMember[arg1][roleMember[arg1][1][address(arg2)].field_0].field_0 = roleMember[arg1][roleMember[arg1].field_0].field_0
            roleMember[arg1][1][roleMember[arg1][roleMember[arg1].field_0].field_0].field_0 = roleMember[arg1][1][address(arg2)].field_0
        if not roleMember[arg1].field_0:
            revert with 0, 49
        roleMember[arg1][roleMember[arg1].field_0].field_0 = 0
        roleMember[arg1].field_0--
        roleMember[arg1][1][address(arg2)].field_0 = 0
}

function handleMultipleDeposits(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor3)
    staticcall stor3.0xf97e7d74 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'E017'
    if arg3 < splitsRemaining[arg1].field_512:
        revert with 0, 'E003'
    splitsRemaining[arg1].field_512 = arg3
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor3)
    staticcall stor3.0xf97e7d74 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'E017'
    splitsRemaining[arg1].field_0 = splitsRemaining[arg1].field_0
    splitsRemaining[arg1].field_512 = arg3
    if splitsRemaining[arg1].field_1536:
        splitsRemaining[arg1].field_1536 = uint8(bool(splitsRemaining[arg1].field_1536))
    if splitsRemaining[arg1].field_256:
        splitsRemaining[arg1].field_256 = splitsRemaining[arg1].field_256
    if splitsRemaining[arg1].field_1544:
        splitsRemaining[arg1].field_1544 = Mask(248, 0, bool(splitsRemaining[arg1].field_1544))
    if splitsRemaining[arg1].field_1552:
        splitsRemaining[arg1].field_1552 = Mask(240, 0, bool(splitsRemaining[arg1].field_1552))
    if arg2:
        if not msg.sender:
            revert with 0, 'E004'
        require ext_code.size(stor3)
        staticcall stor3.0xf97e7d74 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != msg.sender:
            revert with 0, 'E017'
        splitsRemaining[arg2].field_0 = splitsRemaining[arg1].field_0
        splitsRemaining[arg2].field_512 = splitsRemaining[arg1].field_512
        if splitsRemaining[arg1].field_768:
            splitsRemaining[arg2].field_768 = splitsRemaining[arg1].field_768
        if splitsRemaining[arg1].field_1024:
            splitsRemaining[arg2].field_1024 = splitsRemaining[arg1].field_1024
        if splitsRemaining[arg1].field_1536:
            splitsRemaining[arg2].field_1536 = uint8(bool(splitsRemaining[arg1].field_1536))
        if splitsRemaining[arg1].field_256:
            splitsRemaining[arg2].field_256 = splitsRemaining[arg1].field_256
        if splitsRemaining[arg1].field_1544:
            splitsRemaining[arg2].field_1544 = Mask(248, 0, bool(splitsRemaining[arg1].field_1544))
            splitsRemaining[arg2].field_1280 = splitsRemaining[arg1].field_1280
        if splitsRemaining[arg1].field_1552:
            splitsRemaining[arg2].field_1552 = Mask(240, 0, bool(splitsRemaining[arg1].field_1552))
}

function sub_8717293d(?) payable {
    require calldata.size - 4 >= 384
    require calldata.size - 36 >= 288
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg8 == bool(arg8)
    require arg9 == bool(arg9)
    require arg10 == bool(arg10)
    require arg12 == address(arg12)
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor3)
    staticcall stor3.0xf97e7d74 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'E017'
    splitsRemaining[arg1].field_0 = address(arg2)
    splitsRemaining[arg1].field_512 = arg4
    if arg5:
        splitsRemaining[arg1].field_768 = arg5
    if arg6:
        splitsRemaining[arg1].field_1024 = arg6
    if arg8:
        splitsRemaining[arg1].field_1536 = uint8(bool(arg8))
    if address(arg3):
        splitsRemaining[arg1].field_256 = address(arg3)
    if arg9:
        splitsRemaining[arg1].field_1544 = Mask(248, 0, bool(arg9))
        splitsRemaining[arg1].field_1280 = arg7
    if arg10:
        splitsRemaining[arg1].field_1552 = Mask(240, 0, bool(arg10))
    if not msg.sender:
        revert with 0, 'E004'
    require ext_code.size(stor3)
    staticcall stor3.0xf97e7d74 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'E017'
    if arg11 and arg4 > -1 / arg11:
        revert with 0, 17
    if not splitsRemaining[arg1].field_0:
        if not sub_628645c0[stor4[arg1].field_0].field_0:
            sub_628645c0[stor4[arg1].field_0].field_256 = 10^18
        else:
            if sub_628645c0[stor4[arg1].field_0].field_0 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not sub_628645c0[stor4[arg1].field_0].field_0:
                revert with 0, 18
            sub_628645c0[stor4[arg1].field_0].field_256 = 10^18 * sub_628645c0[stor4[arg1].field_0].field_0 / sub_628645c0[stor4[arg1].field_0].field_0
        if sub_628645c0[stor4[arg1].field_0].field_0 > !(arg11 * arg4):
            revert with 0, 17
        sub_628645c0[stor4[arg1].field_0].field_0 += arg11 * arg4
    else:
        require ext_code.size(splitsRemaining[arg1].field_0)
        staticcall splitsRemaining[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_628645c0[stor4[arg1].field_0].field_0:
            sub_628645c0[stor4[arg1].field_0].field_256 = 10^18
        else:
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not sub_628645c0[stor4[arg1].field_0].field_0:
                revert with 0, 18
            sub_628645c0[stor4[arg1].field_0].field_256 = 10^18 * ext_call.return_data[0] / sub_628645c0[stor4[arg1].field_0].field_0
        if ext_call.return_data[0] > !(arg11 * arg4):
            revert with 0, 17
        sub_628645c0[stor4[arg1].field_0].field_0 = ext_call.return_data[0] + (arg11 * arg4)
    splitsRemaining[arg1].field_768 = sub_628645c0[stor4[arg1].field_0].field_256
    emit CreateFNFT(arg1, address(arg12));
}

function sub_fbe42921(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 > test266151307() or ceil32(32 * ('cd', 36).length) + 97 < 96:
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require calldata.size >= cd[36] + (32 * ('cd', 36).length) + 36
    s = cd[36] + 36
    idx = 0
    t = 128
    while idx < ('cd', 36).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    if ('cd', 68).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98 > test266151307() or ceil32(32 * ('cd', 68).length) + 98 < 97:
        revert with 0, 65
    mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98
    mem[ceil32(32 * ('cd', 36).length) + 97] = ('cd', 68).length
    require calldata.size >= cd[68] + (32 * ('cd', 68).length) + 36
    s = cd[68] + 36
    idx = 0
    t = ceil32(32 * ('cd', 36).length) + 129
    while idx < ('cd', 68).length:
        mem[t] = cd[s]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    mem[0] = splitsRemaining[cd[4]].field_0
    mem[32] = 5
    if not splitsRemaining[cd[4]].field_0:
        if not sub_628645c0[stor4[cd[4]].field_0].field_0:
            sub_628645c0[stor4[cd[4]].field_0].field_256 = 10^18
            if sub_628645c0[stor4[cd[4]].field_0].field_0 > -1:
                revert with 0, 17
            idx = 0
            s = 0
            while idx < ('cd', 68).length:
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                _5962 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                if s > !mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                    revert with 0, 17
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                _5989 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                if splitsRemaining[cd[4]].field_512 and mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] > -1 / splitsRemaining[cd[4]].field_512:
                    revert with 0, 17
                _5998 = mem[64]
                mem[64] = mem[64] + 288
                mem[_5998] = splitsRemaining[cd[4]].field_0
                mem[_5998 + 32] = splitsRemaining[cd[4]].field_256
                mem[_5998 + 64] = splitsRemaining[cd[4]].field_512
                mem[_5998 + 96] = splitsRemaining[cd[4]].field_768
                mem[_5998 + 128] = splitsRemaining[cd[4]].field_1024
                mem[_5998 + 160] = splitsRemaining[cd[4]].field_1280
                mem[_5998 + 192] = bool(splitsRemaining[cd[4]].field_1536)
                mem[_5998 + 224] = bool(splitsRemaining[cd[4]].field_1544)
                mem[_5998 + 256] = bool(splitsRemaining[cd[4]].field_1552)
                _5999 = mem[64]
                mem[64] = mem[64] + 288
                mem[_5999] = 0
                mem[_5999 + 32] = 0
                mem[_5999 + 64] = 0
                mem[_5999 + 96] = 0
                mem[_5999 + 128] = 0
                mem[_5999 + 160] = 0
                mem[_5999 + 192] = 0
                mem[_5999 + 224] = 0
                mem[_5999 + 256] = 0
                _6000 = mem[64]
                mem[64] = mem[64] + 288
                mem[_6000] = splitsRemaining[cd[4]].field_0
                mem[_6000 + 32] = splitsRemaining[cd[4]].field_256
                mem[_6000 + 96] = splitsRemaining[cd[4]].field_768
                mem[_6000 + 160] = splitsRemaining[cd[4]].field_1280
                mem[_6000 + 192] = bool(splitsRemaining[cd[4]].field_1536)
                mem[_6000 + 224] = bool(splitsRemaining[cd[4]].field_1544)
                mem[_6000 + 256] = bool(splitsRemaining[cd[4]].field_1552)
                mem[_6000 + 64] = splitsRemaining[cd[4]].field_512 * _5989 / 1000
                if splitsRemaining[cd[4]].field_1024 < 1:
                    revert with 0, 17
                mem[_6000 + 128] = splitsRemaining[cd[4]].field_1024 - 1
                if idx >= mem[96]:
                    revert with 0, 50
                _6066 = mem[(32 * idx) + 128]
                if not msg.sender:
                    revert with 0, 'E004'
                require ext_code.size(stor3)
                staticcall stor3.0xf97e7d74 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6101 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6101] == mem[_6101 + 12 len 20]
                if mem[_6101 + 12 len 20] != msg.sender:
                    revert with 0, 'E017'
                mem[0] = _6066
                mem[32] = 4
                splitsRemaining[_6066].field_0 = splitsRemaining[cd[4]].field_0
                splitsRemaining[_6066].field_512 = splitsRemaining[cd[4]].field_512 * _5989 / 1000
                if splitsRemaining[cd[4]].field_768:
                    mem[0] = _6066
                    mem[32] = 4
                    splitsRemaining[_6066].field_768 = splitsRemaining[cd[4]].field_768
                if splitsRemaining[cd[4]].field_1024 - 1:
                    mem[0] = _6066
                    mem[32] = 4
                    splitsRemaining[_6066].field_1024 = splitsRemaining[cd[4]].field_1024 - 1
                if splitsRemaining[cd[4]].field_1536:
                    mem[0] = _6066
                    mem[32] = 4
                    splitsRemaining[_6066].field_1536 = uint8(bool(splitsRemaining[cd[4]].field_1536))
                if splitsRemaining[cd[4]].field_256:
                    mem[0] = _6066
                    mem[32] = 4
                    splitsRemaining[_6066].field_256 = splitsRemaining[cd[4]].field_256
                if splitsRemaining[cd[4]].field_1544:
                    mem[0] = _6066
                    mem[32] = 4
                    splitsRemaining[_6066].field_1544 = Mask(248, 0, bool(splitsRemaining[cd[4]].field_1544))
                    splitsRemaining[_6066].field_1280 = splitsRemaining[cd[4]].field_1280
                if splitsRemaining[cd[4]].field_1552:
                    mem[0] = _6066
                    mem[32] = 4
                    splitsRemaining[_6066].field_1552 = Mask(240, 0, bool(splitsRemaining[cd[4]].field_1552))
                if idx >= mem[96]:
                    revert with 0, 50
                emit CreateFNFT(mem[(32 * idx) + 128], msg.sender);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + _5962
                continue 
            if s != 1000:
                revert with 0, 'E054'
            require ext_code.size(stor3)
            staticcall stor3.0xd59e296e with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5981 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5993 = mem[_5981]
            require mem[_5981] == mem[_5981 + 12 len 20]
            mem[mem[64] + 4] = cd[4]
            require ext_code.size(address(_5993))
            staticcall address(_5993).0xf77ee79d with:
                    gas gas_remaining wei
                   args cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6057 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if cd[100] == mem[_6057]:
                splitsRemaining[cd[4]].field_0 = 0
                splitsRemaining[cd[4]].field_256 = 0
                splitsRemaining[cd[4]].field_512 = 0
                splitsRemaining[cd[4]].field_768 = 0
                splitsRemaining[cd[4]].field_1024 = 0
                splitsRemaining[cd[4]].field_1280 = 0
                splitsRemaining[cd[4]].field_1536 = 0
        else:
            if sub_628645c0[stor4[cd[4]].field_0].field_0 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not sub_628645c0[stor4[cd[4]].field_0].field_0:
                revert with 0, 18
            sub_628645c0[stor4[cd[4]].field_0].field_256 = 10^18 * sub_628645c0[stor4[cd[4]].field_0].field_0 / sub_628645c0[stor4[cd[4]].field_0].field_0
            if sub_628645c0[stor4[cd[4]].field_0].field_0 > -1:
                revert with 0, 17
            idx = 0
            s = 0
            while idx < ('cd', 68).length:
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                _5964 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                if s > !mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                    revert with 0, 17
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                _5990 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                if splitsRemaining[cd[4]].field_512 and mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] > -1 / splitsRemaining[cd[4]].field_512:
                    revert with 0, 17
                _6011 = mem[64]
                mem[64] = mem[64] + 288
                mem[_6011] = splitsRemaining[cd[4]].field_0
                mem[_6011 + 32] = splitsRemaining[cd[4]].field_256
                mem[_6011 + 64] = splitsRemaining[cd[4]].field_512
                mem[_6011 + 96] = splitsRemaining[cd[4]].field_768
                mem[_6011 + 128] = splitsRemaining[cd[4]].field_1024
                mem[_6011 + 160] = splitsRemaining[cd[4]].field_1280
                mem[_6011 + 192] = bool(splitsRemaining[cd[4]].field_1536)
                mem[_6011 + 224] = bool(splitsRemaining[cd[4]].field_1544)
                mem[_6011 + 256] = bool(splitsRemaining[cd[4]].field_1552)
                _6012 = mem[64]
                mem[64] = mem[64] + 288
                mem[_6012] = 0
                mem[_6012 + 32] = 0
                mem[_6012 + 64] = 0
                mem[_6012 + 96] = 0
                mem[_6012 + 128] = 0
                mem[_6012 + 160] = 0
                mem[_6012 + 192] = 0
                mem[_6012 + 224] = 0
                mem[_6012 + 256] = 0
                _6013 = mem[64]
                mem[64] = mem[64] + 288
                mem[_6013] = splitsRemaining[cd[4]].field_0
                mem[_6013 + 32] = splitsRemaining[cd[4]].field_256
                mem[_6013 + 96] = splitsRemaining[cd[4]].field_768
                mem[_6013 + 160] = splitsRemaining[cd[4]].field_1280
                mem[_6013 + 192] = bool(splitsRemaining[cd[4]].field_1536)
                mem[_6013 + 224] = bool(splitsRemaining[cd[4]].field_1544)
                mem[_6013 + 256] = bool(splitsRemaining[cd[4]].field_1552)
                mem[_6013 + 64] = splitsRemaining[cd[4]].field_512 * _5990 / 1000
                if splitsRemaining[cd[4]].field_1024 < 1:
                    revert with 0, 17
                mem[_6013 + 128] = splitsRemaining[cd[4]].field_1024 - 1
                if idx >= mem[96]:
                    revert with 0, 50
                _6068 = mem[(32 * idx) + 128]
                if not msg.sender:
                    revert with 0, 'E004'
                require ext_code.size(stor3)
                staticcall stor3.0xf97e7d74 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6102 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6102] == mem[_6102 + 12 len 20]
                if mem[_6102 + 12 len 20] != msg.sender:
                    revert with 0, 'E017'
                mem[0] = _6068
                mem[32] = 4
                splitsRemaining[_6068].field_0 = splitsRemaining[cd[4]].field_0
                splitsRemaining[_6068].field_512 = splitsRemaining[cd[4]].field_512 * _5990 / 1000
                if splitsRemaining[cd[4]].field_768:
                    mem[0] = _6068
                    mem[32] = 4
                    splitsRemaining[_6068].field_768 = splitsRemaining[cd[4]].field_768
                if splitsRemaining[cd[4]].field_1024 - 1:
                    mem[0] = _6068
                    mem[32] = 4
                    splitsRemaining[_6068].field_1024 = splitsRemaining[cd[4]].field_1024 - 1
                if splitsRemaining[cd[4]].field_1536:
                    mem[0] = _6068
                    mem[32] = 4
                    splitsRemaining[_6068].field_1536 = uint8(bool(splitsRemaining[cd[4]].field_1536))
                if splitsRemaining[cd[4]].field_256:
                    mem[0] = _6068
                    mem[32] = 4
                    splitsRemaining[_6068].field_256 = splitsRemaining[cd[4]].field_256
                if splitsRemaining[cd[4]].field_1544:
                    mem[0] = _6068
                    mem[32] = 4
                    splitsRemaining[_6068].field_1544 = Mask(248, 0, bool(splitsRemaining[cd[4]].field_1544))
                    splitsRemaining[_6068].field_1280 = splitsRemaining[cd[4]].field_1280
                if splitsRemaining[cd[4]].field_1552:
                    mem[0] = _6068
                    mem[32] = 4
                    splitsRemaining[_6068].field_1552 = Mask(240, 0, bool(splitsRemaining[cd[4]].field_1552))
                if idx >= mem[96]:
                    revert with 0, 50
                emit CreateFNFT(mem[(32 * idx) + 128], msg.sender);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + _5964
                continue 
            if s != 1000:
                revert with 0, 'E054'
            require ext_code.size(stor3)
            staticcall stor3.0xd59e296e with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5983 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5994 = mem[_5983]
            require mem[_5983] == mem[_5983 + 12 len 20]
            mem[mem[64] + 4] = cd[4]
            require ext_code.size(address(_5994))
            staticcall address(_5994).0xf77ee79d with:
                    gas gas_remaining wei
                   args cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6058 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if cd[100] == mem[_6058]:
                splitsRemaining[cd[4]].field_0 = 0
                splitsRemaining[cd[4]].field_256 = 0
                splitsRemaining[cd[4]].field_512 = 0
                splitsRemaining[cd[4]].field_768 = 0
                splitsRemaining[cd[4]].field_1024 = 0
                splitsRemaining[cd[4]].field_1280 = 0
                splitsRemaining[cd[4]].field_1536 = 0
    else:
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 102] = this.address
        require ext_code.size(splitsRemaining[cd[4]].field_0)
        staticcall splitsRemaining[cd[4]].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + 98] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(32 * ('cd', 36).length) + ceil32(32 * ('cd', 68).length) + ceil32(return_data.size) + 98
        require return_data.size >= 32
        if not sub_628645c0[stor4[cd[4]].field_0].field_0:
            sub_628645c0[stor4[cd[4]].field_0].field_256 = 10^18
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            sub_628645c0[stor4[cd[4]].field_0].field_0 = ext_call.return_data[0]
            idx = 0
            s = 0
            while idx < ('cd', 68).length:
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                _5966 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                if s > !mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                    revert with 0, 17
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                _5991 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                if splitsRemaining[cd[4]].field_512 and mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] > -1 / splitsRemaining[cd[4]].field_512:
                    revert with 0, 17
                _6024 = mem[64]
                mem[64] = mem[64] + 288
                mem[_6024] = splitsRemaining[cd[4]].field_0
                mem[_6024 + 32] = splitsRemaining[cd[4]].field_256
                mem[_6024 + 64] = splitsRemaining[cd[4]].field_512
                mem[_6024 + 96] = splitsRemaining[cd[4]].field_768
                mem[_6024 + 128] = splitsRemaining[cd[4]].field_1024
                mem[_6024 + 160] = splitsRemaining[cd[4]].field_1280
                mem[_6024 + 192] = bool(splitsRemaining[cd[4]].field_1536)
                mem[_6024 + 224] = bool(splitsRemaining[cd[4]].field_1544)
                mem[_6024 + 256] = bool(splitsRemaining[cd[4]].field_1552)
                _6025 = mem[64]
                mem[64] = mem[64] + 288
                mem[_6025] = 0
                mem[_6025 + 32] = 0
                mem[_6025 + 64] = 0
                mem[_6025 + 96] = 0
                mem[_6025 + 128] = 0
                mem[_6025 + 160] = 0
                mem[_6025 + 192] = 0
                mem[_6025 + 224] = 0
                mem[_6025 + 256] = 0
                _6026 = mem[64]
                mem[64] = mem[64] + 288
                mem[_6026] = splitsRemaining[cd[4]].field_0
                mem[_6026 + 32] = splitsRemaining[cd[4]].field_256
                mem[_6026 + 96] = splitsRemaining[cd[4]].field_768
                mem[_6026 + 160] = splitsRemaining[cd[4]].field_1280
                mem[_6026 + 192] = bool(splitsRemaining[cd[4]].field_1536)
                mem[_6026 + 224] = bool(splitsRemaining[cd[4]].field_1544)
                mem[_6026 + 256] = bool(splitsRemaining[cd[4]].field_1552)
                mem[_6026 + 64] = splitsRemaining[cd[4]].field_512 * _5991 / 1000
                if splitsRemaining[cd[4]].field_1024 < 1:
                    revert with 0, 17
                mem[_6026 + 128] = splitsRemaining[cd[4]].field_1024 - 1
                if idx >= mem[96]:
                    revert with 0, 50
                _6070 = mem[(32 * idx) + 128]
                if not msg.sender:
                    revert with 0, 'E004'
                require ext_code.size(stor3)
                staticcall stor3.0xf97e7d74 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6103 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6103] == mem[_6103 + 12 len 20]
                if mem[_6103 + 12 len 20] != msg.sender:
                    revert with 0, 'E017'
                mem[0] = _6070
                mem[32] = 4
                splitsRemaining[_6070].field_0 = splitsRemaining[cd[4]].field_0
                splitsRemaining[_6070].field_512 = splitsRemaining[cd[4]].field_512 * _5991 / 1000
                if splitsRemaining[cd[4]].field_768:
                    mem[0] = _6070
                    mem[32] = 4
                    splitsRemaining[_6070].field_768 = splitsRemaining[cd[4]].field_768
                if splitsRemaining[cd[4]].field_1024 - 1:
                    mem[0] = _6070
                    mem[32] = 4
                    splitsRemaining[_6070].field_1024 = splitsRemaining[cd[4]].field_1024 - 1
                if splitsRemaining[cd[4]].field_1536:
                    mem[0] = _6070
                    mem[32] = 4
                    splitsRemaining[_6070].field_1536 = uint8(bool(splitsRemaining[cd[4]].field_1536))
                if splitsRemaining[cd[4]].field_256:
                    mem[0] = _6070
                    mem[32] = 4
                    splitsRemaining[_6070].field_256 = splitsRemaining[cd[4]].field_256
                if splitsRemaining[cd[4]].field_1544:
                    mem[0] = _6070
                    mem[32] = 4
                    splitsRemaining[_6070].field_1544 = Mask(248, 0, bool(splitsRemaining[cd[4]].field_1544))
                    splitsRemaining[_6070].field_1280 = splitsRemaining[cd[4]].field_1280
                if splitsRemaining[cd[4]].field_1552:
                    mem[0] = _6070
                    mem[32] = 4
                    splitsRemaining[_6070].field_1552 = Mask(240, 0, bool(splitsRemaining[cd[4]].field_1552))
                if idx >= mem[96]:
                    revert with 0, 50
                emit CreateFNFT(mem[(32 * idx) + 128], msg.sender);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + _5966
                continue 
            if s != 1000:
                revert with 0, 'E054'
            require ext_code.size(stor3)
            staticcall stor3.0xd59e296e with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5985 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5995 = mem[_5985]
            require mem[_5985] == mem[_5985 + 12 len 20]
            mem[mem[64] + 4] = cd[4]
            require ext_code.size(address(_5995))
            staticcall address(_5995).0xf77ee79d with:
                    gas gas_remaining wei
                   args cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6059 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if cd[100] == mem[_6059]:
                splitsRemaining[cd[4]].field_0 = 0
                splitsRemaining[cd[4]].field_256 = 0
                splitsRemaining[cd[4]].field_512 = 0
                splitsRemaining[cd[4]].field_768 = 0
                splitsRemaining[cd[4]].field_1024 = 0
                splitsRemaining[cd[4]].field_1280 = 0
                splitsRemaining[cd[4]].field_1536 = 0
        else:
            if ext_call.return_data[0] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                revert with 0, 17
            if not sub_628645c0[stor4[cd[4]].field_0].field_0:
                revert with 0, 18
            sub_628645c0[stor4[cd[4]].field_0].field_256 = 10^18 * ext_call.return_data[0] / sub_628645c0[stor4[cd[4]].field_0].field_0
            if ext_call.return_data[0] > -1:
                revert with 0, 17
            sub_628645c0[stor4[cd[4]].field_0].field_0 = ext_call.return_data[0]
            idx = 0
            s = 0
            while idx < ('cd', 68).length:
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                _5968 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                if s > !mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]:
                    revert with 0, 17
                if idx >= mem[ceil32(32 * ('cd', 36).length) + 97]:
                    revert with 0, 50
                _5992 = mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129]
                if splitsRemaining[cd[4]].field_512 and mem[(32 * idx) + ceil32(32 * ('cd', 36).length) + 129] > -1 / splitsRemaining[cd[4]].field_512:
                    revert with 0, 17
                _6037 = mem[64]
                mem[64] = mem[64] + 288
                mem[_6037] = splitsRemaining[cd[4]].field_0
                mem[_6037 + 32] = splitsRemaining[cd[4]].field_256
                mem[_6037 + 64] = splitsRemaining[cd[4]].field_512
                mem[_6037 + 96] = splitsRemaining[cd[4]].field_768
                mem[_6037 + 128] = splitsRemaining[cd[4]].field_1024
                mem[_6037 + 160] = splitsRemaining[cd[4]].field_1280
                mem[_6037 + 192] = bool(splitsRemaining[cd[4]].field_1536)
                mem[_6037 + 224] = bool(splitsRemaining[cd[4]].field_1544)
                mem[_6037 + 256] = bool(splitsRemaining[cd[4]].field_1552)
                _6038 = mem[64]
                mem[64] = mem[64] + 288
                mem[_6038] = 0
                mem[_6038 + 32] = 0
                mem[_6038 + 64] = 0
                mem[_6038 + 96] = 0
                mem[_6038 + 128] = 0
                mem[_6038 + 160] = 0
                mem[_6038 + 192] = 0
                mem[_6038 + 224] = 0
                mem[_6038 + 256] = 0
                _6039 = mem[64]
                mem[64] = mem[64] + 288
                mem[_6039] = splitsRemaining[cd[4]].field_0
                mem[_6039 + 32] = splitsRemaining[cd[4]].field_256
                mem[_6039 + 96] = splitsRemaining[cd[4]].field_768
                mem[_6039 + 160] = splitsRemaining[cd[4]].field_1280
                mem[_6039 + 192] = bool(splitsRemaining[cd[4]].field_1536)
                mem[_6039 + 224] = bool(splitsRemaining[cd[4]].field_1544)
                mem[_6039 + 256] = bool(splitsRemaining[cd[4]].field_1552)
                mem[_6039 + 64] = splitsRemaining[cd[4]].field_512 * _5992 / 1000
                if splitsRemaining[cd[4]].field_1024 < 1:
                    revert with 0, 17
                mem[_6039 + 128] = splitsRemaining[cd[4]].field_1024 - 1
                if idx >= mem[96]:
                    revert with 0, 50
                _6072 = mem[(32 * idx) + 128]
                if not msg.sender:
                    revert with 0, 'E004'
                require ext_code.size(stor3)
                staticcall stor3.0xf97e7d74 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _6104 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_6104] == mem[_6104 + 12 len 20]
                if mem[_6104 + 12 len 20] != msg.sender:
                    revert with 0, 'E017'
                mem[0] = _6072
                mem[32] = 4
                splitsRemaining[_6072].field_0 = splitsRemaining[cd[4]].field_0
                splitsRemaining[_6072].field_512 = splitsRemaining[cd[4]].field_512 * _5992 / 1000
                if splitsRemaining[cd[4]].field_768:
                    mem[0] = _6072
                    mem[32] = 4
                    splitsRemaining[_6072].field_768 = splitsRemaining[cd[4]].field_768
                if splitsRemaining[cd[4]].field_1024 - 1:
                    mem[0] = _6072
                    mem[32] = 4
                    splitsRemaining[_6072].field_1024 = splitsRemaining[cd[4]].field_1024 - 1
                if splitsRemaining[cd[4]].field_1536:
                    mem[0] = _6072
                    mem[32] = 4
                    splitsRemaining[_6072].field_1536 = uint8(bool(splitsRemaining[cd[4]].field_1536))
                if splitsRemaining[cd[4]].field_256:
                    mem[0] = _6072
                    mem[32] = 4
                    splitsRemaining[_6072].field_256 = splitsRemaining[cd[4]].field_256
                if splitsRemaining[cd[4]].field_1544:
                    mem[0] = _6072
                    mem[32] = 4
                    splitsRemaining[_6072].field_1544 = Mask(248, 0, bool(splitsRemaining[cd[4]].field_1544))
                    splitsRemaining[_6072].field_1280 = splitsRemaining[cd[4]].field_1280
                if splitsRemaining[cd[4]].field_1552:
                    mem[0] = _6072
                    mem[32] = 4
                    splitsRemaining[_6072].field_1552 = Mask(240, 0, bool(splitsRemaining[cd[4]].field_1552))
                if idx >= mem[96]:
                    revert with 0, 50
                emit CreateFNFT(mem[(32 * idx) + 128], msg.sender);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + _5968
                continue 
            if s != 1000:
                revert with 0, 'E054'
            require ext_code.size(stor3)
            staticcall stor3.0xd59e296e with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _5987 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _5996 = mem[_5987]
            require mem[_5987] == mem[_5987 + 12 len 20]
            mem[mem[64] + 4] = cd[4]
            require ext_code.size(address(_5996))
            staticcall address(_5996).0xf77ee79d with:
                    gas gas_remaining wei
                   args cd[4]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _6060 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if cd[100] == mem[_6060]:
                splitsRemaining[cd[4]].field_0 = 0
                splitsRemaining[cd[4]].field_256 = 0
                splitsRemaining[cd[4]].field_512 = 0
                splitsRemaining[cd[4]].field_768 = 0
                splitsRemaining[cd[4]].field_1024 = 0
                splitsRemaining[cd[4]].field_1280 = 0
                splitsRemaining[cd[4]].field_1536 = 0
    emit RedeemFNFT(cd[4], msg.sender);
}



}
