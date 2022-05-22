contract main {




// =====================  Runtime code  =====================


address timeAddress;
address memoriesAddress;

function Memories() {
    return memoriesAddress
}

function Time() {
    return timeAddress
}

function _fallback() payable {
    revert
}

function unstake(address arg1, uint256 arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    timeAddress = arg3
    memoriesAddress = arg4
    require ext_code.size(memoriesAddress)
    call memoriesAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(timeAddress)
    call timeAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}



}
