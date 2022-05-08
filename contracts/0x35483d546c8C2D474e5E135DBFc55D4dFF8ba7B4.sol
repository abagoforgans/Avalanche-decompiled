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

function setExpiryPriceInOracle(uint256 arg1, uint80 arg2) payable {
    require calldata.size - 4 >= 64
    if botAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0xfe436861696e4c696e6b5072696365723a20756e617574686f72697a65642073656e6465,
                    mem[200 len 28]
    require ext_code.size(aggregatorAddress)
    staticcall aggregatorAddress.getRoundData(uint80 arg1) with:
            gas gas_remaining wei
           args Mask(80, 0, arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    if arg1 > ext_call.return_data[96]:
        revert with 0, 'ChainLinkPricer: invalid roundId'
    require ext_code.size(oracleAddress)
    call oracleAddress.setExpiryPrice(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args assetAddress, arg1, ext_call.return_data[32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
                    0x72436861696e4c696e6b5072696365723a207072696365206973206c6f776572207468616e20,
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



}
