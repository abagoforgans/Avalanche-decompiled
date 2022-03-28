contract main {




// =====================  Runtime code  =====================


address sub_a012e804Address;
uint256 sub_e7f05644;

function sub_a012e804(?) payable {
    return sub_a012e804Address
}

function sub_e7f05644(?) payable {
    return sub_e7f05644
}

function _fallback() payable {
    revert
}

function periodFinish() payable {
    require ext_code.size(sub_a012e804Address)
    staticcall sub_a012e804Address.endAt() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_a012e804Address)
    staticcall sub_a012e804Address.userInfo(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args sub_e7f05644, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_a012e804Address)
    staticcall sub_a012e804Address.pendingGondola(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args sub_e7f05644, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function totalSupply() payable {
    require ext_code.size(sub_a012e804Address)
    staticcall sub_a012e804Address.0x1526fe27 with:
            gas gas_remaining wei
           args sub_e7f05644
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x70a08231 with:
            gas gas_remaining wei
           args sub_a012e804Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function rewardRate() payable {
    require ext_code.size(sub_a012e804Address)
    staticcall sub_a012e804Address.totalAllocPoint() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_a012e804Address)
    staticcall sub_a012e804Address.0x1526fe27 with:
            gas gas_remaining wei
           args sub_e7f05644
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    require ext_code.size(sub_a012e804Address)
    staticcall sub_a012e804Address.gondolaPerSec() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[0])
}



}
