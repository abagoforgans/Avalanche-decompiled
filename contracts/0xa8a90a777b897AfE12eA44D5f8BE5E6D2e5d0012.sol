contract main {




// =====================  Runtime code  =====================


#
#  - sub_ba7b3441(?)
#
const DEFAULT_ADMIN_ROLE = 0

const MANAGER_ROLE = 0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b


mapping of struct roleAdmin;
address sub_d8f7af0cAddress;
address oracleAddress;
address defaultDexRouterAddress;
address defaultDexFactoryAddress;
address wethAddress;
address sub_b0d98e71Address;
address feeTakerAddress;
array of address sub_578e5c22;
mapping of address sub_ed553e52;
mapping of address sub_15bc2697;
mapping of uint8 stor12;
array of struct defaultTokenWhitelist;
mapping of uint256 stor14;
array of struct notDefaultDexTokensSet;
mapping of uint256 stor16;

function sub_13d20a42(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor12[arg1])
}

function sub_15bc2697(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_15bc2697[arg1]
}

function allAssetsLen() payable {
    return sub_578e5c22.length
}

function getRoleAdmin(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return roleAdmin[arg1].field_256
}

function weth() payable {
    return wethAddress
}

function notDefaultDexTokensSetLen() payable {
    return notDefaultDexTokensSet.length
}

function sub_578e5c22(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_578e5c22.length
    return sub_578e5c22[arg1]
}

function isTokenDefaultWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[address(arg1)])
}

function feeTaker() payable {
    return feeTakerAddress
}

function oracle() payable {
    return oracleAddress
}

function defaultTokenWhitelist(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= defaultTokenWhitelist.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return defaultTokenWhitelist[arg1].field_0
}

function hasRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return bool(roleAdmin[arg1][address(arg2)].field_0)
}

function defaultDexFactory() payable {
    return defaultDexFactoryAddress
}

function sub_b0d98e71(?) payable {
    return sub_b0d98e71Address
}

function defaultDexRouter() payable {
    return defaultDexRouterAddress
}

function getNotDefaultDexTokensSet(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= notDefaultDexTokensSet.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
    return notDefaultDexTokensSet[arg1].field_0
}

function sub_d8f7af0c(?) payable {
    return sub_d8f7af0cAddress
}

function defaultTokenWhitelistLen() payable {
    return defaultTokenWhitelist.length
}

function sub_ed553e52(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_ed553e52[arg1]
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x7965db0b00000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function renounceRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AccessControl: can only renounce roles for self'
    if roleAdmin[arg1][address(arg2)].field_0:
        roleAdmin[arg1][address(arg2)].field_0 = 0
        emit RoleRevoked(arg1, arg2, msg.sender);
}

function changeOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0, 'Access error'
    if oracleAddress:
        revert with 0, 'Bad use'
    if not arg1:
        revert with 0, 'Bad use'
    oracleAddress = arg1
}

function changeFeeTaker(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0, 'Access error'
    if feeTakerAddress:
        revert with 0, 'Bad use'
    if not arg1:
        revert with 0, 'Bad use'
    feeTakerAddress = arg1
}

function changeZVault(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0, 'Access error'
    if sub_b0d98e71Address:
        revert with 0, 'Bad use'
    if not arg1:
        revert with 0, 'Bad use'
    sub_b0d98e71Address = arg1
}

function removeNotDefaultDexToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0, 'Access error'
    if stor16[address(arg1)]:
        if stor16[address(arg1)] < 1:
            revert with 0, 17
        if notDefaultDexTokensSet.length < 1:
            revert with 0, 17
        if notDefaultDexTokensSet.length - 1 >= notDefaultDexTokensSet.length:
            revert with 0, 50
        if stor16[address(arg1)] - 1 >= notDefaultDexTokensSet.length:
            revert with 0, 50
        notDefaultDexTokensSet[stor16[address(arg1)]].field_0 = notDefaultDexTokensSet[notDefaultDexTokensSet.length].field_0
        stor16[stor15[stor15.length].field_0] = stor16[address(arg1)]
        if not notDefaultDexTokensSet.length:
            revert with 0, 49
        notDefaultDexTokensSet[notDefaultDexTokensSet.length].field_0 = 0
        notDefaultDexTokensSet.length--
        stor16[address(arg1)] = 0
    sub_ed553e52[address(arg1)] = 0
    sub_15bc2697[address(arg1)] = 0
}

function revokeRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 0
            emit RoleRevoked(arg1, arg2, msg.sender);
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function grantRole(bytes32 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if roleAdmin[roleAdmin[arg1].field_256][address(msg.sender)].field_0:
        if not roleAdmin[arg1][address(arg2)].field_0:
            roleAdmin[arg1][address(arg2)].field_0 = 1
            emit RoleGranted(arg1, arg2, msg.sender);
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
    revert with 0, 32, 148, 0x416363657373436f6e74726f6c3a, mem[160 len 42], 8297, mem[288 len 66], 0, 0 >> 928, 0
}

function addNotDefaultDexToken(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0, 'Access error'
    require ext_code.size(0xe248d52ed1a0c68eabe6d607d535b5e30ef842c7)
    delegate 0xe248d52ed1a0c68eabe6d607d535b5e30ef842c7.getWethFromDex(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require delegate.return_data[0] == delegate.return_data[12 len 20]
    if not delegate.return_data[12 len 20]:
        revert with 0, 'Wrong dex router'
    if wethAddress != delegate.return_data[12 len 20]:
        revert with 0, 'Wrong dex router'
    stor12[address(arg2)] = 1
    if not stor16[address(arg1)]:
        notDefaultDexTokensSet.length++
        notDefaultDexTokensSet[notDefaultDexTokensSet.length].field_0 = arg1
        notDefaultDexTokensSet[notDefaultDexTokensSet.length].field_160 = 0
        stor16[address(arg1)] = notDefaultDexTokensSet.length
    sub_ed553e52[address(arg1)] = arg2
    sub_15bc2697[address(arg1)] = arg3
    mem[ceil32(return_data.size) + 128] = arg1
    mem[ceil32(return_data.size) + 160] = 0x11b80c8c00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 164] = 64
    idx = 0
    s = ceil32(return_data.size) + 128
    t = ceil32(return_data.size) + 260
    while idx < 1:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(0xe248d52ed1a0c68eabe6d607d535b5e30ef842c7)
    delegate 0xe248d52ed1a0c68eabe6d607d535b5e30ef842c7.0x11b80c8c with:
         gas gas_remaining wei
        args Array(len=1, data=mem[ceil32(return_data.size) + 260]), this.address
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function changeIsTokenWhitelisted(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not roleAdmin[0xfe241ecf16d79d0f8dbfb92cbc07fe17840425976cf0667f022fe9877caa831b][address(msg.sender)].field_0:
        if not roleAdmin[address(msg.sender)].field_0:
            revert with 0, 'Access error'
    if not arg1:
        revert with 0, 'Token error'
    if not arg2:
        if not stor14[address(arg1)]:
            revert with 0, 'Wrong value'
        if stor14[address(arg1)] < 1:
            revert with 0, 17
        if defaultTokenWhitelist.length < 1:
            revert with 0, 17
        if defaultTokenWhitelist.length - 1 >= defaultTokenWhitelist.length:
            revert with 0, 50
        if stor14[address(arg1)] - 1 >= defaultTokenWhitelist.length:
            revert with 0, 50
        defaultTokenWhitelist[stor14[address(arg1)]].field_0 = defaultTokenWhitelist[defaultTokenWhitelist.length].field_0
        stor14[stor13[stor13.length].field_0] = stor14[address(arg1)]
        if not defaultTokenWhitelist.length:
            revert with 0, 49
        defaultTokenWhitelist[defaultTokenWhitelist.length].field_0 = 0
        defaultTokenWhitelist.length--
        stor14[address(arg1)] = 0
    else:
        mem[128] = arg1
        mem[160] = 0x11b80c8c00000000000000000000000000000000000000000000000000000000
        mem[164] = 64
        idx = 0
        s = 128
        t = 260
        while idx < 1:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(0xe248d52ed1a0c68eabe6d607d535b5e30ef842c7)
        delegate 0xe248d52ed1a0c68eabe6d607d535b5e30ef842c7.0x11b80c8c with:
             gas gas_remaining wei
            args Array(len=1, data=mem[260]), this.address
        if not delegate.return_code:
            revert with ext_call.return_data[0 len return_data.size]
        if stor14[address(arg1)]:
            revert with 0, 'Wrong value'
        defaultTokenWhitelist.length++
        defaultTokenWhitelist[defaultTokenWhitelist.length].field_0 = arg1
        defaultTokenWhitelist[defaultTokenWhitelist.length].field_160 = 0
        stor14[address(arg1)] = defaultTokenWhitelist.length
    emit WhitelistChange(arg2, arg1);
}



}
