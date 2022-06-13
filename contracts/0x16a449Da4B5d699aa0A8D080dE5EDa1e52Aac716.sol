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
array of struct stor6;
mapping of uint256 stor7;
mapping of address stakes;
mapping of uint256 weights;
uint8 stor10;
uint256 avaxSplit;
uint256 sub_9ccc24e7;
uint256 stableTokenSplit;
address wavaxAddress;
address sub_ba156886Address;
address stableTokenAddress;
address sub_46622771Address;
address avaxStableTokenPairAddress;
address treasuryVesterAddress;
uint256 numPools;
uint8 stor21;
array of uint256 distribution;
uint256 sub_816a68ac;

function avaxStableTokenPair() payable {
    return avaxStableTokenPairAddress
}

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

function splitPools() payable {
    return bool(stor10)
}

function numPools() payable {
    return numPools
}

function sub_46622771(?) payable {
    return sub_46622771Address
}

function sub_563e1737(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor5[address(arg1)])
}

function avaxSplit() payable {
    return avaxSplit
}

function sub_816a68ac(?) payable {
    return sub_816a68ac
}

function isAvaxPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor3[address(arg1)])
}

function owner() payable {
    return owner
}

function sub_9ccc24e7(?) payable {
    return sub_9ccc24e7
}

function weights(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return weights[arg1]
}

function stableToken() payable {
    return stableTokenAddress
}

function distribution(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < distribution.length
    return distribution[arg1]
}

function sub_ba156886(?) payable {
    return sub_ba156886Address
}

function isStableTokenPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function stableTokenSplit() payable {
    return stableTokenSplit
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function isWhitelisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[address(arg1)]:
        return bool(stor3[address(arg1)])
    if stor5[address(arg1)]:
        return bool(stor5[address(arg1)])
    return bool(stor7[address(arg1)])
}

function deactivateFeeSplit() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::deactivateFeeSplit: Fee split not activated'
    stor10 = 0
    avaxSplit = 0
    sub_9ccc24e7 = 0
    stableTokenSplit = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function sub_5ee419ab(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not address(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::setavaxRadiPair: Pool cannot be the zero address'
    sub_46622771Address = address(arg1)
}

function setTreasuryVester(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::setTreasuryVester: Treasury Vester cannot be the zero address'
    treasuryVesterAddress = arg1
}

function setavaxStableTokenPair(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::setavaxStableTokenPair: Pool cannot be the zero address'
    avaxStableTokenPairAddress = arg1
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

function activateFeeSplit(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::activateFeeSplit: Split doesn't add to 100'
    if 100 == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::activateFeeSplit: Split can't be 100/0-0'
    if 100 == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::activateFeeSplit: Split can't be 100/0-0'
    if 100 == arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::activateFeeSplit: Split can't be 100/0-0'
    stor10 = 1
    avaxSplit = arg1
    sub_9ccc24e7 = arg2
    stableTokenSplit = arg3
}

function vestAllocation() payable {
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_816a68ac:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::vestAllocation: Old RADI is unallocated. Call distributeTokens().'
    require ext_code.size(treasuryVesterAddress)
    call treasuryVesterAddress.claim() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    sub_816a68ac = ext_call.return_data[0]
    if not ext_call.return_data[0]:
        revert with 0, 'LPM::vestAllocation: No RADI to claim. Try again tomorrow.'
    require ext_code.size(sub_ba156886Address)
    staticcall sub_ba156886Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_816a68ac:
        revert with 0, 'LPM::vestAllocation: Insufficient RADI transferred'
    sub_816a68ac = ext_call.return_data[0]
    stor1 = 1
}

function addWhitelistedPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor21:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::addWhitelistedPool: Cannot add pool between calculating and distributing returns'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::addWhitelistedPool: Pool cannot be the zero address'
    if stor3[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::addWhitelistedPool: Pool already whitelisted'
    if stor5[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::addWhitelistedPool: Pool already whitelisted'
    if stor7[address(arg1)]:
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
    staticcall arg1.0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if address(ext_call.return_data[0]) == ext_call.return_data[12 len 20]:
        revert with 0, 'LPM::addWhitelistedPool: Tokens cannot be identical'
    create contract with 0 wei
                    code: code.data[11698 len 5861], sub_ba156886Address, arg1
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    stakes[address(arg1)] = address(create.new_address)
    weights[address(arg1)] = arg2
    if address(ext_call.return_data[0]) == sub_ba156886Address:
        if stor5[address(arg1)]:
            revert with 0, 'LPM::addWhitelistedPool: Pair add failed'
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
    else:
        if sub_ba156886Address == address(ext_call.return_data[0]):
            if stor5[address(arg1)]:
                revert with 0, 'LPM::addWhitelistedPool: Pair add failed'
            stor4.length++
            stor4[stor4.length].field_0 = arg1
            stor4[stor4.length].field_160 = 0
            stor5[address(arg1)] = stor4.length
        else:
            if wavaxAddress == address(ext_call.return_data[0]):
                if stor3[address(arg1)]:
                    revert with 0, 'LPM::addWhitelistedPool: Pair add failed'
                stor2.length++
                stor2[stor2.length].field_0 = arg1
                stor2[stor2.length].field_160 = 0
                stor3[address(arg1)] = stor2.length
            else:
                if wavaxAddress == address(ext_call.return_data[0]):
                    if stor3[address(arg1)]:
                        revert with 0, 'LPM::addWhitelistedPool: Pair add failed'
                    stor2.length++
                    stor2[stor2.length].field_0 = arg1
                    stor2[stor2.length].field_160 = 0
                    stor3[address(arg1)] = stor2.length
                else:
                    if stableTokenAddress != address(ext_call.return_data[0]):
                        if stableTokenAddress != address(ext_call.return_data[0]):
                            revert with 0, 'LPM::addWhitelistedPool: No AVAX, RADI or STABLETOKEN in the pair'
                    if stor7[address(arg1)]:
                        revert with 0, 'LPM::addWhitelistedPool: Pair add failed'
                    stor6.length++
                    stor6[stor6.length].field_0 = arg1
                    stor6[stor6.length].field_160 = 0
                    stor7[address(arg1)] = stor6.length
    if numPools > -2:
        revert with 0, 17
    numPools++
}

function distributeTokensSinglePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor21:
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
            require ext_code.size(sub_ba156886Address)
            call sub_ba156886Address.0xa9059cbb with:
                 gas gas_remaining wei
                args stakes[stor2[arg1].field_0], distribution[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'LPM::distributeTokens: Transfer failed'
            require ext_code.size(stakes[stor2[arg1].field_0])
            call stakes[stor2[arg1].field_0].notifyRewardAmount(uint256 arg1) with:
                 gas gas_remaining wei
                args distribution[arg1]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if stor2.length > !stor4.length:
            revert with 0, 17
        if arg1 < stor2.length:
            revert with 0, 17
        if arg1 < stor2.length + stor4.length:
            if arg1 - stor2.length >= stor4.length:
                revert with 0, 50
            if arg1 >= distribution.length:
                revert with 0, 50
            if distribution[arg1] > 0:
                if arg1 >= distribution.length:
                    revert with 0, 50
                distribution[arg1] = 0
                require ext_code.size(sub_ba156886Address)
                call sub_ba156886Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args stakes[stor[('name', 'stor4', 4) + arg1 - stor2.length].field_0], distribution[arg1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'LPM::distributeTokens: Transfer failed'
                require ext_code.size(stakes[stor[('name', 'stor4', 4) + arg1 - stor2.length].field_0])
                call stakes[stor[('name', 'stor4', 4) + arg1 - stor2.length].field_0].notifyRewardAmount(uint256 arg1) with:
                     gas gas_remaining wei
                    args distribution[arg1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if arg1 - stor2.length < stor4.length:
                revert with 0, 17
            if arg1 - stor2.length - stor4.length >= stor6.length:
                revert with 0, 50
            if arg1 >= distribution.length:
                revert with 0, 50
            if distribution[arg1] > 0:
                if arg1 >= distribution.length:
                    revert with 0, 50
                distribution[arg1] = 0
                require ext_code.size(sub_ba156886Address)
                call sub_ba156886Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args stakes[stor[('name', 'stor6', 6) + arg1 - stor2.length - stor4.length].field_0], distribution[arg1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                if not ext_call.return_data[0]:
                    revert with 0, 'LPM::distributeTokens: Transfer failed'
                require ext_code.size(stakes[stor[('name', 'stor6', 6) + arg1 - stor2.length - stor4.length].field_0])
                call stakes[stor[('name', 'stor6', 6) + arg1 - stor2.length - stor4.length].field_0].notifyRewardAmount(uint256 arg1) with:
                     gas gas_remaining wei
                    args distribution[arg1]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    stor1 = 1
}

function distributeTokens() payable {
    mem[64] = 96
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if not stor21:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::distributeTokens: Previous returns not allocated. Call calculateReturns()'
    stor21 = 0
    idx = 0
    s = 0
    s = 0
    while idx < distribution.length:
        if idx < stor2.length:
            mem[32] = 8
            if idx >= distribution.length:
                revert with 0, 50
            mem[0] = 22
            if distribution[idx] > 0:
                mem[mem[64] + 4] = stakes[stor2[idx].field_0]
                mem[mem[64] + 36] = distribution[idx]
                require ext_code.size(sub_ba156886Address)
                call sub_ba156886Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args stakes[stor2[idx].field_0], distribution[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _43 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_43] == bool(mem[_43])
                if not mem[_43]:
                    revert with 0, 'LPM::distributeTokens: Transfer failed'
                mem[mem[64]] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = distribution[idx]
                require ext_code.size(stakes[stor2[idx].field_0])
                call stakes[stor2[idx].field_0].notifyRewardAmount(uint256 arg1) with:
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
        if stor4.length > !stor2.length:
            revert with 0, 17
        if idx < stor2.length:
            revert with 0, 17
        if idx < stor4.length + stor2.length:
            if idx - stor2.length >= stor4.length:
                revert with 0, 50
            mem[32] = 8
            if idx >= distribution.length:
                revert with 0, 50
            mem[0] = 22
            if distribution[idx] > 0:
                mem[mem[64] + 4] = stakes[stor[('name', 'stor4', 4) + idx - stor2.length].field_0]
                mem[mem[64] + 36] = distribution[idx]
                require ext_code.size(sub_ba156886Address)
                call sub_ba156886Address.0xa9059cbb with:
                     gas gas_remaining wei
                    args stakes[stor[('name', 'stor4', 4) + idx - stor2.length].field_0], distribution[idx]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _55 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_55] == bool(mem[_55])
                if not mem[_55]:
                    revert with 0, 'LPM::distributeTokens: Transfer failed'
                mem[mem[64]] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = distribution[idx]
                require ext_code.size(stakes[stor[('name', 'stor4', 4) + idx - stor2.length].field_0])
                call stakes[stor[('name', 'stor4', 4) + idx - stor2.length].field_0].notifyRewardAmount(uint256 arg1) with:
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
        if idx - stor2.length < stor4.length:
            revert with 0, 17
        if idx - stor2.length - stor4.length >= stor6.length:
            revert with 0, 50
        mem[32] = 8
        if idx >= distribution.length:
            revert with 0, 50
        mem[0] = 22
        if distribution[idx] > 0:
            mem[mem[64] + 4] = stakes[stor[('name', 'stor6', 6) + idx - stor2.length - stor4.length].field_0]
            mem[mem[64] + 36] = distribution[idx]
            require ext_code.size(sub_ba156886Address)
            call sub_ba156886Address.0xa9059cbb with:
                 gas gas_remaining wei
                args stakes[stor[('name', 'stor6', 6) + idx - stor2.length - stor4.length].field_0], distribution[idx]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _64 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_64] == bool(mem[_64])
            if not mem[_64]:
                revert with 0, 'LPM::distributeTokens: Transfer failed'
            mem[mem[64]] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = distribution[idx]
            require ext_code.size(stakes[stor[('name', 'stor6', 6) + idx - stor2.length - stor4.length].field_0])
            call stakes[stor[('name', 'stor6', 6) + idx - stor2.length - stor4.length].field_0].notifyRewardAmount(uint256 arg1) with:
                 gas gas_remaining wei
                args distribution[idx]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = distribution[idx]
        s = stakes[stor[('name', 'stor6', 6) + idx - stor2.length - stor4.length].field_0]
        continue 
    sub_816a68ac = 0
    stor1 = 1
}

function removeWhitelistedPool(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor21:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'LPM::removeWhitelistedPool: Cannot remove pool between calculating and distributing returns'
    if not stor3[address(arg1)]:
        if not stor5[address(arg1)]:
            if not stor7[address(arg1)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'LPM::removeWhitelistedPool: Pool not whitelisted'
    require ext_code.size(arg1)
    staticcall arg1.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.0xd21220a7 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    stakes[address(arg1)] = 0
    weights[address(arg1)] = 0
    if sub_ba156886Address == address(ext_call.return_data[0]):
        if not stor5[address(arg1)]:
            revert with 0, 'LPM::removeWhitelistedPool: Pair remove failed'
        if stor5[address(arg1)] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 != stor5[address(arg1)] - 1:
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
        if sub_ba156886Address == ext_call.return_data[12 len 20]:
            if not stor5[address(arg1)]:
                revert with 0, 'LPM::removeWhitelistedPool: Pair remove failed'
            if stor5[address(arg1)] < 1:
                revert with 0, 17
            if stor4.length < 1:
                revert with 0, 17
            if stor4.length - 1 != stor5[address(arg1)] - 1:
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
            if wavaxAddress == address(ext_call.return_data[0]):
                if not stor3[address(arg1)]:
                    revert with 0, 'LPM::removeWhitelistedPool: Pair remove failed'
                if stor3[address(arg1)] < 1:
                    revert with 0, 17
                if stor2.length < 1:
                    revert with 0, 17
                if stor2.length - 1 != stor3[address(arg1)] - 1:
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
                if wavaxAddress == ext_call.return_data[12 len 20]:
                    if not stor3[address(arg1)]:
                        revert with 0, 'LPM::removeWhitelistedPool: Pair remove failed'
                    if stor3[address(arg1)] < 1:
                        revert with 0, 17
                    if stor2.length < 1:
                        revert with 0, 17
                    if stor2.length - 1 != stor3[address(arg1)] - 1:
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
                    if stableTokenAddress != address(ext_call.return_data[0]):
                        if stableTokenAddress != ext_call.return_data[12 len 20]:
                            revert with 0, 'LPM::removeWhitelistedPool: No AVAX, RADI or STABLETOKEN in the pair'
                    if not stor7[address(arg1)]:
                        revert with 0, 'LPM::removeWhitelistedPool: Pair remove failed'
                    if stor7[address(arg1)] < 1:
                        revert with 0, 17
                    if stor6.length < 1:
                        revert with 0, 17
                    if stor6.length - 1 != stor7[address(arg1)] - 1:
                        if stor6.length - 1 >= stor6.length:
                            revert with 0, 50
                        if stor7[address(arg1)] - 1 >= stor6.length:
                            revert with 0, 50
                        stor6[stor7[address(arg1)]].field_0 = stor6[stor6.length].field_0
                        stor7[stor6[stor6.length].field_0] = stor7[address(arg1)]
                    if not stor6.length:
                        revert with 0, 49
                    stor6[stor6.length].field_0 = 0
                    stor6.length--
                    stor7[address(arg1)] = 0
    if numPools < 1:
        revert with 0, 17
    numPools--
}



}
