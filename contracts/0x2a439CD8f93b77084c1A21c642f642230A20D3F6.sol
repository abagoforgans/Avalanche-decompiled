contract main {




// =====================  Runtime code  =====================


#
#  - getRedemptionHints(uint256 arg1, uint256 arg2, uint256 arg3)
#  - computeCR(uint256 arg1, uint256 arg2, uint256 arg3)
#
const sub_4fa8e0d0(?) = 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee

const _100pct = 10^18

const MIN_NET_DEBT = (5 * 10^16 * 3600)

const LUSD_GAS_COMPENSATION = 20 * 10^18

const PERCENT_DIVISOR = 200

const CCR = 115 * 10^16

const MCR = 105 * 10^16

const DECIMAL_PRECISION = 10^18

const NAME = 'HintHelpers'

const BORROWING_FEE_FLOOR = 10^16


address activePoolAddress;
address defaultPoolAddress;
bool stor2; offset 256
uint8 stor2; offset 160
uint8 stor2; offset 168
uint128 stor2; offset 168
address priceFeedAddress;
address sortedTrovesAddress;
address troveManagerAddress;

function initialized() payable {
    return bool(uint8(stor2.field_160))
}

function defaultPool() payable {
    return defaultPoolAddress
}

function troveManager() payable {
    return troveManagerAddress
}

function priceFeed() payable {
    return priceFeedAddress
}

function activePool() payable {
    return activePoolAddress
}

function sortedTroves() payable {
    return sortedTrovesAddress
}

function _fallback() payable {
    revert
}

function getEntireSystemDebt() payable {
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x5eb52fca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(defaultPoolAddress)
    staticcall defaultPoolAddress.0x5eb52fca with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function getEntireSystemColl() payable {
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x14f6c3be with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(defaultPoolAddress)
    staticcall defaultPoolAddress.0x14f6c3be with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if 2 * ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (2 * ext_call.return_data[0])
}

function setAddresses(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor2.field_168):
        sortedTrovesAddress = arg1
        troveManagerAddress = arg2
        activePoolAddress = arg3
        emit SortedTrovesAddressChanged(arg1);
        emit TroveManagerAddressChanged(arg2);
        emit ActivePoolAddressChanged(arg3);
    else:
        if ext_code.size(this.address):
            if uint8(stor2.field_160):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0xfe496e697469616c697a61626c653a20636f6e747261637420697320616c726561647920696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor2.field_168):
            sortedTrovesAddress = arg1
            troveManagerAddress = arg2
            activePoolAddress = arg3
            emit SortedTrovesAddressChanged(arg1);
            emit TroveManagerAddressChanged(arg2);
            emit ActivePoolAddressChanged(arg3);
        else:
            uint8(stor2.field_160) = 1
            uint8(stor2.field_168) = 1
            Mask(88, 0, stor2.field_168) = 0
            stor2.field_256 % 1 = 0
            sortedTrovesAddress = arg1
            troveManagerAddress = arg2
            activePoolAddress = arg3
            emit SortedTrovesAddressChanged(arg1);
            emit TroveManagerAddressChanged(arg2);
            emit ActivePoolAddressChanged(arg3);
            uint8(stor2.field_168) = 0
}

function collToDebt(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not arg1:
            return 0
        if arg2 * arg1 / arg1 != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (arg2 * arg1 / 10^18)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        return (0 / 10^uint8(ext_call.return_data[0]))
    if arg2 * arg1 / arg1 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    return (arg2 * arg1 / 10^uint8(ext_call.return_data[0]))
}

function debtToColl(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not arg1:
            if not arg2:
                revert with 0, 'SafeMath: division by zero'
            return (0 / arg2)
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg2:
            revert with 0, 'SafeMath: division by zero'
        return (10^18 * arg1 / arg2)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not arg2:
            revert with 0, 'SafeMath: division by zero'
        return (0 / arg2)
    if 10^ext_call.return_data[31 len 1] * arg1 / arg1 != 10^ext_call.return_data[31 len 1]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg2:
        revert with 0, 'SafeMath: division by zero'
    return (10^uint8(ext_call.return_data[0]) * arg1 / arg2)
}

function computeNominalCR(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee:
        if not arg1:
            if not arg2:
                return -1
            if not arg2:
                revert with 0, 'SafeMath: division by zero'
            return (0 / arg2)
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not arg2:
            return -1
        if not 10^18 * arg1 / 10^18:
            if not arg2:
                revert with 0, 'SafeMath: division by zero'
            return (0 / arg2)
        if 100 * 10^18 * 10^18 * arg1 / 10^18 / 10^18 * arg1 / 10^18 != 100 * 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not arg2:
            revert with 0, 'SafeMath: division by zero'
        return (100 * 10^18 * 10^18 * arg1 / 10^18 / arg2)
    require ext_code.size(activePoolAddress)
    staticcall activePoolAddress.0x498a6600 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg1:
        if not 10^uint8(ext_call.return_data[0]):
            revert with 0, 'SafeMath: division by zero'
        if not arg2:
            return -1
        if not 0 / 10^uint8(ext_call.return_data[0]):
            if not arg2:
                revert with 0, 'SafeMath: division by zero'
            return (0 / arg2)
        if 100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / 0 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
            revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not arg2:
            revert with 0, 'SafeMath: division by zero'
        return (100 * 10^18 * 0 / 10^uint8(ext_call.return_data[0]) / arg2)
    if 10^18 * arg1 / arg1 != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not 10^uint8(ext_call.return_data[0]):
        revert with 0, 'SafeMath: division by zero'
    if not arg2:
        return -1
    if not 10^18 * arg1 / 10^uint8(ext_call.return_data[0]):
        if not arg2:
            revert with 0, 'SafeMath: division by zero'
        return (0 / arg2)
    if 100 * 10^18 * 10^18 * arg1 / 10^uint8(ext_call.return_data[0]) / 10^18 * arg1 / 10^uint8(ext_call.return_data[0]) != 100 * 10^18:
        revert with 0, 32, 33, 0x64536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not arg2:
        revert with 0, 'SafeMath: division by zero'
    return (100 * 10^18 * 10^18 * arg1 / 10^uint8(ext_call.return_data[0]) / arg2)
}

function getApproxHint(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(troveManagerAddress)
    staticcall troveManagerAddress.0x49eefeee with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0, 0, arg3
    require ext_code.size(sortedTrovesAddress)
    staticcall sortedTrovesAddress.0x4d622831 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(troveManagerAddress)
    staticcall troveManagerAddress.0xb0d8e181 with:
            gas gas_remaining wei
           args address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[64] = 160
    mem[96] = 30
    mem[128] = 'SafeMath: subtraction overflow'
    if arg1 >= ext_call.return_data[0]:
        if ext_call.return_data[0] > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 1
        s = arg3
        t = arg1 - ext_call.return_data[0]
        u = ext_call.return_data[0]
        while idx < arg2:
            _91 = mem[64]
            mem[mem[64] + 32] = s
            _92 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            _94 = sha3(mem[_92 + 32 len mem[_92]])
            require ext_call.return_data[0]
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.0xd9a72444 with:
                    gas gas_remaining wei
                   args (sha3(mem[_92 + 32 len mem[_92]]) % ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.0xb0d8e181 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[_91 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = _91 + 128
            mem[_91 + 64] = 30
            mem[_91 + 96] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] >= arg1:
                if arg1 <= ext_call.return_data[0]:
                    if ext_call.return_data[0] - arg1 >= t:
                        idx = idx + 1
                        s = _94
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = _94
                    t = ext_call.return_data[0] - arg1
                    u = ext_call.return_data[0]
                    continue 
                mem[_91 + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_91 + 132] = 32
                idx = 0
                while idx < 30:
                    mem[idx + _91 + 196] = mem[idx + _91 + 96]
                    idx = idx + 32
                    continue 
            else:
                if ext_call.return_data[0] <= arg1:
                    if arg1 - ext_call.return_data[0] >= t:
                        idx = idx + 1
                        s = _94
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = _94
                    t = arg1 - ext_call.return_data[0]
                    u = ext_call.return_data[0]
                    continue 
                mem[_91 + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_91 + 132] = 32
                idx = 0
                while idx < 30:
                    mem[idx + _91 + 196] = mem[idx + _91 + 96]
                    idx = idx + 32
                    continue 
            mem[_91 + 196] = mem[_91 + 198 len 30]
            revert with 0, 32, 30, mem[_91 + 196]
    else:
        if arg1 > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 1
        s = arg3
        t = ext_call.return_data[0] - arg1
        u = ext_call.return_data[0]
        while idx < arg2:
            _96 = mem[64]
            mem[mem[64] + 32] = s
            _97 = mem[64]
            mem[mem[64]] = 32
            mem[64] = mem[64] + 64
            _99 = sha3(mem[_97 + 32 len mem[_97]])
            require ext_call.return_data[0]
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.0xd9a72444 with:
                    gas gas_remaining wei
                   args (sha3(mem[_97 + 32 len mem[_97]]) % ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(troveManagerAddress)
            staticcall troveManagerAddress.0xb0d8e181 with:
                    gas gas_remaining wei
                   args address(ext_call.return_data[0])
            mem[_96 + 64] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[64] = _96 + 128
            mem[_96 + 64] = 30
            mem[_96 + 96] = 'SafeMath: subtraction overflow'
            if ext_call.return_data[0] >= arg1:
                if arg1 <= ext_call.return_data[0]:
                    if ext_call.return_data[0] - arg1 >= t:
                        idx = idx + 1
                        s = _99
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = _99
                    t = ext_call.return_data[0] - arg1
                    u = ext_call.return_data[0]
                    continue 
                mem[_96 + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_96 + 132] = 32
                idx = 0
                while idx < 30:
                    mem[idx + _96 + 196] = mem[idx + _96 + 96]
                    idx = idx + 32
                    continue 
            else:
                if ext_call.return_data[0] <= arg1:
                    if arg1 - ext_call.return_data[0] >= t:
                        idx = idx + 1
                        s = _99
                        t = t
                        u = u
                        continue 
                    idx = idx + 1
                    s = _99
                    t = arg1 - ext_call.return_data[0]
                    u = ext_call.return_data[0]
                    continue 
                mem[_96 + 128] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_96 + 132] = 32
                idx = 0
                while idx < 30:
                    mem[idx + _96 + 196] = mem[idx + _96 + 96]
                    idx = idx + 32
                    continue 
            mem[_96 + 196] = mem[_96 + 198 len 30]
            revert with 0, 32, 30, mem[_96 + 196]
    return address(u), t, s
}



}
