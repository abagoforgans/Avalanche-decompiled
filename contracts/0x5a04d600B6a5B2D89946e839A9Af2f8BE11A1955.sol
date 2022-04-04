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
uint8 splitPools;
uint256 avaxSplit;
uint256 partySplit;
address wavaxAddress;
address partyAddress;
address avaxPartyPairAddress;
address treasuryVesterAddress;
uint256 numPools;
uint8 stor16;
array of uint256 distribution;
uint256 unallocatedParty;

function wavax() payable {
    return wavaxAddress
}

function treasuryVester() payable {
    return treasuryVesterAddress
}

function stakes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return stakes[arg1]
}

function isPartyPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function splitPools() payable {
    return bool(splitPools)
}

function party() payable {
    return partyAddress
}

function numPools() payable {
    return numPools
}

function partySplit() payable {
    return partySplit
}

function avaxSplit() payable {
    return avaxSplit
}

function isAvaxPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function owner() payable {
    return owner
}

function weights(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return weights[arg1]
}

function distribution(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < distribution.length
    return distribution[arg1]
}

function avaxPartyPair() payable {
    return avaxPartyPairAddress
}

function unallocatedParty() payable {
    return unallocatedParty
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
    require arg1 == arg1
    if stor3[address(arg1)]:
        return bool(stor3[address(arg1)])
    return bool(stor5[address(arg1)])
}

function deactivateFeeSplit() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not splitPools:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::deactivateFeeSplit: Fee split not activated'
    splitPools = 0
    avaxSplit = 0
    partySplit = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setavaxPartyPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::setavaxPartyPair: Pool cannot be the zero address'
    avaxPartyPairAddress = arg1
}

function changeWeight(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not weights[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::changeWeight: Pair not whitelisted'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::changeWeight: Remove pool instead'
    weights[address(arg1)] = arg2
}

function activateFeeSplit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::activateFeeSplit: Split doesn't add to 100'
    if 100 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::activateFeeSplit: Split can't be 100/0'
    if 100 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::activateFeeSplit: Split can't be 100/0'
    splitPools = 1
    avaxSplit = arg1
    partySplit = arg2
}

function vestAllocation() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if unallocatedParty:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::vestAllocation: Old PARTY is unallocated. Call distributeTokens().'
    require ext_code.size(treasuryVesterAddress)
    call treasuryVesterAddress.0x4e71d92d with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    unallocatedParty = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'LPM::vestAllocation: No PARTY to claim. Try again tomorrow.'
    require ext_code.size(partyAddress)
    staticcall partyAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < unallocatedParty:
        revert with 0, 'LPM::vestAllocation: Insufficient PARTY transferred'
    unallocatedParty = ext_call.return_data[0]
    stor1 = 1
}

function getAvaxLiquidity(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == wavaxAddress:
        if 0 > !Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and 2 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        return (2 * Mask(112, 0, ext_call.return_data[0]))
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != wavaxAddress:
        revert with 0, 'LPM::getAvaxLiquidity: One of the tokens in the pair must be WAVAX'
    if 0 > !Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) and 2 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    return (2 * Mask(112, 0, ext_call.return_data[32]))
}

function getAvaxPartyRatio() payable {
    if not avaxPartyPairAddress:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::getAvaxPartyRatio: No AVAX-PARTY pair set'
    require ext_code.size(avaxPartyPairAddress)
    staticcall avaxPartyPairAddress.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(avaxPartyPairAddress)
    staticcall avaxPartyPairAddress.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != wavaxAddress:
        if Mask(112, 0, ext_call.return_data[0]) <= 0:
            revert with 0, 'PartyLibrary: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) <= 0:
            revert with 0, 'PartyLibrary: INSUFFICIENT_LIQUIDITY'
        if Mask(112, 0, ext_call.return_data[32]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
            revert with 0, 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 18
        return (10^18 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[0]))
    if Mask(112, 0, ext_call.return_data[32]) <= 0:
        revert with 0, 'PartyLibrary: INSUFFICIENT_LIQUIDITY'
    if Mask(112, 0, ext_call.return_data[0]) <= 0:
        revert with 0, 'PartyLibrary: INSUFFICIENT_LIQUIDITY'
    if Mask(112, 0, ext_call.return_data[0]) > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 18
    return (10^18 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[32]))
}

function getPartyLiquidity(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] == partyAddress:
        if 0 > !Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) and arg2 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 0, 17
        if Mask(112, 0, ext_call.return_data[0]) * arg2 and 2 > -1 / Mask(112, 0, ext_call.return_data[0]) * arg2:
            revert with 0, 17
        return (2 * Mask(112, 0, ext_call.return_data[0]) * arg2 / 10^18)
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != partyAddress:
        revert with 0, 'LPM::getPartyLiquidity: One of the tokens in the pair must be PARTY'
    if 0 > !Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) and arg2 > -1 / Mask(112, 0, ext_call.return_data[32]):
        revert with 0, 17
    if Mask(112, 0, ext_call.return_data[32]) * arg2 and 2 > -1 / Mask(112, 0, ext_call.return_data[32]) * arg2:
        revert with 0, 17
    return (2 * Mask(112, 0, ext_call.return_data[32]) * arg2 / 10^18)
}

function distributeTokensSinglePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::distributeTokensSinglePool: Previous returns not allocated. Call calculateReturns()'
    if arg1 >= numPools:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::distributeTokensSinglePool: Index out of bounds'
    if arg1 < stor2.length:
        if arg1 >= distribution.length:
            revert with 0, 50
        if distribution[arg1] > 0:
            if arg1 >= distribution.length:
                revert with 0, 50
            distribution[arg1] = 0
            require ext_code.size(partyAddress)
            call partyAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stakes[stor2[arg1].field_0], distribution[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'LPM::distributeTokens: Transfer failed'
            require ext_code.size(stakes[stor2[arg1].field_0])
            call stakes[stor2[arg1].field_0].0x3c6b16ab with:
                 gas gas_remaining wei
                args distribution[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if arg1 - stor2.length >= stor4.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'EnumerableSet: index out of bounds'
        if arg1 >= distribution.length:
            revert with 0, 50
        if distribution[arg1] > 0:
            if arg1 >= distribution.length:
                revert with 0, 50
            distribution[arg1] = 0
            require ext_code.size(partyAddress)
            call partyAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stakes[stor[('name', 'stor4', 4) + arg1 - stor2.length].field_0], distribution[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'LPM::distributeTokens: Transfer failed'
            require ext_code.size(stakes[stor[('name', 'stor4', 4) + arg1 - stor2.length].field_0])
            call stakes[stor[('name', 'stor4', 4) + arg1 - stor2.length].field_0].0x3c6b16ab with:
                 gas gas_remaining wei
                args distribution[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function addWhitelistedPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::addWhitelistedPool: Cannot add pool between calculating and distributing returns'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::addWhitelistedPool: Pool cannot be the zero address'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::addWhitelistedPool: Pool already whitelisted'
    if stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::addWhitelistedPool: Pool already whitelisted'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::addWhitelistedPool: Weight cannot be zero'
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
        revert with 0, 'LPM::addWhitelistedPool: Tokens cannot be identical'
    create contract with 0 wei
                    code: code.data[12861 len 6246], partyAddress, arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stakes[address(arg1)] = address(create.new_address)
    weights[address(arg1)] = arg2
    if address(ext_call.return_data[0]) == partyAddress:
        if stor5[address(arg1)]:
            revert with 0, 'LPM::addWhitelistedPool: Pair add failed'
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
    else:
        if partyAddress == address(ext_call.return_data[0]):
            if stor5[address(arg1)]:
                revert with 0, 'LPM::addWhitelistedPool: Pair add failed'
            stor4.length++
            stor4[stor4.length].field_0 = arg1
            stor4[stor4.length].field_160 = 0
            stor5[address(arg1)] = stor4.length
        else:
            if wavaxAddress != address(ext_call.return_data[0]):
                if wavaxAddress != address(ext_call.return_data[0]):
                    revert with 0, 'LPM::addWhitelistedPool: No AVAX or PARTY in the pair'
            if stor3[address(arg1)]:
                revert with 0, 'LPM::addWhitelistedPool: Pair add failed'
            stor2.length++
            stor2[stor2.length].field_0 = arg1
            stor2[stor2.length].field_160 = 0
            stor3[address(arg1)] = stor2.length
    if numPools > -2:
        revert with 0, 17
    numPools++
}

function removeWhitelistedPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::removeWhitelistedPool: Cannot remove pool between calculating and distributing returns'
    if not stor3[address(arg1)]:
        if not stor5[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::removeWhitelistedPool: Pool not whitelisted'
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.token1() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stakes[address(arg1)] = 0
    weights[address(arg1)] = 0
    if partyAddress == address(ext_call.return_data[0]):
        if not stor5[address(arg1)]:
            revert with 0, 'LPM::removeWhitelistedPool: Pair remove failed'
        if stor5[address(arg1)] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        if stor5[address(arg1)] - 1 >= stor4.length:
            revert with 0, 50
        stor4[stor5[address(arg1)]].field_0 = stor4[stor4.length].field_0
        stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
        if not stor4.length:
            revert with 0, 49
        stor4[stor4.length].field_0 = 0
        stor4.length--
        stor5[address(arg1)] = 0
    else:
        if partyAddress != ext_call.return_data[12 len 20]:
            if not stor3[address(arg1)]:
                revert with 0, 'LPM::removeWhitelistedPool: Pair remove failed'
            if stor3[address(arg1)] < 1:
                revert with 0, 17
            if stor2.length < 1:
                revert with 0, 17
            if stor2.length - 1 >= stor2.length:
                revert with 0, 50
            if stor3[address(arg1)] - 1 >= stor2.length:
                revert with 0, 50
            stor2[stor3[address(arg1)]].field_0 = stor2[stor2.length].field_0
            stor3[stor2[stor2.length].field_0] = stor3[address(arg1)]
            if not stor2.length:
                revert with 0, 49
            stor2[stor2.length].field_0 = 0
            stor2.length--
            stor3[address(arg1)] = 0
        else:
            if not stor5[address(arg1)]:
                revert with 0, 'LPM::removeWhitelistedPool: Pair remove failed'
            if stor5[address(arg1)] < 1:
                revert with 0, 17
            if stor4.length < 1:
                revert with 0, 17
            if stor4.length - 1 >= stor4.length:
                revert with 0, 50
            if stor5[address(arg1)] - 1 >= stor4.length:
                revert with 0, 50
            stor4[stor5[address(arg1)]].field_0 = stor4[stor4.length].field_0
            stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
            if not stor4.length:
                revert with 0, 49
            stor4[stor4.length].field_0 = 0
            stor4.length--
            stor5[address(arg1)] = 0
    if numPools < 1:
        revert with 0, 17
    numPools--
}

function distributeTokens() payable {
    mem[64] = 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::distributeTokens: Previous returns not allocated. Call calculateReturns()'
    stor16 = 0
    idx = 0
    s = 0
    s = 0
    while idx < distribution.length:
        if idx < stor2.length:
            mem[32] = 6
            if idx >= distribution.length:
                revert with 0, 50
            mem[0] = 17
            if distribution[idx] > 0:
                mem[mem[64] + 4] = stakes[stor2[idx].field_0]
                mem[mem[64] + 36] = distribution[idx]
                require ext_code.size(partyAddress)
                call partyAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args stakes[stor2[idx].field_0], distribution[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _37 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_37] == bool(mem[_37])
                if not mem[_37]:
                    revert with 0, 'LPM::distributeTokens: Transfer failed'
                mem[mem[64]] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = distribution[idx]
                require ext_code.size(stakes[stor2[idx].field_0])
                call stakes[stor2[idx].field_0].0x3c6b16ab with:
                     gas gas_remaining wei
                    args distribution[idx]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = distribution[idx]
            s = stakes[stor2[idx].field_0]
            continue 
        if idx - stor2.length >= stor4.length:
            revert with 0, 'EnumerableSet: index out of bounds'
        mem[32] = 6
        if idx >= distribution.length:
            revert with 0, 50
        mem[0] = 17
        if distribution[idx] > 0:
            mem[mem[64] + 4] = stakes[stor[('name', 'stor4', 4) + idx - stor2.length].field_0]
            mem[mem[64] + 36] = distribution[idx]
            require ext_code.size(partyAddress)
            call partyAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args stakes[stor[('name', 'stor4', 4) + idx - stor2.length].field_0], distribution[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _47 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_47] == bool(mem[_47])
            if not mem[_47]:
                revert with 0, 'LPM::distributeTokens: Transfer failed'
            mem[mem[64]] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = distribution[idx]
            require ext_code.size(stakes[stor[('name', 'stor4', 4) + idx - stor2.length].field_0])
            call stakes[stor[('name', 'stor4', 4) + idx - stor2.length].field_0].0x3c6b16ab with:
                 gas gas_remaining wei
                args distribution[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = distribution[idx]
        s = stakes[stor[('name', 'stor4', 4) + idx - stor2.length].field_0]
        continue 
    unallocatedParty = 0
    stor1 = 1
}



}
