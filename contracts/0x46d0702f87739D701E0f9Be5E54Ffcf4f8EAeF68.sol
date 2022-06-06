contract main {




// =====================  Runtime code  =====================


#
#  - sub_07722f0b(?)
#  - sub_78dd604b(?)
#
address stor2;
mapping of address stor5;
uint256 sub_683d8009;
uint256 sub_88ddf15a;

function sub_683d8009(?) payable {
    return sub_683d8009
}

function sub_88ddf15a(?) payable {
    return sub_88ddf15a
}

function _fallback() payable {
    revert
}

function sub_bf29f039(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    sub_88ddf15a = arg2
}

function sub_dd71fd0b(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor5[arg1] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Source must be the oracle of the request'
    stor5[arg1] = 0
    emit ChainlinkFulfilled(arg1);
    sub_683d8009 = arg2
}

function withdrawLink() payable {
    staticcall stor2.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    call stor2.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'Unable to transfer'
}



}
