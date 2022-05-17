contract main {




// =====================  Runtime code  =====================


#
#  - process(uint256 arg1)
#
address stor0;
address stor1;
address stor3;
array of address stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of struct shares;
uint256 totalShares;
uint256 totalDividends;
uint256 totalDistributed;
uint256 dividendsPerShare;
uint256 dividendsPerShareAccuracyFactor;
uint256 minPeriod;
uint256 minDistribution;

function dividendsPerShareAccuracyFactor() {
    return dividendsPerShareAccuracyFactor
}

function totalShares() {
    return totalShares
}

function minDistribution() {
    return minDistribution
}

function totalDividends() {
    return totalDividends
}

function shares(address arg1) {
    require calldata.size - 4 >= 32
    return shares[arg1].field_0, shares[arg1].field_256, shares[arg1].field_512
}

function dividendsPerShare() {
    return dividendsPerShare
}

function totalDistributed() {
    return totalDistributed
}

function minPeriod() {
    return minPeriod
}

function _fallback() payable {
    revert
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    minPeriod = arg1
    minDistribution = arg2
}

function getUnpaidEarnings(address arg1) {
    require calldata.size - 4 >= 32
    if not shares[address(arg1)].field_0:
        return 0
    if not shares[address(arg1)].field_0:
        if not dividendsPerShareAccuracyFactor:
            revert with 0, 'SafeMath: division by zero'
        if 0 / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
            return 0
        if shares[address(arg1)].field_256 > 0 / dividendsPerShareAccuracyFactor:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256)
    if dividendsPerShare * shares[address(arg1)].field_0 / shares[address(arg1)].field_0 != dividendsPerShare:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not dividendsPerShareAccuracyFactor:
        revert with 0, 'SafeMath: division by zero'
    if dividendsPerShare * shares[address(arg1)].field_0 / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
        return 0
    if shares[address(arg1)].field_256 > dividendsPerShare * shares[address(arg1)].field_0 / dividendsPerShareAccuracyFactor:
        revert with 0, 'SafeMath: subtraction overflow'
    return ((dividendsPerShare * shares[address(arg1)].field_0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256)
}

function deposit() payable {
    require msg.sender == stor0
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[356 len 0] = None
    require ext_code.size(stor3)
    call stor3.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value msg.value wei
         gas gas_remaining wei
        args 0, 128, this.address, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor1)
    staticcall stor1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if totalDividends < totalDividends:
        revert with 0, 'SafeMath: addition overflow'
    if not dividendsPerShareAccuracyFactor:
        if not totalShares:
            revert with 0, '', 26, Mask(208, 0, 'SafeMath: division by zero')
        if (0 / totalShares) + dividendsPerShare < dividendsPerShare:
            revert with 0, '', 27, 'SafeMath: addition overflow'
        dividendsPerShare += 0 / totalShares
    else:
        if (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / dividendsPerShareAccuracyFactor:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[357 len 31]
        if not totalShares:
            revert with 0, '', 26, Mask(208, 0, 'SafeMath: division by zero')
        if ((ext_call.return_data[0] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares) + dividendsPerShare < dividendsPerShare:
            revert with 0, '', 27, 'SafeMath: addition overflow'
        dividendsPerShare += (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) - (ext_call.return_data[0] * dividendsPerShareAccuracyFactor) / totalShares
}

function claimDividend() {
    if shares[address(msg.sender)].field_0:
        if shares[address(msg.sender)].field_0:
            if not shares[address(msg.sender)].field_0:
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / dividendsPerShareAccuracyFactor > shares[address(msg.sender)].field_256:
                    if shares[address(msg.sender)].field_256 > 0 / dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256:
                        if (0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 + totalDistributed < totalDistributed:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDistributed = (0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 + totalDistributed
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor6[address(msg.sender)] = block.timestamp
                        if (0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 + shares[address(msg.sender)].field_512 < shares[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        shares[address(msg.sender)].field_512 = (0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 + shares[address(msg.sender)].field_512
                        if not shares[address(msg.sender)].field_0:
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 'SafeMath: division by zero'
                            shares[address(msg.sender)].field_256 = 0 / dividendsPerShareAccuracyFactor
                        else:
                            if dividendsPerShare * shares[address(msg.sender)].field_0 / shares[address(msg.sender)].field_0 != dividendsPerShare:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 'SafeMath: division by zero'
                            shares[address(msg.sender)].field_256 = dividendsPerShare * shares[address(msg.sender)].field_0 / dividendsPerShareAccuracyFactor
            else:
                if dividendsPerShare * shares[address(msg.sender)].field_0 / shares[address(msg.sender)].field_0 != dividendsPerShare:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 'SafeMath: division by zero'
                if dividendsPerShare * shares[address(msg.sender)].field_0 / dividendsPerShareAccuracyFactor > shares[address(msg.sender)].field_256:
                    if shares[address(msg.sender)].field_256 > dividendsPerShare * shares[address(msg.sender)].field_0 / dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if (dividendsPerShare * shares[address(msg.sender)].field_0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256:
                        if (dividendsPerShare * shares[address(msg.sender)].field_0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 + totalDistributed < totalDistributed:
                            revert with 0, 'SafeMath: addition overflow'
                        totalDistributed = (dividendsPerShare * shares[address(msg.sender)].field_0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 + totalDistributed
                        require ext_code.size(stor1)
                        call stor1.0xa9059cbb with:
                             gas gas_remaining wei
                            args msg.sender, (dividendsPerShare * shares[address(msg.sender)].field_0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        stor6[address(msg.sender)] = block.timestamp
                        if (dividendsPerShare * shares[address(msg.sender)].field_0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 + shares[address(msg.sender)].field_512 < shares[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        shares[address(msg.sender)].field_512 = (dividendsPerShare * shares[address(msg.sender)].field_0 / dividendsPerShareAccuracyFactor) - shares[address(msg.sender)].field_256 + shares[address(msg.sender)].field_512
                        if not shares[address(msg.sender)].field_0:
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 'SafeMath: division by zero'
                            shares[address(msg.sender)].field_256 = 0 / dividendsPerShareAccuracyFactor
                        else:
                            if dividendsPerShare * shares[address(msg.sender)].field_0 / shares[address(msg.sender)].field_0 != dividendsPerShare:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 'SafeMath: division by zero'
                            shares[address(msg.sender)].field_256 = dividendsPerShare * shares[address(msg.sender)].field_0 / dividendsPerShareAccuracyFactor
}

function setShare(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == stor0
    if not shares[address(arg1)].field_0:
        if arg2 <= 0:
            if not arg2:
                if shares[address(arg1)].field_0:
                    require stor4.length - 1 < stor4.length
                    require stor5[address(arg1)] < stor4.length
                    stor4[stor5[address(arg1)]] = stor4[stor4.length]
                    require stor4.length - 1 < stor4.length
                    stor5[stor4[stor4.length]] = stor5[address(arg1)]
                    require stor4.length
                    stor4[stor4.length] = 0
                    stor4.length--
        else:
            if not shares[address(arg1)].field_0:
                stor5[address(arg1)] = stor4.length
                stor4.length++
                stor4[stor4.length] = arg1
            else:
                if not arg2:
                    if shares[address(arg1)].field_0:
                        require stor4.length - 1 < stor4.length
                        require stor5[address(arg1)] < stor4.length
                        stor4[stor5[address(arg1)]] = stor4[stor4.length]
                        require stor4.length - 1 < stor4.length
                        stor5[stor4[stor4.length]] = stor5[address(arg1)]
                        require stor4.length
                        stor4[stor4.length] = 0
                        stor4.length--
        if shares[address(arg1)].field_0 > totalShares:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalShares = arg2 + totalShares - shares[address(arg1)].field_0
        shares[address(arg1)].field_0 = arg2
        if not arg2:
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 'SafeMath: division by zero'
            shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
        else:
            if dividendsPerShare * arg2 / arg2 != dividendsPerShare:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if not dividendsPerShareAccuracyFactor:
                revert with 0, 'SafeMath: division by zero'
            shares[address(arg1)].field_256 = dividendsPerShare * arg2 / dividendsPerShareAccuracyFactor
    else:
        if not shares[address(arg1)].field_0:
            if arg2 <= 0:
                if not arg2:
                    if shares[address(arg1)].field_0:
                        require stor4.length - 1 < stor4.length
                        require stor5[address(arg1)] < stor4.length
                        stor4[stor5[address(arg1)]] = stor4[stor4.length]
                        require stor4.length - 1 < stor4.length
                        stor5[stor4[stor4.length]] = stor5[address(arg1)]
                        require stor4.length
                        stor4[stor4.length] = 0
                        stor4.length--
            else:
                if not shares[address(arg1)].field_0:
                    stor5[address(arg1)] = stor4.length
                    stor4.length++
                    stor4[stor4.length] = arg1
                else:
                    if not arg2:
                        if shares[address(arg1)].field_0:
                            require stor4.length - 1 < stor4.length
                            require stor5[address(arg1)] < stor4.length
                            stor4[stor5[address(arg1)]] = stor4[stor4.length]
                            require stor4.length - 1 < stor4.length
                            stor5[stor4[stor4.length]] = stor5[address(arg1)]
                            require stor4.length
                            stor4[stor4.length] = 0
                            stor4.length--
            if shares[address(arg1)].field_0 > totalShares:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            totalShares = arg2 + totalShares - shares[address(arg1)].field_0
            shares[address(arg1)].field_0 = arg2
            if not arg2:
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 'SafeMath: division by zero'
                shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
            else:
                if dividendsPerShare * arg2 / arg2 != dividendsPerShare:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                if not dividendsPerShareAccuracyFactor:
                    revert with 0, 'SafeMath: division by zero'
                shares[address(arg1)].field_256 = dividendsPerShare * arg2 / dividendsPerShareAccuracyFactor
        else:
            if not shares[address(arg1)].field_0:
                if arg2 <= 0:
                    if not arg2:
                        if shares[address(arg1)].field_0:
                            require stor4.length - 1 < stor4.length
                            require stor5[address(arg1)] < stor4.length
                            stor4[stor5[address(arg1)]] = stor4[stor4.length]
                            require stor4.length - 1 < stor4.length
                            stor5[stor4[stor4.length]] = stor5[address(arg1)]
                            require stor4.length
                            stor4[stor4.length] = 0
                            stor4.length--
                else:
                    if not shares[address(arg1)].field_0:
                        stor5[address(arg1)] = stor4.length
                        stor4.length++
                        stor4[stor4.length] = arg1
                    else:
                        if not arg2:
                            if shares[address(arg1)].field_0:
                                require stor4.length - 1 < stor4.length
                                require stor5[address(arg1)] < stor4.length
                                stor4[stor5[address(arg1)]] = stor4[stor4.length]
                                require stor4.length - 1 < stor4.length
                                stor5[stor4[stor4.length]] = stor5[address(arg1)]
                                require stor4.length
                                stor4[stor4.length] = 0
                                stor4.length--
                if shares[address(arg1)].field_0 > totalShares:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                totalShares = arg2 + totalShares - shares[address(arg1)].field_0
                shares[address(arg1)].field_0 = arg2
                if not arg2:
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: division by zero'
                    shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
                else:
                    if dividendsPerShare * arg2 / arg2 != dividendsPerShare:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: division by zero'
                    shares[address(arg1)].field_256 = dividendsPerShare * arg2 / dividendsPerShareAccuracyFactor
            else:
                if not shares[address(arg1)].field_0:
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
                        if arg2 <= 0:
                            if not arg2:
                                if shares[address(arg1)].field_0:
                                    require stor4.length - 1 < stor4.length
                                    require stor5[address(arg1)] < stor4.length
                                    stor4[stor5[address(arg1)]] = stor4[stor4.length]
                                    require stor4.length - 1 < stor4.length
                                    stor5[stor4[stor4.length]] = stor5[address(arg1)]
                                    require stor4.length
                                    stor4[stor4.length] = 0
                                    stor4.length--
                        else:
                            if not shares[address(arg1)].field_0:
                                stor5[address(arg1)] = stor4.length
                                stor4.length++
                                stor4[stor4.length] = arg1
                            else:
                                if not arg2:
                                    if shares[address(arg1)].field_0:
                                        require stor4.length - 1 < stor4.length
                                        require stor5[address(arg1)] < stor4.length
                                        stor4[stor5[address(arg1)]] = stor4[stor4.length]
                                        require stor4.length - 1 < stor4.length
                                        stor5[stor4[stor4.length]] = stor5[address(arg1)]
                                        require stor4.length
                                        stor4[stor4.length] = 0
                                        stor4.length--
                        if shares[address(arg1)].field_0 > totalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalShares = arg2 + totalShares - shares[address(arg1)].field_0
                        shares[address(arg1)].field_0 = arg2
                        if not arg2:
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 'SafeMath: division by zero'
                            shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
                        else:
                            if dividendsPerShare * arg2 / arg2 != dividendsPerShare:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 'SafeMath: division by zero'
                            shares[address(arg1)].field_256 = dividendsPerShare * arg2 / dividendsPerShareAccuracyFactor
                    else:
                        if shares[address(arg1)].field_256 > 0 / dividendsPerShareAccuracyFactor:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                            if arg2 <= 0:
                                if not arg2:
                                    if shares[address(arg1)].field_0:
                                        require stor4.length - 1 < stor4.length
                                        require stor5[address(arg1)] < stor4.length
                                        stor4[stor5[address(arg1)]] = stor4[stor4.length]
                                        require stor4.length - 1 < stor4.length
                                        stor5[stor4[stor4.length]] = stor5[address(arg1)]
                                        require stor4.length
                                        stor4[stor4.length] = 0
                                        stor4.length--
                            else:
                                if not shares[address(arg1)].field_0:
                                    stor5[address(arg1)] = stor4.length
                                    stor4.length++
                                    stor4[stor4.length] = arg1
                                else:
                                    if not arg2:
                                        if shares[address(arg1)].field_0:
                                            require stor4.length - 1 < stor4.length
                                            require stor5[address(arg1)] < stor4.length
                                            stor4[stor5[address(arg1)]] = stor4[stor4.length]
                                            require stor4.length - 1 < stor4.length
                                            stor5[stor4[stor4.length]] = stor5[address(arg1)]
                                            require stor4.length
                                            stor4[stor4.length] = 0
                                            stor4.length--
                            if shares[address(arg1)].field_0 > totalShares:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalShares = arg2 + totalShares - shares[address(arg1)].field_0
                            shares[address(arg1)].field_0 = arg2
                            if not arg2:
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero'
                                shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
                            else:
                                if dividendsPerShare * arg2 / arg2 != dividendsPerShare:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero'
                                shares[address(arg1)].field_256 = dividendsPerShare * arg2 / dividendsPerShareAccuracyFactor
                        else:
                            if (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 + totalDistributed < totalDistributed:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDistributed = (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 + totalDistributed
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor6[address(arg1)] = block.timestamp
                            if (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 + shares[address(arg1)].field_512 < shares[address(arg1)].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            shares[address(arg1)].field_512 = (0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 + shares[address(arg1)].field_512
                            if not shares[address(arg1)].field_0:
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero'
                                shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
                            else:
                                if dividendsPerShare * shares[address(arg1)].field_0 / shares[address(arg1)].field_0 != dividendsPerShare:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero'
                                shares[address(arg1)].field_256 = dividendsPerShare * shares[address(arg1)].field_0 / dividendsPerShareAccuracyFactor
                            if arg2 <= 0:
                                if not arg2:
                                    if shares[address(arg1)].field_0:
                                        require stor4.length - 1 < stor4.length
                                        require stor5[address(arg1)] < stor4.length
                                        stor4[stor5[address(arg1)]] = stor4[stor4.length]
                                        require stor4.length - 1 < stor4.length
                                        stor5[stor4[stor4.length]] = stor5[address(arg1)]
                                        require stor4.length
                                        stor4[stor4.length] = 0
                                        stor4.length--
                            else:
                                if not shares[address(arg1)].field_0:
                                    stor5[address(arg1)] = stor4.length
                                    stor4.length++
                                    stor4[stor4.length] = arg1
                                else:
                                    if not arg2:
                                        if shares[address(arg1)].field_0:
                                            require stor4.length - 1 < stor4.length
                                            require stor5[address(arg1)] < stor4.length
                                            stor4[stor5[address(arg1)]] = stor4[stor4.length]
                                            require stor4.length - 1 < stor4.length
                                            stor5[stor4[stor4.length]] = stor5[address(arg1)]
                                            require stor4.length
                                            stor4[stor4.length] = 0
                                            stor4.length--
                            if shares[address(arg1)].field_0 > totalShares:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalShares = arg2 + totalShares - shares[address(arg1)].field_0
                            shares[address(arg1)].field_0 = arg2
                            if not arg2:
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero'
                                shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
                            else:
                                if dividendsPerShare * arg2 / arg2 != dividendsPerShare:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero'
                                shares[address(arg1)].field_256 = dividendsPerShare * arg2 / dividendsPerShareAccuracyFactor
                else:
                    if dividendsPerShare * shares[address(arg1)].field_0 / shares[address(arg1)].field_0 != dividendsPerShare:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not dividendsPerShareAccuracyFactor:
                        revert with 0, 'SafeMath: division by zero'
                    if dividendsPerShare * shares[address(arg1)].field_0 / dividendsPerShareAccuracyFactor <= shares[address(arg1)].field_256:
                        if arg2 <= 0:
                            if not arg2:
                                if shares[address(arg1)].field_0:
                                    require stor4.length - 1 < stor4.length
                                    require stor5[address(arg1)] < stor4.length
                                    stor4[stor5[address(arg1)]] = stor4[stor4.length]
                                    require stor4.length - 1 < stor4.length
                                    stor5[stor4[stor4.length]] = stor5[address(arg1)]
                                    require stor4.length
                                    stor4[stor4.length] = 0
                                    stor4.length--
                        else:
                            if not shares[address(arg1)].field_0:
                                stor5[address(arg1)] = stor4.length
                                stor4.length++
                                stor4[stor4.length] = arg1
                            else:
                                if not arg2:
                                    if shares[address(arg1)].field_0:
                                        require stor4.length - 1 < stor4.length
                                        require stor5[address(arg1)] < stor4.length
                                        stor4[stor5[address(arg1)]] = stor4[stor4.length]
                                        require stor4.length - 1 < stor4.length
                                        stor5[stor4[stor4.length]] = stor5[address(arg1)]
                                        require stor4.length
                                        stor4[stor4.length] = 0
                                        stor4.length--
                        if shares[address(arg1)].field_0 > totalShares:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg2 < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        totalShares = arg2 + totalShares - shares[address(arg1)].field_0
                        shares[address(arg1)].field_0 = arg2
                        if not arg2:
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 'SafeMath: division by zero'
                            shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
                        else:
                            if dividendsPerShare * arg2 / arg2 != dividendsPerShare:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                            if not dividendsPerShareAccuracyFactor:
                                revert with 0, 'SafeMath: division by zero'
                            shares[address(arg1)].field_256 = dividendsPerShare * arg2 / dividendsPerShareAccuracyFactor
                    else:
                        if shares[address(arg1)].field_256 > dividendsPerShare * shares[address(arg1)].field_0 / dividendsPerShareAccuracyFactor:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not (dividendsPerShare * shares[address(arg1)].field_0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256:
                            if arg2 <= 0:
                                if not arg2:
                                    if shares[address(arg1)].field_0:
                                        require stor4.length - 1 < stor4.length
                                        require stor5[address(arg1)] < stor4.length
                                        stor4[stor5[address(arg1)]] = stor4[stor4.length]
                                        require stor4.length - 1 < stor4.length
                                        stor5[stor4[stor4.length]] = stor5[address(arg1)]
                                        require stor4.length
                                        stor4[stor4.length] = 0
                                        stor4.length--
                            else:
                                if not shares[address(arg1)].field_0:
                                    stor5[address(arg1)] = stor4.length
                                    stor4.length++
                                    stor4[stor4.length] = arg1
                                else:
                                    if not arg2:
                                        if shares[address(arg1)].field_0:
                                            require stor4.length - 1 < stor4.length
                                            require stor5[address(arg1)] < stor4.length
                                            stor4[stor5[address(arg1)]] = stor4[stor4.length]
                                            require stor4.length - 1 < stor4.length
                                            stor5[stor4[stor4.length]] = stor5[address(arg1)]
                                            require stor4.length
                                            stor4[stor4.length] = 0
                                            stor4.length--
                            if shares[address(arg1)].field_0 > totalShares:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalShares = arg2 + totalShares - shares[address(arg1)].field_0
                            shares[address(arg1)].field_0 = arg2
                            if not arg2:
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero'
                                shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
                            else:
                                if dividendsPerShare * arg2 / arg2 != dividendsPerShare:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero'
                                shares[address(arg1)].field_256 = dividendsPerShare * arg2 / dividendsPerShareAccuracyFactor
                        else:
                            if (dividendsPerShare * shares[address(arg1)].field_0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 + totalDistributed < totalDistributed:
                                revert with 0, 'SafeMath: addition overflow'
                            totalDistributed = (dividendsPerShare * shares[address(arg1)].field_0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 + totalDistributed
                            require ext_code.size(stor1)
                            call stor1.0xa9059cbb with:
                                 gas gas_remaining wei
                                args address(arg1), (dividendsPerShare * shares[address(arg1)].field_0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            stor6[address(arg1)] = block.timestamp
                            if (dividendsPerShare * shares[address(arg1)].field_0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 + shares[address(arg1)].field_512 < shares[address(arg1)].field_512:
                                revert with 0, 'SafeMath: addition overflow'
                            shares[address(arg1)].field_512 = (dividendsPerShare * shares[address(arg1)].field_0 / dividendsPerShareAccuracyFactor) - shares[address(arg1)].field_256 + shares[address(arg1)].field_512
                            if not shares[address(arg1)].field_0:
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero'
                                shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
                            else:
                                if dividendsPerShare * shares[address(arg1)].field_0 / shares[address(arg1)].field_0 != dividendsPerShare:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero'
                                shares[address(arg1)].field_256 = dividendsPerShare * shares[address(arg1)].field_0 / dividendsPerShareAccuracyFactor
                            if arg2 <= 0:
                                if not arg2:
                                    if shares[address(arg1)].field_0:
                                        require stor4.length - 1 < stor4.length
                                        require stor5[address(arg1)] < stor4.length
                                        stor4[stor5[address(arg1)]] = stor4[stor4.length]
                                        require stor4.length - 1 < stor4.length
                                        stor5[stor4[stor4.length]] = stor5[address(arg1)]
                                        require stor4.length
                                        stor4[stor4.length] = 0
                                        stor4.length--
                            else:
                                if not shares[address(arg1)].field_0:
                                    stor5[address(arg1)] = stor4.length
                                    stor4.length++
                                    stor4[stor4.length] = arg1
                                else:
                                    if not arg2:
                                        if shares[address(arg1)].field_0:
                                            require stor4.length - 1 < stor4.length
                                            require stor5[address(arg1)] < stor4.length
                                            stor4[stor5[address(arg1)]] = stor4[stor4.length]
                                            require stor4.length - 1 < stor4.length
                                            stor5[stor4[stor4.length]] = stor5[address(arg1)]
                                            require stor4.length
                                            stor4[stor4.length] = 0
                                            stor4.length--
                            if shares[address(arg1)].field_0 > totalShares:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg2 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            totalShares = arg2 + totalShares - shares[address(arg1)].field_0
                            shares[address(arg1)].field_0 = arg2
                            if not arg2:
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero'
                                shares[address(arg1)].field_256 = 0 / dividendsPerShareAccuracyFactor
                            else:
                                if dividendsPerShare * arg2 / arg2 != dividendsPerShare:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if not dividendsPerShareAccuracyFactor:
                                    revert with 0, 'SafeMath: division by zero'
                                shares[address(arg1)].field_256 = dividendsPerShare * arg2 / dividendsPerShareAccuracyFactor
}



}
