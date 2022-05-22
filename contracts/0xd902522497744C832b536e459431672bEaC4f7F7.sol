contract main {




// =====================  Runtime code  =====================


address timeAddress;
address memoriesAddress;
address stor4;

function Memories() payable {
    return memoriesAddress
}

function Time() payable {
    return timeAddress
}

function _fallback() payable {
    revert
}

function sub_0a5d48a9(?) payable {
    require calldata.size - 4 >= 32
    timeAddress = 0xb54f16fb19478766a268f172c9480f8da1a7c9c3
    memoriesAddress = 0x136acd46c134e8269052c62a67042d6bdedde3c9
    require ext_code.size(0x136acd46c134e8269052c62a67042d6bdedde3c9)
    call 0x136acd46c134e8269052c62a67042d6bdedde3c9.0x23b872dd with:
         gas gas_remaining wei
        args stor4, 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(timeAddress)
    call timeAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args this.address, 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(timeAddress)
    call timeAddress.0x23b872dd with:
         gas gas_remaining wei
        args 0x4456b87af11e87e329ab7d7c7a246ed1ac2168b9, stor4, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
