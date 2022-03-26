contract main {




// =====================  Runtime code  =====================


#
#  - calculateReturns()
#  - calculateAndDistribute()
#
address owner;
uint256 stor1;
array of struct stor2;
mapping of uint256 stor3;
array of struct stor4;
mapping of uint256 stor5;
mapping of address stakes;
mapping of uint256 weights;
uint8 stor8;
uint256 avaxSplit;
uint256 pngSplit;
address wavaxAddress;
address pngAddress;
address avaxPngPairAddress;
address treasuryVesterAddress;
uint256 numPools;
uint8 stor16;
array of uint256 distribution;
uint256 unallocatedPng;

function wavax() payable {
    return wavaxAddress
}

function treasuryVester() payable {
    return treasuryVesterAddress
}

function stakes(address arg1) payable {
    require calldata.size - 4 >= 32
    return stakes[arg1]
}

function isPngPair(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function splitPools() payable {
    return bool(stor8)
}

function numPools() payable {
    return numPools
}

function png() payable {
    return pngAddress
}

function avaxSplit() payable {
    return avaxSplit
}

function isAvaxPair(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor3[address(arg1)])
}

function owner() payable {
    return owner
}

function unallocatedPng() payable {
    return unallocatedPng
}

function weights(address arg1) payable {
    require calldata.size - 4 >= 32
    return weights[arg1]
}

function pngSplit() payable {
    return pngSplit
}

function distribution(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < distribution.length
    return distribution[arg1]
}

function avaxPngPair() payable {
    return avaxPngPairAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor3[address(arg1)]:
        return bool(stor3[address(arg1)])
    return bool(stor5[address(arg1)])
}

function deactivateFeeSplit() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 65, code.data[17941 len 65], mem[229 len 31]
    stor8 = 0
    avaxSplit = 0
    pngSplit = 0
}

function setAvaxPngPair(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 69, code.data[19976 len 69], mem[233 len 27]
    avaxPngPairAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 38, code.data[18074 len 38], mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeWeight(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not weights[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 56, code.data[18719 len 56], mem[220 len 8]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 55, code.data[19371 len 55], mem[219 len 9]
    weights[address(arg1)] = arg2
}

function activateFeeSplit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg2 + arg1 != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 64, code.data[18433 len 64]
    if 100 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 60, code.data[18602 len 60], mem[224 len 4]
    if 100 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 60, code.data[18602 len 60], mem[224 len 4]
    stor8 = 1
    avaxSplit = arg1
    pngSplit = arg2
}

function vestAllocation() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if unallocatedPng:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 86, code.data[19219 len 86], mem[250 len 10]
    require ext_code.size(treasuryVesterAddress)
    call treasuryVesterAddress.claim() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    unallocatedPng = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 74, code.data[18359 len 74], mem[238 len 22]
    require ext_code.size(pngAddress)
    staticcall pngAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < unallocatedPng:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 66, code.data[18775 len 66], mem[230 len 30]
    unallocatedPng = ext_call.return_data[0]
    stor1 = 1
}

function getAvaxLiquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == wavaxAddress:
        if Mask(112, 0, ext_call.return_data[0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            return 0
        if 2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[18986 len 33], mem[197 len 31]
        return (2 * Mask(112, 0, ext_call.return_data[0]))
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != wavaxAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 83, code.data[19854 len 83], mem[247 len 13]
    if Mask(112, 0, ext_call.return_data[32]) < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        return 0
    if 2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[18986 len 33], mem[197 len 31]
    return (2 * Mask(112, 0, ext_call.return_data[32]))
}

function getAvaxPngRatio() payable {
    if not avaxPngPairAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 59, code.data[17882 len 59], mem[223 len 5]
    require ext_code.size(avaxPngPairAddress)
    staticcall avaxPngPairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(avaxPngPairAddress)
    staticcall avaxPngPairAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != wavaxAddress:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[19937 len 39], mem[203 len 25]
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[19937 len 39], mem[203 len 25]
        if 10^18 * Mask(112, 0, ext_call.return_data[32]) / 10^18 != Mask(112, 0, ext_call.return_data[32]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[18986 len 33], mem[197 len 31]
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if Mask(112, 0, ext_call.return_data[0]):
            return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
    else:
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[19937 len 39], mem[203 len 25]
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 39, code.data[19937 len 39], mem[203 len 25]
        if 10^18 * Mask(112, 0, ext_call.return_data[0]) / 10^18 != Mask(112, 0, ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[18986 len 33], mem[197 len 31]
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'SafeMath: division by zero'
        if Mask(112, 0, ext_call.return_data[32]):
            return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
    revert
}

function getPngLiquidity(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == pngAddress:
        if Mask(112, 0, ext_call.return_data[0]) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not Mask(112, 0, ext_call.return_data[0]):
            return 0
        if arg2 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[18986 len 33], mem[197 len 31]
        if not arg2 * Mask(112, 0, ext_call.return_data[0]):
            return 0
        if 2 * arg2 * Mask(112, 0, ext_call.return_data[0]) / arg2 * Mask(112, 0, ext_call.return_data[0]) != 2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[18986 len 33], mem[197 len 31]
        return (2 * arg2 * Mask(112, 0, ext_call.return_data[0]) / 10^18)
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != pngAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 80, code.data[18841 len 80], mem[244 len 16]
    if Mask(112, 0, ext_call.return_data[32]) < 0:
        revert with 0, 'SafeMath: addition overflow'
    if not Mask(112, 0, ext_call.return_data[32]):
        return 0
    if arg2 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[18986 len 33], mem[197 len 31]
    if not arg2 * Mask(112, 0, ext_call.return_data[32]):
        return 0
    if 2 * arg2 * Mask(112, 0, ext_call.return_data[32]) / arg2 * Mask(112, 0, ext_call.return_data[32]) != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[18986 len 33], mem[197 len 31]
    return (2 * arg2 * Mask(112, 0, ext_call.return_data[32]) / 10^18)
}

function distributeTokensSinglePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 105, code.data[18497 len 105], mem[269 len 23]
    if arg1 >= numPools:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 69, code.data[19082 len 69], mem[233 len 27]
    if arg1 < stor2.length:
        require arg1 < distribution.length
        if distribution[arg1] > 0:
            require arg1 < distribution.length
            distribution[arg1] = 0
            require ext_code.size(pngAddress)
            call pngAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stakes[stor2[arg1].field_0], distribution[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 55, code.data[19631 len 55], mem[219 len 9]
            require ext_code.size(stakes[stor2[arg1].field_0])
            call stakes[stor2[arg1].field_0].notifyRewardAmount(uint256 rg1) with:
                 gas gas_remaining wei
                args distribution[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 - stor2.length >= stor4.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 34, code.data[17848 len 34], mem[198 len 30]
        require arg1 < distribution.length
        if distribution[arg1] > 0:
            require arg1 < distribution.length
            distribution[arg1] = 0
            require ext_code.size(pngAddress)
            call pngAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stakes[stor[('name', 'stor4', 4) + arg1 - stor2.length].field_0], distribution[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 55, code.data[19631 len 55], mem[219 len 9]
            require ext_code.size(stakes[stor[('name', 'stor4', 4) + arg1 - stor2.length].field_0])
            call stakes[stor[('name', 'stor4', 4) + arg1 - stor2.length].field_0].notifyRewardAmount(uint256 rg1) with:
                 gas gas_remaining wei
                args distribution[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function removeWhitelistedPool(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 108, code.data[19523 len 108], mem[272 len 20]
    if not stor3[address(arg1)]:
        if not stor5[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 65, code.data[18921 len 65], mem[229 len 31]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stakes[address(arg1)] = 0
    weights[address(arg1)] = 0
    if pngAddress == address(ext_call.return_data[0]):
        if not stor5[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 63, code.data[18296 len 63], mem[227 len 1]
        require stor4.length - 1 < stor4.length
        require stor5[address(arg1)] - 1 < stor4.length
        stor4[stor5[address(arg1)]].field_0 = stor4[stor4.length].field_0
        stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
        require stor4.length
        stor4[stor4.length].field_0 = 0
        stor4.length--
        stor5[address(arg1)] = 0
    else:
        if pngAddress != address(ext_call.return_data[0]):
            if not stor3[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 63, code.data[18296 len 63], mem[227 len 1]
            require stor2.length - 1 < stor2.length
            require stor3[address(arg1)] - 1 < stor2.length
            stor2[stor3[address(arg1)]].field_0 = stor2[stor2.length].field_0
            stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
            require stor2.length
            stor2[stor2.length].field_0 = 0
            stor2.length--
            stor3[address(arg1)] = 0
        else:
            if not stor5[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 63, code.data[18296 len 63], mem[227 len 1]
            require stor4.length - 1 < stor4.length
            require stor5[address(arg1)] - 1 < stor4.length
            stor4[stor5[address(arg1)]].field_0 = stor4[stor4.length].field_0
            stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
            require stor4.length
            stor4[stor4.length].field_0 = 0
            stor4.length--
            stor5[address(arg1)] = 0
    if 1 > numPools:
        revert with 0, 'SafeMath: subtraction overflow'
    numPools--
}

function distributeTokens() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 95, code.data[19686 len 95], mem[259 len 1]
    stor16 = 0
    idx = 0
    s = 0
    s = 0
    while idx < distribution.length:
        if idx < stor2.length:
            mem[32] = 6
            require idx < distribution.length
            mem[0] = 17
            if distribution[idx] > 0:
                mem[132] = distribution[idx]
                require ext_code.size(pngAddress)
                call pngAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stakes[stor2[idx].field_0], distribution[idx]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    revert with 0, 32, 55, code.data[19631 len 55], mem[219 len 9]
                mem[96] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
                mem[100] = distribution[idx]
                require ext_code.size(stakes[stor2[idx].field_0])
                call stakes[stor2[idx].field_0].notifyRewardAmount(uint256 rg1) with:
                     gas gas_remaining wei
                    args distribution[idx]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            idx = idx + 1
            s = distribution[idx]
            s = stakes[stor2[idx].field_0]
            continue 
        if idx - stor2.length >= stor4.length:
            revert with 0, 32, 34, code.data[17848 len 34], mem[198 len 30]
        mem[32] = 6
        require idx < distribution.length
        mem[0] = 17
        if distribution[idx] > 0:
            mem[132] = distribution[idx]
            require ext_code.size(pngAddress)
            call pngAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stakes[stor[('name', 'stor4', 4) + idx - stor2.length].field_0], distribution[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 32, 55, code.data[19631 len 55], mem[219 len 9]
            mem[96] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
            mem[100] = distribution[idx]
            require ext_code.size(stakes[stor[('name', 'stor4', 4) + idx - stor2.length].field_0])
            call stakes[stor[('name', 'stor4', 4) + idx - stor2.length].field_0].notifyRewardAmount(uint256 rg1) with:
                 gas gas_remaining wei
                args distribution[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        s = distribution[idx]
        s = stakes[stor[('name', 'stor4', 4) + idx - stor2.length].field_0]
        continue 
    unallocatedPng = 0
    stor1 = 1
}

function addWhitelistedPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 102, code.data[18194 len 102], mem[266 len 26]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 73, code.data[19781 len 73], mem[237 len 23]
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 66, code.data[19305 len 66], mem[230 len 30]
    if stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 66, code.data[19305 len 66], mem[230 len 30]
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 63, code.data[19019 len 63], mem[227 len 1]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == address(ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 68, code.data[19151 len 68], mem[232 len 28]
    create contract with 0 wei
                    code: code.data[10874 len 6974], pngAddress, arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stakes[address(arg1)] = address(create.new_address)
    weights[address(arg1)] = arg2
    if address(ext_call.return_data[0]) == pngAddress:
        if stor5[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        57,
                        code.data[18662 len 57],
                        code.data[10999 len 7]
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
    else:
        if pngAddress == address(ext_call.return_data[0]):
            if stor5[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            57,
                            code.data[18662 len 57],
                            code.data[10999 len 7]
            stor4.length++
            stor4[stor4.length].field_0 = arg1
            stor4[stor4.length].field_160 = 0
            stor5[address(arg1)] = stor4.length
        else:
            if wavaxAddress != address(ext_call.return_data[0]):
                if wavaxAddress != address(ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                68,
                                code.data[18006 len 68],
                                code.data[11010 len 28]
            if stor3[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            57,
                            code.data[18662 len 57],
                            code.data[10999 len 7]
            stor2.length++
            stor2[stor2.length].field_0 = arg1
            stor2[stor2.length].field_160 = 0
            stor3[address(arg1)] = stor2.length
    if numPools + 1 < numPools:
        revert with 0, 'SafeMath: addition overflow'
    numPools++
}



}
