contract main {




// =====================  Runtime code  =====================


address sub_3b1cc64eAddress;
address _treasuryAddress;
uint256 sub_1051acde;
mapping of struct voter;
uint8 ini;

function sub_1051acde(?) payable {
    return sub_1051acde
}

function sub_3b1cc64e(?) payable {
    return sub_3b1cc64eAddress
}

function ini() payable {
    return bool(ini)
}

function getVoter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return voter[address(arg1)].field_0, voter[address(arg1)].field_0, voter[address(arg1)].field_128
}

function _treasury() payable {
    return _treasuryAddress
}

function _fallback() payable {
    revert
}

function init() payable {
    require not ini
    ini = 1
    sub_3b1cc64eAddress = 0x17fe17065b6f973f1bad851ed8c9461c0169c31
    _treasuryAddress = 0x56d4f9eed62651d69af66886a0aa3f9c0500fdea
}

function sub_3d67cebb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if block.number < voter[address(msg.sender)].field_128:
        revert with 'NH{q', 17
    if block.number - voter[address(msg.sender)].field_128 and voter[address(arg1)].field_0 > -1 / block.number - voter[address(msg.sender)].field_128:
        revert with 'NH{q', 17
    if (block.number * voter[address(arg1)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(arg1)].field_0) and 62 * 10^14 > -1 / (block.number * voter[address(arg1)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(arg1)].field_0):
        revert with 'NH{q', 17
    if not sub_1051acde:
        revert with 'NH{q', 18
    return ((62 * 10^14 * block.number * voter[address(arg1)].field_0) - (62 * 10^14 * voter[address(msg.sender)].field_128 * voter[address(arg1)].field_0) / sub_1051acde)
}

function sub_ce189c9c(?) payable {
    if voter[address(msg.sender)].field_160 <= block.number:
        voter[address(msg.sender)].field_128 = uint32(block.number)
        return 0
    if voter[address(msg.sender)].field_0 <= 0:
        voter[address(msg.sender)].field_128 = uint32(block.number)
        return 0
    if block.number < voter[address(msg.sender)].field_128:
        revert with 'NH{q', 17
    if block.number - voter[address(msg.sender)].field_128 and voter[address(msg.sender)].field_0 > -1 / block.number - voter[address(msg.sender)].field_128:
        revert with 'NH{q', 17
    if (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0) and 62 * 10^14 > -1 / (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0):
        revert with 'NH{q', 17
    if not sub_1051acde:
        revert with 'NH{q', 18
    require ext_code.size(_treasuryAddress)
    call _treasuryAddress.getRewards(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, (62 * 10^14 * block.number * voter[address(msg.sender)].field_0) - (62 * 10^14 * voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0) / sub_1051acde
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.number > -1000001:
        revert with 'NH{q', 17
    voter[address(msg.sender)].field_160 = uint32(block.number + 10^6)
    voter[address(msg.sender)].field_128 = uint32(block.number)
    return ((62 * 10^14 * block.number * voter[address(msg.sender)].field_0) - (62 * 10^14 * voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0) / sub_1051acde)
}

function unlock(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require voter[address(msg.sender)].field_0 >= arg1
    require sub_1051acde >= arg1
    if voter[address(msg.sender)].field_160 > block.number:
        if voter[address(msg.sender)].field_0 > 0:
            if block.number < voter[address(msg.sender)].field_128:
                revert with 'NH{q', 17
            if block.number - voter[address(msg.sender)].field_128 and voter[address(msg.sender)].field_0 > -1 / block.number - voter[address(msg.sender)].field_128:
                revert with 'NH{q', 17
            if (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0) and 62 * 10^14 > -1 / (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0):
                revert with 'NH{q', 17
            if not sub_1051acde:
                revert with 'NH{q', 18
            require ext_code.size(_treasuryAddress)
            call _treasuryAddress.getRewards(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (62 * 10^14 * block.number * voter[address(msg.sender)].field_0) - (62 * 10^14 * voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0) / sub_1051acde
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.number > -1000001:
                revert with 'NH{q', 17
            voter[address(msg.sender)].field_160 = uint32(block.number + 10^6)
    voter[address(msg.sender)].field_128 = uint32(block.number)
    if voter[address(msg.sender)].field_0 < uint128(arg1):
        revert with 'NH{q', 17
    voter[address(msg.sender)].field_0 = uint128(voter[address(msg.sender)].field_0 - uint128(arg1))
    if arg1 and 19 > -1 / arg1:
        revert with 'NH{q', 17
    require ext_code.size(sub_3b1cc64eAddress)
    call sub_3b1cc64eAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, 19 * arg1 / 20
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if arg1 and 19 > -1 / arg1:
        revert with 'NH{q', 17
    if arg1 < 19 * arg1 / 20:
        revert with 'NH{q', 17
    require ext_code.size(sub_3b1cc64eAddress)
    call sub_3b1cc64eAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args _treasuryAddress, arg1 - (19 * arg1 / 20)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_1051acde < arg1:
        revert with 'NH{q', 17
    sub_1051acde -= arg1
}

function sub_49e84f24(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if voter[address(msg.sender)].field_160 <= block.number:
        voter[address(msg.sender)].field_128 = uint32(block.number)
        if block.number > -1000001:
            revert with 'NH{q', 17
    else:
        if voter[address(msg.sender)].field_0 <= 0:
            voter[address(msg.sender)].field_128 = uint32(block.number)
            if block.number > -1000001:
                revert with 'NH{q', 17
        else:
            if block.number < voter[address(msg.sender)].field_128:
                revert with 'NH{q', 17
            if block.number - voter[address(msg.sender)].field_128 and voter[address(msg.sender)].field_0 > -1 / block.number - voter[address(msg.sender)].field_128:
                revert with 'NH{q', 17
            if (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0) and 62 * 10^14 > -1 / (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0):
                revert with 'NH{q', 17
            if not sub_1051acde:
                revert with 'NH{q', 18
            require ext_code.size(_treasuryAddress)
            call _treasuryAddress.getRewards(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, (62 * 10^14 * block.number * voter[address(msg.sender)].field_0) - (62 * 10^14 * voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0) / sub_1051acde
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if block.number > -1000001:
                revert with 'NH{q', 17
            voter[address(msg.sender)].field_160 = uint32(block.number + 10^6)
            voter[address(msg.sender)].field_128 = uint32(block.number)
    voter[address(msg.sender)].field_160 = uint32(block.number + 10^6)
    require arg1 > 0
    require ext_code.size(sub_3b1cc64eAddress)
    staticcall sub_3b1cc64eAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[0] >= arg1
    if voter[address(msg.sender)].field_0 > -uint128(arg1) + test266151307():
        revert with 'NH{q', 17
    voter[address(msg.sender)].field_0 = uint128(voter[address(msg.sender)].field_0 + uint128(arg1))
    require ext_code.size(sub_3b1cc64eAddress)
    call sub_3b1cc64eAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if sub_1051acde > -arg1 - 1:
        revert with 'NH{q', 17
    sub_1051acde += arg1
}



}
