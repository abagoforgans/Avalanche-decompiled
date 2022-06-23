contract main {




// =====================  Runtime code  =====================


address routerAddress;
address masterChefAddress;
address rewardsTokenAddress;
address WETHAddress;
mapping of address sub_70b3dc25;
array of address sub_8ad8e368;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function masterChef() payable {
    return masterChefAddress
}

function sub_70b3dc25(?) payable {
    require calldata.size - 4 >= 32
    return sub_70b3dc25[arg1]
}

function sub_8ad8e368(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_8ad8e368.length
    return sub_8ad8e368[arg1]
}

function allStakedLPTokenLength() payable {
    return sub_8ad8e368.length
}

function WETH() payable {
    return WETHAddress
}

function rewardsToken() payable {
    return rewardsTokenAddress
}

function router() payable {
    return routerAddress
}

function _fallback() payable {
    revert
}

function sub_c0990274(?) payable {
    require calldata.size - 4 >= 32
    if sub_70b3dc25[arg1]:
        revert with 0, 'StakedLPTokenFactory: PID_EXISTS'
    require ext_code.size(masterChefAddress)
    staticcall masterChefAddress.lpToken(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    create2 contract with 0 wei
                    salt: arg1
                    code: code.data[1634 len 16786]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0xe9d60d9f with:
         gas gas_remaining wei
        args arg1, address(ext_call.return_data[0]), address(ext_call.return_data[0]), address(ext_call.return_data[0]), routerAddress, masterChefAddress, rewardsTokenAddress, WETHAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    sub_70b3dc25[arg1] = address(create2.new_address)
    sub_8ad8e368.length++
    stor36B6[stor5.length] = address(create2.new_address)
    emit 0xa6f208b9: address(create2.new_address), sub_8ad8e368.length, address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg1
    return address(create2.new_address)
}



}
