contract main {




// =====================  Runtime code  =====================


address stor0;
address stor2;
address stor3;
address stor4;
uint256 totalAirdrops;
uint256 sub_c1493a31;
mapping of struct airdrops;
mapping of uint8 stor8;

function airdrops(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return airdrops[arg1].field_0, airdrops[arg1].field_128
}

function totalAirdrops() payable {
    return totalAirdrops
}

function sub_c1493a31(?) payable {
    return sub_c1493a31
}

function sub_c2d61d33(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function sub_013e390b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require msg.sender == stor0
    sub_c1493a31 = arg1
}

function init() payable {
    stor0 = msg.sender
    stor2 = 0x17fe17065b6f973f1bad851ed8c9461c0169c31
    stor4 = 0x60ba9aaa57aa638a60c524a3ac24da91e04cfa5c
    stor3 = 0x539cb40d3670fe03dbe67857c4d8da307a70b305
}

function invested() payable {
    require ext_code.size(stor4)
    call stor4.invested(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function claimed() payable {
    require ext_code.size(stor4)
    call stor4.claimed(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}

function sub_72f4300b(?) payable {
    require ext_code.size(stor3)
    call stor3.getNodeNumberOf(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_4b16cc65(?) payable {
    require ext_code.size(stor3)
    call stor3.getRewardAmountOf(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_call.return_data[32] == ext_call.return_data[32]
    return ext_call.return_data[0]
}

function claimAirdrop() payable {
    airdrops[address(msg.sender)].field_128 = uint128(block.number)
    require airdrops[address(msg.sender)].field_0 > 0
    require sub_c1493a31
    if sub_c1493a31 <= airdrops[address(msg.sender)].field_128:
        require block.number > airdrops[address(msg.sender)].field_128
        if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
            airdrops[address(msg.sender)].field_0 = 0
            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
            require ext_code.size(stor2)
            call stor2.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, airdrops[address(msg.sender)].field_0
        else:
            if block.number < airdrops[address(msg.sender)].field_128:
                revert with 'NH{q', 17
            if block.number - airdrops[address(msg.sender)].field_128 and 124 * 10^14 > -1 / block.number - airdrops[address(msg.sender)].field_128:
                revert with 'NH{q', 17
            if not totalAirdrops:
                revert with 'NH{q', 18
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if (124 * 10^14 * block.number) - (124 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops <= airdrops[address(msg.sender)].field_0:
                if (124 * 10^14 * block.number) - (124 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops <= ext_call.return_data[0]:
                    if airdrops[address(msg.sender)].field_0 < uint128((124 * 10^14 * block.number) - (124 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops):
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - uint128((124 * 10^14 * block.number) - (124 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops))
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (124 * 10^14 * block.number) - (124 * 10^14 * airdrops[address(msg.sender)].field_128) / totalAirdrops
                else:
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if airdrops[address(msg.sender)].field_0 < ext_call.return_data[16 len 16]:
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ext_call.return_data[16 len 16])
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                if airdrops[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                    if airdrops[address(msg.sender)].field_0 < airdrops[address(msg.sender)].field_0:
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = 0
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, airdrops[address(msg.sender)].field_0
                else:
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if airdrops[address(msg.sender)].field_0 < ext_call.return_data[16 len 16]:
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ext_call.return_data[16 len 16])
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
    else:
        require block.number > sub_c1493a31
        if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
            airdrops[address(msg.sender)].field_0 = 0
            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
            require ext_code.size(stor2)
            call stor2.transfer(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, airdrops[address(msg.sender)].field_0
        else:
            if block.number < sub_c1493a31:
                revert with 'NH{q', 17
            if block.number - sub_c1493a31 and 124 * 10^14 > -1 / block.number - sub_c1493a31:
                revert with 'NH{q', 17
            if not totalAirdrops:
                revert with 'NH{q', 18
            require ext_code.size(stor2)
            staticcall stor2.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if (124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / totalAirdrops <= airdrops[address(msg.sender)].field_0:
                if (124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / totalAirdrops <= ext_call.return_data[0]:
                    if airdrops[address(msg.sender)].field_0 < uint128((124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / totalAirdrops):
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - uint128((124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / totalAirdrops))
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, (124 * 10^14 * block.number) - (124 * 10^14 * sub_c1493a31) / totalAirdrops
                else:
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if airdrops[address(msg.sender)].field_0 < ext_call.return_data[16 len 16]:
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ext_call.return_data[16 len 16])
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
            else:
                if airdrops[address(msg.sender)].field_0 <= ext_call.return_data[0]:
                    if airdrops[address(msg.sender)].field_0 < airdrops[address(msg.sender)].field_0:
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = 0
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, airdrops[address(msg.sender)].field_0
                else:
                    require ext_code.size(stor2)
                    staticcall stor2.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if airdrops[address(msg.sender)].field_0 < ext_call.return_data[16 len 16]:
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 - ext_call.return_data[16 len 16])
                    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
                        if totalAirdrops < 1:
                            revert with 'NH{q', 17
                        totalAirdrops--
                        if not airdrops[address(msg.sender)].field_0:
                            airdrops[address(msg.sender)].field_0 = 0
                            airdrops[address(msg.sender)].field_0 = airdrops[address(msg.sender)].field_0
                    require ext_code.size(stor2)
                    call stor2.transfer(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_2168b154(?) payable {
    require not stor8[address(msg.sender)]
    require ext_code.size(stor4)
    call stor4.invested(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        require ext_code.size(stor3)
        call stor3.getNodeNumberOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0] <= 0:
            require ext_code.size(stor3)
            call stor3.getRewardAmountOf(address arg1) with:
                 gas gas_remaining wei
                args msg.sender
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 64
            require ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[32] == ext_call.return_data[32]
            if ext_call.return_data[0] <= 0:
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    stor8[address(msg.sender)] = 1
                    if airdrops[address(msg.sender)].field_0 > test266151307():
                        revert with 'NH{q', 17
                else:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if 0 > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    stor8[address(msg.sender)] = 1
                    if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if Mask(254, 0, ext_call.return_data[0]) and 10 > -1 / 4 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if airdrops[address(msg.sender)].field_0 > -uint128(10 * 4 * ext_call.return_data[0] / 10) + test266151307():
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 4 * ext_call.return_data[0] / 10))
            else:
                if 0 > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                require ext_code.size(stor3)
                staticcall stor3.0x70a08231 with:
                        gas gas_remaining wei
                       args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[0]
                if ext_call.return_data[0] <= 0:
                    stor8[address(msg.sender)] = 1
                    if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if Mask(254, 0, ext_call.return_data[0]) and 10 > -1 / 4 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if airdrops[address(msg.sender)].field_0 > -uint128(10 * 4 * ext_call.return_data[0] / 10) + test266151307():
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 4 * ext_call.return_data[0] / 10))
                else:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    stor8[address(msg.sender)] = 1
                    if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if Mask(253, 0, ext_call.return_data[0]) and 10 > -1 / 8 * ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if airdrops[address(msg.sender)].field_0 > -uint128(10 * 8 * ext_call.return_data[0] / 10) + test266151307():
                        revert with 'NH{q', 17
                    airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 8 * ext_call.return_data[0] / 10))
        else:
            if ext_call.return_data[0] == ext_call.return_data[0] / 10 * 10^18:
                if 0 > -ext_call.return_data[0] - 1:
                    revert with 'NH{q', 17
                require ext_code.size(stor3)
                call stor3.getRewardAmountOf(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor8[address(msg.sender)] = 1
                        if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, ext_call.return_data[0]) and 11 > -1 / 4 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor8[address(msg.sender)] = 1
                        if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(253, 0, ext_call.return_data[0]) and 11 > -1 / 8 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 8 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 8 * ext_call.return_data[0] / 10))
                else:
                    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor8[address(msg.sender)] = 1
                        if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(253, 0, ext_call.return_data[0]) and 11 > -1 / 8 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 8 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 8 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor8[address(msg.sender)] = 1
                        if 3 * ext_call.return_data[0] and 4 > -1 / 3 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, 3 * ext_call.return_data[0]) and 11 > -1 / 4 * 3 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * 3 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * 3 * ext_call.return_data[0] / 10))
            else:
                if ext_call.return_data[0] and 10 * 10^18 > -1 / ext_call.return_data[0]:
                    revert with 'NH{q', 17
                if 0 > (-10 * 10^18 * ext_call.return_data[0]) - 1:
                    revert with 'NH{q', 17
                require ext_code.size(stor3)
                call stor3.getRewardAmountOf(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor8[address(msg.sender)] = 1
                        if 10 * 10^18 * ext_call.return_data[0] and 4 > -1 / 10 * 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, 10 * 10^18 * ext_call.return_data[0]) and 10 > -1 / 4 * 10 * 10^18 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(10 * 4 * 10 * 10^18 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 4 * 10 * 10^18 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if 10 * 10^18 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor8[address(msg.sender)] = 1
                        if 10000000000000000001 * ext_call.return_data[0] and 4 > -1 / 10000000000000000001 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, 10000000000000000001 * ext_call.return_data[0]) and 10 > -1 / 4 * 10000000000000000001 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(10 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10))
                else:
                    if 10 * 10^18 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor8[address(msg.sender)] = 1
                        if 10000000000000000001 * ext_call.return_data[0] and 4 > -1 / 10000000000000000001 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, 10000000000000000001 * ext_call.return_data[0]) and 10 > -1 / 4 * 10000000000000000001 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(10 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if 10000000000000000001 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor8[address(msg.sender)] = 1
                        if 10000000000000000002 * ext_call.return_data[0] and 4 > -1 / 10000000000000000002 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, 10000000000000000002 * ext_call.return_data[0]) and 10 > -1 / 4 * 10000000000000000002 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(10 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(10 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10))
    else:
        require ext_code.size(stor4)
        call stor4.claimed(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        require ext_code.size(stor3)
        call stor3.getNodeNumberOf(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if ext_call.return_data[0]:
            if ext_call.return_data[0] <= 0:
                require ext_code.size(stor3)
                call stor3.getRewardAmountOf(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor8[address(msg.sender)] = 1
                        if airdrops[address(msg.sender)].field_0 > test266151307():
                            revert with 'NH{q', 17
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if 0 > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor8[address(msg.sender)] = 1
                        if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, ext_call.return_data[0]) and 11 > -1 / 4 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * ext_call.return_data[0] / 10))
                else:
                    if 0 > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor8[address(msg.sender)] = 1
                        if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, ext_call.return_data[0]) and 11 > -1 / 4 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor8[address(msg.sender)] = 1
                        if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(253, 0, ext_call.return_data[0]) and 11 > -1 / 8 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(11 * 8 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 8 * ext_call.return_data[0] / 10))
            else:
                if ext_call.return_data[0] == ext_call.return_data[0] / 10 * 10^18:
                    if 0 > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    call stor3.getRewardAmountOf(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor8[address(msg.sender)] = 1
                            if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, ext_call.return_data[0]) and 12 > -1 / 4 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(12 * 4 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(12 * 4 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor8[address(msg.sender)] = 1
                            if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(253, 0, ext_call.return_data[0]) and 12 > -1 / 8 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(12 * 8 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(12 * 8 * ext_call.return_data[0] / 10))
                    else:
                        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor8[address(msg.sender)] = 1
                            if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(253, 0, ext_call.return_data[0]) and 12 > -1 / 8 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(12 * 8 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(12 * 8 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor8[address(msg.sender)] = 1
                            if 3 * ext_call.return_data[0] and 4 > -1 / 3 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 3 * ext_call.return_data[0]) and 12 > -1 / 4 * 3 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(12 * 4 * 3 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(12 * 4 * 3 * ext_call.return_data[0] / 10))
                else:
                    if ext_call.return_data[0] and 10 * 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if 0 > (-10 * 10^18 * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    call stor3.getRewardAmountOf(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor8[address(msg.sender)] = 1
                            if 10 * 10^18 * ext_call.return_data[0] and 4 > -1 / 10 * 10^18 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10 * 10^18 * ext_call.return_data[0]) and 11 > -1 / 4 * 10 * 10^18 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * 10 * 10^18 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * 10 * 10^18 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 10 * 10^18 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor8[address(msg.sender)] = 1
                            if 10000000000000000001 * ext_call.return_data[0] and 4 > -1 / 10000000000000000001 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000001 * ext_call.return_data[0]) and 11 > -1 / 4 * 10000000000000000001 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10))
                    else:
                        if 10 * 10^18 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor8[address(msg.sender)] = 1
                            if 10000000000000000001 * ext_call.return_data[0] and 4 > -1 / 10000000000000000001 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000001 * ext_call.return_data[0]) and 11 > -1 / 4 * 10000000000000000001 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 10000000000000000001 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor8[address(msg.sender)] = 1
                            if 10000000000000000002 * ext_call.return_data[0] and 4 > -1 / 10000000000000000002 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000002 * ext_call.return_data[0]) and 11 > -1 / 4 * 10000000000000000002 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(11 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(11 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10))
        else:
            if ext_call.return_data[0] <= 0:
                require ext_code.size(stor3)
                call stor3.getRewardAmountOf(address arg1) with:
                     gas gas_remaining wei
                    args msg.sender
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 64
                require ext_call.return_data[0] == ext_call.return_data[0]
                require ext_call.return_data[32] == ext_call.return_data[32]
                if ext_call.return_data[0] <= 0:
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor8[address(msg.sender)] = 1
                        if ext_call.return_data[0] and 4 > -1 / ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, ext_call.return_data[0]) and 13 > -1 / 4 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor8[address(msg.sender)] = 1
                        if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(253, 0, ext_call.return_data[0]) and 13 > -1 / 8 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(13 * 8 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 8 * ext_call.return_data[0] / 10))
                else:
                    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    staticcall stor3.0x70a08231 with:
                            gas gas_remaining wei
                           args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    if ext_call.return_data[0] <= 0:
                        stor8[address(msg.sender)] = 1
                        if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(253, 0, ext_call.return_data[0]) and 13 > -1 / 8 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(13 * 8 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 8 * ext_call.return_data[0] / 10))
                    else:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        stor8[address(msg.sender)] = 1
                        if 3 * ext_call.return_data[0] and 4 > -1 / 3 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if Mask(254, 0, 3 * ext_call.return_data[0]) and 13 > -1 / 4 * 3 * ext_call.return_data[0]:
                            revert with 'NH{q', 17
                        if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * 3 * ext_call.return_data[0] / 10) + test266151307():
                            revert with 'NH{q', 17
                        airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * 3 * ext_call.return_data[0] / 10))
            else:
                if ext_call.return_data[0] == ext_call.return_data[0] / 10 * 10^18:
                    if ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    call stor3.getRewardAmountOf(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor8[address(msg.sender)] = 1
                            if uint255(ext_call.return_data[0]) and 4 > -1 / 2 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(253, 0, ext_call.return_data[0]) and 13 > -1 / 8 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 8 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 8 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor8[address(msg.sender)] = 1
                            if Mask(254, 0, ext_call.return_data[0]) and 4 > -1 / 4 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(252, 0, ext_call.return_data[0]) and 13 > -1 / 16 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 16 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 16 * ext_call.return_data[0] / 10))
                    else:
                        if 2 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor8[address(msg.sender)] = 1
                            if Mask(254, 0, ext_call.return_data[0]) and 4 > -1 / 4 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(252, 0, ext_call.return_data[0]) and 13 > -1 / 16 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 16 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 16 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 4 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor8[address(msg.sender)] = 1
                            if 5 * ext_call.return_data[0] and 4 > -1 / 5 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 5 * ext_call.return_data[0]) and 13 > -1 / 4 * 5 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * 5 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * 5 * ext_call.return_data[0] / 10))
                else:
                    if ext_call.return_data[0] and 10 * 10^18 > -1 / ext_call.return_data[0]:
                        revert with 'NH{q', 17
                    if ext_call.return_data[0] > (-10 * 10^18 * ext_call.return_data[0]) - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(stor3)
                    call stor3.getRewardAmountOf(address arg1) with:
                         gas gas_remaining wei
                        args msg.sender
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 64
                    require ext_call.return_data[0] == ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[32]
                    if ext_call.return_data[0] <= 0:
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor8[address(msg.sender)] = 1
                            if 10000000000000000001 * ext_call.return_data[0] and 4 > -1 / 10000000000000000001 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000001 * ext_call.return_data[0]) and 13 > -1 / 4 * 10000000000000000001 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * 10000000000000000001 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 10000000000000000001 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor8[address(msg.sender)] = 1
                            if 10000000000000000002 * ext_call.return_data[0] and 4 > -1 / 10000000000000000002 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000002 * ext_call.return_data[0]) and 13 > -1 / 4 * 10000000000000000002 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10))
                    else:
                        if 10000000000000000001 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                            revert with 'NH{q', 17
                        require ext_code.size(stor3)
                        staticcall stor3.0x70a08231 with:
                                gas gas_remaining wei
                               args msg.sender
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[0]
                        if ext_call.return_data[0] <= 0:
                            stor8[address(msg.sender)] = 1
                            if 10000000000000000002 * ext_call.return_data[0] and 4 > -1 / 10000000000000000002 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000002 * ext_call.return_data[0]) and 13 > -1 / 4 * 10000000000000000002 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * 10000000000000000002 * ext_call.return_data[0] / 10))
                        else:
                            require ext_code.size(stor3)
                            staticcall stor3.0x70a08231 with:
                                    gas gas_remaining wei
                                   args msg.sender
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[0]
                            if 10000000000000000002 * ext_call.return_data[0] > -ext_call.return_data[0] - 1:
                                revert with 'NH{q', 17
                            stor8[address(msg.sender)] = 1
                            if 10000000000000000003 * ext_call.return_data[0] and 4 > -1 / 10000000000000000003 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(254, 0, 10000000000000000003 * ext_call.return_data[0]) and 13 > -1 / 4 * 10000000000000000003 * ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if airdrops[address(msg.sender)].field_0 > -uint128(13 * 4 * 10000000000000000003 * ext_call.return_data[0] / 10) + test266151307():
                                revert with 'NH{q', 17
                            airdrops[address(msg.sender)].field_0 = uint128(airdrops[address(msg.sender)].field_0 + uint128(13 * 4 * 10000000000000000003 * ext_call.return_data[0] / 10))
    if airdrops[address(msg.sender)].field_0 < 100 * 10^18:
        if airdrops[address(msg.sender)].field_0 >= 100 * 10^18:
            if totalAirdrops > -2:
                revert with 'NH{q', 17
            totalAirdrops++
    if not airdrops[address(msg.sender)].field_128:
        airdrops[address(msg.sender)].field_128 = uint128(block.number)
}



}
