contract main {




// =====================  Runtime code  =====================


const DEFAULT_CLIFF = (8760 * 24 * 3600)

const DEFAULT_REVOCABLE = 1

const DEFAULT_DURATION = (35040 * 24 * 3600)


address defaultOwner;

function defaultOwner() payable {
    return defaultOwner
}

function _fallback() payable {
    revert
}

function deployDefaultVestingContract(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    create contract with 0 wei
                    code: code.data[4213 len 3694]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
         gas gas_remaining wei
        args 0, 0, arg2, 8760 * 24 * 3600, 35040 * 24 * 3600, 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args defaultOwner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployedVestingContract(address(create.new_address), arg1, defaultOwner);
}

function deployTimelockContract(address arg1, address arg2, uint256 arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    create contract with 0 wei
                    code: code.data[1290 len 2923]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(address rg1, uint256 rg2, bool rg3) with:
         gas gas_remaining wei
        args address(arg1), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployedTimelockContract(arg3, address(create.new_address), arg1);
}

function deployVestingContract(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, bool arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg6 == arg6
    create contract with 0 wei
                    code: code.data[4213 len 3694]
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).initialize(address rg1, uint256 rg2, uint256 rg3, uint256 rg4, bool rg5) with:
         gas gas_remaining wei
        args 0, 0, arg3, arg4, arg5, arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit DeployedVestingContract(address(create.new_address), arg2, arg1);
}



}
