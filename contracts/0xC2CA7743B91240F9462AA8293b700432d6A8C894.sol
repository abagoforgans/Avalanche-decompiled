contract main {




// =====================  Runtime code  =====================


const decimals = 18


address sub_b457fc24Address;
address crvPoolAddress;
address daiAddress;
address usdtAddress;
address usdcAddress;
address sub_06a4a7c9Address;
mapping of address stor6;

function sub_06a4a7c9(?) payable {
    return sub_06a4a7c9Address
}

function usdt() payable {
    return usdtAddress
}

function usdc() payable {
    return usdcAddress
}

function crvPool() payable {
    return crvPoolAddress
}

function sub_b457fc24(?) payable {
    return sub_b457fc24Address
}

function dai() payable {
    return daiAddress
}

function _fallback() payable {
    revert
}

function latestRoundData() payable {
    require ext_code.size(sub_b457fc24Address)
    staticcall sub_b457fc24Address.getPricePerFullShare() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6[stor2])
    staticcall stor6[stor2].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6[stor4])
    staticcall stor6[stor4].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor6[stor3])
    staticcall stor6[stor3].latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(daiAddress)
    staticcall daiAddress.0x70a08231 with:
            gas gas_remaining wei
           args crvPoolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(usdcAddress)
        staticcall usdcAddress.0x70a08231 with:
                gas gas_remaining wei
               args crvPoolAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(usdtAddress)
            staticcall usdtAddress.0x70a08231 with:
                    gas gas_remaining wei
                   args crvPoolAddress
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(sub_06a4a7c9Address)
                staticcall sub_06a4a7c9Address.0x18160ddd with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    return 0
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            require ext_code.size(sub_06a4a7c9Address)
            staticcall sub_06a4a7c9Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^6 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^6:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    return 0
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 / ext_call.return_data[0] * ext_call.return_data[0] / 10^6 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                return 0
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 / ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        require ext_code.size(usdtAddress)
        staticcall usdtAddress.0x70a08231 with:
                gas gas_remaining wei
               args crvPoolAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_06a4a7c9Address)
            staticcall sub_06a4a7c9Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^6 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^6 < ext_call.return_data[0] * ext_call.return_data[0] / 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^6:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    return 0
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 / ext_call.return_data[0] * ext_call.return_data[0] / 10^6 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                return 0
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 / ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_06a4a7c9Address)
        staticcall sub_06a4a7c9Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^6 < 0:
            revert with 0, 'SafeMath: addition overflow'
        if 2 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 < ext_call.return_data[0] * ext_call.return_data[0] / 10^6:
            revert with 0, 'SafeMath: addition overflow'
        if not 2 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                return 0
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if 2 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 / 2 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            return 0
        if 2 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 2 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 / ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        return (2 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require ext_code.size(usdcAddress)
    staticcall usdcAddress.0x70a08231 with:
            gas gas_remaining wei
           args crvPoolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(usdtAddress)
        staticcall usdtAddress.0x70a08231 with:
                gas gas_remaining wei
               args crvPoolAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            require ext_code.size(sub_06a4a7c9Address)
            staticcall sub_06a4a7c9Address.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if not ext_call.return_data[0]:
                    return 0
                if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                return 0
            if 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            return (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        require ext_code.size(sub_06a4a7c9Address)
        staticcall sub_06a4a7c9Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] * ext_call.return_data[0] / 10^18 < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                return 0
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            return 0
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    require ext_code.size(usdtAddress)
    staticcall usdtAddress.0x70a08231 with:
            gas gas_remaining wei
           args crvPoolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(sub_06a4a7c9Address)
        staticcall sub_06a4a7c9Address.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not (ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if not ext_call.return_data[0]:
                return 0
            if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / (ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            return 0
        if (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        return ((10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    require ext_code.size(sub_06a4a7c9Address)
    staticcall sub_06a4a7c9Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) < ext_call.return_data[0] * ext_call.return_data[0] / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] * ext_call.return_data[0] / 10^6 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not (2 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18):
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if not ext_call.return_data[0]:
            return 0
        if 0 / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != 0 / ext_call.return_data[0]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        return (0 / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
    if (2 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / (2 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (ext_call.return_data[0] * ext_call.return_data[0] / 10^18) != 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        return 0
    if (2 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != (2 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    return ((2 * 10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^6) + (10^18 * ext_call.return_data[0] * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}



}
