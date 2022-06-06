contract main {




// =====================  Runtime code  =====================


const sub_dc933777(?) = 10^6


mapping of uint256 sub_4d2df765;
address owner;
uint256 sub_7d468655;

function sub_4d2df765(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_4d2df765[address(arg1)]
}

function sub_7d468655(?) payable {
    return sub_7d468655
}

function getOwner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function passOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Unauthorized'
    owner = arg1
}

function sub_764bb245(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Unauthorized'
    sub_4d2df765[address(arg1)] = arg2
}

function sub_aefcde31(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Unauthorized'
    if arg1 >= 10^6:
        revert with 0, 'Fee too big'
    sub_7d468655 = arg1
}

function sub_49cfc692(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == address(arg5)
    if arg3 and sub_7d468655 > -1 / arg3:
        revert with 0, 17
    if arg3 * sub_7d468655 / 10^6 <= sub_4d2df765[address(arg1)]:
        return sub_7d468655
    if not arg3:
        return 0
    if sub_4d2df765[address(arg1)] and 10^6 > -1 / sub_4d2df765[address(arg1)]:
        revert with 0, 17
    if not arg3:
        revert with 0, 18
    return (10^6 * sub_4d2df765[address(arg1)] / arg3)
}

function withdrawTokens(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Unauthorized'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(arg1)
    if arg2 <= ext_call.return_data[0]:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), arg2
    else:
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg3), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
