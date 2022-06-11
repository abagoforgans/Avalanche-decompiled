contract main {




// =====================  Runtime code  =====================


address stor0;
address tokenAddress;
mapping of uint8 stor2;

function minter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor2[arg1])
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor0 = arg1
    emit OwnershipTransferred(arg1);
}

function setMinter(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor2[address(arg1)] = uint8(arg2)
}

function returnOwnership() payable {
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setIsFeeExempt(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x658d4b7f with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_506c43b3(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == bool(arg2)
    require arg3 == bool(arg3)
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(tokenAddress)
    call tokenAddress.0x506c43b3 with:
         gas gas_remaining wei
        args address(arg1), bool(arg2), bool(arg3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b1c46c9f(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == address(arg4)
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(tokenAddress)
    call tokenAddress.0xb1c46c9f with:
         gas gas_remaining wei
        args 0, uint32(arg1), arg2, arg3, address(arg4)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function burn() payable {
    require stor2[address(msg.sender)]
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0x42966c68 with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require stor2[address(msg.sender)]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa0712d68 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
