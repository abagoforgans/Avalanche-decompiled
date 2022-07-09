contract main {




// =====================  Runtime code  =====================


#
#  - sub_20c6909c(?)
#
const sub_25648691(?) = 100

const sub_4c6455c8(?) = 'ClaimerPause'

const sub_e727feb1(?) = 3


address settingsAddress;
address defaultFeeReceiverAddress;
mapping of uint256 sub_4a0420e7;
mapping of struct fees;
address sub_61c95926Address;
address sub_acd11bb9Address;

function sub_0b40fef4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return fees[arg1].field_0, fees[arg1].field_256, fees[arg1].field_512, bool(fees[arg1].field_768)
}

function defaultFeeReceiver() payable {
    return defaultFeeReceiverAddress
}

function sub_4a0420e7(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    return sub_4a0420e7[arg1][arg2]
}

function fees(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return fees[arg1].field_0, fees[arg1].field_256, fees[arg1].field_512, bool(fees[arg1].field_768)
}

function sub_61c95926(?) payable {
    return sub_61c95926Address
}

function sub_acd11bb9(?) payable {
    return sub_acd11bb9Address
}

function settings() payable {
    return settingsAddress
}

function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function setSettings(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).consts() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).OWNER_ROLE() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).requireHasRole(bytes32 arg1, address arg2, string arg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender, 96, 17, 'SENDER_ISNT_OWNER', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'SETTINGS_MUST_BE_CONTRACT'
    if arg1 == settingsAddress:
        revert with 0, 'SETTINGS_MUST_BE_NEW'
    settingsAddress = arg1
    emit PlatformSettingsUpdated(settingsAddress, arg1);
}

function sub_9842ded3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).consts() with:
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).requireHasRole(bytes32 arg1, address arg2, string arg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender, 96, 24, 'SENDER_ISNT_CONFIGURATOR', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(arg1):
        revert with 0, 'NEW_SIGNER_AUTHORITY_INVALID'
    if address(arg1) == sub_61c95926Address:
        revert with 0, 'NEW_SIGNER_AUTHORITY_INVALID'
    sub_61c95926Address = address(arg1)
    emit 0xffefc16a: sub_61c95926Address, address(arg1)
}

function sub_210ace43(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).consts() with:
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).requireHasRole(bytes32 arg1, address arg2, string arg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender, 96, 24, 'SENDER_ISNT_CONFIGURATOR', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(arg1):
        revert with 0, 'NEW_CUSTODIAL_ACCOUNT_INVALID'
    if address(arg1) == sub_acd11bb9Address:
        revert with 0, 'NEW_CUSTODIAL_ACCOUNT_INVALID'
    sub_acd11bb9Address = address(arg1)
    emit 0x90075c65: sub_acd11bb9Address, address(arg1)
}

function sub_465fe213(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).consts() with:
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).requireHasRole(bytes32 arg1, address arg2, string arg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender, 96, 24, 'SENDER_ISNT_CONFIGURATOR', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if fees[arg1].field_768:
        revert with 0, 'QUERIED_FEE_ALREADY_EXISTS'
    if arg4 < arg3:
        revert with 0, 'PERCENTAGE_BASE_MUST_BE_GT_AMOUNT'
    if not address(arg2):
        revert with 0, 'INVALID_RECEIVER_ADDRESS'
    fees[arg1].field_0 = address(arg2)
    fees[arg1].field_256 = arg3
    fees[arg1].field_512 = arg4
    fees[arg1].field_768 = 1
    emit 0xe7d76dd7: arg3, arg4, arg1, address(arg2)
}

function sub_0c3484e9(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).consts() with:
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
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(settingsAddress)
    staticcall settingsAddress.rolesManager() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).requireHasRole(bytes32 arg1, address arg2, string arg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], msg.sender, 96, 24, 'SENDER_ISNT_CONFIGURATOR', 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not fees[arg1].field_768:
        revert with 0, 'QUERIED_FEE_NOT_EXISTS'
    if fees[arg1].field_256 == arg3:
        revert with 0, 'NEW_AMOUNT_REQUIRED'
    if fees[arg1].field_0 == address(arg2):
        revert with 0, 'NEW_RECEIVER_REQUIRED'
    if arg4 < arg3:
        revert with 0, 'PERCENTAGE_BASE_MUST_BE_GT_AMOUNT'
    if not address(arg2):
        revert with 0, 'INVALID_RECEIVER_ADDRESS'
    fees[arg1].field_0 = address(arg2)
    fees[arg1].field_256 = arg3
    fees[arg1].field_512 = arg4
    emit 0x8f535161: arg3, arg4, arg1, address(arg2)
}



}
