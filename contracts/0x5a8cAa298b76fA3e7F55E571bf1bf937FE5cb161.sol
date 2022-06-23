contract main {




// =====================  Runtime code  =====================


#
#  - sub_da133816(?)
#
const sub_6be6026b(?) = 10^6

const sub_70c349f8(?) = (720 * 24 * 3600)

const sub_7c549291(?) = 100000

const BASIS_POINTS_DIVISOR = 10000


address govAddress;
address vaultAddress;
uint256 sub_f251ec61;
uint256 minLeverage;

function gov() payable {
    return govAddress
}

function minLeverage() payable {
    return minLeverage
}

function sub_f251ec61(?) payable {
    return sub_f251ec61
}

function vault() payable {
    return vaultAddress
}

function _fallback() payable {
    revert
}

function sub_fbfded6d(?) payable {
    require calldata.size - 4 >= 64
    return 1
}

function setGov(address arg1) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Governable: forbidden'
    govAddress = arg1
}

function sub_b1cc53ab(?) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.cumulativeFundingRates(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_a5489297(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Governable: forbidden'
    if arg1 > 100000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x645661756c745574696c733a204d696e206c65766572616765206361702065786365656465,
                    mem[201 len 27]
    minLeverage = arg1
}

function sub_8b71a7f8(?) payable {
    require calldata.size - 4 >= 32
    if govAddress != msg.sender:
        revert with 0, 'Governable: forbidden'
    if arg1 > 720 * 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0xfe5661756c745574696c733a204d6178207769746864726177616c20636f6f6c646f776e206475726174696f,
                    mem[208 len 20]
    sub_f251ec61 = arg1
}

function sub_da76524c(?) payable {
    require calldata.size - 4 >= 192
    if not arg2:
        return 0
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.cumulativeFundingRates(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - arg3:
        return 0
    if not arg2:
        return 0
    if (ext_call.return_data[0] * arg2) - (arg3 * arg2) / arg2 != ext_call.return_data[0] - arg3:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((ext_call.return_data[0] * arg2) - (arg3 * arg2) / 10^6)
}

function sub_fdaf6ac3(?) payable {
    require calldata.size - 4 >= 160
    if not arg1:
        return 0
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.marginFeeBasisPoints() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1:
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        return arg1
    if (10000 * arg1) - (ext_call.return_data[0] * arg1) / arg1 != -ext_call.return_data[0] + 10000:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if (10000 * arg1) - (ext_call.return_data[0] * arg1) / 10000 > arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 - ((10000 * arg1) - (ext_call.return_data[0] * arg1) / 10000))
}

function sub_9d5c28fa(?) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
            gas gas_remaining wei
           args address(arg1), address(arg2), address(arg3), arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.tokenBalances(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args vaultAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.tokenToUsdMin(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args address(arg2), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg4 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] + ext_call.return_data[32] < ext_call.return_data[32]:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0] + ext_call.return_data[32]:
        if not arg4 + ext_call.return_data[0]:
            if not ext_call.return_data[0] + ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            if 0 / ext_call.return_data[0] + ext_call.return_data[32] < minLeverage:
                revert with 0, 'wVaultUtils: leverage is too low'
        else:
            if (10001 * arg4) + (10001 * ext_call.return_data[0]) / arg4 + ext_call.return_data[0] != 10001:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[165 len 31]
            if not ext_call.return_data[0] + ext_call.return_data[32]:
                revert with 0, 'SafeMath: division by zero'
            if (10001 * arg4) + (10001 * ext_call.return_data[0]) / ext_call.return_data[0] + ext_call.return_data[32] < minLeverage:
                revert with 0, 'wVaultUtils: leverage is too low'
}

function sub_81d11a23(?) payable {
    require calldata.size - 4 >= 224
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
            gas gas_remaining wei
           args address(arg1), address(arg2), address(arg3), arg6
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    if ext_call.return_data[0]:
        if arg5 < ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeMath: division by zero'
                if arg5 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg4 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0] - arg5:
                    if not ext_call.return_data[32] - arg4:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ext_call.return_data[32] - arg4 < minLeverage:
                        revert with 0, 'wVaultUtils: leverage is too low'
                    if ext_call.return_data[224] + sub_f251ec61 > block.timestamp:
                        if 0 / ext_call.return_data[32] - arg4 > 0 / ext_call.return_data[32]:
                            revert with 0, 32, 44, 0x6c5661756c745574696c733a20636f6f6c646f776e206475726174696f6e206e6f7420796574207061737365, mem[1136 len 20]
                else:
                    if (9999 * ext_call.return_data[0]) - (9999 * arg5) / ext_call.return_data[0] - arg5 != 9999:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                    if not ext_call.return_data[32] - arg4:
                        revert with 0, 'SafeMath: division by zero'
                    if (9999 * ext_call.return_data[0]) - (9999 * arg5) / ext_call.return_data[32] - arg4 < minLeverage:
                        revert with 0, 'wVaultUtils: leverage is too low'
                    if ext_call.return_data[224] + sub_f251ec61 > block.timestamp:
                        if (9999 * ext_call.return_data[0]) - (9999 * arg5) / ext_call.return_data[32] - arg4 > 0 / ext_call.return_data[32]:
                            revert with 0, 32, 44, 0x6c5661756c745574696c733a20636f6f6c646f776e206475726174696f6e206e6f7420796574207061737365, mem[1136 len 20]
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[101 len 31]
                if not ext_call.return_data[32]:
                    revert with 0, 'SafeMath: division by zero'
                if arg5 > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg4 > ext_call.return_data[32]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not ext_call.return_data[0] - arg5:
                    if not ext_call.return_data[32] - arg4:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ext_call.return_data[32] - arg4 < minLeverage:
                        revert with 0, 'wVaultUtils: leverage is too low'
                    if ext_call.return_data[224] + sub_f251ec61 > block.timestamp:
                        if 0 / ext_call.return_data[32] - arg4 > 10000 * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 32, 44, 0x6c5661756c745574696c733a20636f6f6c646f776e206475726174696f6e206e6f7420796574207061737365, mem[1136 len 20]
                else:
                    if (9999 * ext_call.return_data[0]) - (9999 * arg5) / ext_call.return_data[0] - arg5 != 9999:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                    if not ext_call.return_data[32] - arg4:
                        revert with 0, 'SafeMath: division by zero'
                    if (9999 * ext_call.return_data[0]) - (9999 * arg5) / ext_call.return_data[32] - arg4 < minLeverage:
                        revert with 0, 'wVaultUtils: leverage is too low'
                    if ext_call.return_data[224] + sub_f251ec61 > block.timestamp:
                        if (9999 * ext_call.return_data[0]) - (9999 * arg5) / ext_call.return_data[32] - arg4 > 10000 * ext_call.return_data[0] / ext_call.return_data[32]:
                            revert with 0, 32, 44, 0x6c5661756c745574696c733a20636f6f6c646f776e206475726174696f6e206e6f7420796574207061737365, mem[1136 len 20]
}

function sub_4adeddc6(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.mintBurnFeeBasisPoints() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.taxBasisPoints() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.hasDynamicFees() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0]
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.usdgAmounts(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x3a05dcc1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0]
    if ext_call.return_data[0] <= ext_call.return_data[0]:
        if arg2 + ext_call.return_data[0] <= ext_call.return_data[0]:
            if -arg2 < 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        return 0
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0]))
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > ext_call.return_data[0]:
                    return 0
                return (ext_call.return_data[0] - ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
            if ext_call.return_data[0] - arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0] - arg2 / 2 <= ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                if ext_call.return_data[0] - arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] - arg2 / 2:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (ext_call.return_data[0] - arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((ext_call.return_data[0] - arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
        else:
            if ext_call.return_data[0] > arg2 + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 < 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        return 0
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0]))
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > ext_call.return_data[0]:
                    return 0
                return (ext_call.return_data[0] - ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
            if arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 / 2 <= ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                if arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2 / 2:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
    else:
        if ext_call.return_data[0] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 + ext_call.return_data[0] <= ext_call.return_data[0]:
            if -arg2 < 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        return 0
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0]))
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > ext_call.return_data[0]:
                    return 0
                return (ext_call.return_data[0] - ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
            if -arg2 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if -arg2 / 2 <= ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                if -arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0] != -arg2 / 2:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (-arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((-arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
        else:
            if ext_call.return_data[0] > arg2 + ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 < 0:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                        return 0
                    return (ext_call.return_data[0] - (0 / ext_call.return_data[0]))
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > ext_call.return_data[0]:
                    return 0
                return (ext_call.return_data[0] - ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
            if arg2 + ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if arg2 + ext_call.return_data[0] / 2 <= ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                if arg2 + ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2 + ext_call.return_data[0] / 2:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (arg2 + ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                return ((arg2 + ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
}

function sub_eb0835bf(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.mintBurnFeeBasisPoints() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.taxBasisPoints() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.hasDynamicFees() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0]
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.usdgAmounts(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x3a05dcc1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            if 0 <= ext_call.return_data[0]:
                if ext_call.return_data[0] < 0:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                            return 0
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0]))
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > ext_call.return_data[0]:
                        return 0
                    return (ext_call.return_data[0] - ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] / 2 <= ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] / 2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
            else:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -ext_call.return_data[0] < 0:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                            return 0
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0]))
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > ext_call.return_data[0]:
                        return 0
                    return (ext_call.return_data[0] - ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                if -ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -ext_call.return_data[0] / 2 <= ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                    if -ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0] != -ext_call.return_data[0] / 2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (-ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((-ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
        else:
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 <= ext_call.return_data[0]:
                if ext_call.return_data[0] < 0:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                            return 0
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0]))
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > ext_call.return_data[0]:
                        return 0
                    return (ext_call.return_data[0] - ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] / 2 <= ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] / 2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
            else:
                if ext_call.return_data[0] > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -ext_call.return_data[0] < 0:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                            return 0
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0]))
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > ext_call.return_data[0]:
                        return 0
                    return (ext_call.return_data[0] - ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                if -2 * ext_call.return_data[0] < -ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if -ext_call.return_data[0] / 2 <= ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                    if -ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0] != -ext_call.return_data[0] / 2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (-ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((-ext_call.return_data[0] / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    else:
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            if ext_call.return_data[0] - arg2 <= ext_call.return_data[0]:
                if arg2 < 0:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                            return 0
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0]))
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > ext_call.return_data[0]:
                        return 0
                    return (ext_call.return_data[0] - ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                if ext_call.return_data[0] + arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] + arg2 / 2 <= ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] + arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] + arg2 / 2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] + arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((ext_call.return_data[0] + arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
            else:
                if ext_call.return_data[0] > ext_call.return_data[0] - arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -arg2 < 0:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                            return 0
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0]))
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > ext_call.return_data[0]:
                        return 0
                    return (ext_call.return_data[0] - ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                if -arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -arg2 / 2 <= ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                    if -arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0] != -arg2 / 2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (-arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((-arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
        else:
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] - arg2 <= ext_call.return_data[0]:
                if arg2 < 0:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                            return 0
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0]))
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > ext_call.return_data[0]:
                        return 0
                    return (ext_call.return_data[0] - ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                if arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 / 2 <= ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                    if arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0] != arg2 / 2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
            else:
                if ext_call.return_data[0] > ext_call.return_data[0] - arg2:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -arg2 < 0:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] > ext_call.return_data[0]:
                            return 0
                        return (ext_call.return_data[0] - (0 / ext_call.return_data[0]))
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] > ext_call.return_data[0]:
                        return 0
                    return (ext_call.return_data[0] - ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0]))
                if ext_call.return_data[0] - arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] - arg2 / 2 <= ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
                    if ext_call.return_data[0] - arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0] - arg2 / 2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] - arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((ext_call.return_data[0] - arg2 / 2 * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + ext_call.return_data[0])
        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    ('eq', ('div', ('mul', ('ext_call.return_data', 0, 32), ('ext_call.return_data', 0, 32)), ('ext_call.return_data', 0, 32)), ('ext_call.return_data', 0, 32))
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return ((ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]) + ext_call.return_data[0])
}

function getFeeBasisPoints(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.hasDynamicFees() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return arg3
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.usdgAmounts(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x3a05dcc1 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return arg3
    if arg5:
        if ext_call.return_data[0] <= ext_call.return_data[0]:
            if arg2 + ext_call.return_data[0] <= ext_call.return_data[0]:
                if -arg2 < 0:
                    if not arg4:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] > arg3:
                            return 0
                        return (arg3 - (0 / ext_call.return_data[0]))
                    if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / arg4:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0] > arg3:
                        return 0
                    return (arg3 - ((ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0]))
                if ext_call.return_data[0] - arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[0] - arg2 / 2 <= ext_call.return_data[0]:
                    if not arg4:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + arg3 < arg3:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + arg3)
                    if ext_call.return_data[0] - arg2 / 2 * arg4 / arg4 != ext_call.return_data[0] - arg2 / 2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] - arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3 < arg3:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((ext_call.return_data[0] - arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3)
            else:
                if ext_call.return_data[0] > arg2 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 < 0:
                    if not arg4:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] > arg3:
                            return 0
                        return (arg3 - (0 / ext_call.return_data[0]))
                    if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / arg4:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0] > arg3:
                        return 0
                    return (arg3 - ((ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0]))
                if arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 / 2 <= ext_call.return_data[0]:
                    if not arg4:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + arg3 < arg3:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + arg3)
                    if arg2 / 2 * arg4 / arg4 != arg2 / 2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3 < arg3:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3)
        else:
            if ext_call.return_data[0] > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg2 + ext_call.return_data[0] <= ext_call.return_data[0]:
                if -arg2 < 0:
                    if not arg4:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] > arg3:
                            return 0
                        return (arg3 - (0 / ext_call.return_data[0]))
                    if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / arg4:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0] > arg3:
                        return 0
                    return (arg3 - ((ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0]))
                if -arg2 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if -arg2 / 2 <= ext_call.return_data[0]:
                    if not arg4:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + arg3 < arg3:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + arg3)
                    if -arg2 / 2 * arg4 / arg4 != -arg2 / 2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (-arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3 < arg3:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((-arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3)
            else:
                if ext_call.return_data[0] > arg2 + ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg2 < 0:
                    if not arg4:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / ext_call.return_data[0] > arg3:
                            return 0
                        return (arg3 - (0 / ext_call.return_data[0]))
                    if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / arg4:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0] > arg3:
                        return 0
                    return (arg3 - ((ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0]))
                if arg2 + ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if arg2 + ext_call.return_data[0] / 2 <= ext_call.return_data[0]:
                    if not arg4:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (0 / ext_call.return_data[0]) + arg3 < arg3:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((0 / ext_call.return_data[0]) + arg3)
                    if arg2 + ext_call.return_data[0] / 2 * arg4 / arg4 != arg2 + ext_call.return_data[0] / 2:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                    if not ext_call.return_data[0]:
                        revert with 0, 'SafeMath: division by zero'
                    if (arg2 + ext_call.return_data[0] / 2 * arg4 / ext_call.return_data[0]) + arg3 < arg3:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((arg2 + ext_call.return_data[0] / 2 * arg4 / ext_call.return_data[0]) + arg3)
        if not arg4:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero'
            if (0 / ext_call.return_data[0]) + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / ext_call.return_data[0]) + arg3)
        if ext_call.return_data[0] * arg4 / arg4 != ext_call.return_data[0]:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    else:
        if arg2 > ext_call.return_data[0]:
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                if 0 <= ext_call.return_data[0]:
                    if ext_call.return_data[0] < 0:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] > arg3:
                                return 0
                            return (arg3 - (0 / ext_call.return_data[0]))
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / arg4:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0] > arg3:
                            return 0
                        return (arg3 - ((ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0]))
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] / 2 <= ext_call.return_data[0]:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + arg3 < arg3:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / ext_call.return_data[0]) + arg3)
                        if ext_call.return_data[0] / 2 * arg4 / arg4 != ext_call.return_data[0] / 2:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (ext_call.return_data[0] / 2 * arg4 / ext_call.return_data[0]) + arg3 < arg3:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((ext_call.return_data[0] / 2 * arg4 / ext_call.return_data[0]) + arg3)
                else:
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -ext_call.return_data[0] < 0:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] > arg3:
                                return 0
                            return (arg3 - (0 / ext_call.return_data[0]))
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / arg4:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0] > arg3:
                            return 0
                        return (arg3 - ((ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0]))
                    if -ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if -ext_call.return_data[0] / 2 <= ext_call.return_data[0]:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + arg3 < arg3:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / ext_call.return_data[0]) + arg3)
                        if -ext_call.return_data[0] / 2 * arg4 / arg4 != -ext_call.return_data[0] / 2:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (-ext_call.return_data[0] / 2 * arg4 / ext_call.return_data[0]) + arg3 < arg3:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((-ext_call.return_data[0] / 2 * arg4 / ext_call.return_data[0]) + arg3)
            else:
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 <= ext_call.return_data[0]:
                    if ext_call.return_data[0] < 0:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] > arg3:
                                return 0
                            return (arg3 - (0 / ext_call.return_data[0]))
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / arg4:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0] > arg3:
                            return 0
                        return (arg3 - ((ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0]))
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] / 2 <= ext_call.return_data[0]:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + arg3 < arg3:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / ext_call.return_data[0]) + arg3)
                        if ext_call.return_data[0] / 2 * arg4 / arg4 != ext_call.return_data[0] / 2:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (ext_call.return_data[0] / 2 * arg4 / ext_call.return_data[0]) + arg3 < arg3:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((ext_call.return_data[0] / 2 * arg4 / ext_call.return_data[0]) + arg3)
                else:
                    if ext_call.return_data[0] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -ext_call.return_data[0] < 0:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] > arg3:
                                return 0
                            return (arg3 - (0 / ext_call.return_data[0]))
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / arg4:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0] > arg3:
                            return 0
                        return (arg3 - ((ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0]))
                    if -2 * ext_call.return_data[0] < -ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if -ext_call.return_data[0] / 2 <= ext_call.return_data[0]:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + arg3 < arg3:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / ext_call.return_data[0]) + arg3)
                        if -ext_call.return_data[0] / 2 * arg4 / arg4 != -ext_call.return_data[0] / 2:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (-ext_call.return_data[0] / 2 * arg4 / ext_call.return_data[0]) + arg3 < arg3:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((-ext_call.return_data[0] / 2 * arg4 / ext_call.return_data[0]) + arg3)
            if not arg4:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + arg3 < arg3:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + arg3)
            if ext_call.return_data[0] * arg4 / arg4 != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        else:
            if ext_call.return_data[0] <= ext_call.return_data[0]:
                if ext_call.return_data[0] - arg2 <= ext_call.return_data[0]:
                    if arg2 < 0:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] > arg3:
                                return 0
                            return (arg3 - (0 / ext_call.return_data[0]))
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / arg4:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0] > arg3:
                            return 0
                        return (arg3 - ((ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0]))
                    if ext_call.return_data[0] + arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] + arg2 / 2 <= ext_call.return_data[0]:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + arg3 < arg3:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / ext_call.return_data[0]) + arg3)
                        if ext_call.return_data[0] + arg2 / 2 * arg4 / arg4 != ext_call.return_data[0] + arg2 / 2:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (ext_call.return_data[0] + arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3 < arg3:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((ext_call.return_data[0] + arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3)
                else:
                    if ext_call.return_data[0] > ext_call.return_data[0] - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -arg2 < 0:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] > arg3:
                                return 0
                            return (arg3 - (0 / ext_call.return_data[0]))
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / arg4:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0] > arg3:
                            return 0
                        return (arg3 - ((ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0]))
                    if -arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if -arg2 / 2 <= ext_call.return_data[0]:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + arg3 < arg3:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / ext_call.return_data[0]) + arg3)
                        if -arg2 / 2 * arg4 / arg4 != -arg2 / 2:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (-arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3 < arg3:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((-arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3)
            else:
                if ext_call.return_data[0] > ext_call.return_data[0]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if ext_call.return_data[0] - arg2 <= ext_call.return_data[0]:
                    if arg2 < 0:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] > arg3:
                                return 0
                            return (arg3 - (0 / ext_call.return_data[0]))
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / arg4:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0] > arg3:
                            return 0
                        return (arg3 - ((ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0]))
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2 / 2 <= ext_call.return_data[0]:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + arg3 < arg3:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / ext_call.return_data[0]) + arg3)
                        if arg2 / 2 * arg4 / arg4 != arg2 / 2:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3 < arg3:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3)
                else:
                    if ext_call.return_data[0] > ext_call.return_data[0] - arg2:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -arg2 < 0:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / ext_call.return_data[0] > arg3:
                                return 0
                            return (arg3 - (0 / ext_call.return_data[0]))
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / arg4:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0] > arg3:
                            return 0
                        return (arg3 - ((ext_call.return_data[0] * arg4) - (ext_call.return_data[0] * arg4) / ext_call.return_data[0]))
                    if ext_call.return_data[0] - arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[0] - arg2 / 2 <= ext_call.return_data[0]:
                        if not arg4:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero'
                            if (0 / ext_call.return_data[0]) + arg3 < arg3:
                                revert with 0, 'SafeMath: addition overflow'
                            return ((0 / ext_call.return_data[0]) + arg3)
                        if ext_call.return_data[0] - arg2 / 2 * arg4 / arg4 != ext_call.return_data[0] - arg2 / 2:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero'
                        if (ext_call.return_data[0] - arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3 < arg3:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((ext_call.return_data[0] - arg2 / 2 * arg4 / ext_call.return_data[0]) + arg3)
            if not arg4:
                if not ext_call.return_data[0]:
                    revert with 0, 'SafeMath: division by zero'
                if (0 / ext_call.return_data[0]) + arg3 < arg3:
                    revert with 0, 'SafeMath: addition overflow'
                return ((0 / ext_call.return_data[0]) + arg3)
            if ext_call.return_data[0] * arg4 / arg4 != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    ('eq', ('div', ('mul', ('ext_call.return_data', 0, 32), ('param', 'arg4')), ('param', 'arg4')), ('ext_call.return_data', 0, 32))
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    if (ext_call.return_data[0] * arg4 / ext_call.return_data[0]) + arg3 < arg3:
        revert with 0, 'SafeMath: addition overflow'
    return ((ext_call.return_data[0] * arg4 / ext_call.return_data[0]) + arg3)
}

function validateLiquidation(address arg1, address arg2, address arg3, bool arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getPosition(address arg1, address arg2, address arg3, bool arg4) with:
            gas gas_remaining wei
           args address(arg1), address(arg2), address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.getDelta(address arg1, uint256 arg2, uint256 arg3, bool arg4, uint256 arg5) with:
            gas gas_remaining wei
           args address(arg3), ext_call.return_data[0], ext_call.return_data[64], arg4, ext_call.return_data[224]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                if ext_call.return_data[32] < 0:
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, ext_call.return_data[32]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[32] < ext_call.return_data[0]:
                    if arg5:
                        revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, Mask(184, 0, arg4)
                    return 1, 0
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        return 0
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg4)
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                        return 0
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg4)
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        if 0 >= 10000 * ext_call.return_data[0]:
                            return 0
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg4)
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                            return 0
            else:
                if ext_call.return_data[32] < ext_call.return_data[32]:
                    if arg5:
                        revert with 0, 'Vault: losses exceed collateral'
                    return 1, 0
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] > ext_call.return_data[32]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.liquidationFeeUsd() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 
                                        32,
                                        41,
                                        0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261,
                                        ext_call.return_data[173 len 23]
                        return 1, 0
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return 0
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[165 len 31]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 >= 10000 * ext_call.return_data[0]:
                        return 0
                else:
                    if ext_call.return_data[32] < 0:
                        if arg5:
                            revert with 0, 'Vault: fees exceed collateral'
                        return 1, ext_call.return_data[32]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.liquidationFeeUsd() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[32] < ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, Mask(184, 0, arg4)
                        return 1, 0
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[32]:
                            return 0
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg4)
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                            return 0
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg4)
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[32]:
                            if 0 >= 10000 * ext_call.return_data[0]:
                                return 0
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(248, 0, arg4)
                            if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                                return 0
            if arg5:
                revert with 0, 'Vault: maxLeverage exceeded'
            return 2, 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.marginFeeBasisPoints() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0]:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0]:
                if ext_call.return_data[32] < ext_call.return_data[0]:
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, ext_call.return_data[32]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[32] < 2 * ext_call.return_data[0]:
                    if arg5:
                        revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1069 len 23]
                    return 1, ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        return 0, ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                        return 0, ext_call.return_data[0]
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        if 0 >= 10000 * ext_call.return_data[0]:
                            return 0, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                            return 0, ext_call.return_data[0]
            else:
                if ext_call.return_data[32] < ext_call.return_data[32]:
                    if arg5:
                        revert with 0, 'Vault: losses exceed collateral'
                    return 1, ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] > ext_call.return_data[32]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 'Vault: fees exceed collateral'
                        return 1, 0
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.liquidationFeeUsd() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < 2 * ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1133 len 23]
                        return 1, ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return 0, ext_call.return_data[0]
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 >= 10000 * ext_call.return_data[0]:
                        return 0, ext_call.return_data[0]
                else:
                    if ext_call.return_data[32] < ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 'Vault: fees exceed collateral'
                        return 1, ext_call.return_data[32]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.liquidationFeeUsd() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[32] < 2 * ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1069 len 23]
                        return 1, ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[32]:
                            return 0, ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                            return 0, ext_call.return_data[0]
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[32]:
                            if 0 >= 10000 * ext_call.return_data[0]:
                                return 0, ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                            if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                                return 0, ext_call.return_data[0]
            if arg5:
                revert with 0, 'Vault: maxLeverage exceeded'
            return 2, ext_call.return_data[0]
        if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -ext_call.return_data[0] + 10000:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[165 len 31]
        if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0]:
            if ext_call.return_data[32] < ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                if arg5:
                    revert with 0, 'Vault: fees exceed collateral'
                return 1, ext_call.return_data[32]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.liquidationFeeUsd() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[32] < (2 * ext_call.return_data[0]) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                if arg5:
                    revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1069 len 23]
                return 1, 
                       ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
            if not ext_call.return_data[0]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[32]:
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[32]:
                    if 0 >= 10000 * ext_call.return_data[0]:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
        else:
            if ext_call.return_data[32] < ext_call.return_data[32]:
                if arg5:
                    revert with 0, 'Vault: losses exceed collateral'
                return 1, 
                       ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
            if not ext_call.return_data[0]:
                if ext_call.return_data[32] > ext_call.return_data[32]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 < (2 * ext_call.return_data[0]) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                    if arg5:
                        revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1133 len 23]
                    return 1, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 >= 10000 * ext_call.return_data[0]:
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
            else:
                if ext_call.return_data[32] < ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, ext_call.return_data[32]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[32] < (2 * ext_call.return_data[0]) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                    if arg5:
                        revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1069 len 23]
                    return 1, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        if 0 >= 10000 * ext_call.return_data[0]:
                            return 0, 
                                   ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                            return 0, 
                                   ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
        if arg5:
            revert with 0, 'Vault: maxLeverage exceeded'
        return 2, 
               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.cumulativeFundingRates(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[96] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0] - ext_call.return_data[96]:
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                if ext_call.return_data[32] < 0:
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, ext_call.return_data[32]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[32] < ext_call.return_data[0]:
                    if arg5:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261,
                                    ext_call.return_data[173 len 23]
                    return 1, 0
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        return 0
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[165 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                        return 0
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[165 len 31]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        if 0 >= 10000 * ext_call.return_data[0]:
                            return 0
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[165 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                            return 0
            else:
                if ext_call.return_data[32] < ext_call.return_data[32]:
                    if arg5:
                        revert with 0, 'Vault: losses exceed collateral'
                    return 1, 0
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] > ext_call.return_data[32]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.liquidationFeeUsd() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 
                                        32,
                                        41,
                                        0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261,
                                        ext_call.return_data[237 len 19],
                                        mem[1024 len 4]
                        return 1, 0
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return 0
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[229 len 27],
                                    mem[1024 len 4]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 >= 10000 * ext_call.return_data[0]:
                        return 0
                else:
                    if ext_call.return_data[32] < 0:
                        if arg5:
                            revert with 0, 'Vault: fees exceed collateral'
                        return 1, ext_call.return_data[32]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.liquidationFeeUsd() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[32] < ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 
                                        32,
                                        41,
                                        0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261,
                                        ext_call.return_data[173 len 23]
                        return 1, 0
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[32]:
                            return 0
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[165 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                            return 0
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[165 len 31]
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[32]:
                            if 0 >= 10000 * ext_call.return_data[0]:
                                return 0
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[165 len 31]
                            if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                                return 0
            if arg5:
                revert with 0, 'Vault: maxLeverage exceeded'
            return 2, 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.marginFeeBasisPoints() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0]:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0]:
                if ext_call.return_data[32] < ext_call.return_data[0]:
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, ext_call.return_data[32]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[32] < 2 * ext_call.return_data[0]:
                    if arg5:
                        revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1133 len 23]
                    return 1, ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        return 0, ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                        return 0, ext_call.return_data[0]
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        if 0 >= 10000 * ext_call.return_data[0]:
                            return 0, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                            return 0, ext_call.return_data[0]
            else:
                if ext_call.return_data[32] < ext_call.return_data[32]:
                    if arg5:
                        revert with 0, 'Vault: losses exceed collateral'
                    return 1, ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] > ext_call.return_data[32]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 'Vault: fees exceed collateral'
                        return 1, 0
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.liquidationFeeUsd() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < 2 * ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1197 len 23]
                        return 1, ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return 0, ext_call.return_data[0]
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 >= 10000 * ext_call.return_data[0]:
                        return 0, ext_call.return_data[0]
                else:
                    if ext_call.return_data[32] < ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 'Vault: fees exceed collateral'
                        return 1, ext_call.return_data[32]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.liquidationFeeUsd() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[32] < 2 * ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1133 len 23]
                        return 1, ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[32]:
                            return 0, ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                            return 0, ext_call.return_data[0]
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[32]:
                            if 0 >= 10000 * ext_call.return_data[0]:
                                return 0, ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                            if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                                return 0, ext_call.return_data[0]
            if arg5:
                revert with 0, 'Vault: maxLeverage exceeded'
            return 2, ext_call.return_data[0]
        if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -ext_call.return_data[0] + 10000:
            revert with 0, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        ext_call.return_data[229 len 27],
                        mem[1024 len 4]
        if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0]:
            if ext_call.return_data[32] < ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                if arg5:
                    revert with 0, 'Vault: fees exceed collateral'
                return 1, ext_call.return_data[32]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.liquidationFeeUsd() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[32] < (2 * ext_call.return_data[0]) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                if arg5:
                    revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1133 len 23]
                return 1, 
                       ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
            if not ext_call.return_data[0]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[32]:
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[32]:
                    if 0 >= 10000 * ext_call.return_data[0]:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
        else:
            if ext_call.return_data[32] < ext_call.return_data[32]:
                if arg5:
                    revert with 0, 'Vault: losses exceed collateral'
                return 1, 
                       ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
            if not ext_call.return_data[0]:
                if ext_call.return_data[32] > ext_call.return_data[32]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 < (2 * ext_call.return_data[0]) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                    if arg5:
                        revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1197 len 23]
                    return 1, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 >= 10000 * ext_call.return_data[0]:
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
            else:
                if ext_call.return_data[32] < ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, ext_call.return_data[32]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[32] < (2 * ext_call.return_data[0]) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                    if arg5:
                        revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1133 len 23]
                    return 1, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        if 0 >= 10000 * ext_call.return_data[0]:
                            return 0, 
                                   ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1125 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                            return 0, 
                                   ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
        if arg5:
            revert with 0, 'Vault: maxLeverage exceeded'
        return 2, 
               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            if ext_call.return_data[0]:
                if ext_call.return_data[32] < 0:
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, ext_call.return_data[32]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[32] < ext_call.return_data[0]:
                    if arg5:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261,
                                    ext_call.return_data[237 len 19],
                                    mem[1024 len 4]
                    return 1, 0
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        return 0
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[229 len 27],
                                    mem[1024 len 4]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                        return 0
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[229 len 27],
                                    mem[1024 len 4]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        if 0 >= 10000 * ext_call.return_data[0]:
                            return 0
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[229 len 27],
                                        mem[1024 len 4]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                            return 0
            else:
                if ext_call.return_data[32] < ext_call.return_data[32]:
                    if arg5:
                        revert with 0, 'Vault: losses exceed collateral'
                    return 1, 0
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] > ext_call.return_data[32]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.liquidationFeeUsd() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1069 len 23]
                        return 1, 0
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return 0
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 >= 10000 * ext_call.return_data[0]:
                        return 0
                else:
                    if ext_call.return_data[32] < 0:
                        if arg5:
                            revert with 0, 'Vault: fees exceed collateral'
                        return 1, ext_call.return_data[32]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.liquidationFeeUsd() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[32] < ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 
                                        32,
                                        41,
                                        0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261,
                                        ext_call.return_data[237 len 19],
                                        mem[1024 len 4]
                        return 1, 0
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[32]:
                            return 0
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[229 len 27],
                                        mem[1024 len 4]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                            return 0
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[229 len 27],
                                        mem[1024 len 4]
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[32]:
                            if 0 >= 10000 * ext_call.return_data[0]:
                                return 0
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                                revert with 0, 
                                            32,
                                            33,
                                            0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            ext_call.return_data[229 len 27],
                                            mem[1024 len 4]
                            if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                                return 0
            if arg5:
                revert with 0, 'Vault: maxLeverage exceeded'
            return 2, 0
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.marginFeeBasisPoints() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 10000:
            revert with 0, 'SafeMath: subtraction overflow'
        if not ext_call.return_data[0]:
            if 0 > ext_call.return_data[0]:
                revert with 0, 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[0]:
                if ext_call.return_data[32] < ext_call.return_data[0]:
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, ext_call.return_data[32]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[32] < 2 * ext_call.return_data[0]:
                    if arg5:
                        revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1197 len 23]
                    return 1, ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        return 0, ext_call.return_data[0]
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                        return 0, ext_call.return_data[0]
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        if 0 >= 10000 * ext_call.return_data[0]:
                            return 0, ext_call.return_data[0]
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                            return 0, ext_call.return_data[0]
            else:
                if ext_call.return_data[32] < ext_call.return_data[32]:
                    if arg5:
                        revert with 0, 'Vault: losses exceed collateral'
                    return 1, ext_call.return_data[0]
                if not ext_call.return_data[0]:
                    if ext_call.return_data[32] > ext_call.return_data[32]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 < ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 'Vault: fees exceed collateral'
                        return 1, 0
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.liquidationFeeUsd() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if 0 < 2 * ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1261 len 23]
                        return 1, ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return 0, ext_call.return_data[0]
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1253 len 31]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 0 >= 10000 * ext_call.return_data[0]:
                        return 0, ext_call.return_data[0]
                else:
                    if ext_call.return_data[32] < ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 'Vault: fees exceed collateral'
                        return 1, ext_call.return_data[32]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.liquidationFeeUsd() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 'SafeMath: addition overflow'
                    if ext_call.return_data[32] < 2 * ext_call.return_data[0]:
                        if arg5:
                            revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1197 len 23]
                        return 1, ext_call.return_data[0]
                    if not ext_call.return_data[0]:
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[32]:
                            return 0, ext_call.return_data[0]
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                            return 0, ext_call.return_data[0]
                    else:
                        if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                        require ext_code.size(vaultAddress)
                        staticcall vaultAddress.maxLeverage() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not ext_call.return_data[32]:
                            if 0 >= 10000 * ext_call.return_data[0]:
                                return 0, ext_call.return_data[0]
                        else:
                            if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                            if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                                return 0, ext_call.return_data[0]
            if arg5:
                revert with 0, 'Vault: maxLeverage exceeded'
            return 2, ext_call.return_data[0]
        if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -ext_call.return_data[0] + 10000:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
        if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0]:
            if ext_call.return_data[32] < ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                if arg5:
                    revert with 0, 'Vault: fees exceed collateral'
                return 1, ext_call.return_data[32]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.liquidationFeeUsd() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[32] < (2 * ext_call.return_data[0]) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                if arg5:
                    revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1197 len 23]
                return 1, 
                       ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
            if not ext_call.return_data[0]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[32]:
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[32]:
                    if 0 >= 10000 * ext_call.return_data[0]:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
        else:
            if ext_call.return_data[32] < ext_call.return_data[32]:
                if arg5:
                    revert with 0, 'Vault: losses exceed collateral'
                return 1, 
                       ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
            if not ext_call.return_data[0]:
                if ext_call.return_data[32] > ext_call.return_data[32]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 < (2 * ext_call.return_data[0]) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                    if arg5:
                        revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1261 len 23]
                    return 1, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1253 len 31]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 >= 10000 * ext_call.return_data[0]:
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
            else:
                if ext_call.return_data[32] < ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, ext_call.return_data[32]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[32] < (2 * ext_call.return_data[0]) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000):
                    if arg5:
                        revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1197 len 23]
                    return 1, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        if 0 >= 10000 * ext_call.return_data[0]:
                            return 0, 
                                   ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                            return 0, 
                                   ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
        if arg5:
            revert with 0, 'Vault: maxLeverage exceeded'
        return 2, 
               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000)
    if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - ext_call.return_data[96]:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, ext_call.return_data[165 len 31]
    if not ext_call.return_data[0]:
        if (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6 < (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0]:
            if ext_call.return_data[32] < (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6:
                if arg5:
                    revert with 0, 'Vault: fees exceed collateral'
                return 1, ext_call.return_data[32]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.liquidationFeeUsd() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6) < (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[32] < ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
                if arg5:
                    revert with 0, 
                                32,
                                41,
                                0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261,
                                ext_call.return_data[237 len 19],
                                mem[1024 len 4]
                return 1, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
            if not ext_call.return_data[0]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[32]:
                    return 0, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
                if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[229 len 27],
                                mem[1024 len 4]
                if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                    return 0, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 
                                32,
                                33,
                                0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                ext_call.return_data[229 len 27],
                                mem[1024 len 4]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[32]:
                    if 0 >= 10000 * ext_call.return_data[0]:
                        return 0, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
                else:
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[229 len 27],
                                    mem[1024 len 4]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                        return 0, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
        else:
            if ext_call.return_data[32] < ext_call.return_data[32]:
                if arg5:
                    revert with 0, 'Vault: losses exceed collateral'
                return 1, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
            if not ext_call.return_data[0]:
                if ext_call.return_data[32] > ext_call.return_data[32]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6:
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6) < (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 < ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
                    if arg5:
                        revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1069 len 23]
                    return 1, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return 0, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 >= 10000 * ext_call.return_data[0]:
                    return 0, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
            else:
                if ext_call.return_data[32] < (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6:
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, ext_call.return_data[32]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6) < (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[32] < ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
                    if arg5:
                        revert with 0, 
                                    32,
                                    41,
                                    0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261,
                                    ext_call.return_data[237 len 19],
                                    mem[1024 len 4]
                    return 1, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        return 0, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[229 len 27],
                                    mem[1024 len 4]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                        return 0, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 
                                    32,
                                    33,
                                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    ext_call.return_data[229 len 27],
                                    mem[1024 len 4]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        if 0 >= 10000 * ext_call.return_data[0]:
                            return 0, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        33,
                                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        ext_call.return_data[229 len 27],
                                        mem[1024 len 4]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                            return 0, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
        if arg5:
            revert with 0, 'Vault: maxLeverage exceeded'
        return 2, (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.marginFeeBasisPoints() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 10000:
        revert with 0, 'SafeMath: subtraction overflow'
    if not ext_call.return_data[0]:
        if 0 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6) < (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[0]:
            if ext_call.return_data[32] < ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
                if arg5:
                    revert with 0, 'Vault: fees exceed collateral'
                return 1, ext_call.return_data[32]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.liquidationFeeUsd() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[32] < (2 * ext_call.return_data[0]) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
                if arg5:
                    revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1197 len 23]
                return 1, 
                       ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
            if not ext_call.return_data[0]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[32]:
                    return 0, 
                           ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
                if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                    return 0, 
                           ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[32]:
                    if 0 >= 10000 * ext_call.return_data[0]:
                        return 0, 
                               ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                        return 0, 
                               ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
        else:
            if ext_call.return_data[32] < ext_call.return_data[32]:
                if arg5:
                    revert with 0, 'Vault: losses exceed collateral'
                return 1, 
                       ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
            if not ext_call.return_data[0]:
                if ext_call.return_data[32] > ext_call.return_data[32]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 < ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, 0
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 0 < (2 * ext_call.return_data[0]) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
                    if arg5:
                        revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1261 len 23]
                    return 1, 
                           ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return 0, 
                           ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1253 len 31]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if 0 >= 10000 * ext_call.return_data[0]:
                    return 0, 
                           ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
            else:
                if ext_call.return_data[32] < ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
                    if arg5:
                        revert with 0, 'Vault: fees exceed collateral'
                    return 1, ext_call.return_data[32]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.liquidationFeeUsd() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if ext_call.return_data[32] < (2 * ext_call.return_data[0]) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
                    if arg5:
                        revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1197 len 23]
                    return 1, 
                           ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
                if not ext_call.return_data[0]:
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        return 0, 
                               ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                        return 0, 
                               ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
                else:
                    if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                    require ext_code.size(vaultAddress)
                    staticcall vaultAddress.maxLeverage() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not ext_call.return_data[32]:
                        if 0 >= 10000 * ext_call.return_data[0]:
                            return 0, 
                                   ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
                    else:
                        if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                        if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                            return 0, 
                                   ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
        if arg5:
            revert with 0, 'Vault: maxLeverage exceeded'
        return 2, 
               ext_call.return_data[0] + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
    if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != -ext_call.return_data[0] + 10000:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1061 len 31]
    if (10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000 > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6) < (ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6:
        revert with 0, 'SafeMath: addition overflow'
    if ext_call.return_data[0]:
        if ext_call.return_data[32] < ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
            if arg5:
                revert with 0, 'Vault: fees exceed collateral'
            return 1, ext_call.return_data[32]
        require ext_code.size(vaultAddress)
        staticcall vaultAddress.liquidationFeeUsd() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < 0:
            revert with 0, 'SafeMath: addition overflow'
        if ext_call.return_data[32] < (2 * ext_call.return_data[0]) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
            if arg5:
                revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1197 len 23]
            return 1, 
                   ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
        if not ext_call.return_data[0]:
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.maxLeverage() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[32]:
                return 0, 
                       ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
            if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
            if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                return 0, 
                       ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
        else:
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.maxLeverage() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[32]:
                if 0 >= 10000 * ext_call.return_data[0]:
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
            else:
                if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
    else:
        if ext_call.return_data[32] < ext_call.return_data[32]:
            if arg5:
                revert with 0, 'Vault: losses exceed collateral'
            return 1, 
                   ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
        if not ext_call.return_data[0]:
            if ext_call.return_data[32] > ext_call.return_data[32]:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 < ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
                if arg5:
                    revert with 0, 'Vault: fees exceed collateral'
                return 1, 0
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.liquidationFeeUsd() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 0 < (2 * ext_call.return_data[0]) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
                if arg5:
                    revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1261 len 23]
                return 1, 
                       ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
            if not ext_call.return_data[0]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                return 0, 
                       ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
            if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1253 len 31]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.maxLeverage() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 >= 10000 * ext_call.return_data[0]:
                return 0, 
                       ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
        else:
            if ext_call.return_data[32] < ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
                if arg5:
                    revert with 0, 'Vault: fees exceed collateral'
                return 1, ext_call.return_data[32]
            require ext_code.size(vaultAddress)
            staticcall vaultAddress.liquidationFeeUsd() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] < 0:
                revert with 0, 'SafeMath: addition overflow'
            if ext_call.return_data[32] < (2 * ext_call.return_data[0]) - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6):
                if arg5:
                    revert with 0, 32, 41, 0x6e5661756c743a206c69717569646174696f6e20666565732065786365656420636f6c6c6174657261, mem[1197 len 23]
                return 1, 
                       ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
            if not ext_call.return_data[0]:
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[32]:
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
                if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                if ext_call.return_data[0] * ext_call.return_data[32] >= 0:
                    return 0, 
                           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
            else:
                if 10000 * ext_call.return_data[0] / ext_call.return_data[0] != 10000:
                    revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                require ext_code.size(vaultAddress)
                staticcall vaultAddress.maxLeverage() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[32]:
                    if 0 >= 10000 * ext_call.return_data[0]:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
                else:
                    if ext_call.return_data[0] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1189 len 31]
                    if ext_call.return_data[0] * ext_call.return_data[32] >= 10000 * ext_call.return_data[0]:
                        return 0, 
                               ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
    if arg5:
        revert with 0, 'Vault: maxLeverage exceeded'
    return 2, 
           ext_call.return_data[0] - ((10000 * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / 10000) + ((ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[96] * ext_call.return_data[0]) / 10^6)
}



}
