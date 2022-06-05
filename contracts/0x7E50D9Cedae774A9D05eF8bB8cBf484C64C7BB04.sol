contract main {




// =====================  Runtime code  =====================


address sub_3b1cc64eAddress;
address _treasuryAddress;
uint256 sub_1051acde;
mapping of struct voter;
uint8 stor4;

function sub_1051acde(?) payable {
    return sub_1051acde
}

function sub_3b1cc64e(?) payable {
    return sub_3b1cc64eAddress
}

function ini() payable {
    return bool(stor4)
}

function getVoter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return voter[address(arg1)].field_0, voter[address(arg1)].field_0, voter[address(arg1)].field_128
}

function _treasury() payable {
    return _treasuryAddress
}

function init() payable {
  stop
}

function _fallback() payable {
    revert
}

function sub_3d67cebb(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if voter[address(arg1)].field_0 <= 0:
        return 0
    if sub_1051acde and 300 > -1 / sub_1051acde:
        revert with 'NH{q', 17
    if block.number < voter[address(arg1)].field_128:
        revert with 'NH{q', 17
    if block.number - voter[address(arg1)].field_128 and voter[address(arg1)].field_0 > -1 / block.number - voter[address(arg1)].field_128:
        revert with 'NH{q', 17
    if 300 * sub_1051acde / 100000 * 10^18 <= 100:
        if (block.number * voter[address(arg1)].field_0) - (voter[address(arg1)].field_128 * voter[address(arg1)].field_0) and 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100 > -1 / (block.number * voter[address(arg1)].field_0) - (voter[address(arg1)].field_128 * voter[address(arg1)].field_0):
            revert with 'NH{q', 17
        if not sub_1051acde:
            revert with 'NH{q', 18
        return ((block.number * voter[address(arg1)].field_0 * 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100) - (voter[address(arg1)].field_128 * voter[address(arg1)].field_0 * 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100) / sub_1051acde)
    if (block.number * voter[address(arg1)].field_0) - (voter[address(arg1)].field_128 * voter[address(arg1)].field_0) and 62 * 10^14 > -1 / (block.number * voter[address(arg1)].field_0) - (voter[address(arg1)].field_128 * voter[address(arg1)].field_0):
        revert with 'NH{q', 17
    if not sub_1051acde:
        revert with 'NH{q', 18
    return ((62 * 10^14 * block.number * voter[address(arg1)].field_0) - (62 * 10^14 * voter[address(arg1)].field_128 * voter[address(arg1)].field_0) / sub_1051acde)
}

function sub_ce189c9c(?) payable {
    if voter[address(msg.sender)].field_160 <= block.number:
        voter[address(msg.sender)].field_128 = uint32(block.number)
        return 0
    if voter[address(msg.sender)].field_0 <= 0:
        voter[address(msg.sender)].field_128 = uint32(block.number)
        return 0
    if voter[address(msg.sender)].field_0 <= 0:
        require ext_code.size(_treasuryAddress)
        call _treasuryAddress.0x7387f44d with:
             gas gas_remaining wei
            args msg.sender, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.number > -1000001:
            revert with 'NH{q', 17
        voter[address(msg.sender)].field_160 = uint32(block.number + 10^6)
        voter[address(msg.sender)].field_128 = uint32(block.number)
        return 0
    if sub_1051acde and 300 > -1 / sub_1051acde:
        revert with 'NH{q', 17
    if block.number < voter[address(msg.sender)].field_128:
        revert with 'NH{q', 17
    if block.number - voter[address(msg.sender)].field_128 and voter[address(msg.sender)].field_0 > -1 / block.number - voter[address(msg.sender)].field_128:
        revert with 'NH{q', 17
    if 300 * sub_1051acde / 100000 * 10^18 <= 100:
        if (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0) and 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100 > -1 / (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0):
            revert with 'NH{q', 17
        if not sub_1051acde:
            revert with 'NH{q', 18
        require ext_code.size(_treasuryAddress)
        call _treasuryAddress.0x7387f44d with:
             gas gas_remaining wei
            args msg.sender, (block.number * voter[address(msg.sender)].field_0 * 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0 * 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100) / sub_1051acde
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if block.number > -1000001:
            revert with 'NH{q', 17
        voter[address(msg.sender)].field_160 = uint32(block.number + 10^6)
        voter[address(msg.sender)].field_128 = uint32(block.number)
        return ((block.number * voter[address(msg.sender)].field_0 * 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0 * 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100) / sub_1051acde)
    if (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0) and 62 * 10^14 > -1 / (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0):
        revert with 'NH{q', 17
    if not sub_1051acde:
        revert with 'NH{q', 18
    require ext_code.size(_treasuryAddress)
    call _treasuryAddress.0x7387f44d with:
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
            if voter[address(msg.sender)].field_0 <= 0:
                require ext_code.size(_treasuryAddress)
                call _treasuryAddress.0x7387f44d with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                if sub_1051acde and 300 > -1 / sub_1051acde:
                    revert with 'NH{q', 17
                if block.number < voter[address(msg.sender)].field_128:
                    revert with 'NH{q', 17
                if block.number - voter[address(msg.sender)].field_128 and voter[address(msg.sender)].field_0 > -1 / block.number - voter[address(msg.sender)].field_128:
                    revert with 'NH{q', 17
                if 300 * sub_1051acde / 100000 * 10^18 <= 100:
                    if (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0) and 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100 > -1 / (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0):
                        revert with 'NH{q', 17
                    if not sub_1051acde:
                        revert with 'NH{q', 18
                    require ext_code.size(_treasuryAddress)
                    call _treasuryAddress.0x7387f44d with:
                         gas gas_remaining wei
                        args msg.sender, (block.number * voter[address(msg.sender)].field_0 * 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0 * 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100) / sub_1051acde
                else:
                    if (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0) and 62 * 10^14 > -1 / (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0):
                        revert with 'NH{q', 17
                    if not sub_1051acde:
                        revert with 'NH{q', 18
                    require ext_code.size(_treasuryAddress)
                    call _treasuryAddress.0x7387f44d with:
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
    call sub_3b1cc64eAddress.0xa9059cbb with:
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
    call sub_3b1cc64eAddress.0xa9059cbb with:
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
            if voter[address(msg.sender)].field_0 <= 0:
                require ext_code.size(_treasuryAddress)
                call _treasuryAddress.0x7387f44d with:
                     gas gas_remaining wei
                    args msg.sender, 0
            else:
                if sub_1051acde and 300 > -1 / sub_1051acde:
                    revert with 'NH{q', 17
                if block.number < voter[address(msg.sender)].field_128:
                    revert with 'NH{q', 17
                if block.number - voter[address(msg.sender)].field_128 and voter[address(msg.sender)].field_0 > -1 / block.number - voter[address(msg.sender)].field_128:
                    revert with 'NH{q', 17
                if 300 * sub_1051acde / 100000 * 10^18 <= 100:
                    if (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0) and 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100 > -1 / (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0):
                        revert with 'NH{q', 17
                    if not sub_1051acde:
                        revert with 'NH{q', 18
                    require ext_code.size(_treasuryAddress)
                    call _treasuryAddress.0x7387f44d with:
                         gas gas_remaining wei
                        args msg.sender, (block.number * voter[address(msg.sender)].field_0 * 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0 * 62 * 10^14 * 300 * sub_1051acde / 100000 * 10^18 / 100) / sub_1051acde
                else:
                    if (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0) and 62 * 10^14 > -1 / (block.number * voter[address(msg.sender)].field_0) - (voter[address(msg.sender)].field_128 * voter[address(msg.sender)].field_0):
                        revert with 'NH{q', 17
                    if not sub_1051acde:
                        revert with 'NH{q', 18
                    require ext_code.size(_treasuryAddress)
                    call _treasuryAddress.0x7387f44d with:
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
    staticcall sub_3b1cc64eAddress.0x70a08231 with:
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
    call sub_3b1cc64eAddress.0x23b872dd with:
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
