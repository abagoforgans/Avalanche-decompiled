contract main {




// =====================  Runtime code  =====================


#
#  - getRedemptionHints(uint256 arg1, uint256 arg2, uint256 arg3)
#
const _100pct = 10^18

const MIN_NET_DEBT = (5 * 10^17 * 3600)

const LUSD_GAS_COMPENSATION = 200 * 10^18

const PERCENT_DIVISOR = 200

const CCR = 15 * 10^17

const MCR = 11 * 10^17

const DECIMAL_PRECISION = 10^18

const NAME = 'HintHelpers'

const BORROWING_FEE_FLOOR = 5 * 10^15


address activePoolAddress;
address defaultPoolAddress;
address priceFeedAddress;
address owner;
address sortedTrovesAddress;
address troveManagerAddress;

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

function owner() payable {
    return owner
}

function sortedTroves() payable {
    return sortedTrovesAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function computeCR(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        return -1
    if not arg1:
        if not arg2:
            revert with 0, 'SafeMath: division by zero'
        return (0 / arg2)
    if arg3 * arg1 / arg1 != arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg2:
        revert with 0, 'SafeMath: division by zero'
    return (arg3 * arg1 / arg2)
}

function computeNominalCR(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg2:
        return -1
    if not arg1:
        if not arg2:
            revert with 0, 'SafeMath: division by zero'
        return (0 / arg2)
    if 100 * 10^18 * arg1 / arg1 != 100 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not arg2:
        revert with 0, 'SafeMath: division by zero'
    return (100 * 10^18 * arg1 / arg2)
}

function setAddresses(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg1):
        revert with 0, 'Account code size cannot be zero'
    if not arg2:
        revert with 0, 'Account cannot be zero address'
    if not ext_code.size(arg2):
        revert with 0, 'Account code size cannot be zero'
    sortedTrovesAddress = arg1
    troveManagerAddress = arg2
    emit SortedTrovesAddressChanged(arg1);
    emit TroveManagerAddressChanged(arg2);
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
