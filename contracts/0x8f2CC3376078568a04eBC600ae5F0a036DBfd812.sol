contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function getDataParameter(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    return 32, 96, address(arg1), address(arg2), arg3
}

function symbol(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return 'LINK'
}

function name(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    return 'Chainlink'
}

function _get(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        if not arg2:
            if arg3:
                return (1000000000000000000 * 10^18 / arg3)
        else:
            require ext_code.size(arg2)
            staticcall arg2.latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if ext_call.return_data[32]:
                if arg3:
                    return (1000000000000000000 * 10^18 / ext_call.return_data[32] / arg3)
    else:
        require ext_code.size(arg1)
        staticcall arg1.latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if not ext_call.return_data[32]:
            if not arg2:
                if arg3:
                    return (0 / arg3)
            else:
                require ext_code.size(arg2)
                staticcall arg2.latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                if ext_call.return_data[32]:
                    if arg3:
                        return (0 / ext_call.return_data[32] / arg3)
        else:
            if ext_call.return_data[32]:
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10^18:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not arg2:
                    if arg3:
                        return (10^18 * ext_call.return_data[32] / arg3)
                else:
                    require ext_code.size(arg2)
                    staticcall arg2.latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    if ext_call.return_data[32]:
                        if arg3:
                            return (10^18 * ext_call.return_data[32] / ext_call.return_data[32] / arg3)
    revert
}

function peekSpot(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg1.length >= 96
    if not address(cd[(arg1 + 36)]):
        if not address(cd[(arg1 + 68)]):
            if cd[(arg1 + 100)]:
                return (1000000000000000000 * 10^18 / cd[(arg1 + 100)])
        else:
            require ext_code.size(address(cd[(arg1 + 68)]))
            staticcall address(cd[(arg1 + 68)]).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if ext_call.return_data[32]:
                if cd[(arg1 + 100)]:
                    return (1000000000000000000 * 10^18 / ext_call.return_data[32] / cd[(arg1 + 100)])
    else:
        require ext_code.size(address(cd[(arg1 + 36)]))
        staticcall address(cd[(arg1 + 36)]).latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if not ext_call.return_data[32]:
            if not address(cd[(arg1 + 68)]):
                if cd[(arg1 + 100)]:
                    return (0 / cd[(arg1 + 100)])
            else:
                require ext_code.size(address(cd[(arg1 + 68)]))
                staticcall address(cd[(arg1 + 68)]).latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                if ext_call.return_data[32]:
                    if cd[(arg1 + 100)]:
                        return (0 / ext_call.return_data[32] / cd[(arg1 + 100)])
        else:
            if ext_call.return_data[32]:
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10^18:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not address(cd[(arg1 + 68)]):
                    if cd[(arg1 + 100)]:
                        return (10^18 * ext_call.return_data[32] / cd[(arg1 + 100)])
                else:
                    require ext_code.size(address(cd[(arg1 + 68)]))
                    staticcall address(cd[(arg1 + 68)]).latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    if ext_call.return_data[32]:
                        if cd[(arg1 + 100)]:
                            return (10^18 * ext_call.return_data[32] / ext_call.return_data[32] / cd[(arg1 + 100)])
    revert
}

function get(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg1.length >= 96
    if not address(cd[(arg1 + 36)]):
        if not address(cd[(arg1 + 68)]):
            if cd[(arg1 + 100)]:
                return 1, 1000000000000000000 * 10^18 / cd[(arg1 + 100)]
        else:
            require ext_code.size(address(cd[(arg1 + 68)]))
            staticcall address(cd[(arg1 + 68)]).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if ext_call.return_data[32]:
                if cd[(arg1 + 100)]:
                    return 1, 1000000000000000000 * 10^18 / ext_call.return_data[32] / cd[(arg1 + 100)]
    else:
        require ext_code.size(address(cd[(arg1 + 36)]))
        staticcall address(cd[(arg1 + 36)]).latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if not ext_call.return_data[32]:
            if not address(cd[(arg1 + 68)]):
                if cd[(arg1 + 100)]:
                    return 1, 0 / cd[(arg1 + 100)]
            else:
                require ext_code.size(address(cd[(arg1 + 68)]))
                staticcall address(cd[(arg1 + 68)]).latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                if ext_call.return_data[32]:
                    if cd[(arg1 + 100)]:
                        return 1, 0 / ext_call.return_data[32] / cd[(arg1 + 100)]
        else:
            if ext_call.return_data[32]:
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10^18:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not address(cd[(arg1 + 68)]):
                    if cd[(arg1 + 100)]:
                        return 1, 10^18 * ext_call.return_data[32] / cd[(arg1 + 100)]
                else:
                    require ext_code.size(address(cd[(arg1 + 68)]))
                    staticcall address(cd[(arg1 + 68)]).latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    if ext_call.return_data[32]:
                        if cd[(arg1 + 100)]:
                            return 1, 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / cd[(arg1 + 100)]
    revert
}

function peek(bytes arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg1.length >= 96
    if not address(cd[(arg1 + 36)]):
        if not address(cd[(arg1 + 68)]):
            if cd[(arg1 + 100)]:
                return 1, 1000000000000000000 * 10^18 / cd[(arg1 + 100)]
        else:
            require ext_code.size(address(cd[(arg1 + 68)]))
            staticcall address(cd[(arg1 + 68)]).latestRoundData() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 160
            if ext_call.return_data[32]:
                if cd[(arg1 + 100)]:
                    return 1, 1000000000000000000 * 10^18 / ext_call.return_data[32] / cd[(arg1 + 100)]
    else:
        require ext_code.size(address(cd[(arg1 + 36)]))
        staticcall address(cd[(arg1 + 36)]).latestRoundData() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 160
        if not ext_call.return_data[32]:
            if not address(cd[(arg1 + 68)]):
                if cd[(arg1 + 100)]:
                    return 1, 0 / cd[(arg1 + 100)]
            else:
                require ext_code.size(address(cd[(arg1 + 68)]))
                staticcall address(cd[(arg1 + 68)]).latestRoundData() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 160
                if ext_call.return_data[32]:
                    if cd[(arg1 + 100)]:
                        return 1, 0 / ext_call.return_data[32] / cd[(arg1 + 100)]
        else:
            if ext_call.return_data[32]:
                if 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10^18:
                    revert with 0, 'BoringMath: Mul Overflow'
                if not address(cd[(arg1 + 68)]):
                    if cd[(arg1 + 100)]:
                        return 1, 10^18 * ext_call.return_data[32] / cd[(arg1 + 100)]
                else:
                    require ext_code.size(address(cd[(arg1 + 68)]))
                    staticcall address(cd[(arg1 + 68)]).latestRoundData() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 160
                    if ext_call.return_data[32]:
                        if cd[(arg1 + 100)]:
                            return 1, 10^18 * ext_call.return_data[32] / ext_call.return_data[32] / cd[(arg1 + 100)]
    revert
}



}
