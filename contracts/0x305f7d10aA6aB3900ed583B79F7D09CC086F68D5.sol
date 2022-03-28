contract main {




// =====================  Runtime code  =====================


address sub_a09c0754Address;
address usdtAddress;
address sub_bf148da4Address;

function usdt() payable {
    return usdtAddress
}

function sub_a09c0754(?) payable {
    return sub_a09c0754Address
}

function sub_bf148da4(?) payable {
    return sub_bf148da4Address
}

function _fallback() payable {
    revert
}

function totalSupply() payable {
    require ext_code.size(sub_a09c0754Address)
    staticcall sub_a09c0754Address.0x70a08231 with:
            gas gas_remaining wei
           args sub_bf148da4Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(usdtAddress)
    staticcall usdtAddress.0x70a08231 with:
            gas gas_remaining wei
           args sub_bf148da4Address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return (10^18 * ext_call.return_data[0] / ext_call.return_data[0])
}



}
