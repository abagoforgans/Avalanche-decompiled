contract main {




// =====================  Runtime code  =====================


address WAVAXAddress;
address DAIAddress;
address factoryAddress;

function WAVAX() payable {
    return WAVAXAddress
}

function Factory() payable {
    return factoryAddress
}

function DAI() payable {
    return DAIAddress
}

function _fallback() payable {
    revert
}

function sub_38affaf7(?) payable {
    require calldata.size - 4 >= 32
    if WAVAXAddress == DAIAddress:
        revert with 0, 'AMMLibrary: IDENTICAL_ADDRESSES'
    if WAVAXAddress < DAIAddress:
        if not WAVAXAddress:
            revert with 0, 'AMMLibrary: ZERO_ADDRESS'
        if WAVAXAddress == DAIAddress:
            revert with 0, 'AMMLibrary: IDENTICAL_ADDRESSES'
        if WAVAXAddress < DAIAddress:
            if not WAVAXAddress:
                revert with 0, 'AMMLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(WAVAXAddress, DAIAddress), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, factoryAddress, sha3(WAVAXAddress, DAIAddress), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not DAIAddress:
                revert with 0, 'AMMLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(DAIAddress, WAVAXAddress), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, factoryAddress, sha3(DAIAddress, WAVAXAddress), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if WAVAXAddress == WAVAXAddress:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 34, 0x77414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 34, 0x77414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if 10^18 * ext_call.return_data[18 len 14] / 10^18 != ext_call.return_data[18 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
            require ext_call.return_data[50 len 14]
            if not arg1:
                return 0
            require arg1
            if arg1 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / arg1 != 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
            return (arg1 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10^18)
    else:
        if not DAIAddress:
            revert with 0, 'AMMLibrary: ZERO_ADDRESS'
        if WAVAXAddress == DAIAddress:
            revert with 0, 'AMMLibrary: IDENTICAL_ADDRESSES'
        if WAVAXAddress < DAIAddress:
            if not WAVAXAddress:
                revert with 0, 'AMMLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(WAVAXAddress, DAIAddress), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, factoryAddress, sha3(WAVAXAddress, DAIAddress), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not DAIAddress:
                revert with 0, 'AMMLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(DAIAddress, WAVAXAddress), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
            staticcall address(sha3(0, factoryAddress, sha3(DAIAddress, WAVAXAddress), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if WAVAXAddress == DAIAddress:
            if ext_call.return_data[50 len 14] <= 0:
                revert with 0, 32, 34, 0x77414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if ext_call.return_data[18 len 14] <= 0:
                revert with 0, 32, 34, 0x77414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
            if 10^18 * ext_call.return_data[18 len 14] / 10^18 != ext_call.return_data[18 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
            require ext_call.return_data[50 len 14]
            if not arg1:
                return 0
            require arg1
            if arg1 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / arg1 != 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14]:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
            return (arg1 * 10^18 * ext_call.return_data[18 len 14] / ext_call.return_data[50 len 14] / 10^18)
    if ext_call.return_data[18 len 14] <= 0:
        revert with 0, 32, 34, 0x77414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
    if ext_call.return_data[50 len 14] <= 0:
        revert with 0, 32, 34, 0x77414d4d4c6962726172793a20494e53554646494349454e545f4c49515549444954, mem[387 len 30]
    if 10^18 * ext_call.return_data[50 len 14] / 10^18 != ext_call.return_data[50 len 14]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
    require ext_call.return_data[18 len 14]
    if not arg1:
        return 0
    require arg1
    if arg1 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / arg1 != 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14]:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
    return (arg1 * 10^18 * ext_call.return_data[50 len 14] / ext_call.return_data[18 len 14] / 10^18)
}



}
