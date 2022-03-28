contract main {




// =====================  Runtime code  =====================


address WAVAXAddress;
address rewardTokenAddress;
address factoryAddress;
uint256 sub_752f7466;

function WAVAX() payable {
    return WAVAXAddress
}

function sub_752f7466(?) payable {
    return sub_752f7466
}

function Factory() payable {
    return factoryAddress
}

function RewardToken() payable {
    return rewardTokenAddress
}

function _fallback() payable {
    revert
}

function sub_f026d37e(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.0x2f390dc3 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if WAVAXAddress == rewardTokenAddress:
        revert with 0, 'AMMLibrary: IDENTICAL_ADDRESSES'
    if WAVAXAddress < rewardTokenAddress:
        if not WAVAXAddress:
            revert with 0, 'AMMLibrary: ZERO_ADDRESS'
        if WAVAXAddress == rewardTokenAddress:
            revert with 0, 'AMMLibrary: IDENTICAL_ADDRESSES'
        if WAVAXAddress < rewardTokenAddress:
            if not WAVAXAddress:
                revert with 0, 'AMMLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(WAVAXAddress, rewardTokenAddress), 0x81dbf51ab39dc634785936a3b34def28bf8007e6dfa30d4284c4b8547cb47a51)))
            staticcall address(sha3(0, factoryAddress, sha3(WAVAXAddress, rewardTokenAddress), 0x81dbf51ab39dc634785936a3b34def28bf8007e6dfa30d4284c4b8547cb47a51)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not rewardTokenAddress:
                revert with 0, 'AMMLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(rewardTokenAddress, WAVAXAddress), 0x81dbf51ab39dc634785936a3b34def28bf8007e6dfa30d4284c4b8547cb47a51)))
            staticcall address(sha3(0, factoryAddress, sha3(rewardTokenAddress, WAVAXAddress), 0x81dbf51ab39dc634785936a3b34def28bf8007e6dfa30d4284c4b8547cb47a51)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] <= 0:
            revert with 0, 32, 37, 0x77414d4d4c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[390 len 27]
        if WAVAXAddress == WAVAXAddress:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 34, 0x54414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 34, 0x54414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if not ext_call.return_data[0]:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1000 * ext_call.return_data[50 len 14]:
                            require ext_code.size(arg2)
                            staticcall arg2.0xecc6f5b6 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                if sub_752f7466 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_752f7466:
                                    return (0 / sub_752f7466)
                            else:
                                if 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    if 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                    if sub_752f7466 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_752f7466:
                                        return (0 / 1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / sub_752f7466)
            else:
                if ext_call.return_data[0]:
                    if 997 * ext_call.return_data[0] / ext_call.return_data[0] != 997:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not 997 * ext_call.return_data[0]:
                        if not ext_call.return_data[50 len 14]:
                            if 997 * ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 997 * ext_call.return_data[0]:
                                require ext_code.size(arg2)
                                staticcall arg2.0xecc6f5b6 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / 997 * ext_call.return_data[0]:
                                    if sub_752f7466 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_752f7466:
                                        return (0 / sub_752f7466)
                                else:
                                    if 0 / 997 * ext_call.return_data[0]:
                                        if 0 / 997 * ext_call.return_data[0] * ext_call.return_data[0] / 0 / 997 * ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                        if sub_752f7466 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_752f7466:
                                            return (0 / 997 * ext_call.return_data[0] * ext_call.return_data[0] / sub_752f7466)
                        else:
                            if ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xecc6f5b6 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                        if sub_752f7466 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_752f7466:
                                            return (0 / sub_752f7466)
                                    else:
                                        if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                            if sub_752f7466 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_752f7466:
                                                return (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / sub_752f7466)
                    else:
                        if 997 * ext_call.return_data[0]:
                            if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / 997 * ext_call.return_data[0] != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                            if not ext_call.return_data[50 len 14]:
                                if 997 * ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 997 * ext_call.return_data[0]:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xecc6f5b6 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 997 * ext_call.return_data[0]:
                                        if sub_752f7466 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_752f7466:
                                            return (0 / sub_752f7466)
                                    else:
                                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 997 * ext_call.return_data[0]:
                                            if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 997 * ext_call.return_data[0] * ext_call.return_data[0] / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 997 * ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                            if sub_752f7466 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_752f7466:
                                                return (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 997 * ext_call.return_data[0] * ext_call.return_data[0] / sub_752f7466)
                            else:
                                if ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
                                        require ext_code.size(arg2)
                                        staticcall arg2.0xecc6f5b6 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            if sub_752f7466 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_752f7466:
                                                return (0 / sub_752f7466)
                                        else:
                                            if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                                if sub_752f7466 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_752f7466:
                                                    return (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / sub_752f7466)
        else:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 34, 0x54414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 34, 0x54414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if not ext_call.return_data[0]:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1000 * ext_call.return_data[18 len 14]:
                            require ext_code.size(arg2)
                            staticcall arg2.0xecc6f5b6 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                                if sub_752f7466 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_752f7466:
                                    return (0 / sub_752f7466)
                            else:
                                if 0 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    if 0 / 1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 0 / 1000 * Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                    if sub_752f7466 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_752f7466:
                                        return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / sub_752f7466)
            else:
                if ext_call.return_data[0]:
                    if 997 * ext_call.return_data[0] / ext_call.return_data[0] != 997:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not 997 * ext_call.return_data[0]:
                        if not ext_call.return_data[18 len 14]:
                            if 997 * ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 997 * ext_call.return_data[0]:
                                require ext_code.size(arg2)
                                staticcall arg2.0xecc6f5b6 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / 997 * ext_call.return_data[0]:
                                    if sub_752f7466 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_752f7466:
                                        return (0 / sub_752f7466)
                                else:
                                    if 0 / 997 * ext_call.return_data[0]:
                                        if 0 / 997 * ext_call.return_data[0] * ext_call.return_data[0] / 0 / 997 * ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                        if sub_752f7466 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_752f7466:
                                            return (0 / 997 * ext_call.return_data[0] * ext_call.return_data[0] / sub_752f7466)
                        else:
                            if ext_call.return_data[18 len 14]:
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xecc6f5b6 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                        if sub_752f7466 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_752f7466:
                                            return (0 / sub_752f7466)
                                    else:
                                        if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                            if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                            if sub_752f7466 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_752f7466:
                                                return (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / sub_752f7466)
                    else:
                        if 997 * ext_call.return_data[0]:
                            if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / 997 * ext_call.return_data[0] != ext_call.return_data[50 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                            if not ext_call.return_data[18 len 14]:
                                if 997 * ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 997 * ext_call.return_data[0]:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xecc6f5b6 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 997 * ext_call.return_data[0]:
                                        if sub_752f7466 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_752f7466:
                                            return (0 / sub_752f7466)
                                    else:
                                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 997 * ext_call.return_data[0]:
                                            if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 997 * ext_call.return_data[0] * ext_call.return_data[0] / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 997 * ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                            if sub_752f7466 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_752f7466:
                                                return (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 997 * ext_call.return_data[0] * ext_call.return_data[0] / sub_752f7466)
                            else:
                                if ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
                                        require ext_code.size(arg2)
                                        staticcall arg2.0xecc6f5b6 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                            if sub_752f7466 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_752f7466:
                                                return (0 / sub_752f7466)
                                        else:
                                            if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                                if sub_752f7466 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_752f7466:
                                                    return (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / sub_752f7466)
    else:
        if not rewardTokenAddress:
            revert with 0, 'AMMLibrary: ZERO_ADDRESS'
        if WAVAXAddress == rewardTokenAddress:
            revert with 0, 'AMMLibrary: IDENTICAL_ADDRESSES'
        if WAVAXAddress < rewardTokenAddress:
            if not WAVAXAddress:
                revert with 0, 'AMMLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(WAVAXAddress, rewardTokenAddress), 0x81dbf51ab39dc634785936a3b34def28bf8007e6dfa30d4284c4b8547cb47a51)))
            staticcall address(sha3(0, factoryAddress, sha3(WAVAXAddress, rewardTokenAddress), 0x81dbf51ab39dc634785936a3b34def28bf8007e6dfa30d4284c4b8547cb47a51)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not rewardTokenAddress:
                revert with 0, 'AMMLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(rewardTokenAddress, WAVAXAddress), 0x81dbf51ab39dc634785936a3b34def28bf8007e6dfa30d4284c4b8547cb47a51)))
            staticcall address(sha3(0, factoryAddress, sha3(rewardTokenAddress, WAVAXAddress), 0x81dbf51ab39dc634785936a3b34def28bf8007e6dfa30d4284c4b8547cb47a51)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if ext_call.return_data[0] <= 0:
            revert with 0, 32, 37, 0x77414d4d4c6962726172793a20494e53554646494349454e545f494e5055545f414d4f554e, mem[390 len 27]
        if WAVAXAddress == rewardTokenAddress:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 34, 0x54414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 34, 0x54414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if not ext_call.return_data[0]:
                if ext_call.return_data[50 len 14]:
                    if ext_call.return_data[50 len 14]:
                        if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if 1000 * ext_call.return_data[50 len 14] < 1000 * ext_call.return_data[50 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1000 * ext_call.return_data[50 len 14]:
                            require ext_code.size(arg2)
                            staticcall arg2.0xecc6f5b6 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                if sub_752f7466 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_752f7466:
                                    return (0 / sub_752f7466)
                            else:
                                if 0 / 1000 * Mask(112, 0, ext_call.return_data[32]):
                                    if 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / 0 / 1000 * Mask(112, 0, ext_call.return_data[32]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                    if sub_752f7466 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_752f7466:
                                        return (0 / 1000 * Mask(112, 0, ext_call.return_data[32]) * ext_call.return_data[0] / sub_752f7466)
            else:
                if ext_call.return_data[0]:
                    if 997 * ext_call.return_data[0] / ext_call.return_data[0] != 997:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not 997 * ext_call.return_data[0]:
                        if not ext_call.return_data[50 len 14]:
                            if 997 * ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 997 * ext_call.return_data[0]:
                                require ext_code.size(arg2)
                                staticcall arg2.0xecc6f5b6 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / 997 * ext_call.return_data[0]:
                                    if sub_752f7466 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_752f7466:
                                        return (0 / sub_752f7466)
                                else:
                                    if 0 / 997 * ext_call.return_data[0]:
                                        if 0 / 997 * ext_call.return_data[0] * ext_call.return_data[0] / 0 / 997 * ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                        if sub_752f7466 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_752f7466:
                                            return (0 / 997 * ext_call.return_data[0] * ext_call.return_data[0] / sub_752f7466)
                        else:
                            if ext_call.return_data[50 len 14]:
                                if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xecc6f5b6 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                        if sub_752f7466 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_752f7466:
                                            return (0 / sub_752f7466)
                                    else:
                                        if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            if 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / 0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                            if sub_752f7466 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_752f7466:
                                                return (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / sub_752f7466)
                    else:
                        if 997 * ext_call.return_data[0]:
                            if 997 * ext_call.return_data[0] * ext_call.return_data[18 len 14] / 997 * ext_call.return_data[0] != ext_call.return_data[18 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                            if not ext_call.return_data[50 len 14]:
                                if 997 * ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 997 * ext_call.return_data[0]:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xecc6f5b6 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 997 * ext_call.return_data[0]:
                                        if sub_752f7466 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_752f7466:
                                            return (0 / sub_752f7466)
                                    else:
                                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 997 * ext_call.return_data[0]:
                                            if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 997 * ext_call.return_data[0] * ext_call.return_data[0] / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 997 * ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                            if sub_752f7466 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_752f7466:
                                                return (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / 997 * ext_call.return_data[0] * ext_call.return_data[0] / sub_752f7466)
                            else:
                                if ext_call.return_data[50 len 14]:
                                    if 1000 * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != 1000:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[50 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (1000 * ext_call.return_data[50 len 14]) + (997 * ext_call.return_data[0]):
                                        require ext_code.size(arg2)
                                        staticcall arg2.0xecc6f5b6 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                            if sub_752f7466 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_752f7466:
                                                return (0 / sub_752f7466)
                                        else:
                                            if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]):
                                                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                                if sub_752f7466 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_752f7466:
                                                    return (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / sub_752f7466)
        else:
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 34, 0x54414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 34, 0x54414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if not ext_call.return_data[0]:
                if ext_call.return_data[18 len 14]:
                    if ext_call.return_data[18 len 14]:
                        if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                        if 1000 * ext_call.return_data[18 len 14] < 1000 * ext_call.return_data[18 len 14]:
                            revert with 0, 'SafeMath: addition overflow'
                        if 1000 * ext_call.return_data[18 len 14]:
                            require ext_code.size(arg2)
                            staticcall arg2.0xecc6f5b6 with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not 0 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                                if sub_752f7466 <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if sub_752f7466:
                                    return (0 / sub_752f7466)
                            else:
                                if 0 / 1000 * Mask(112, 0, ext_call.return_data[0]):
                                    if 0 / 1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / 0 / 1000 * Mask(112, 0, ext_call.return_data[0]) != ext_call.return_data[0]:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                    if sub_752f7466 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_752f7466:
                                        return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]) * ext_call.return_data[0] / sub_752f7466)
            else:
                if ext_call.return_data[0]:
                    if 997 * ext_call.return_data[0] / ext_call.return_data[0] != 997:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                    if not 997 * ext_call.return_data[0]:
                        if not ext_call.return_data[18 len 14]:
                            if 997 * ext_call.return_data[0] < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if 997 * ext_call.return_data[0]:
                                require ext_code.size(arg2)
                                staticcall arg2.0xecc6f5b6 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not 0 / 997 * ext_call.return_data[0]:
                                    if sub_752f7466 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if sub_752f7466:
                                        return (0 / sub_752f7466)
                                else:
                                    if 0 / 997 * ext_call.return_data[0]:
                                        if 0 / 997 * ext_call.return_data[0] * ext_call.return_data[0] / 0 / 997 * ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                        if sub_752f7466 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_752f7466:
                                            return (0 / 997 * ext_call.return_data[0] * ext_call.return_data[0] / sub_752f7466)
                        else:
                            if ext_call.return_data[18 len 14]:
                                if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                    revert with 0, 'SafeMath: addition overflow'
                                if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xecc6f5b6 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                        if sub_752f7466 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_752f7466:
                                            return (0 / sub_752f7466)
                                    else:
                                        if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                            if 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / 0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                            if sub_752f7466 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_752f7466:
                                                return (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / sub_752f7466)
                    else:
                        if 997 * ext_call.return_data[0]:
                            if 997 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / 997 * ext_call.return_data[0] != ext_call.return_data[50 len 14]:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                            if not ext_call.return_data[18 len 14]:
                                if 997 * ext_call.return_data[0] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if 997 * ext_call.return_data[0]:
                                    require ext_code.size(arg2)
                                    staticcall arg2.0xecc6f5b6 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 997 * ext_call.return_data[0]:
                                        if sub_752f7466 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if sub_752f7466:
                                            return (0 / sub_752f7466)
                                    else:
                                        if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 997 * ext_call.return_data[0]:
                                            if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 997 * ext_call.return_data[0] * ext_call.return_data[0] / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 997 * ext_call.return_data[0] != ext_call.return_data[0]:
                                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                            if sub_752f7466 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_752f7466:
                                                return (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / 997 * ext_call.return_data[0] * ext_call.return_data[0] / sub_752f7466)
                            else:
                                if ext_call.return_data[18 len 14]:
                                    if 1000 * ext_call.return_data[18 len 14] / ext_call.return_data[18 len 14] != 1000:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]) < 1000 * ext_call.return_data[18 len 14]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if (1000 * ext_call.return_data[18 len 14]) + (997 * ext_call.return_data[0]):
                                        require ext_code.size(arg2)
                                        staticcall arg2.0xecc6f5b6 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        if not 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                            if sub_752f7466 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            if sub_752f7466:
                                                return (0 / sub_752f7466)
                                        else:
                                            if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]):
                                                if 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / 997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) != ext_call.return_data[0]:
                                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
                                                if sub_752f7466 <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if sub_752f7466:
                                                    return (997 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * ext_call.return_data[0]) * ext_call.return_data[0] / sub_752f7466)
    revert
}



}
