contract main {




// =====================  Runtime code  =====================


address stor0;
address stor2;
address stor3;
address stor4;
uint256 totalAirdrops;
uint256 sub_c1493a31;
mapping of struct airdrops;
mapping of uint8 stor8;

function airdrops(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return airdrops[arg1].field_0, airdrops[arg1].field_128
}

function totalAirdrops() payable {
    return totalAirdrops
}

function sub_c1493a31(?) payable {
    return sub_c1493a31
}

function sub_c2d61d33(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function init() payable {
    stor0 = msg.sender
    stor2 = 0x17fe17065b6f973f1bad851ed8c9461c0169c31
    stor4 = 0x60ba9aaa57aa638a60c524a3ac24da91e04cfa5c
    stor3 = 0x539cb40d3670fe03dbe67857c4d8da307a70b305
}

function invested() payable {
    require ext_code.size(stor4)
    call stor4.invested(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function claimed() payable {
    require ext_code.size(stor4)
    call stor4.claimed(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_72f4300b(?) payable {
    require ext_code.size(stor3)
    call stor3.getNodeNumberOf(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_4b16cc65(?) payable {
    require ext_code.size(stor3)
    call stor3.getRewardAmountOf(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}



}
