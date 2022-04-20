contract main {




// =====================  Runtime code  =====================


address settingsAddress;
mapping of uint8 stor1;
mapping of uint256 sub_16857892;

function sub_16857892(?) payable {
    require calldata.size - 4 >= 32
    return sub_16857892[arg1]
}

function sub_58f1247b(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[arg1])
}

function hasValuation(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    return bool(sub_16857892[address(arg1)])
}

function isFungibleToken(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function settings() payable {
    return settingsAddress
}

function _fallback() payable {
    revert
}

function isConfigured(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[address(arg1)]:
        return bool(stor1[address(arg1)])
    return bool(sub_16857892[address(arg1)])
}

function valuate(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if stor1[address(arg1)]:
        return arg4
    return sub_16857892[address(arg1)]
}

function requireIsConfigured(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor1[address(arg1)]:
        if not sub_16857892[address(arg1)]:
            revert with 0, 'TOKEN_ISNT_CONFIGURED'
}

function requireHasValuation(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if not sub_16857892[address(arg1)]:
        revert with 0, 'TOKEN_HASNT_VALUATION'
}

function setSettings(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).consts() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).OWNER_ROLE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).requireHasRole(bytes32 rg1, address rg2, string rg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender, 96, 17, 0x4552000000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ext_code.size(arg1):
        revert with 0, 'SETTINGS_MUST_BE_CONTRACT'
    if settingsAddress == arg1:
        revert with 0, 'SETTINGS_MUST_BE_NEW'
    settingsAddress = arg1
    emit PlatformSettingsUpdated(settingsAddress, arg1);
}

function sub_0b0c6afe(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).consts() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd853015e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).requireHasRole(bytes32 rg1, address rg2, string rg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender, 'SENDER_ISNT_CONFIGURATOR'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ('cd', 4).length:
        revert with 0, 'TOKENS_REQUIRED'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 2
        sub_16857892[address(cd[((32 * idx) + cd[4] + 36)])] = cd[36]
        idx = idx + 1
        continue 
    emit NewValuationsSet(Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), cd[36]);
}

function sub_78ac5639(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).consts() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd853015e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).requireHasRole(bytes32 rg1, address rg2, string rg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender, 'SENDER_ISNT_CONFIGURATOR'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not ('cd', 4).length:
        revert with 0, 'TOKENS_REQUIRED'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 1
        stor1[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
    emit TokensAsFungibleSet(Array(len=('cd', 4).length, data=call.data[cd[4] + 36 len floor32(('cd', 4).length)]), bool(cd[36]));
}



}
