contract main {




// =====================  Runtime code  =====================


address sub_127bf434Address;
address DAIAddress;
address factoryAddress;

function sub_127bf434(?) payable {
    return sub_127bf434Address
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

function sub_2b83d168(?) payable {
    require calldata.size - 4 >= 32
    if sub_127bf434Address == DAIAddress:
        revert with 0, 'AMMLibrary: IDENTICAL_ADDRESSES'
    if sub_127bf434Address < DAIAddress:
        if not sub_127bf434Address:
            revert with 0, 'AMMLibrary: ZERO_ADDRESS'
        if sub_127bf434Address == DAIAddress:
            revert with 0, 'AMMLibrary: IDENTICAL_ADDRESSES'
        if sub_127bf434Address < DAIAddress:
            if not sub_127bf434Address:
                revert with 0, 'AMMLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(sub_127bf434Address, DAIAddress), 0x33c4831a098654d3d20a78641a198ee6ffc1ceed49f2196b75bb244891c260e3)))
            staticcall address(sha3(0, factoryAddress, sha3(sub_127bf434Address, DAIAddress), 0x33c4831a098654d3d20a78641a198ee6ffc1ceed49f2196b75bb244891c260e3)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not DAIAddress:
                revert with 0, 'AMMLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(DAIAddress, sub_127bf434Address), 0x33c4831a098654d3d20a78641a198ee6ffc1ceed49f2196b75bb244891c260e3)))
            staticcall address(sha3(0, factoryAddress, sha3(DAIAddress, sub_127bf434Address), 0x33c4831a098654d3d20a78641a198ee6ffc1ceed49f2196b75bb244891c260e3)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if sub_127bf434Address == sub_127bf434Address:
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
    else:
        if not DAIAddress:
            revert with 0, 'AMMLibrary: ZERO_ADDRESS'
        if sub_127bf434Address == DAIAddress:
            revert with 0, 'AMMLibrary: IDENTICAL_ADDRESSES'
        if sub_127bf434Address < DAIAddress:
            if not sub_127bf434Address:
                revert with 0, 'AMMLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(sub_127bf434Address, DAIAddress), 0x33c4831a098654d3d20a78641a198ee6ffc1ceed49f2196b75bb244891c260e3)))
            staticcall address(sha3(0, factoryAddress, sha3(sub_127bf434Address, DAIAddress), 0x33c4831a098654d3d20a78641a198ee6ffc1ceed49f2196b75bb244891c260e3)).getReserves() with:
                    gas gas_remaining wei
        else:
            if not DAIAddress:
                revert with 0, 'AMMLibrary: ZERO_ADDRESS'
            require ext_code.size(address(sha3(0, factoryAddress, sha3(DAIAddress, sub_127bf434Address), 0x33c4831a098654d3d20a78641a198ee6ffc1ceed49f2196b75bb244891c260e3)))
            staticcall address(sha3(0, factoryAddress, sha3(DAIAddress, sub_127bf434Address), 0x33c4831a098654d3d20a78641a198ee6ffc1ceed49f2196b75bb244891c260e3)).getReserves() with:
                    gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if sub_127bf434Address == DAIAddress:
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
}



}
