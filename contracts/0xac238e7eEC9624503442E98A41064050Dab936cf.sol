contract main {




// =====================  Runtime code  =====================


address sub_1565b7f4Address;
address oracleAddress;
address sub_216a75c7Address;
address sub_bb9b0e11Address;

function sub_1565b7f4(?) payable {
    return sub_1565b7f4Address
}

function sub_216a75c7(?) payable {
    return sub_216a75c7Address
}

function oracleAddress() payable {
    return oracleAddress
}

function sub_bb9b0e11(?) payable {
    return sub_bb9b0e11Address
}

function _fallback() payable {
    revert
}

function getTvl() payable {
    require ext_code.size(sub_bb9b0e11Address)
    staticcall sub_bb9b0e11Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_1565b7f4Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_216a75c7Address)
        staticcall sub_216a75c7Address.0x70a08231 with:
                gas gas_remaining wei
               args sub_1565b7f4Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(oracleAddress)
        staticcall oracleAddress.getPrice(address arg1) with:
                gas gas_remaining wei
               args sub_216a75c7Address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            return 0
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18)
    if 100 * ext_call.return_data[0] / ext_call.return_data[0] != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(sub_216a75c7Address)
    staticcall sub_216a75c7Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_1565b7f4Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.getPrice(address arg1) with:
            gas gas_remaining wei
           args sub_216a75c7Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if 100 * ext_call.return_data[0] / 10^18 < 100 * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (100 * ext_call.return_data[0] / 10^18)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if (ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) + (100 * ext_call.return_data[0] / 10^18) < 100 * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return ((ext_call.return_data[0] * ext_call.return_data[0] / 1000000000000000000 * 10^18) + (100 * ext_call.return_data[0] / 10^18))
}



}
