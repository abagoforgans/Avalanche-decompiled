contract main {




// =====================  Runtime code  =====================


address stor0;
address timeAddress;
mapping of uint8 stor2;
address sub_7bb5abceAddress;
address sub_d81961f6Address;

function time() payable {
    return timeAddress
}

function sub_7bb5abce(?) payable {
    return sub_7bb5abceAddress
}

function sub_d81961f6(?) payable {
    return sub_d81961f6Address
}

function _fallback() payable {
    revert
}

function sub_61fa78af(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    sub_7bb5abceAddress = address(arg1)
}

function sub_762f655d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require msg.sender == stor0
    sub_d81961f6Address = address(arg1)
}

function sub_8701d7b2(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require msg.sender == stor0
    stor2[address(arg1)] = uint8(bool(arg2))
}

function withdrawEther(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawToken(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require msg.sender == stor0
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d015a04c(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    if stor2[address(arg3)]:
        call timeAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_7bb5abceAddress, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call sub_7bb5abceAddress.0x961e1c49 with:
             gas gas_remaining wei
            args address(arg1), address(arg3), address(arg4)
    else:
        call timeAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, sub_d81961f6Address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        call sub_d81961f6Address.0x961e1c49 with:
             gas gas_remaining wei
            args address(arg1), address(arg3), address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
