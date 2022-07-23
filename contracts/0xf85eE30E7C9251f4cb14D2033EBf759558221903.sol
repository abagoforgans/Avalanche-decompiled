contract main {




// =====================  Runtime code  =====================


#
#  - sub_1ddbf26c(?)
#  - sub_c2f6202d(?)
#
const BETA = 2

const DECIMAL_PRECISION = 10^18

const NAME = 'TroveManagerRedemptions'


address stor0;
address stor50;
address stor51;
address stor150;
address stor151;
address stor152;
address stor153;
uint8 stor154; offset 160
uint8 stor154; offset 168
uint128 stor154; offset 160
address stor154;

function _fallback() payable {
    revert
}

function sub_a10c5606(?) payable {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, 'TMR:Caller not Controller'
    Mask(96, 0, stor154.field_160) = Mask(96, 0, arg1)
}

function getEntireSystemColl() payable {
    require ext_code.size(stor50)
    staticcall stor50.0x651340c4 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setAddresses(address arg1, address arg2, address arg3, address arg4, address arg5, address arg6, address arg7, address arg8) payable {
    require calldata.size - 4 >= 256
    if uint8(stor154.field_168):
        revert with 0, 'Addresses already set'
    stor50 = arg1
    stor51 = arg2
    stor0 = arg7
    stor152 = arg3
    address(stor154.field_0) = arg4
    Mask(96, 0, stor154.field_160) = uint8(stor154.field_160)
    uint8(stor154.field_168) = 1
    stor151 = arg5
    stor153 = arg6
    stor150 = arg8
}

function getEntireSystemDebt() payable {
    require ext_code.size(stor50)
    staticcall stor50.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor51)
    staticcall stor51.0x8df70992 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'add overflow'
    return (2 * ext_call.return_data[0])
}



}
