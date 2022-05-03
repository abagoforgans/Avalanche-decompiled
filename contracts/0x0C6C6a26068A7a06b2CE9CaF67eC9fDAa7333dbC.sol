contract main {




// =====================  Runtime code  =====================


#
#  - sub_6401b092(?)
#
const getCloseFactor = ext_call.return_data[0]

const COMPTROLLER = 0x486af39519b4dc9a7fccd318217352830e8ad9b4


function _fallback() payable {
    revert
}

function sub_a3385702(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.borrowIndex() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'divide by zero'
    return (ext_call.return_data[0] / ext_call.return_data[0])
}

function sub_e5977729(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    staticcall arg2.borrowBalanceStored(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x486af39519b4dc9a7fccd318217352830e8ad9b4)
    staticcall 0x486af39519b4dc9a7fccd318217352830e8ad9b4.closeFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_b3a2dd33(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.getCash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.totalBorrows() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.totalReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.interestRateModel() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], ext_call.return_data[0], ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xcfa99201 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > block.timestamp:
        revert with 0, 'subtraction underflow'
    if arg2 < 0:
        revert with 0, 'addition overflow'
    if not ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.borrowIndex() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.reserveFactorMantissa() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) + (0 / 10^18) < ext_call.return_data[0]:
            revert with 0, 'addition overflow'
        if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
            revert with 0, 'subtraction underflow'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0], 0 / ext_call.return_data[0]
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        return ext_call.return_data[0], 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
    if not arg2 + block.timestamp - ext_call.return_data[0]:
        require ext_code.size(arg1)
        staticcall arg1.borrowIndex() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.reserveFactorMantissa() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) + (0 / 10^18) < ext_call.return_data[0]:
            revert with 0, 'addition overflow'
        if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
            revert with 0, 'subtraction underflow'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0], 0 / ext_call.return_data[0]
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        return ext_call.return_data[0], 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
    require ext_call.return_data[0]
    if (arg2 * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) / ext_call.return_data[0] != arg2 + block.timestamp - ext_call.return_data[0]:
        revert with 0, 'multiplication overflow'
    require ext_code.size(arg1)
    staticcall arg1.borrowIndex() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not (arg2 * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        if not (arg2 * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
            if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
                revert with 0, 'addition overflow'
            require ext_code.size(arg1)
            staticcall arg1.reserveFactorMantissa() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
                revert with 0, 'addition overflow'
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * ext_call.return_data[0]) + (0 / 10^18) < ext_call.return_data[0]:
                revert with 0, 'addition overflow'
            if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                revert with 0, 'subtraction underflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'divide by zero'
                return ext_call.return_data[0], 0 / ext_call.return_data[0]
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0], 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
                revert with 0, 'addition overflow'
            require ext_code.size(arg1)
            staticcall arg1.reserveFactorMantissa() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
                revert with 0, 'addition overflow'
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * ext_call.return_data[0]) + (0 / 10^18) < ext_call.return_data[0]:
                revert with 0, 'addition overflow'
            if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                revert with 0, 'subtraction underflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'divide by zero'
                return ext_call.return_data[0], 0 / ext_call.return_data[0]
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0], 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
        require (arg2 * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0])
        if (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / (arg2 * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) != ext_call.return_data[0]:
            revert with 0, 'multiplication overflow'
        if ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) < (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.reserveFactorMantissa() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
                revert with 0, 'addition overflow'
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) < ext_call.return_data[0]:
                revert with 0, 'addition overflow'
            if ext_call.return_data[0] + (0 / 10^18) > (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18):
                revert with 0, 'subtraction underflow'
            if not ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18):
                if not ext_call.return_data[0]:
                    revert with 0, 'divide by zero'
                return ext_call.return_data[0], 0 / ext_call.return_data[0]
            require ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18)
            if (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * 0 / 10^18) / ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18) != 10^18:
                revert with 0, 'multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0], 
                   (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) / ext_call.return_data[0]
        if not (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
                revert with 0, 'addition overflow'
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) < ext_call.return_data[0]:
                revert with 0, 'addition overflow'
            if ext_call.return_data[0] + (0 / 10^18) > (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18):
                revert with 0, 'subtraction underflow'
            if not ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18):
                if not ext_call.return_data[0]:
                    revert with 0, 'divide by zero'
                return ext_call.return_data[0], 0 / ext_call.return_data[0]
            require ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18)
            if (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * 0 / 10^18) / ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18) != 10^18:
                revert with 0, 'multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0], 
                   (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) / ext_call.return_data[0]
        require ext_call.return_data[0]
        if (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'multiplication overflow'
        if ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) < (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) < ext_call.return_data[0]:
            revert with 0, 'addition overflow'
        if ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) > (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18):
            revert with 0, 'subtraction underflow'
        if not ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18):
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0], 0 / ext_call.return_data[0]
        require ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18)
        if (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) != 10^18:
            revert with 0, 'multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        return ext_call.return_data[0], 
               (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) / ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        if not (arg2 * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
            if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
                revert with 0, 'addition overflow'
            require ext_code.size(arg1)
            staticcall arg1.reserveFactorMantissa() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
                revert with 0, 'addition overflow'
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * ext_call.return_data[0]) + (0 / 10^18) < ext_call.return_data[0]:
                revert with 0, 'addition overflow'
            if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                revert with 0, 'subtraction underflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'divide by zero'
                return ext_call.return_data[0], 0 / ext_call.return_data[0]
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0], 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
                revert with 0, 'addition overflow'
            require ext_code.size(arg1)
            staticcall arg1.reserveFactorMantissa() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
                revert with 0, 'addition overflow'
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * ext_call.return_data[0]) + (0 / 10^18) < ext_call.return_data[0]:
                revert with 0, 'addition overflow'
            if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
                revert with 0, 'subtraction underflow'
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'divide by zero'
                return ext_call.return_data[0], 0 / ext_call.return_data[0]
            require ext_call.return_data[0]
            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                revert with 0, 'multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0], 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
        require (arg2 * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0])
        if (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / (arg2 * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) != ext_call.return_data[0]:
            revert with 0, 'multiplication overflow'
        if ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) < (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.reserveFactorMantissa() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
                revert with 0, 'addition overflow'
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) < ext_call.return_data[0]:
                revert with 0, 'addition overflow'
            if ext_call.return_data[0] + (0 / 10^18) > (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18):
                revert with 0, 'subtraction underflow'
            if not ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18):
                if not ext_call.return_data[0]:
                    revert with 0, 'divide by zero'
                return ext_call.return_data[0], 0 / ext_call.return_data[0]
            require ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18)
            if (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * 0 / 10^18) / ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18) != 10^18:
                revert with 0, 'multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0], 
                   (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) / ext_call.return_data[0]
        if not (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
                revert with 0, 'addition overflow'
            require ext_code.size(arg1)
            staticcall arg1.0x18160ddd with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) < ext_call.return_data[0]:
                revert with 0, 'addition overflow'
            if ext_call.return_data[0] + (0 / 10^18) > (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18):
                revert with 0, 'subtraction underflow'
            if not ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18):
                if not ext_call.return_data[0]:
                    revert with 0, 'divide by zero'
                return ext_call.return_data[0], 0 / ext_call.return_data[0]
            require ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18)
            if (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * 0 / 10^18) / ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18) != 10^18:
                revert with 0, 'multiplication overflow'
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0], 
                   (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) / ext_call.return_data[0]
        require ext_call.return_data[0]
        if (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
            revert with 0, 'multiplication overflow'
        if ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) < (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) < ext_call.return_data[0]:
            revert with 0, 'addition overflow'
        if ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) > (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18):
            revert with 0, 'subtraction underflow'
        if not ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18):
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0], 0 / ext_call.return_data[0]
        require ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18)
        if (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) != 10^18:
            revert with 0, 'multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        return ext_call.return_data[0], 
               (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) / ext_call.return_data[0]
    require (arg2 * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0])
    if (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / (arg2 * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) != ext_call.return_data[0]:
        revert with 0, 'multiplication overflow'
    if ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) < (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
        revert with 0, 'addition overflow'
    if not (arg2 * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]):
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.reserveFactorMantissa() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) + (0 / 10^18) < ext_call.return_data[0]:
            revert with 0, 'addition overflow'
        if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
            revert with 0, 'subtraction underflow'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                   0 / ext_call.return_data[0]
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        return ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
               10^18 * ext_call.return_data[0] / ext_call.return_data[0]
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.reserveFactorMantissa() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) + (0 / 10^18) < ext_call.return_data[0]:
            revert with 0, 'addition overflow'
        if ext_call.return_data[0] > 2 * ext_call.return_data[0]:
            revert with 0, 'subtraction underflow'
        if not ext_call.return_data[0]:
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                   0 / ext_call.return_data[0]
        require ext_call.return_data[0]
        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
            revert with 0, 'multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        return ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
               10^18 * ext_call.return_data[0] / ext_call.return_data[0]
    require (arg2 * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0])
    if (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / (arg2 * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0]) != ext_call.return_data[0]:
        revert with 0, 'multiplication overflow'
    if ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) < (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
        revert with 0, 'addition overflow'
    require ext_code.size(arg1)
    staticcall arg1.reserveFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) < ext_call.return_data[0]:
            revert with 0, 'addition overflow'
        if ext_call.return_data[0] + (0 / 10^18) > (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18):
            revert with 0, 'subtraction underflow'
        if not ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18):
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                   0 / ext_call.return_data[0]
        require ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18)
        if (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * 0 / 10^18) / ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18) != 10^18:
            revert with 0, 'multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        return ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
               (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) / ext_call.return_data[0]
    if not (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
        if ext_call.return_data[0] + (0 / 10^18) < 0 / 10^18:
            revert with 0, 'addition overflow'
        require ext_code.size(arg1)
        staticcall arg1.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) < ext_call.return_data[0]:
            revert with 0, 'addition overflow'
        if ext_call.return_data[0] + (0 / 10^18) > (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18):
            revert with 0, 'subtraction underflow'
        if not ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18):
            if not ext_call.return_data[0]:
                revert with 0, 'divide by zero'
            return ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
                   0 / ext_call.return_data[0]
        require ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18)
        if (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * 0 / 10^18) / ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (0 / 10^18) != 10^18:
            revert with 0, 'multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        return ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
               (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) / ext_call.return_data[0]
    require ext_call.return_data[0]
    if (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18:
        revert with 0, 'multiplication overflow'
    if ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) < (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18:
        revert with 0, 'addition overflow'
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) < ext_call.return_data[0]:
        revert with 0, 'addition overflow'
    if ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) > (2 * ext_call.return_data[0]) + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18):
        revert with 0, 'subtraction underflow'
    if not ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18):
        if not ext_call.return_data[0]:
            revert with 0, 'divide by zero'
        return ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
               0 / ext_call.return_data[0]
    require ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18)
    if (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) / ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) != 10^18:
        revert with 0, 'multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'divide by zero'
    return ext_call.return_data[0] + ((arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18), 
           (10^18 * ext_call.return_data[0]) + (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18) - (10^18 * (arg2 * ext_call.return_data[0] * ext_call.return_data[0]) + (block.timestamp * ext_call.return_data[0] * ext_call.return_data[0]) - (ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / 10^18) / ext_call.return_data[0]
}



}
