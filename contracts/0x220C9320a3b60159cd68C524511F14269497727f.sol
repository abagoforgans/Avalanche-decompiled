contract main {




// =====================  Runtime code  =====================


mapping of struct settingValue;
uint8 stor1;
address rolesManagerAddress; offset 8
address constsAddress;

function getSettingValue(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return settingValue[arg1].field_0
}

function paused() payable {
    return bool(stor1)
}

function hasSetting(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(settingValue[arg1].field_768)
}

function rolesManager() payable {
    return rolesManagerAddress
}

function isPaused() payable {
    return bool(stor1)
}

function consts() payable {
    return constsAddress
}

function _fallback() payable {
    revert
}

function requireIsNotPaused() payable {
    if stor1:
        revert with 0, 'PLATFORM_IS_PAUSED'
}

function requireIsPaused() payable {
    if not stor1:
        revert with 0, 'PLATFORM_ISNT_PAUSED'
}

function settings(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return settingValue[arg1].field_0, 
           settingValue[arg1].field_256,
           settingValue[arg1].field_512,
           bool(settingValue[arg1].field_768)
}

function getSetting(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return settingValue[arg1].field_0, 
           settingValue[arg1].field_256,
           settingValue[arg1].field_512,
           bool(settingValue[arg1].field_768)
}

function pause() payable {
    require ext_code.size(rolesManagerAddress)
    staticcall rolesManagerAddress.0xd86d744e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).PAUSER_ROLE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rolesManagerAddress)
    staticcall rolesManagerAddress.0xa3214f7c with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender, 96, 18, 0x53454e4445525f49534e545f5041555345520000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if stor1:
        revert with 0, 'PLATFORM_ALREADY_PAUSED'
    stor1 = 1
    emit PlatformPaused(msg.sender);
}

function unpause() payable {
    require ext_code.size(rolesManagerAddress)
    staticcall rolesManagerAddress.0xd86d744e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).PAUSER_ROLE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rolesManagerAddress)
    staticcall rolesManagerAddress.0xa3214f7c with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender, 96, 18, 0x53454e4445525f49534e545f5041555345520000000000000000000000000000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not stor1:
        revert with 0, 'PLATFORM_ISNT_PAUSED'
    stor1 = 0
    emit PlatformUnpaused(msg.sender);
}

function removeSetting(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(rolesManagerAddress)
    staticcall rolesManagerAddress.0xd86d744e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd853015e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rolesManagerAddress)
    staticcall rolesManagerAddress.0xa3214f7c with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender, Array(len=24, data='SENDER_ISNT_CONFIGURATOR')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not settingValue[arg1].field_768:
        revert with 0, 'SETTING_NOT_EXISTS'
    settingValue[arg1].field_0 = 0
    settingValue[arg1].field_256 = 0
    settingValue[arg1].field_512 = 0
    settingValue[arg1].field_768 = 0
    emit PlatformSettingRemoved(settingValue[arg1].field_0, arg1, msg.sender);
}

function updateSetting(bytes32 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(rolesManagerAddress)
    staticcall rolesManagerAddress.0xd86d744e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd853015e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rolesManagerAddress)
    staticcall rolesManagerAddress.0xa3214f7c with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender, Array(len=24, data='SENDER_ISNT_CONFIGURATOR')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not settingValue[arg1].field_768:
        revert with 0, 'SETTING_NOT_EXISTS'
    if arg2 == settingValue[arg1].field_0:
        revert with 0, 'NEW_VALUE_REQUIRED'
    if arg2 < settingValue[arg1].field_256:
        revert with 0, 'NEW_VALUE_MUST_BE_GT_MIN_VALUE'
    if arg2 > settingValue[arg1].field_512:
        revert with 0, 'NEW_VALUE_MUST_BE_LT_MAX_VALUE'
    settingValue[arg1].field_0 = arg2
    emit PlatformSettingUpdated(settingValue[arg1].field_0, arg2, arg1, msg.sender);
}

function createSetting(bytes32 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(rolesManagerAddress)
    staticcall rolesManagerAddress.0xd86d744e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0xd853015e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(rolesManagerAddress)
    staticcall rolesManagerAddress.0xa3214f7c with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender, Array(len=24, data='SENDER_ISNT_CONFIGURATOR')
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if 0 == arg1:
        revert with 0, 'NAME_MUST_BE_PROVIDED'
    if settingValue[arg1].field_768:
        revert with 0, 'SETTING_ALREADY_EXISTS'
    if arg2 < arg3:
        revert with 0, 'VALUE_MUST_BE_GT_MIN_VALUE'
    if arg2 > arg4:
        revert with 0, 'VALUE_MUST_BE_LT_MAX_VALUE'
    settingValue[arg1].field_0 = arg2
    settingValue[arg1].field_256 = arg3
    settingValue[arg1].field_512 = arg4
    settingValue[arg1].field_768 = 1
    emit PlatformSettingCreated(arg2, arg3, arg4, arg1, msg.sender);
}



}
