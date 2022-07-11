contract main {




// =====================  Runtime code  =====================


uint256 sub_31b46c8b;
address oracleAddress;
address aggregatorAddress;
address assetAddress;
address botAddress;

function bot() payable {
    return botAddress
}

function aggregator() payable {
    return aggregatorAddress
}

function sub_31b46c8b(?) payable {
    return sub_31b46c8b
}

function asset() payable {
    return assetAddress
}

function oracle() payable {
    return oracleAddress
}

function _fallback() payable {
    revert
}

function getHistoricalPrice(uint80 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.getRoundData(uint80 arg1) with:
            gas gas_remaining wei
           args Mask(80, 0, arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if sub_31b46c8b > 8:
        if 8 > sub_31b46c8b:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 10^(sub_31b46c8b - 8):
            revert with 0, 'SafeMath: division by zero'
        return ext_call.return_data[32] / 10^(sub_31b46c8b - 8), ext_call.return_data[96]
    if sub_31b46c8b >= 8:
        return ext_call.return_data[32], ext_call.return_data[96]
    if sub_31b46c8b > 8:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[32]:
        return 0, ext_call.return_data[96]
    if 10^(-sub_31b46c8b + 8) * ext_call.return_data[32] / ext_call.return_data[32] != 10^(-sub_31b46c8b + 8):
        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return 10^(-sub_31b46c8b + 8) * ext_call.return_data[32], ext_call.return_data[96]
}

function getPrice() payable {
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if ext_call.return_data[32] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe436861696e4c696e6b5072696365723a207072696365206973206c6f776572207468616e20,
                    ext_call.return_data[106 len 26]
    if sub_31b46c8b > 8:
        if 8 > sub_31b46c8b:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 10^(sub_31b46c8b - 8):
            revert with 0, 'SafeMath: division by zero'
        return (ext_call.return_data[32] / 10^(sub_31b46c8b - 8))
    if sub_31b46c8b >= 8:
        return ext_call.return_data[32]
    if sub_31b46c8b > 8:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[32]:
        return 0
    if 10^(-sub_31b46c8b + 8) * ext_call.return_data[32] / ext_call.return_data[32] != 10^(-sub_31b46c8b + 8):
        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return (10^(-sub_31b46c8b + 8) * ext_call.return_data[32])
}

function setExpiryPriceInOracle(uint256 arg1, uint80 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.getRoundData(uint80 arg1) with:
            gas gas_remaining wei
           args Mask(80, 0, arg2)
    if ext_call.success:
        require return_data.size >= 160
        if arg1 > ext_call.return_data[96]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        47,
                        0x77436861696e4c696e6b5072696365723a20726f756e644964206e6f74206669727374206166746572206578706972,
                        ext_call.return_data[115 len 17]
        if ext_call.return_data[32] < 0:
            revert with 0, 'ChainLinkPricer: invalid price'
        if msg.sender == botAddress:
            require ext_code.size(oracleAddress)
            call oracleAddress.setExpiryPrice(address arg1, uint256 arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args assetAddress, arg1, ext_call.return_data[32]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if 1 > Mask(80, 0, arg2):
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(aggregatorAddress)
        staticcall aggregatorAddress.getRoundData(uint80 arg1) with:
                gas gas_remaining wei
               args Mask(80, 0, Mask(80, 0, arg2) - 1)
        mem[160 len 160] = ext_call.return_data[0 len 160]
        s = Mask(80, 0, arg2) - 1
        while ext_call.success:
            require return_data.size >= 160
            if mem[256]:
                if mem[256] > arg1:
                    revert with 0, 
                                32,
                                55,
                                0x79436861696e4c696e6b5072696365723a2070726576696f7573526f756e644964206e6f74206c617374206265666f7265206578706972,
                                mem[283 len 9]
                require ext_code.size(aggregatorAddress)
                staticcall aggregatorAddress.getRoundData(uint80 arg1) with:
                        gas gas_remaining wei
                       args Mask(80, 0, s)
                mem[160 len 160] = ext_call.return_data[0 len 160]
                s = s
                continue 
            if Mask(80, 0, s) <= 0:
                revert with 0, 32, 40, 0x79436861696e4c696e6b5072696365723a20496e76616c69642070726576696f7573526f756e6449, mem[268 len 24]
            require ext_code.size(aggregatorAddress)
            staticcall aggregatorAddress.getRoundData(uint80 arg1) with:
                    gas gas_remaining wei
                   args Mask(80, 0, s - 1)
            mem[160 len 160] = ext_call.return_data[0 len 160]
            s = s - 1
            continue 
    revert with ext_call.return_data[0 len return_data.size]
}



}
