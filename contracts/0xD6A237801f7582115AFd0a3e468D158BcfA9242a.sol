contract main {




// =====================  Runtime code  =====================


address sub_cdda418cAddress;
address tokenAddress;
uint256 sub_69d9ac49;
uint256 startTime;
uint256 exchangeRate;
mapping of struct vestings;

function exchangeRate() payable {
    return exchangeRate
}

function sub_69d9ac49(?) payable {
    return sub_69d9ac49
}

function startTime() payable {
    return startTime
}

function sub_cdda418c(?) payable {
    return sub_cdda418cAddress
}

function vestings(address arg1) payable {
    require calldata.size - 4 >= 32
    return vestings[arg1].field_0, vestings[arg1].field_256, vestings[arg1].field_512, vestings[arg1].field_768
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function sub_e1a6108b(?) payable {
    if block.timestamp < startTime:
        revert with 0, 'Vesting not began'
    if vestings[msg.sender].field_0:
        revert with 0, 'Already vesting'
    require ext_code.size(sub_cdda418cAddress)
    staticcall sub_cdda418cAddress.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(sub_cdda418cAddress)
    call sub_cdda418cAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_69d9ac49 + block.timestamp < block.timestamp:
        revert with 0, 'SafeMath: addition overflow'
    vestings[msg.sender].field_0 = ext_call.return_data[0]
    vestings[msg.sender].field_256 = block.timestamp
    vestings[msg.sender].field_512 = sub_69d9ac49 + block.timestamp
    vestings[msg.sender].field_768 = 0
}

function redeemable(address arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < vestings[address(arg1)].field_512:
        if block.timestamp < vestings[address(arg1)].field_256:
            return 0
    else:
        if vestings[address(arg1)].field_512 < vestings[address(arg1)].field_256:
            return 0
    if block.timestamp < vestings[address(arg1)].field_512:
        if vestings[address(arg1)].field_256 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.timestamp - vestings[address(arg1)].field_256:
            if sub_69d9ac49 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_69d9ac49:
                if not vestings[address(arg1)].field_0:
                    if exchangeRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if exchangeRate:
                        return (0 / exchangeRate)
                else:
                    if 0 / sub_69d9ac49 * vestings[address(arg1)].field_0 / vestings[address(arg1)].field_0 != 0 / sub_69d9ac49:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if exchangeRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if exchangeRate:
                        return (0 / sub_69d9ac49 * vestings[address(arg1)].field_0 / 10^10 / exchangeRate)
                ('iszero', ('stor', ('name', 'exchangeRate', 4)))
        else:
            if (10^10 * block.timestamp) - (10^10 * vestings[address(arg1)].field_256) / block.timestamp - vestings[address(arg1)].field_256 != 10^10:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_69d9ac49 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_69d9ac49:
                if not vestings[address(arg1)].field_0:
                    if exchangeRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if exchangeRate:
                        return (0 / exchangeRate)
                else:
                    if (10^10 * block.timestamp) - (10^10 * vestings[address(arg1)].field_256) / sub_69d9ac49 * vestings[address(arg1)].field_0 / vestings[address(arg1)].field_0 != (10^10 * block.timestamp) - (10^10 * vestings[address(arg1)].field_256) / sub_69d9ac49:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if exchangeRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if exchangeRate:
                        return ((10^10 * block.timestamp) - (10^10 * vestings[address(arg1)].field_256) / sub_69d9ac49 * vestings[address(arg1)].field_0 / 10^10 / exchangeRate)
                ('iszero', ('stor', ('name', 'exchangeRate', 4)))
    else:
        if vestings[address(arg1)].field_256 > vestings[address(arg1)].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        if not vestings[address(arg1)].field_512 - vestings[address(arg1)].field_256:
            if sub_69d9ac49 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_69d9ac49:
                if not vestings[address(arg1)].field_0:
                    if exchangeRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if exchangeRate:
                        return (0 / exchangeRate)
                else:
                    if 0 / sub_69d9ac49 * vestings[address(arg1)].field_0 / vestings[address(arg1)].field_0 != 0 / sub_69d9ac49:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if exchangeRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if exchangeRate:
                        return (0 / sub_69d9ac49 * vestings[address(arg1)].field_0 / 10^10 / exchangeRate)
                ('iszero', ('stor', ('name', 'exchangeRate', 4)))
        else:
            if (10^10 * vestings[address(arg1)].field_512) - (10^10 * vestings[address(arg1)].field_256) / vestings[address(arg1)].field_512 - vestings[address(arg1)].field_256 != 10^10:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_69d9ac49 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if sub_69d9ac49:
                if not vestings[address(arg1)].field_0:
                    if exchangeRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if exchangeRate:
                        return (0 / exchangeRate)
                else:
                    if (10^10 * vestings[address(arg1)].field_512) - (10^10 * vestings[address(arg1)].field_256) / sub_69d9ac49 * vestings[address(arg1)].field_0 / vestings[address(arg1)].field_0 != (10^10 * vestings[address(arg1)].field_512) - (10^10 * vestings[address(arg1)].field_256) / sub_69d9ac49:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if exchangeRate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if exchangeRate:
                        return ((10^10 * vestings[address(arg1)].field_512) - (10^10 * vestings[address(arg1)].field_256) / sub_69d9ac49 * vestings[address(arg1)].field_0 / 10^10 / exchangeRate)
                ('iszero', ('stor', ('name', 'exchangeRate', 4)))
    revert
}

function claimTokens() payable {
    if not vestings[msg.sender].field_0:
        revert with 0, 'Nothing to vest'
    if vestings[msg.sender].field_256 <= vestings[msg.sender].field_512:
        if block.timestamp < vestings[address(msg.sender)].field_512:
            if block.timestamp < vestings[address(msg.sender)].field_256:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                vestings[msg.sender].field_256 = block.timestamp
                if vestings[msg.sender].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if block.timestamp < vestings[address(msg.sender)].field_512:
                    if vestings[address(msg.sender)].field_256 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - vestings[address(msg.sender)].field_256:
                        if sub_69d9ac49 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_69d9ac49
                        if not vestings[address(msg.sender)].field_0:
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + (0 / exchangeRate) < 0 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += 0 / exchangeRate
                        else:
                            if 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / vestings[address(msg.sender)].field_0 != 0 / sub_69d9ac49:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + (0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate) < 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                    else:
                        if (10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / block.timestamp - vestings[address(msg.sender)].field_256 != 10^10:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if sub_69d9ac49 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_69d9ac49
                        if not vestings[address(msg.sender)].field_0:
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + (0 / exchangeRate) < 0 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += 0 / exchangeRate
                        else:
                            if (10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / vestings[address(msg.sender)].field_0 != (10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + ((10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate) < (10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += (10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                else:
                    if vestings[address(msg.sender)].field_256 > vestings[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not vestings[address(msg.sender)].field_512 - vestings[address(msg.sender)].field_256:
                        if sub_69d9ac49 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_69d9ac49
                        if not vestings[address(msg.sender)].field_0:
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + (0 / exchangeRate) < 0 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += 0 / exchangeRate
                        else:
                            if 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / vestings[address(msg.sender)].field_0 != 0 / sub_69d9ac49:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + (0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate) < 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                    else:
                        if (10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / vestings[address(msg.sender)].field_512 - vestings[address(msg.sender)].field_256 != 10^10:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if sub_69d9ac49 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_69d9ac49
                        if not vestings[address(msg.sender)].field_0:
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + (0 / exchangeRate) < 0 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += 0 / exchangeRate
                        else:
                            if (10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / vestings[address(msg.sender)].field_0 != (10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + ((10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate) < (10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += (10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
        else:
            if vestings[address(msg.sender)].field_512 < vestings[address(msg.sender)].field_256:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                vestings[msg.sender].field_256 = block.timestamp
                if vestings[msg.sender].field_768 < 0:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if block.timestamp < vestings[address(msg.sender)].field_512:
                    if vestings[address(msg.sender)].field_256 > block.timestamp:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.timestamp - vestings[address(msg.sender)].field_256:
                        if sub_69d9ac49 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_69d9ac49
                        if not vestings[address(msg.sender)].field_0:
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + (0 / exchangeRate) < 0 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += 0 / exchangeRate
                        else:
                            if 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / vestings[address(msg.sender)].field_0 != 0 / sub_69d9ac49:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + (0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate) < 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                    else:
                        if (10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / block.timestamp - vestings[address(msg.sender)].field_256 != 10^10:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if sub_69d9ac49 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_69d9ac49
                        if not vestings[address(msg.sender)].field_0:
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + (0 / exchangeRate) < 0 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += 0 / exchangeRate
                        else:
                            if (10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / vestings[address(msg.sender)].field_0 != (10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + ((10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate) < (10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += (10^10 * block.timestamp) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                else:
                    if vestings[address(msg.sender)].field_256 > vestings[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not vestings[address(msg.sender)].field_512 - vestings[address(msg.sender)].field_256:
                        if sub_69d9ac49 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_69d9ac49
                        if not vestings[address(msg.sender)].field_0:
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + (0 / exchangeRate) < 0 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += 0 / exchangeRate
                        else:
                            if 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / vestings[address(msg.sender)].field_0 != 0 / sub_69d9ac49:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + (0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate) < 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += 0 / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                    else:
                        if (10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / vestings[address(msg.sender)].field_512 - vestings[address(msg.sender)].field_256 != 10^10:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if sub_69d9ac49 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require sub_69d9ac49
                        if not vestings[address(msg.sender)].field_0:
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, 0 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + (0 / exchangeRate) < 0 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += 0 / exchangeRate
                        else:
                            if (10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / vestings[address(msg.sender)].field_0 != (10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if exchangeRate <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require exchangeRate
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0xa9059cbb with:
                                 gas gas_remaining wei
                                args msg.sender, (10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            vestings[msg.sender].field_256 = block.timestamp
                            if vestings[msg.sender].field_768 + ((10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate) < (10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate:
                                revert with 0, 'SafeMath: addition overflow'
                            vestings[msg.sender].field_768 += (10^10 * vestings[address(msg.sender)].field_512) - (10^10 * vestings[address(msg.sender)].field_256) / sub_69d9ac49 * vestings[address(msg.sender)].field_0 / 10^10 / exchangeRate
}



}
