contract main {




// =====================  Runtime code  =====================


const MAX = -1


uint8 stor0;
address MEMOAddress;
address TIMEAddress;
address MIMAddress;
address WAVAXAddress;
address WMEMOAddress;
address sub_4a87cd67Address;
address ROUTERAddress;
uint256 sub_fc16a455;

function WMEMO() payable {
    return WMEMOAddress
}

function enabled() payable {
    return bool(stor0)
}

function ROUTER() payable {
    return ROUTERAddress
}

function sub_4a87cd67(?) payable {
    return sub_4a87cd67Address
}

function WAVAX() payable {
    return WAVAXAddress
}

function TIME() payable {
    return TIMEAddress
}

function MEMO() payable {
    return MEMOAddress
}

function MIM() payable {
    return MIMAddress
}

function sub_fc16a455(?) payable {
    return sub_fc16a455
}

function _fallback() payable {
    revert
}

function changeRouterAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    ROUTERAddress = arg1
}

function trade(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 'wrap disabled now'
}

function sub_30cce354(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(TIMEAddress)
    staticcall TIMEAddress.0xd44545e7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(MEMOAddress)
    staticcall MEMOAddress.0x2986c0e5 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size < 32
    revert
}



}
