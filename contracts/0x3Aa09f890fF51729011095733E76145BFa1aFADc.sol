contract main {




// =====================  Runtime code  =====================


address godAddress;
address sub_db2a4673Address;
address sub_37024f09Address;

function sub_37024f09(?) payable {
    return sub_37024f09Address
}

function god() payable {
    return godAddress
}

function sub_db2a4673(?) payable {
    return sub_db2a4673Address
}

function _fallback() payable {
    revert
}

function start(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_37024f09Address)
    call sub_37024f09Address.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_37024f09Address)
    call sub_37024f09Address.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_db2a4673Address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_db2a4673Address)
    call sub_db2a4673Address.Deposit(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function stop() payable {
    if godAddress != msg.sender:
        revert with 0, 'no no no'
    require ext_code.size(sub_db2a4673Address)
    staticcall sub_db2a4673Address.RocoPerSecond() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_db2a4673Address)
    staticcall sub_db2a4673Address.0x91132cc5 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 'NH{q', 18
    if ext_call.return_data[0] and 110000 * 10^18 / ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 'NH{q', 17
    require ext_code.size(sub_db2a4673Address)
    call sub_db2a4673Address.UpdatePerRocoSecond(uint256 arg1) with:
         gas gas_remaining wei
        args (ext_call.return_data[0] * 110000 * 10^18 / ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_db2a4673Address)
    staticcall sub_db2a4673Address.0x91132cc5 with:
            gas gas_remaining wei
           args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_db2a4673Address)
    call sub_db2a4673Address.Withdraw(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args 0, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_37024f09Address)
    staticcall sub_37024f09Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_37024f09Address)
    call sub_37024f09Address.0xa9059cbb with:
         gas gas_remaining wei
        args godAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_db2a4673Address)
    call sub_db2a4673Address.UpdatePerRocoSecond(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 110000 * 10^18, ext_call.return_data[0], ext_call.return_data[0]
}



}
