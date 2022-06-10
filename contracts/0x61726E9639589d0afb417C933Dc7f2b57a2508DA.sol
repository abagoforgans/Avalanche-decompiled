contract main {




// =====================  Runtime code  =====================


#
#  - transferToken(address arg1, uint256 arg2)
#  - harvestAndSwap(address arg1)
#  - removeSwapToken(address arg1)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
mapping of uint8 stor51;
array of address stor52;
mapping of struct stor53;
array of address stor54;
uint8 rebasePaused; offset 160
uint8 capitalPaused; offset 168
address priceProviderAddress;
uint256 redeemFeeBps;
uint256 vaultBuffer;
uint256 autoAllocateThreshold;
uint256 rebaseThreshold;
address stor60;
uint32 stor62;
address uniswapAddr;
uint256 stor62;
address strategistAddr;
mapping of address assetDefaultStrategies;
uint256 maxSupplyDiff;
address trusteeAddress;
uint256 trusteeFeeBps;
array of address swapTokens;
uint256 stor1046;
address stor1973;
uint256 stor1973;
array of address stor31997345449574252472561286867836691613551392380036115619611668045310140188353;
array of address stor33502907836418749244169045844382937189522934634747984393157770024170991419832;
array of address stor70170026371186225187721859782387726241440662048249175055860679507506066699754;
address governorAddress;
uint256 storFEFE;

function redeemFeeBps() payable {
    return redeemFeeBps
}

function governor() payable {
    return address(governorAddress)
}

function uniswapAddr() payable {
    return address(uniswapAddr)
}

function vaultBuffer() payable {
    return vaultBuffer
}

function trusteeFeeBps() payable {
    return trusteeFeeBps
}

function trusteeAddress() payable {
    return trusteeAddress
}

function rebaseThreshold() payable {
    return rebaseThreshold
}

function rebasePaused() payable {
    return bool(rebasePaused)
}

function strategistAddr() payable {
    return strategistAddr
}

function maxSupplyDiff() payable {
    return maxSupplyDiff
}

function autoAllocateThreshold() payable {
    return autoAllocateThreshold
}

function assetDefaultStrategies(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return assetDefaultStrategies[arg1]
}

function priceProvider() payable {
    return priceProviderAddress
}

function capitalPaused() payable {
    return bool(capitalPaused)
}

function swapTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < swapTokens.length
    return swapTokens[arg1]
}

function _fallback() payable {
    revert
}

function isGovernor() payable {
    return (msg.sender == address(governorAddress))
}

function unpauseRebase() payable {
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    rebasePaused = 0
    emit RebaseUnpaused()
}

function setRedeemFeeBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    redeemFeeBps = arg1
    emit RedeemFeeUpdated(arg1);
}

function setMaxSupplyDiff(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    maxSupplyDiff = arg1
    emit MaxSupplyDiffChanged(arg1);
}

function setRebaseThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    rebaseThreshold = arg1
    emit RebaseThresholdUpdated(arg1);
}

function setAutoAllocateThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    autoAllocateThreshold = arg1
    emit AllocateThresholdUpdated(arg1);
}

function setStrategistAddr(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    strategistAddr = arg1
    emit StrategistUpdated(arg1);
}

function setTrusteeAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    trusteeAddress = arg1
    emit TrusteeAddressChanged(arg1);
}

function setPriceProvider(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    priceProviderAddress = arg1
    emit PriceProviderUpdated(arg1);
}

function pauseRebase() payable {
    if strategistAddr != msg.sender:
        if address(governorAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Strategist or Governor'
    rebasePaused = 1
    emit RebasePaused()
}

function pauseCapital() payable {
    if strategistAddr != msg.sender:
        if address(governorAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Strategist or Governor'
    capitalPaused = 1
    emit CapitalPaused()
}

function unpauseCapital() payable {
    if strategistAddr != msg.sender:
        if address(governorAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Strategist or Governor'
    capitalPaused = 0
    emit CapitalUnpaused()
}

function transferGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    uint256(stor1973) = arg1
    emit PendingGovernorshipTransfer(address(governorAddress), arg1);
}

function setTrusteeFeeBps(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if arg1 > 5000:
        revert with 0, 'basis cannot exceed 50%'
    trusteeFeeBps = arg1
    emit TrusteeFeeBpsChanged(arg1);
}

function setAdminImpl(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'new implementation is not a contract'
    stor1046 = arg1
}

function claimGovernance() payable {
    if address(stor1973) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the pending Governor can complete the claim'
    if not msg.sender:
        revert with 0, 'New Governor is address(0)'
    emit GovernorshipTransferred(address(governorAddress), msg.sender);
    uint256(storFEFE) = msg.sender
}

function setVaultBuffer(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if strategistAddr != msg.sender:
        if address(governorAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Strategist or Governor'
    if arg1 > 10^18:
        revert with 0, 'Invalid value'
    vaultBuffer = arg1
    emit VaultBufferUpdated(arg1);
}

function approveStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if stor53[address(arg1)].field_0:
        revert with 0, 'Strategy already approved'
    stor53[address(arg1)].field_0 = 1
    stor53[address(arg1)].field_256 = 0
    stor54.length++
    stor4A11[stor54.length] = arg1
    emit StrategyApproved(arg1);
}

function priceUSDMint(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(priceProviderAddress)
    staticcall priceProviderAddress.0xaea91078 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > 100 * 10^6:
        return 10^18
    if ext_call.return_data[0] and 10^10 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (10^10 * ext_call.return_data[0])
}

function priceUSDRedeem(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(priceProviderAddress)
    staticcall priceProviderAddress.0xaea91078 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < 100 * 10^6:
        return 10^18
    if ext_call.return_data[0] and 10^10 > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (10^10 * ext_call.return_data[0])
}

function withdrawAllFromStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if strategistAddr != msg.sender:
        if address(governorAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Strategist or Governor'
    if not stor53[address(arg1)].field_0:
        revert with 0, 'Strategy is not supported'
    require ext_code.size(arg1)
    call arg1.withdrawAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function supportAsset(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if stor51[address(arg1)]:
        revert with 0, 'Asset already supported'
    stor51[address(arg1)] = 1
    stor52.length++
    stor46BD[stor52.length] = arg1
    require ext_code.size(priceProviderAddress)
    staticcall priceProviderAddress.0xaea91078 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit AssetSupported(arg1);
}

function withdrawAllFromStrategies() payable {
    if strategistAddr != msg.sender:
        if address(governorAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Strategist or Governor'
    idx = 0
    while idx < stor54.length:
        mem[0] = 54
        mem[96] = 0x853828b600000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor54[idx])
        call stor54[idx].withdrawAll() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function initialize(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if not uint8(stor0.field_8):
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if not uint8(stor0.field_8):
            uint16(stor0.field_0) = 257
    if not arg1:
        revert with 0, 'PriceProvider address is zero'
    if not arg2:
        revert with 0, 'xUSD address is zero'
    stor60 = arg2
    priceProviderAddress = arg1
    rebasePaused = 0
    capitalPaused = 1
    redeemFeeBps = 0
    vaultBuffer = 0
    autoAllocateThreshold = 25000 * 10^18
    rebaseThreshold = 1000 * 10^18
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function harvest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if msg.sender != this.address:
        if strategistAddr != msg.sender:
            if address(governorAddress) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Vault, Governor, or Strategist'
    require ext_code.size(arg1)
    staticcall arg1.rewardTokenAddress() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20]:
        require ext_code.size(arg1)
        call arg1.collectRewardToken() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function setAssetDefaultStrategy(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if strategistAddr != msg.sender:
        if address(governorAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Strategist or Governor'
    emit AssetDefaultStrategyUpdated(address(arg1), arg2);
    if arg2:
        if not stor53[address(arg2)].field_0:
            revert with 0, 'Strategy not approved'
        if not stor51[address(arg1)]:
            revert with 0, 'Asset is not supported'
        require ext_code.size(arg2)
        staticcall arg2.supportsAsset(address arg1) with:
                gas gas_remaining wei
               args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'Asset not supported by Strategy'
    assetDefaultStrategies[address(arg1)] = arg2
}

function harvest() payable {
    mem[64] = 96
    if msg.sender == strategistAddr:
        idx = 0
        while idx < stor54.length:
            mem[0] = 54
            require ext_code.size(stor54[idx])
            staticcall stor54[idx].rewardTokenAddress() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _25 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_25] == mem[_25 + 12 len 20]
            if mem[_25 + 12 len 20]:
                mem[mem[64]] = 0x242241d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor54[idx])
                call stor54[idx].collectRewardToken() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if address(governorAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Strategist or Governor'
        idx = 0
        while idx < stor54.length:
            mem[0] = 54
            require ext_code.size(stor54[idx])
            staticcall stor54[idx].rewardTokenAddress() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _26 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_26] == mem[_26 + 12 len 20]
            if mem[_26 + 12 len 20]:
                mem[mem[64]] = 0x242241d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor54[idx])
                call stor54[idx].collectRewardToken() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}

function removeStrategy(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if not stor53[address(arg1)].field_0:
        revert with 0, 'Strategy not approved'
    idx = 0
    while idx < stor52.length:
        mem[0] = stor52[idx].field_0
        mem[32] = 64
        if assetDefaultStrategies[stor52[idx].field_0] == arg1:
            revert with 0, 'Strategy is default for an asset'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    while idx < stor54.length:
        mem[0] = 54
        if stor54[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx < stor54.length:
            if stor54.length < 1:
                revert with 0, 17
            if stor54.length - 1 >= stor54.length:
                revert with 0, 50
            if idx >= stor54.length:
                revert with 0, 50
            stor54[idx] = stor54[stor54.length]
            if not stor54.length:
                revert with 0, 49
            stor54[stor54.length] = 0
            stor54.length--
            stor53[address(arg1)].field_0 = 0
            require ext_code.size(arg1)
            call arg1.withdrawAll() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require ext_code.size(arg1)
            staticcall arg1.rewardTokenAddress() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            if ext_call.return_data[12 len 20]:
                require ext_code.size(arg1)
                call arg1.collectRewardToken() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            emit StrategyRemoved(arg1);
    if stor54.length < stor54.length:
        if stor54.length < 1:
            revert with 0, 17
        if stor54.length - 1 >= stor54.length:
            revert with 0, 50
        if stor54.length >= stor54.length:
            revert with 0, 50
        stor54[stor54.length] = stor54[stor54.length]
        if not stor54.length:
            revert with 0, 49
        stor54[stor54.length] = 0
        stor54.length--
        stor53[address(arg1)].field_0 = 0
        require ext_code.size(arg1)
        call arg1.withdrawAll() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(arg1)
        staticcall arg1.rewardTokenAddress() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20]:
            require ext_code.size(arg1)
            call arg1.collectRewardToken() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit StrategyRemoved(arg1);
}

function reallocate(address arg1, address arg2, address[] arg3, uint256[] arg4) payable {
    mem[64] = 96
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    if msg.sender == strategistAddr:
        if not stor53[address(arg1)].field_0:
            revert with 0, 'Invalid from Strategy'
        mem[0] = arg2
        mem[32] = 53
        if not stor53[address(arg2)].field_0:
            revert with 0, 'Invalid to Strategy'
        if arg4.length != arg3.length:
            revert with 0, 'Parameter length mismatch'
        idx = 0
        while idx < arg3.length:
            require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg3 + 36)])
            require ext_code.size(arg2)
            staticcall arg2.supportsAsset(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg3 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _49 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_49] == bool(mem[_49])
            if not mem[_49]:
                revert with 0, 'Asset unsupported'
            if idx >= arg3.length:
                revert with 0, 50
            require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
            if idx >= arg4.length:
                revert with 0, 50
            mem[mem[64]] = 0xd9caed1200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg3 + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + arg4 + 36)]
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg2), address(cd[((32 * idx) + arg3 + 36)]), cd[((32 * idx) + arg4 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if address(governorAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Strategist or Governor'
        if not stor53[address(arg1)].field_0:
            revert with 0, 'Invalid from Strategy'
        mem[0] = arg2
        mem[32] = 53
        if not stor53[address(arg2)].field_0:
            revert with 0, 'Invalid to Strategy'
        if arg4.length != arg3.length:
            revert with 0, 'Parameter length mismatch'
        idx = 0
        while idx < arg3.length:
            require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
            mem[mem[64] + 4] = address(cd[((32 * idx) + arg3 + 36)])
            require ext_code.size(arg2)
            staticcall arg2.supportsAsset(address arg1) with:
                    gas gas_remaining wei
                   args address(cd[((32 * idx) + arg3 + 36)])
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _50 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_50] == bool(mem[_50])
            if not mem[_50]:
                revert with 0, 'Asset unsupported'
            if idx >= arg3.length:
                revert with 0, 50
            require cd[((32 * idx) + arg3 + 36)] == address(cd[((32 * idx) + arg3 + 36)])
            if idx >= arg4.length:
                revert with 0, 50
            mem[mem[64]] = 0xd9caed1200000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = arg2
            mem[mem[64] + 36] = address(cd[((32 * idx) + arg3 + 36)])
            mem[mem[64] + 68] = cd[((32 * idx) + arg4 + 36)]
            require ext_code.size(arg1)
            call arg1.withdraw(address arg1, address arg2, uint256 arg3) with:
                 gas gas_remaining wei
                args address(arg2), address(cd[((32 * idx) + arg3 + 36)]), cd[((32 * idx) + arg4 + 36)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    require ext_code.size(arg2)
    call arg2.depositAll() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setUniswapAddr(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    idx = 0
    while idx < swapTokens.length:
        mem[0] = 68
        _75 = mem[64]
        mem[mem[64] + 36] = address(uniswapAddr)
        mem[mem[64] + 68] = 0
        _78 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_78 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_78 + 36 len 28]
        mem[64] = _75 + 164
        mem[_75 + 100] = 32
        mem[_75 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(swapTokens[idx]):
            revert with 0, 'Address: call to non-contract'
        _87 = mem[_78]
        s = 0
        while s < _87:
            mem[s + _75 + 164] = mem[s + _78 + 32]
            s = s + 32
            continue 
        if ceil32(_87) > _87:
            mem[_75 + _87 + 164] = 0
        call swapTokens[idx].mem[_75 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_75 + 168 len _87 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_75 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_75 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _75 + 232] = mem[idx + _75 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_75 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = _75 + ceil32(return_data.size) + 165
            mem[_75 + 164] = return_data.size
            mem[_75 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_75 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_75 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _75 + ceil32(return_data.size) + 233] = mem[idx + _75 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_75 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_75 + 196] == bool(mem[_75 + 196])
                if not mem[_75 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    address(uniswapAddr) = arg1
    s = 0
    while s < swapTokens.length:
        mem[0] = 68
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = address(uniswapAddr)
        require ext_code.size(swapTokens[s])
        staticcall swapTokens[s].0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(uniswapAddr)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _216 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_216]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        _233 = mem[64]
        mem[mem[64] + 36] = address(uniswapAddr)
        mem[mem[64] + 68] = -1
        _237 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_237 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_237 + 36 len 28]
        mem[64] = _233 + 164
        mem[_233 + 100] = 32
        mem[_233 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(swapTokens[s]):
            revert with 0, 'Address: call to non-contract'
        _267 = mem[_237]
        t = 0
        while t < _267:
            mem[t + _233 + 164] = mem[t + _237 + 32]
            t = t + 32
            continue 
        if ceil32(_267) <= _267:
            call swapTokens[s].mem[_233 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_233 + 168 len _267 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_233 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_233 + 168] = 32
                    s = 0
                    while s < 32:
                        mem[s + _233 + 232] = mem[s + _233 + 132]
                        s = s + 32
                        continue 
                    revert with 0, 32, 32, mem[_233 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _233 + ceil32(return_data.size) + 165
                mem[_233 + 164] = return_data.size
                mem[_233 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_233 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_233 + ceil32(return_data.size) + 169] = 32
                    s = 0
                    while s < 32:
                        mem[s + _233 + ceil32(return_data.size) + 233] = mem[s + _233 + 132]
                        s = s + 32
                        continue 
                    revert with 0, 32, 32, mem[_233 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_233 + 196] == bool(mem[_233 + 196])
                    if not mem[_233 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[_233 + _267 + 164] = 0
            call swapTokens[s].mem[_233 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_233 + 168 len _267 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_233 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_233 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _233 + 232] = mem[idx + _233 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_233 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _233 + ceil32(return_data.size) + 165
                mem[_233 + 164] = return_data.size
                mem[_233 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_233 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_233 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _233 + ceil32(return_data.size) + 233] = mem[idx + _233 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_233 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_233 + 196] == bool(mem[_233 + 196])
                    if not mem[_233 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if s == -1:
            revert with 0, 17
        s = s + 1
        continue 
    emit UniswapUpdated(arg1);
}

function addSwapToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    idx = 0
    while idx < swapTokens.length:
        mem[0] = 68
        if swapTokens[idx] == arg1:
            revert with 0, 'Swap token already added'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[100] = arg1
    require ext_code.size(priceProviderAddress)
    staticcall priceProviderAddress.0xaea91078 with:
            gas gas_remaining wei
           args arg1
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    swapTokens.length++
    stor9B22[stor68.length] = arg1
    if not address(uniswapAddr):
        emit SwapTokenAdded(arg1);
    mem[ceil32(return_data.size) + 132] = address(uniswapAddr)
    mem[ceil32(return_data.size) + 164] = 0
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 0, stor62)
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = approve(address arg1, uint256 arg2), Mask(224, 0, stor62), uint32(stor62), 0, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, approve(address arg1, uint256 arg2), Mask(224, 0, stor62), uint32(stor62), 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, approve(address arg1, uint256 arg2), Mask(224, 0, stor62), uint32(stor62), 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 264] = this.address
        mem[ceil32(return_data.size) + 296] = address(uniswapAddr)
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(uniswapAddr)
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 296] = address(uniswapAddr)
        mem[(2 * ceil32(return_data.size)) + 328] = -1
        mem[(2 * ceil32(return_data.size)) + 260] = 68
        mem[(2 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 360] = 32
        mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(uniswapAddr), -1, 0
        mem[(2 * ceil32(return_data.size)) + 492] = 0
        call arg1 with:
           funct Mask(32, 224, 0, address(uniswapAddr), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(uniswapAddr), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require 0, mem[132 len 28] == bool(0, mem[132 len 28])
                if not 0, mem[132 len 28]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(2 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(2 * ceil32(return_data.size)) + 456] == bool(mem[(2 * ceil32(return_data.size)) + 456])
                if not mem[(2 * ceil32(return_data.size)) + 456]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit SwapTokenAdded(arg1);
    mem[ceil32(return_data.size) + 260] = return_data.size
    mem[ceil32(return_data.size) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[ceil32(return_data.size) + 292] == bool(mem[ceil32(return_data.size) + 292])
        if not mem[ceil32(return_data.size) + 292]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 265] = this.address
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(uniswapAddr)
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(uniswapAddr)
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(uniswapAddr)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(uniswapAddr), -1, 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call arg1 with:
       funct Mask(32, 224, 0, address(uniswapAddr), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(uniswapAddr), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require 0, mem[132 len 28] == bool(0, mem[132 len 28])
            if not 0, mem[132 len 28]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit SwapTokenAdded(arg1);
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(4 * ceil32(return_data.size)) + 430] = 32
        mem[(4 * ceil32(return_data.size)) + 462] = 32
        mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
        revert with memory
          from (4 * ceil32(return_data.size)) + 426
           len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        emit SwapTokenAdded(arg1);
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
        emit SwapTokenAdded(arg1);
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function swap() payable {
    mem[64] = 96
    if this.address == msg.sender:
        idx = 0
        while idx < swapTokens.length:
            mem[0] = 68
            if address(uniswapAddr):
                mem[mem[64] + 4] = this.address
                require ext_code.size(swapTokens[idx])
                staticcall swapTokens[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _443 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _446 = mem[_443]
                if mem[_443]:
                    mem[mem[64] + 4] = swapTokens[idx]
                    require ext_code.size(priceProviderAddress)
                    staticcall priceProviderAddress.0xaea91078 with:
                            gas gas_remaining wei
                           args swapTokens[idx]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _455 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _458 = mem[_455]
                    require ext_code.size(swapTokens[idx])
                    staticcall swapTokens[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _467 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _470 = mem[_467]
                    require mem[_467] == mem[_467 + 31 len 1]
                    if mem[_467 + 31 len 1] < 4:
                        revert with 0, 'Token must have sufficient decimal places'
                    if mem[_467 + 31 len 1] > 18:
                        revert with 0, 'Token must have sufficient decimal places'
                    if 8 > !mem[_467 + 31 len 1]:
                        revert with 0, 17
                    if _446 and _458 > -1 / _446:
                        revert with 0, 17
                    if _446 * _458 > 0x2a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3:
                        revert with 0, 17
                    if 6 > mem[_467 + 31 len 1] + 8:
                        if 6 < mem[_467 + 31 len 1] + 8:
                            revert with 0, 17
                        if not -mem[_467 + 31 len 1] - 2:
                            if 97 * _446 * _458 / 100 and 1 > -1 / 97 * _446 * _458 / 100:
                                revert with 0, 17
                            _519 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_519 + 32 len 96] = call.data[calldata.size len 96]
                            if 0 >= mem[_519]:
                                revert with 0, 50
                            mem[_519 + 32] = swapTokens[idx]
                            require ext_code.size(address(uniswapAddr))
                            staticcall address(uniswapAddr).WETH() with:
                                    gas gas_remaining wei
                            mem[_519 + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _519 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_519]:
                                revert with 0, 50
                            mem[_519 + 64] = ext_call.return_data[12 len 20]
                            if 1 >= stor52.length:
                                revert with 0, 50
                            mem[0] = 52
                            if 2 >= mem[_519]:
                                revert with 0, 50
                            mem[_519 + 96] = address(stor52.field_256)
                            mem[_519 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_519 + ceil32(return_data.size) + 132] = _446
                            mem[_519 + ceil32(return_data.size) + 164] = 97 * _446 * _458 / 100
                            mem[_519 + ceil32(return_data.size) + 196] = 160
                            mem[_519 + ceil32(return_data.size) + 292] = mem[_519]
                            s = 0
                            t = _519 + ceil32(return_data.size) + 324
                            u = _519 + 32
                            while s < mem[_519]:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_519 + ceil32(return_data.size) + 228] = this.address
                            mem[_519 + ceil32(return_data.size) + 260] = block.timestamp
                            require ext_code.size(address(uniswapAddr))
                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _519 + ceil32(return_data.size) + (32 * mem[_519]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _897 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _912 = mem[_897]
                            require mem[_897] <= test266151307()
                            require _897 + mem[_897] + 31 < _897 + return_data.size
                            _927 = mem[_897 + mem[_897]]
                            if mem[_897 + mem[_897]] > test266151307():
                                revert with 0, 65
                            if _897 + ceil32(return_data.size) + ceil32(32 * mem[_897 + mem[_897]]) + 1 > test266151307() or ceil32(32 * mem[_897 + mem[_897]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _897 + ceil32(return_data.size) + ceil32(32 * mem[_897 + mem[_897]]) + 1
                            mem[_897 + ceil32(return_data.size)] = _927
                            require return_data.size >= _912 + (32 * _927) + 32
                            t = _897 + _912 + 32
                            u = _897 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _927:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                        else:
                            if bool(bool(-mem[_467 + 31 len 1] - 2 < 78)) or bool(bool(-mem[_467 + 31 len 1] - 2 < 32)):
                                if 97 * _446 * _458 / 100 and 10^(-mem[_467 + 31 len 1] - 2) > -1 / 97 * _446 * _458 / 100:
                                    revert with 0, 17
                                _558 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_558 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_558]:
                                    revert with 0, 50
                                mem[_558 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_558 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _558 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_558]:
                                    revert with 0, 50
                                mem[_558 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_558]:
                                    revert with 0, 50
                                mem[_558 + 96] = address(stor52.field_256)
                                mem[_558 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_558 + ceil32(return_data.size) + 132] = _446
                                mem[_558 + ceil32(return_data.size) + 164] = 97 * _446 * _458 / 100 * 10^(-uint8(_470) - 2)
                                mem[_558 + ceil32(return_data.size) + 196] = 160
                                mem[_558 + ceil32(return_data.size) + 292] = mem[_558]
                                s = 0
                                t = _558 + ceil32(return_data.size) + 324
                                u = _558 + 32
                                while s < mem[_558]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_558 + ceil32(return_data.size) + 228] = this.address
                                mem[_558 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _446, 97 * _446 * _458 / 100 * 10^(-uint8(_470) - 2), 160, address(this.address), block.timestamp, mem[_558 + ceil32(return_data.size) + 292 len (32 * mem[_558]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_558 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _558 + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _911 = mem[_558 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32
                                require mem[_558 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 <= test266151307()
                                require _558 + ceil32(return_data.size) + mem[_558 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 159 < _558 + ceil32(return_data.size) + return_data.size + 128
                                _926 = mem[_558 + ceil32(return_data.size) + mem[_558 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]
                                if mem[_558 + ceil32(return_data.size) + mem[_558 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128] > test266151307():
                                    revert with 0, 65
                                if _558 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_558 + ceil32(return_data.size) + mem[_558 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_558 + ceil32(return_data.size) + mem[_558 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _558 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_558 + ceil32(return_data.size) + mem[_558 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]) + 129
                                mem[_558 + (2 * ceil32(return_data.size)) + 128] = mem[_558 + ceil32(return_data.size) + mem[_558 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]
                                require return_data.size >= _911 + (32 * _926) + 32
                                t = _558 + ceil32(return_data.size) + _911 + 160
                                u = _558 + (2 * ceil32(return_data.size)) + 160
                                s = 0
                                while s < _926:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                t = 10
                                u = 1
                                s = -mem[_467 + 31 len 1] - 2
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if 97 * _446 * _458 / 100 and t * u > -1 / 97 * _446 * _458 / 100:
                                    revert with 0, 17
                                _970 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_970 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_970]:
                                    revert with 0, 50
                                mem[_970 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_970 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _970 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_970]:
                                    revert with 0, 50
                                mem[_970 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_970]:
                                    revert with 0, 50
                                mem[_970 + 96] = address(stor52.field_256)
                                mem[_970 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_970 + ceil32(return_data.size) + 132] = _446
                                mem[_970 + ceil32(return_data.size) + 164] = 97 * _446 * _458 / 100 * t * u
                                mem[_970 + ceil32(return_data.size) + 196] = 160
                                mem[_970 + ceil32(return_data.size) + 292] = mem[_970]
                                s = 0
                                v = _970 + ceil32(return_data.size) + 324
                                w = _970 + 32
                                while s < mem[_970]:
                                    mem[v] = mem[w + 12 len 20]
                                    s = s + 1
                                    v = v + 32
                                    w = w + 32
                                    continue 
                                mem[_970 + ceil32(return_data.size) + 228] = this.address
                                mem[_970 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _446, 97 * _446 * _458 / 100 * t * u, 160, address(this.address), block.timestamp, mem[_970 + ceil32(return_data.size) + 292 len (32 * mem[_970]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_970 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _970 + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _1110 = mem[_970 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32
                                require mem[_970 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 <= test266151307()
                                require _970 + ceil32(return_data.size) + mem[_970 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 159 < _970 + ceil32(return_data.size) + return_data.size + 128
                                _1116 = mem[_970 + ceil32(return_data.size) + mem[_970 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]
                                if mem[_970 + ceil32(return_data.size) + mem[_970 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128] > test266151307():
                                    revert with 0, 65
                                if _970 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_970 + ceil32(return_data.size) + mem[_970 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_970 + ceil32(return_data.size) + mem[_970 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _970 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_970 + ceil32(return_data.size) + mem[_970 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]) + 129
                                mem[_970 + (2 * ceil32(return_data.size)) + 128] = _1116
                                require return_data.size >= _1110 + (32 * _1116) + 32
                                t = _970 + ceil32(return_data.size) + _1110 + 160
                                u = _970 + (2 * ceil32(return_data.size)) + 160
                                s = 0
                                while s < _1116:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                    else:
                        if 6 >= mem[_467 + 31 len 1] + 8:
                            _485 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_485 + 32 len 96] = call.data[calldata.size len 96]
                            if 0 >= mem[_485]:
                                revert with 0, 50
                            mem[_485 + 32] = swapTokens[idx]
                            require ext_code.size(address(uniswapAddr))
                            staticcall address(uniswapAddr).WETH() with:
                                    gas gas_remaining wei
                            mem[_485 + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _485 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_485]:
                                revert with 0, 50
                            mem[_485 + 64] = ext_call.return_data[12 len 20]
                            if 1 >= stor52.length:
                                revert with 0, 50
                            mem[0] = 52
                            if 2 >= mem[_485]:
                                revert with 0, 50
                            mem[_485 + 96] = address(stor52.field_256)
                            mem[_485 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_485 + ceil32(return_data.size) + 132] = _446
                            mem[_485 + ceil32(return_data.size) + 164] = 97 * _446 * _458 / 100
                            mem[_485 + ceil32(return_data.size) + 196] = 160
                            mem[_485 + ceil32(return_data.size) + 292] = mem[_485]
                            s = 0
                            t = _485 + ceil32(return_data.size) + 324
                            u = _485 + 32
                            while s < mem[_485]:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_485 + ceil32(return_data.size) + 228] = this.address
                            mem[_485 + ceil32(return_data.size) + 260] = block.timestamp
                            require ext_code.size(address(uniswapAddr))
                            call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _446, 97 * _446 * _458 / 100, 160, address(this.address), block.timestamp, mem[_485 + ceil32(return_data.size) + 292 len (32 * mem[_485]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_485 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _485 + (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            _908 = mem[_485 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32
                            require mem[_485 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 <= test266151307()
                            require _485 + ceil32(return_data.size) + mem[_485 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 159 < _485 + ceil32(return_data.size) + return_data.size + 128
                            _923 = mem[_485 + ceil32(return_data.size) + mem[_485 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]
                            if mem[_485 + ceil32(return_data.size) + mem[_485 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128] > test266151307():
                                revert with 0, 65
                            if _485 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_485 + ceil32(return_data.size) + mem[_485 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_485 + ceil32(return_data.size) + mem[_485 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _485 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_485 + ceil32(return_data.size) + mem[_485 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]) + 129
                            mem[_485 + (2 * ceil32(return_data.size)) + 128] = mem[_485 + ceil32(return_data.size) + mem[_485 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]
                            require return_data.size >= _908 + (32 * _923) + 32
                            t = _485 + ceil32(return_data.size) + _908 + 160
                            u = _485 + (2 * ceil32(return_data.size)) + 160
                            s = 0
                            while s < _923:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                        else:
                            if mem[_467 + 31 len 1] + 8 < 6:
                                revert with 0, 17
                            if not mem[_467 + 31 len 1] + 2:
                                _528 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_528 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_528]:
                                    revert with 0, 50
                                mem[_528 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_528 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _528 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_528]:
                                    revert with 0, 50
                                mem[_528 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_528]:
                                    revert with 0, 50
                                mem[_528 + 96] = address(stor52.field_256)
                                mem[_528 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_528 + ceil32(return_data.size) + 132] = _446
                                mem[_528 + ceil32(return_data.size) + 164] = 97 * _446 * _458 / 100
                                mem[_528 + ceil32(return_data.size) + 196] = 160
                                mem[_528 + ceil32(return_data.size) + 292] = mem[_528]
                                s = 0
                                t = _528 + ceil32(return_data.size) + 324
                                u = _528 + 32
                                while s < mem[_528]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_528 + ceil32(return_data.size) + 228] = this.address
                                mem[_528 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _446, 97 * _446 * _458 / 100, 160, address(this.address), block.timestamp, mem[_528 + ceil32(return_data.size) + 292 len (32 * mem[_528]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_528 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _528 + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _910 = mem[_528 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32
                                require mem[_528 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 <= test266151307()
                                require _528 + ceil32(return_data.size) + mem[_528 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 159 < _528 + ceil32(return_data.size) + return_data.size + 128
                                _925 = mem[_528 + ceil32(return_data.size) + mem[_528 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]
                                if mem[_528 + ceil32(return_data.size) + mem[_528 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128] > test266151307():
                                    revert with 0, 65
                                if _528 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_528 + ceil32(return_data.size) + mem[_528 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_528 + ceil32(return_data.size) + mem[_528 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _528 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_528 + ceil32(return_data.size) + mem[_528 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]) + 129
                                mem[_528 + (2 * ceil32(return_data.size)) + 128] = mem[_528 + ceil32(return_data.size) + mem[_528 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _446) >> 32 + 128]
                                require return_data.size >= _910 + (32 * _925) + 32
                                t = _528 + ceil32(return_data.size) + _910 + 160
                                u = _528 + (2 * ceil32(return_data.size)) + 160
                                s = 0
                                while s < _925:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                if bool(bool(mem[_467 + 31 len 1] + 2 < 78)) or bool(bool(mem[_467 + 31 len 1] + 2 < 32)):
                                    if not 10^(mem[_467 + 31 len 1] + 2):
                                        revert with 0, 18
                                    _569 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_569 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_569]:
                                        revert with 0, 50
                                    mem[_569 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_569 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _569 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_569]:
                                        revert with 0, 50
                                    mem[_569 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_569]:
                                        revert with 0, 50
                                    mem[_569 + 96] = address(stor52.field_256)
                                    mem[_569 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_569 + ceil32(return_data.size) + 132] = _446
                                    mem[_569 + ceil32(return_data.size) + 164] = 97 * _446 * _458 / 100 / 10^(uint8(_470) + 2)
                                    mem[_569 + ceil32(return_data.size) + 196] = 160
                                    mem[_569 + ceil32(return_data.size) + 292] = mem[_569]
                                    s = 0
                                    t = _569 + ceil32(return_data.size) + 324
                                    u = _569 + 32
                                    while s < mem[_569]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_569 + ceil32(return_data.size) + 228] = this.address
                                    mem[_569 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _569 + ceil32(return_data.size) + (32 * mem[_569]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _894 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _909 = mem[_894]
                                    require mem[_894] <= test266151307()
                                    require _894 + mem[_894] + 31 < _894 + return_data.size
                                    _924 = mem[_894 + mem[_894]]
                                    if mem[_894 + mem[_894]] > test266151307():
                                        revert with 0, 65
                                    if _894 + ceil32(return_data.size) + ceil32(32 * mem[_894 + mem[_894]]) + 1 > test266151307() or ceil32(32 * mem[_894 + mem[_894]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _894 + ceil32(return_data.size) + ceil32(32 * mem[_894 + mem[_894]]) + 1
                                    mem[_894 + ceil32(return_data.size)] = _924
                                    require return_data.size >= _909 + (32 * _924) + 32
                                    t = _894 + _909 + 32
                                    u = _894 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _924:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    t = 10
                                    u = 1
                                    s = mem[_467 + 31 len 1] + 2
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if not t * u:
                                        revert with 0, 18
                                    _968 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_968 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_968]:
                                        revert with 0, 50
                                    mem[_968 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_968 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _968 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_968]:
                                        revert with 0, 50
                                    mem[_968 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_968]:
                                        revert with 0, 50
                                    mem[_968 + 96] = address(stor52.field_256)
                                    mem[_968 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_968 + ceil32(return_data.size) + 132] = _446
                                    mem[_968 + ceil32(return_data.size) + 164] = 97 * _446 * _458 / 100 / t * u
                                    mem[_968 + ceil32(return_data.size) + 196] = 160
                                    mem[_968 + ceil32(return_data.size) + 292] = mem[_968]
                                    s = 0
                                    t = _968 + ceil32(return_data.size) + 324
                                    u = _968 + 32
                                    while s < mem[_968]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_968 + ceil32(return_data.size) + 228] = this.address
                                    mem[_968 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _968 + ceil32(return_data.size) + (32 * mem[_968]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1103 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1109 = mem[_1103]
                                    require mem[_1103] <= test266151307()
                                    require _1103 + mem[_1103] + 31 < _1103 + return_data.size
                                    _1115 = mem[_1103 + mem[_1103]]
                                    if mem[_1103 + mem[_1103]] > test266151307():
                                        revert with 0, 65
                                    if _1103 + ceil32(return_data.size) + ceil32(32 * mem[_1103 + mem[_1103]]) + 1 > test266151307() or ceil32(32 * mem[_1103 + mem[_1103]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _1103 + ceil32(return_data.size) + ceil32(32 * mem[_1103 + mem[_1103]]) + 1
                                    mem[_1103 + ceil32(return_data.size)] = _1115
                                    require return_data.size >= _1109 + (32 * _1115) + 32
                                    t = _1103 + _1109 + 32
                                    u = _1103 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1115:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if msg.sender == strategistAddr:
            idx = 0
            while idx < swapTokens.length:
                mem[0] = 68
                if address(uniswapAddr):
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(swapTokens[idx])
                    staticcall swapTokens[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _444 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _447 = mem[_444]
                    if mem[_444]:
                        mem[mem[64] + 4] = swapTokens[idx]
                        require ext_code.size(priceProviderAddress)
                        staticcall priceProviderAddress.0xaea91078 with:
                                gas gas_remaining wei
                               args swapTokens[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _456 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _459 = mem[_456]
                        require ext_code.size(swapTokens[idx])
                        staticcall swapTokens[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _468 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _471 = mem[_468]
                        require mem[_468] == mem[_468 + 31 len 1]
                        if mem[_468 + 31 len 1] < 4:
                            revert with 0, 'Token must have sufficient decimal places'
                        if mem[_468 + 31 len 1] > 18:
                            revert with 0, 'Token must have sufficient decimal places'
                        if 8 > !mem[_468 + 31 len 1]:
                            revert with 0, 17
                        if _447 and _459 > -1 / _447:
                            revert with 0, 17
                        if _447 * _459 > 0x2a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3:
                            revert with 0, 17
                        if 6 > mem[_468 + 31 len 1] + 8:
                            if 6 < mem[_468 + 31 len 1] + 8:
                                revert with 0, 17
                            if not -mem[_468 + 31 len 1] - 2:
                                if 97 * _447 * _459 / 100 and 1 > -1 / 97 * _447 * _459 / 100:
                                    revert with 0, 17
                                _522 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_522 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_522]:
                                    revert with 0, 50
                                mem[_522 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_522 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _522 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_522]:
                                    revert with 0, 50
                                mem[_522 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_522]:
                                    revert with 0, 50
                                mem[_522 + 96] = address(stor52.field_256)
                                mem[_522 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_522 + ceil32(return_data.size) + 132] = _447
                                mem[_522 + ceil32(return_data.size) + 164] = 97 * _447 * _459 / 100
                                mem[_522 + ceil32(return_data.size) + 196] = 160
                                mem[_522 + ceil32(return_data.size) + 292] = mem[_522]
                                s = 0
                                t = _522 + ceil32(return_data.size) + 324
                                u = _522 + 32
                                while s < mem[_522]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_522 + ceil32(return_data.size) + 228] = this.address
                                mem[_522 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _522 + ceil32(return_data.size) + (32 * mem[_522]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _902 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _917 = mem[_902]
                                require mem[_902] <= test266151307()
                                require _902 + mem[_902] + 31 < _902 + return_data.size
                                _932 = mem[_902 + mem[_902]]
                                if mem[_902 + mem[_902]] > test266151307():
                                    revert with 0, 65
                                if _902 + ceil32(return_data.size) + ceil32(32 * mem[_902 + mem[_902]]) + 1 > test266151307() or ceil32(32 * mem[_902 + mem[_902]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _902 + ceil32(return_data.size) + ceil32(32 * mem[_902 + mem[_902]]) + 1
                                mem[_902 + ceil32(return_data.size)] = _932
                                require return_data.size >= _917 + (32 * _932) + 32
                                t = _902 + _917 + 32
                                u = _902 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _932:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                if bool(bool(-mem[_468 + 31 len 1] - 2 < 78)) or bool(bool(-mem[_468 + 31 len 1] - 2 < 32)):
                                    if 97 * _447 * _459 / 100 and 10^(-mem[_468 + 31 len 1] - 2) > -1 / 97 * _447 * _459 / 100:
                                        revert with 0, 17
                                    _562 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_562 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_562]:
                                        revert with 0, 50
                                    mem[_562 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_562 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _562 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_562]:
                                        revert with 0, 50
                                    mem[_562 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_562]:
                                        revert with 0, 50
                                    mem[_562 + 96] = address(stor52.field_256)
                                    mem[_562 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_562 + ceil32(return_data.size) + 132] = _447
                                    mem[_562 + ceil32(return_data.size) + 164] = 97 * _447 * _459 / 100 * 10^(-uint8(_471) - 2)
                                    mem[_562 + ceil32(return_data.size) + 196] = 160
                                    mem[_562 + ceil32(return_data.size) + 292] = mem[_562]
                                    s = 0
                                    t = _562 + ceil32(return_data.size) + 324
                                    u = _562 + 32
                                    while s < mem[_562]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_562 + ceil32(return_data.size) + 228] = this.address
                                    mem[_562 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _447, 97 * _447 * _459 / 100 * 10^(-uint8(_471) - 2), 160, address(this.address), block.timestamp, mem[_562 + ceil32(return_data.size) + 292 len (32 * mem[_562]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_562 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _562 + (2 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    _916 = mem[_562 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32
                                    require mem[_562 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 <= test266151307()
                                    require _562 + ceil32(return_data.size) + mem[_562 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 + 159 < _562 + ceil32(return_data.size) + return_data.size + 128
                                    _931 = mem[_562 + ceil32(return_data.size) + mem[_562 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 + 128]
                                    if mem[_562 + ceil32(return_data.size) + mem[_562 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 + 128] > test266151307():
                                        revert with 0, 65
                                    if _562 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_562 + ceil32(return_data.size) + mem[_562 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_562 + ceil32(return_data.size) + mem[_562 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 + 128]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _562 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_562 + ceil32(return_data.size) + mem[_562 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 + 128]) + 129
                                    mem[_562 + (2 * ceil32(return_data.size)) + 128] = mem[_562 + ceil32(return_data.size) + mem[_562 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 + 128]
                                    require return_data.size >= _916 + (32 * _931) + 32
                                    t = _562 + ceil32(return_data.size) + _916 + 160
                                    u = _562 + (2 * ceil32(return_data.size)) + 160
                                    s = 0
                                    while s < _931:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    t = 10
                                    u = 1
                                    s = -mem[_468 + 31 len 1] - 2
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if 97 * _447 * _459 / 100 and t * u > -1 / 97 * _447 * _459 / 100:
                                        revert with 0, 17
                                    _974 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_974 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_974]:
                                        revert with 0, 50
                                    mem[_974 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_974 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _974 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_974]:
                                        revert with 0, 50
                                    mem[_974 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_974]:
                                        revert with 0, 50
                                    mem[_974 + 96] = address(stor52.field_256)
                                    mem[_974 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_974 + ceil32(return_data.size) + 132] = _447
                                    mem[_974 + ceil32(return_data.size) + 164] = 97 * _447 * _459 / 100 * t * u
                                    mem[_974 + ceil32(return_data.size) + 196] = 160
                                    mem[_974 + ceil32(return_data.size) + 292] = mem[_974]
                                    s = 0
                                    t = _974 + ceil32(return_data.size) + 324
                                    u = _974 + 32
                                    while s < mem[_974]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_974 + ceil32(return_data.size) + 228] = this.address
                                    mem[_974 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _974 + ceil32(return_data.size) + (32 * mem[_974]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1106 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1112 = mem[_1106]
                                    require mem[_1106] <= test266151307()
                                    require _1106 + mem[_1106] + 31 < _1106 + return_data.size
                                    _1118 = mem[_1106 + mem[_1106]]
                                    if mem[_1106 + mem[_1106]] > test266151307():
                                        revert with 0, 65
                                    if _1106 + ceil32(return_data.size) + ceil32(32 * mem[_1106 + mem[_1106]]) + 1 > test266151307() or ceil32(32 * mem[_1106 + mem[_1106]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _1106 + ceil32(return_data.size) + ceil32(32 * mem[_1106 + mem[_1106]]) + 1
                                    mem[_1106 + ceil32(return_data.size)] = _1118
                                    require return_data.size >= _1112 + (32 * _1118) + 32
                                    t = _1106 + _1112 + 32
                                    u = _1106 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1118:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                        else:
                            if 6 >= mem[_468 + 31 len 1] + 8:
                                _487 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_487 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_487]:
                                    revert with 0, 50
                                mem[_487 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_487 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _487 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_487]:
                                    revert with 0, 50
                                mem[_487 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_487]:
                                    revert with 0, 50
                                mem[_487 + 96] = address(stor52.field_256)
                                mem[_487 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_487 + ceil32(return_data.size) + 132] = _447
                                mem[_487 + ceil32(return_data.size) + 164] = 97 * _447 * _459 / 100
                                mem[_487 + ceil32(return_data.size) + 196] = 160
                                mem[_487 + ceil32(return_data.size) + 292] = mem[_487]
                                s = 0
                                t = _487 + ceil32(return_data.size) + 324
                                u = _487 + 32
                                while s < mem[_487]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_487 + ceil32(return_data.size) + 228] = this.address
                                mem[_487 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _447, 97 * _447 * _459 / 100, 160, address(this.address), block.timestamp, mem[_487 + ceil32(return_data.size) + 292 len (32 * mem[_487]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_487 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _487 + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _913 = mem[_487 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32
                                require mem[_487 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 <= test266151307()
                                require _487 + ceil32(return_data.size) + mem[_487 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 + 159 < _487 + ceil32(return_data.size) + return_data.size + 128
                                _928 = mem[_487 + ceil32(return_data.size) + mem[_487 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 + 128]
                                if mem[_487 + ceil32(return_data.size) + mem[_487 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 + 128] > test266151307():
                                    revert with 0, 65
                                if _487 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_487 + ceil32(return_data.size) + mem[_487 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_487 + ceil32(return_data.size) + mem[_487 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 + 128]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _487 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_487 + ceil32(return_data.size) + mem[_487 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _447) >> 32 + 128]) + 129
                                mem[_487 + (2 * ceil32(return_data.size)) + 128] = _928
                                require return_data.size >= _913 + (32 * _928) + 32
                                t = _487 + ceil32(return_data.size) + _913 + 160
                                u = _487 + (2 * ceil32(return_data.size)) + 160
                                s = 0
                                while s < _928:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                if mem[_468 + 31 len 1] + 8 < 6:
                                    revert with 0, 17
                                if not mem[_468 + 31 len 1] + 2:
                                    _533 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_533 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_533]:
                                        revert with 0, 50
                                    mem[_533 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_533 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _533 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_533]:
                                        revert with 0, 50
                                    mem[_533 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_533]:
                                        revert with 0, 50
                                    mem[_533 + 96] = address(stor52.field_256)
                                    mem[_533 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_533 + ceil32(return_data.size) + 132] = _447
                                    mem[_533 + ceil32(return_data.size) + 164] = 97 * _447 * _459 / 100
                                    mem[_533 + ceil32(return_data.size) + 196] = 160
                                    mem[_533 + ceil32(return_data.size) + 292] = mem[_533]
                                    s = 0
                                    t = _533 + ceil32(return_data.size) + 324
                                    u = _533 + 32
                                    while s < mem[_533]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_533 + ceil32(return_data.size) + 228] = this.address
                                    mem[_533 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _533 + ceil32(return_data.size) + (32 * mem[_533]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _900 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _915 = mem[_900]
                                    require mem[_900] <= test266151307()
                                    require _900 + mem[_900] + 31 < _900 + return_data.size
                                    _930 = mem[_900 + mem[_900]]
                                    if mem[_900 + mem[_900]] > test266151307():
                                        revert with 0, 65
                                    if _900 + ceil32(return_data.size) + ceil32(32 * mem[_900 + mem[_900]]) + 1 > test266151307() or ceil32(32 * mem[_900 + mem[_900]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _900 + ceil32(return_data.size) + ceil32(32 * mem[_900 + mem[_900]]) + 1
                                    mem[_900 + ceil32(return_data.size)] = _930
                                    require return_data.size >= _915 + (32 * _930) + 32
                                    t = _900 + _915 + 32
                                    u = _900 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _930:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(bool(mem[_468 + 31 len 1] + 2 < 78)) or bool(bool(mem[_468 + 31 len 1] + 2 < 32)):
                                        if not 10^(mem[_468 + 31 len 1] + 2):
                                            revert with 0, 18
                                        _574 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        mem[_574 + 32 len 96] = call.data[calldata.size len 96]
                                        if 0 >= mem[_574]:
                                            revert with 0, 50
                                        mem[_574 + 32] = swapTokens[idx]
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).WETH() with:
                                                gas gas_remaining wei
                                        mem[_574 + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _574 + ceil32(return_data.size) + 128
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_574]:
                                            revert with 0, 50
                                        mem[_574 + 64] = ext_call.return_data[12 len 20]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_574]:
                                            revert with 0, 50
                                        mem[_574 + 96] = address(stor52.field_256)
                                        mem[_574 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_574 + ceil32(return_data.size) + 132] = _447
                                        mem[_574 + ceil32(return_data.size) + 164] = 97 * _447 * _459 / 100 / 10^(uint8(_471) + 2)
                                        mem[_574 + ceil32(return_data.size) + 196] = 160
                                        mem[_574 + ceil32(return_data.size) + 292] = mem[_574]
                                        s = 0
                                        t = _574 + ceil32(return_data.size) + 324
                                        u = _574 + 32
                                        while s < mem[_574]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_574 + ceil32(return_data.size) + 228] = this.address
                                        mem[_574 + ceil32(return_data.size) + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _574 + ceil32(return_data.size) + (32 * mem[_574]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _899 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _914 = mem[_899]
                                        require mem[_899] <= test266151307()
                                        require _899 + mem[_899] + 31 < _899 + return_data.size
                                        _929 = mem[_899 + mem[_899]]
                                        if mem[_899 + mem[_899]] > test266151307():
                                            revert with 0, 65
                                        if _899 + ceil32(return_data.size) + ceil32(32 * mem[_899 + mem[_899]]) + 1 > test266151307() or ceil32(32 * mem[_899 + mem[_899]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _899 + ceil32(return_data.size) + ceil32(32 * mem[_899 + mem[_899]]) + 1
                                        mem[_899 + ceil32(return_data.size)] = _929
                                        require return_data.size >= _914 + (32 * _929) + 32
                                        t = _899 + _914 + 32
                                        u = _899 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _929:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        t = 10
                                        u = 1
                                        s = mem[_468 + 31 len 1] + 2
                                        while s > 1:
                                            if t > -1 / t:
                                                revert with 0, 17
                                            if not bool(s):
                                                t = t * t
                                                u = u
                                                s = uint255(s) * 0.5
                                                continue 
                                            t = t * t
                                            u = t * u
                                            s = uint255(s) * 0.5
                                            continue 
                                        if u > -1 / t:
                                            revert with 0, 17
                                        if not t * u:
                                            revert with 0, 18
                                        _972 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        mem[_972 + 32 len 96] = call.data[calldata.size len 96]
                                        if 0 >= mem[_972]:
                                            revert with 0, 50
                                        mem[_972 + 32] = swapTokens[idx]
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).WETH() with:
                                                gas gas_remaining wei
                                        mem[_972 + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _972 + ceil32(return_data.size) + 128
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_972]:
                                            revert with 0, 50
                                        mem[_972 + 64] = ext_call.return_data[12 len 20]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_972]:
                                            revert with 0, 50
                                        mem[_972 + 96] = address(stor52.field_256)
                                        mem[_972 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_972 + ceil32(return_data.size) + 132] = _447
                                        mem[_972 + ceil32(return_data.size) + 164] = 97 * _447 * _459 / 100 / t * u
                                        mem[_972 + ceil32(return_data.size) + 196] = 160
                                        mem[_972 + ceil32(return_data.size) + 292] = mem[_972]
                                        s = 0
                                        t = _972 + ceil32(return_data.size) + 324
                                        u = _972 + 32
                                        while s < mem[_972]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_972 + ceil32(return_data.size) + 228] = this.address
                                        mem[_972 + ceil32(return_data.size) + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _972 + ceil32(return_data.size) + (32 * mem[_972]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1105 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1111 = mem[_1105]
                                        require mem[_1105] <= test266151307()
                                        require _1105 + mem[_1105] + 31 < _1105 + return_data.size
                                        _1117 = mem[_1105 + mem[_1105]]
                                        if mem[_1105 + mem[_1105]] > test266151307():
                                            revert with 0, 65
                                        if _1105 + ceil32(return_data.size) + ceil32(32 * mem[_1105 + mem[_1105]]) + 1 > test266151307() or ceil32(32 * mem[_1105 + mem[_1105]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _1105 + ceil32(return_data.size) + ceil32(32 * mem[_1105 + mem[_1105]]) + 1
                                        mem[_1105 + ceil32(return_data.size)] = _1117
                                        require return_data.size >= _1111 + (32 * _1117) + 32
                                        t = _1105 + _1111 + 32
                                        u = _1105 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1117:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if address(governorAddress) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Vault, Governor, or Strategist'
            idx = 0
            while idx < swapTokens.length:
                mem[0] = 68
                if address(uniswapAddr):
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(swapTokens[idx])
                    staticcall swapTokens[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _445 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _448 = mem[_445]
                    if mem[_445]:
                        mem[mem[64] + 4] = swapTokens[idx]
                        require ext_code.size(priceProviderAddress)
                        staticcall priceProviderAddress.0xaea91078 with:
                                gas gas_remaining wei
                               args swapTokens[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _457 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _460 = mem[_457]
                        require ext_code.size(swapTokens[idx])
                        staticcall swapTokens[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _469 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _472 = mem[_469]
                        require mem[_469] == mem[_469 + 31 len 1]
                        if mem[_469 + 31 len 1] < 4:
                            revert with 0, 'Token must have sufficient decimal places'
                        if mem[_469 + 31 len 1] > 18:
                            revert with 0, 'Token must have sufficient decimal places'
                        if 8 > !mem[_469 + 31 len 1]:
                            revert with 0, 17
                        if _448 and _460 > -1 / _448:
                            revert with 0, 17
                        if _448 * _460 > 0x2a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3:
                            revert with 0, 17
                        if 6 > mem[_469 + 31 len 1] + 8:
                            if 6 < mem[_469 + 31 len 1] + 8:
                                revert with 0, 17
                            if not -mem[_469 + 31 len 1] - 2:
                                if 97 * _448 * _460 / 100 and 1 > -1 / 97 * _448 * _460 / 100:
                                    revert with 0, 17
                                _525 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_525 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_525]:
                                    revert with 0, 50
                                mem[_525 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_525 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _525 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_525]:
                                    revert with 0, 50
                                mem[_525 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_525]:
                                    revert with 0, 50
                                mem[_525 + 96] = address(stor52.field_256)
                                mem[_525 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_525 + ceil32(return_data.size) + 132] = _448
                                mem[_525 + ceil32(return_data.size) + 164] = 97 * _448 * _460 / 100
                                mem[_525 + ceil32(return_data.size) + 196] = 160
                                mem[_525 + ceil32(return_data.size) + 292] = mem[_525]
                                s = 0
                                t = _525 + ceil32(return_data.size) + 324
                                u = _525 + 32
                                while s < mem[_525]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_525 + ceil32(return_data.size) + 228] = this.address
                                mem[_525 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _525 + ceil32(return_data.size) + (32 * mem[_525]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _907 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _922 = mem[_907]
                                require mem[_907] <= test266151307()
                                require _907 + mem[_907] + 31 < _907 + return_data.size
                                _937 = mem[_907 + mem[_907]]
                                if mem[_907 + mem[_907]] > test266151307():
                                    revert with 0, 65
                                if _907 + ceil32(return_data.size) + ceil32(32 * mem[_907 + mem[_907]]) + 1 > test266151307() or ceil32(32 * mem[_907 + mem[_907]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _907 + ceil32(return_data.size) + ceil32(32 * mem[_907 + mem[_907]]) + 1
                                mem[_907 + ceil32(return_data.size)] = _937
                                require return_data.size >= _922 + (32 * _937) + 32
                                t = _907 + _922 + 32
                                u = _907 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _937:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                if bool(bool(-mem[_469 + 31 len 1] - 2 < 78)) or bool(bool(-mem[_469 + 31 len 1] - 2 < 32)):
                                    if 97 * _448 * _460 / 100 and 10^(-mem[_469 + 31 len 1] - 2) > -1 / 97 * _448 * _460 / 100:
                                        revert with 0, 17
                                    _566 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_566 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_566]:
                                        revert with 0, 50
                                    mem[_566 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_566 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _566 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_566]:
                                        revert with 0, 50
                                    mem[_566 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_566]:
                                        revert with 0, 50
                                    mem[_566 + 96] = address(stor52.field_256)
                                    mem[_566 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_566 + ceil32(return_data.size) + 132] = _448
                                    mem[_566 + ceil32(return_data.size) + 164] = 97 * _448 * _460 / 100 * 10^(-uint8(_472) - 2)
                                    mem[_566 + ceil32(return_data.size) + 196] = 160
                                    mem[_566 + ceil32(return_data.size) + 292] = mem[_566]
                                    s = 0
                                    t = _566 + ceil32(return_data.size) + 324
                                    u = _566 + 32
                                    while s < mem[_566]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_566 + ceil32(return_data.size) + 228] = this.address
                                    mem[_566 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _448, 97 * _448 * _460 / 100 * 10^(-uint8(_472) - 2), 160, address(this.address), block.timestamp, mem[_566 + ceil32(return_data.size) + 292 len (32 * mem[_566]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_566 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _566 + (2 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    _921 = mem[_566 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32
                                    require mem[_566 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 <= test266151307()
                                    require _566 + ceil32(return_data.size) + mem[_566 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 159 < _566 + ceil32(return_data.size) + return_data.size + 128
                                    _936 = mem[_566 + ceil32(return_data.size) + mem[_566 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]
                                    if mem[_566 + ceil32(return_data.size) + mem[_566 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128] > test266151307():
                                        revert with 0, 65
                                    if _566 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_566 + ceil32(return_data.size) + mem[_566 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_566 + ceil32(return_data.size) + mem[_566 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _566 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_566 + ceil32(return_data.size) + mem[_566 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]) + 129
                                    mem[_566 + (2 * ceil32(return_data.size)) + 128] = mem[_566 + ceil32(return_data.size) + mem[_566 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]
                                    require return_data.size >= _921 + (32 * _936) + 32
                                    t = _566 + ceil32(return_data.size) + _921 + 160
                                    u = _566 + (2 * ceil32(return_data.size)) + 160
                                    s = 0
                                    while s < _936:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    t = 10
                                    u = 1
                                    s = -mem[_469 + 31 len 1] - 2
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if 97 * _448 * _460 / 100 and t * u > -1 / 97 * _448 * _460 / 100:
                                        revert with 0, 17
                                    _978 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_978 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_978]:
                                        revert with 0, 50
                                    mem[_978 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_978 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _978 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_978]:
                                        revert with 0, 50
                                    mem[_978 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_978]:
                                        revert with 0, 50
                                    mem[_978 + 96] = address(stor52.field_256)
                                    mem[_978 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_978 + ceil32(return_data.size) + 132] = _448
                                    mem[_978 + ceil32(return_data.size) + 164] = 97 * _448 * _460 / 100 * t * u
                                    mem[_978 + ceil32(return_data.size) + 196] = 160
                                    mem[_978 + ceil32(return_data.size) + 292] = mem[_978]
                                    s = 0
                                    v = _978 + ceil32(return_data.size) + 324
                                    w = _978 + 32
                                    while s < mem[_978]:
                                        mem[v] = mem[w + 12 len 20]
                                        s = s + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_978 + ceil32(return_data.size) + 228] = this.address
                                    mem[_978 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _448, 97 * _448 * _460 / 100 * t * u, 160, address(this.address), block.timestamp, mem[_978 + ceil32(return_data.size) + 292 len (32 * mem[_978]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_978 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _978 + (2 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    _1114 = mem[_978 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32
                                    require mem[_978 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 <= test266151307()
                                    require _978 + ceil32(return_data.size) + mem[_978 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 159 < _978 + ceil32(return_data.size) + return_data.size + 128
                                    _1120 = mem[_978 + ceil32(return_data.size) + mem[_978 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]
                                    if mem[_978 + ceil32(return_data.size) + mem[_978 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128] > test266151307():
                                        revert with 0, 65
                                    if _978 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_978 + ceil32(return_data.size) + mem[_978 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_978 + ceil32(return_data.size) + mem[_978 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _978 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_978 + ceil32(return_data.size) + mem[_978 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]) + 129
                                    mem[_978 + (2 * ceil32(return_data.size)) + 128] = mem[_978 + ceil32(return_data.size) + mem[_978 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]
                                    require return_data.size >= _1114 + (32 * _1120) + 32
                                    t = _978 + ceil32(return_data.size) + _1114 + 160
                                    u = _978 + (2 * ceil32(return_data.size)) + 160
                                    s = 0
                                    while s < _1120:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                        else:
                            if 6 >= mem[_469 + 31 len 1] + 8:
                                _489 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_489 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_489]:
                                    revert with 0, 50
                                mem[_489 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_489 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _489 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_489]:
                                    revert with 0, 50
                                mem[_489 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_489]:
                                    revert with 0, 50
                                mem[_489 + 96] = address(stor52.field_256)
                                mem[_489 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_489 + ceil32(return_data.size) + 132] = _448
                                mem[_489 + ceil32(return_data.size) + 164] = 97 * _448 * _460 / 100
                                mem[_489 + ceil32(return_data.size) + 196] = 160
                                mem[_489 + ceil32(return_data.size) + 292] = mem[_489]
                                s = 0
                                t = _489 + ceil32(return_data.size) + 324
                                u = _489 + 32
                                while s < mem[_489]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_489 + ceil32(return_data.size) + 228] = this.address
                                mem[_489 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _489 + ceil32(return_data.size) + (32 * mem[_489]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _903 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _918 = mem[_903]
                                require mem[_903] <= test266151307()
                                require _903 + mem[_903] + 31 < _903 + return_data.size
                                _933 = mem[_903 + mem[_903]]
                                if mem[_903 + mem[_903]] > test266151307():
                                    revert with 0, 65
                                if _903 + ceil32(return_data.size) + ceil32(32 * mem[_903 + mem[_903]]) + 1 > test266151307() or ceil32(32 * mem[_903 + mem[_903]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _903 + ceil32(return_data.size) + ceil32(32 * mem[_903 + mem[_903]]) + 1
                                mem[_903 + ceil32(return_data.size)] = _933
                                require return_data.size >= _918 + (32 * _933) + 32
                                t = _903 + _918 + 32
                                u = _903 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _933:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                if mem[_469 + 31 len 1] + 8 < 6:
                                    revert with 0, 17
                                if not mem[_469 + 31 len 1] + 2:
                                    _538 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_538 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_538]:
                                        revert with 0, 50
                                    mem[_538 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_538 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _538 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_538]:
                                        revert with 0, 50
                                    mem[_538 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_538]:
                                        revert with 0, 50
                                    mem[_538 + 96] = address(stor52.field_256)
                                    mem[_538 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_538 + ceil32(return_data.size) + 132] = _448
                                    mem[_538 + ceil32(return_data.size) + 164] = 97 * _448 * _460 / 100
                                    mem[_538 + ceil32(return_data.size) + 196] = 160
                                    mem[_538 + ceil32(return_data.size) + 292] = mem[_538]
                                    s = 0
                                    t = _538 + ceil32(return_data.size) + 324
                                    u = _538 + 32
                                    while s < mem[_538]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_538 + ceil32(return_data.size) + 228] = this.address
                                    mem[_538 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _538 + ceil32(return_data.size) + (32 * mem[_538]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _905 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _920 = mem[_905]
                                    require mem[_905] <= test266151307()
                                    require _905 + mem[_905] + 31 < _905 + return_data.size
                                    _935 = mem[_905 + mem[_905]]
                                    if mem[_905 + mem[_905]] > test266151307():
                                        revert with 0, 65
                                    if _905 + ceil32(return_data.size) + ceil32(32 * mem[_905 + mem[_905]]) + 1 > test266151307() or ceil32(32 * mem[_905 + mem[_905]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _905 + ceil32(return_data.size) + ceil32(32 * mem[_905 + mem[_905]]) + 1
                                    mem[_905 + ceil32(return_data.size)] = _935
                                    require return_data.size >= _920 + (32 * _935) + 32
                                    t = _905 + _920 + 32
                                    u = _905 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _935:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(bool(mem[_469 + 31 len 1] + 2 < 78)) or bool(bool(mem[_469 + 31 len 1] + 2 < 32)):
                                        if not 10^(mem[_469 + 31 len 1] + 2):
                                            revert with 0, 18
                                        _579 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        mem[_579 + 32 len 96] = call.data[calldata.size len 96]
                                        if 0 >= mem[_579]:
                                            revert with 0, 50
                                        mem[_579 + 32] = swapTokens[idx]
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).WETH() with:
                                                gas gas_remaining wei
                                        mem[_579 + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _579 + ceil32(return_data.size) + 128
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_579]:
                                            revert with 0, 50
                                        mem[_579 + 64] = ext_call.return_data[12 len 20]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_579]:
                                            revert with 0, 50
                                        mem[_579 + 96] = address(stor52.field_256)
                                        mem[_579 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_579 + ceil32(return_data.size) + 132] = _448
                                        mem[_579 + ceil32(return_data.size) + 164] = 97 * _448 * _460 / 100 / 10^(uint8(_472) + 2)
                                        mem[_579 + ceil32(return_data.size) + 196] = 160
                                        mem[_579 + ceil32(return_data.size) + 292] = mem[_579]
                                        s = 0
                                        t = _579 + ceil32(return_data.size) + 324
                                        u = _579 + 32
                                        while s < mem[_579]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_579 + ceil32(return_data.size) + 228] = this.address
                                        mem[_579 + ceil32(return_data.size) + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _448, 97 * _448 * _460 / 100 / 10^(uint8(_472) + 2), 160, address(this.address), block.timestamp, mem[_579 + ceil32(return_data.size) + 292 len (32 * mem[_579]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_579 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _579 + (2 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        _919 = mem[_579 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32
                                        require mem[_579 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 <= test266151307()
                                        require _579 + ceil32(return_data.size) + mem[_579 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 159 < _579 + ceil32(return_data.size) + return_data.size + 128
                                        _934 = mem[_579 + ceil32(return_data.size) + mem[_579 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]
                                        if mem[_579 + ceil32(return_data.size) + mem[_579 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128] > test266151307():
                                            revert with 0, 65
                                        if _579 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_579 + ceil32(return_data.size) + mem[_579 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_579 + ceil32(return_data.size) + mem[_579 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _579 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_579 + ceil32(return_data.size) + mem[_579 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]) + 129
                                        mem[_579 + (2 * ceil32(return_data.size)) + 128] = mem[_579 + ceil32(return_data.size) + mem[_579 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]
                                        require return_data.size >= _919 + (32 * _934) + 32
                                        t = _579 + ceil32(return_data.size) + _919 + 160
                                        u = _579 + (2 * ceil32(return_data.size)) + 160
                                        s = 0
                                        while s < _934:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        t = 10
                                        u = 1
                                        s = mem[_469 + 31 len 1] + 2
                                        while s > 1:
                                            if t > -1 / t:
                                                revert with 0, 17
                                            if not bool(s):
                                                t = t * t
                                                u = u
                                                s = uint255(s) * 0.5
                                                continue 
                                            t = t * t
                                            u = t * u
                                            s = uint255(s) * 0.5
                                            continue 
                                        if u > -1 / t:
                                            revert with 0, 17
                                        if not t * u:
                                            revert with 0, 18
                                        _976 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        mem[_976 + 32 len 96] = call.data[calldata.size len 96]
                                        if 0 >= mem[_976]:
                                            revert with 0, 50
                                        mem[_976 + 32] = swapTokens[idx]
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).WETH() with:
                                                gas gas_remaining wei
                                        mem[_976 + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _976 + ceil32(return_data.size) + 128
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_976]:
                                            revert with 0, 50
                                        mem[_976 + 64] = ext_call.return_data[12 len 20]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_976]:
                                            revert with 0, 50
                                        mem[_976 + 96] = address(stor52.field_256)
                                        mem[_976 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_976 + ceil32(return_data.size) + 132] = _448
                                        mem[_976 + ceil32(return_data.size) + 164] = 97 * _448 * _460 / 100 / t * u
                                        mem[_976 + ceil32(return_data.size) + 196] = 160
                                        mem[_976 + ceil32(return_data.size) + 292] = mem[_976]
                                        s = 0
                                        v = _976 + ceil32(return_data.size) + 324
                                        w = _976 + 32
                                        while s < mem[_976]:
                                            mem[v] = mem[w + 12 len 20]
                                            s = s + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_976 + ceil32(return_data.size) + 228] = this.address
                                        mem[_976 + ceil32(return_data.size) + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _448, 97 * _448 * _460 / 100 / t * u, 160, address(this.address), block.timestamp, mem[_976 + ceil32(return_data.size) + 292 len (32 * mem[_976]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_976 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _976 + (2 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        _1113 = mem[_976 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32
                                        require mem[_976 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 <= test266151307()
                                        require _976 + ceil32(return_data.size) + mem[_976 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 159 < _976 + ceil32(return_data.size) + return_data.size + 128
                                        _1119 = mem[_976 + ceil32(return_data.size) + mem[_976 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]
                                        if mem[_976 + ceil32(return_data.size) + mem[_976 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128] > test266151307():
                                            revert with 0, 65
                                        if _976 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_976 + ceil32(return_data.size) + mem[_976 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_976 + ceil32(return_data.size) + mem[_976 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _976 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_976 + ceil32(return_data.size) + mem[_976 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]) + 129
                                        mem[_976 + (2 * ceil32(return_data.size)) + 128] = mem[_976 + ceil32(return_data.size) + mem[_976 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _448) >> 32 + 128]
                                        require return_data.size >= _1113 + (32 * _1119) + 32
                                        t = _976 + ceil32(return_data.size) + _1113 + 160
                                        u = _976 + (2 * ceil32(return_data.size)) + 160
                                        s = 0
                                        while s < _1119:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}

function harvestAndSwap() payable {
    mem[64] = 96
    if msg.sender == strategistAddr:
        idx = 0
        while idx < stor54.length:
            mem[0] = 54
            require ext_code.size(stor54[idx])
            staticcall stor54[idx].rewardTokenAddress() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _468 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_468] == mem[_468 + 12 len 20]
            if mem[_468 + 12 len 20]:
                mem[mem[64]] = 0x242241d00000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor54[idx])
                call stor54[idx].collectRewardToken() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        while idx < swapTokens.length:
            mem[0] = 68
            if address(uniswapAddr):
                mem[mem[64] + 4] = this.address
                require ext_code.size(swapTokens[idx])
                staticcall swapTokens[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _918 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _921 = mem[_918]
                if mem[_918]:
                    mem[mem[64] + 4] = swapTokens[idx]
                    require ext_code.size(priceProviderAddress)
                    staticcall priceProviderAddress.0xaea91078 with:
                            gas gas_remaining wei
                           args swapTokens[idx]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _930 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _933 = mem[_930]
                    require ext_code.size(swapTokens[idx])
                    staticcall swapTokens[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _942 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _945 = mem[_942]
                    require mem[_942] == mem[_942 + 31 len 1]
                    if mem[_942 + 31 len 1] < 4:
                        revert with 0, 'Token must have sufficient decimal places'
                    if mem[_942 + 31 len 1] > 18:
                        revert with 0, 'Token must have sufficient decimal places'
                    if 8 > !mem[_942 + 31 len 1]:
                        revert with 0, 17
                    if _921 and _933 > -1 / _921:
                        revert with 0, 17
                    if _921 * _933 > 0x2a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3:
                        revert with 0, 17
                    if 6 <= mem[_942 + 31 len 1] + 8:
                        if 6 >= mem[_942 + 31 len 1] + 8:
                            _960 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_960 + 32 len 96] = call.data[calldata.size len 96]
                            if 0 >= mem[_960]:
                                revert with 0, 50
                            mem[_960 + 32] = swapTokens[idx]
                            require ext_code.size(address(uniswapAddr))
                            staticcall address(uniswapAddr).WETH() with:
                                    gas gas_remaining wei
                            mem[_960 + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _960 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_960]:
                                revert with 0, 50
                            mem[_960 + 64] = ext_call.return_data[12 len 20]
                            if 1 >= stor52.length:
                                revert with 0, 50
                            mem[0] = 52
                            if 2 >= mem[_960]:
                                revert with 0, 50
                            mem[_960 + 96] = address(stor52.field_256)
                            mem[_960 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_960 + ceil32(return_data.size) + 132] = _921
                            mem[_960 + ceil32(return_data.size) + 164] = 97 * _921 * _933 / 100
                            mem[_960 + ceil32(return_data.size) + 196] = 160
                            mem[_960 + ceil32(return_data.size) + 292] = mem[_960]
                            s = 0
                            t = _960 + ceil32(return_data.size) + 324
                            u = _960 + 32
                            while s < mem[_960]:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_960 + ceil32(return_data.size) + 228] = this.address
                            mem[_960 + ceil32(return_data.size) + 260] = block.timestamp
                            require ext_code.size(address(uniswapAddr))
                            call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args _921, 97 * _921 * _933 / 100, 160, address(this.address), block.timestamp, mem[_960 + ceil32(return_data.size) + 292 len (32 * mem[_960]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_960 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = _960 + (2 * ceil32(return_data.size)) + 128
                            require return_data.size >= 32
                            _1383 = mem[_960 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32
                            require mem[_960 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 <= test266151307()
                            require _960 + ceil32(return_data.size) + mem[_960 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 159 < _960 + ceil32(return_data.size) + return_data.size + 128
                            _1398 = mem[_960 + ceil32(return_data.size) + mem[_960 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]
                            if mem[_960 + ceil32(return_data.size) + mem[_960 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128] > test266151307():
                                revert with 0, 65
                            if _960 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_960 + ceil32(return_data.size) + mem[_960 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_960 + ceil32(return_data.size) + mem[_960 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _960 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_960 + ceil32(return_data.size) + mem[_960 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 129
                            mem[_960 + (2 * ceil32(return_data.size)) + 128] = mem[_960 + ceil32(return_data.size) + mem[_960 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]
                            require return_data.size >= _1383 + (32 * _1398) + 32
                            t = _960 + ceil32(return_data.size) + _1383 + 160
                            u = _960 + (2 * ceil32(return_data.size)) + 160
                            s = 0
                            while s < _1398:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                        else:
                            if mem[_942 + 31 len 1] + 8 < 6:
                                revert with 0, 17
                            if not mem[_942 + 31 len 1] + 2:
                                _1003 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_1003 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_1003]:
                                    revert with 0, 50
                                mem[_1003 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_1003 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1003 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_1003]:
                                    revert with 0, 50
                                mem[_1003 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_1003]:
                                    revert with 0, 50
                                mem[_1003 + 96] = address(stor52.field_256)
                                mem[_1003 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1003 + ceil32(return_data.size) + 132] = _921
                                mem[_1003 + ceil32(return_data.size) + 164] = 97 * _921 * _933 / 100
                                mem[_1003 + ceil32(return_data.size) + 196] = 160
                                mem[_1003 + ceil32(return_data.size) + 292] = mem[_1003]
                                s = 0
                                t = _1003 + ceil32(return_data.size) + 324
                                u = _1003 + 32
                                while s < mem[_1003]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1003 + ceil32(return_data.size) + 228] = this.address
                                mem[_1003 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _921, 97 * _921 * _933 / 100, 160, address(this.address), block.timestamp, mem[_1003 + ceil32(return_data.size) + 292 len (32 * mem[_1003]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1003 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1003 + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _1385 = mem[_1003 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32
                                require mem[_1003 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 <= test266151307()
                                require _1003 + ceil32(return_data.size) + mem[_1003 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 159 < _1003 + ceil32(return_data.size) + return_data.size + 128
                                _1400 = mem[_1003 + ceil32(return_data.size) + mem[_1003 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]
                                if mem[_1003 + ceil32(return_data.size) + mem[_1003 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128] > test266151307():
                                    revert with 0, 65
                                if _1003 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1003 + ceil32(return_data.size) + mem[_1003 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_1003 + ceil32(return_data.size) + mem[_1003 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _1003 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1003 + ceil32(return_data.size) + mem[_1003 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 129
                                mem[_1003 + (2 * ceil32(return_data.size)) + 128] = _1400
                                require return_data.size >= _1385 + (32 * _1400) + 32
                                t = _1003 + ceil32(return_data.size) + _1385 + 160
                                u = _1003 + (2 * ceil32(return_data.size)) + 160
                                s = 0
                                while s < _1400:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                if bool(bool(mem[_942 + 31 len 1] + 2 < 78)) or bool(bool(mem[_942 + 31 len 1] + 2 < 32)):
                                    if not 10^(mem[_942 + 31 len 1] + 2):
                                        revert with 0, 18
                                    _1044 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_1044 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_1044]:
                                        revert with 0, 50
                                    mem[_1044 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_1044 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1044 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_1044]:
                                        revert with 0, 50
                                    mem[_1044 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1044]:
                                        revert with 0, 50
                                    mem[_1044 + 96] = address(stor52.field_256)
                                    mem[_1044 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1044 + ceil32(return_data.size) + 132] = _921
                                    mem[_1044 + ceil32(return_data.size) + 164] = 97 * _921 * _933 / 100 / 10^(uint8(_945) + 2)
                                    mem[_1044 + ceil32(return_data.size) + 196] = 160
                                    mem[_1044 + ceil32(return_data.size) + 292] = mem[_1044]
                                    s = 0
                                    t = _1044 + ceil32(return_data.size) + 324
                                    u = _1044 + 32
                                    while s < mem[_1044]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1044 + ceil32(return_data.size) + 228] = this.address
                                    mem[_1044 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _921, 97 * _921 * _933 / 100 / 10^(uint8(_945) + 2), 160, address(this.address), block.timestamp, mem[_1044 + ceil32(return_data.size) + 292 len (32 * mem[_1044]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1044 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1044 + (2 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    _1384 = mem[_1044 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32
                                    require mem[_1044 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 <= test266151307()
                                    require _1044 + ceil32(return_data.size) + mem[_1044 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 159 < _1044 + ceil32(return_data.size) + return_data.size + 128
                                    _1399 = mem[_1044 + ceil32(return_data.size) + mem[_1044 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]
                                    if mem[_1044 + ceil32(return_data.size) + mem[_1044 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128] > test266151307():
                                        revert with 0, 65
                                    if _1044 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1044 + ceil32(return_data.size) + mem[_1044 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_1044 + ceil32(return_data.size) + mem[_1044 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _1044 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1044 + ceil32(return_data.size) + mem[_1044 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 129
                                    mem[_1044 + (2 * ceil32(return_data.size)) + 128] = _1399
                                    require return_data.size >= _1384 + (32 * _1399) + 32
                                    t = _1044 + ceil32(return_data.size) + _1384 + 160
                                    u = _1044 + (2 * ceil32(return_data.size)) + 160
                                    s = 0
                                    while s < _1399:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    t = 10
                                    u = 1
                                    s = mem[_942 + 31 len 1] + 2
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if not t * u:
                                        revert with 0, 18
                                    _1443 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_1443 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_1443]:
                                        revert with 0, 50
                                    mem[_1443 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_1443 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1443 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_1443]:
                                        revert with 0, 50
                                    mem[_1443 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1443]:
                                        revert with 0, 50
                                    mem[_1443 + 96] = address(stor52.field_256)
                                    mem[_1443 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1443 + ceil32(return_data.size) + 132] = _921
                                    mem[_1443 + ceil32(return_data.size) + 164] = 97 * _921 * _933 / 100 / t * u
                                    mem[_1443 + ceil32(return_data.size) + 196] = 160
                                    mem[_1443 + ceil32(return_data.size) + 292] = mem[_1443]
                                    s = 0
                                    v = _1443 + ceil32(return_data.size) + 324
                                    w = _1443 + 32
                                    while s < mem[_1443]:
                                        mem[v] = mem[w + 12 len 20]
                                        s = s + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_1443 + ceil32(return_data.size) + 228] = this.address
                                    mem[_1443 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _921, 97 * _921 * _933 / 100 / t * u, 160, address(this.address), block.timestamp, mem[_1443 + ceil32(return_data.size) + 292 len (32 * mem[_1443]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1443 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1443 + (2 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    _1584 = mem[_1443 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32
                                    require mem[_1443 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 <= test266151307()
                                    require _1443 + ceil32(return_data.size) + mem[_1443 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 159 < _1443 + ceil32(return_data.size) + return_data.size + 128
                                    _1590 = mem[_1443 + ceil32(return_data.size) + mem[_1443 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]
                                    if mem[_1443 + ceil32(return_data.size) + mem[_1443 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128] > test266151307():
                                        revert with 0, 65
                                    if _1443 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1443 + ceil32(return_data.size) + mem[_1443 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_1443 + ceil32(return_data.size) + mem[_1443 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _1443 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1443 + ceil32(return_data.size) + mem[_1443 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 129
                                    mem[_1443 + (2 * ceil32(return_data.size)) + 128] = mem[_1443 + ceil32(return_data.size) + mem[_1443 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]
                                    require return_data.size >= _1584 + (32 * _1590) + 32
                                    t = _1443 + ceil32(return_data.size) + _1584 + 160
                                    u = _1443 + (2 * ceil32(return_data.size)) + 160
                                    s = 0
                                    while s < _1590:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                    else:
                        if 6 < mem[_942 + 31 len 1] + 8:
                            revert with 0, 17
                        if not -mem[_942 + 31 len 1] - 2:
                            if 97 * _921 * _933 / 100 and 1 > -1 / 97 * _921 * _933 / 100:
                                revert with 0, 17
                            _994 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            mem[_994 + 32 len 96] = call.data[calldata.size len 96]
                            if 0 >= mem[_994]:
                                revert with 0, 50
                            mem[_994 + 32] = swapTokens[idx]
                            require ext_code.size(address(uniswapAddr))
                            staticcall address(uniswapAddr).WETH() with:
                                    gas gas_remaining wei
                            mem[_994 + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _994 + ceil32(return_data.size) + 128
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_994]:
                                revert with 0, 50
                            mem[_994 + 64] = ext_call.return_data[12 len 20]
                            if 1 >= stor52.length:
                                revert with 0, 50
                            mem[0] = 52
                            if 2 >= mem[_994]:
                                revert with 0, 50
                            mem[_994 + 96] = address(stor52.field_256)
                            mem[_994 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[_994 + ceil32(return_data.size) + 132] = _921
                            mem[_994 + ceil32(return_data.size) + 164] = 97 * _921 * _933 / 100
                            mem[_994 + ceil32(return_data.size) + 196] = 160
                            mem[_994 + ceil32(return_data.size) + 292] = mem[_994]
                            s = 0
                            t = _994 + ceil32(return_data.size) + 324
                            u = _994 + 32
                            while s < mem[_994]:
                                mem[t] = mem[u + 12 len 20]
                                s = s + 1
                                t = t + 32
                                u = u + 32
                                continue 
                            mem[_994 + ceil32(return_data.size) + 228] = this.address
                            mem[_994 + ceil32(return_data.size) + 260] = block.timestamp
                            require ext_code.size(address(uniswapAddr))
                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _994 + ceil32(return_data.size) + (32 * mem[_994]) + -mem[64] + 320]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1372 = mem[64]
                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1387 = mem[_1372]
                            require mem[_1372] <= test266151307()
                            require _1372 + mem[_1372] + 31 < _1372 + return_data.size
                            _1402 = mem[_1372 + mem[_1372]]
                            if mem[_1372 + mem[_1372]] > test266151307():
                                revert with 0, 65
                            if _1372 + ceil32(return_data.size) + ceil32(32 * mem[_1372 + mem[_1372]]) + 1 > test266151307() or ceil32(32 * mem[_1372 + mem[_1372]]) + 1 < 0:
                                revert with 0, 65
                            mem[64] = _1372 + ceil32(return_data.size) + ceil32(32 * mem[_1372 + mem[_1372]]) + 1
                            mem[_1372 + ceil32(return_data.size)] = _1402
                            require return_data.size >= _1387 + (32 * _1402) + 32
                            t = _1372 + _1387 + 32
                            u = _1372 + ceil32(return_data.size) + 32
                            s = 0
                            while s < _1402:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s + 1
                                continue 
                        else:
                            if bool(bool(-mem[_942 + 31 len 1] - 2 < 78)) or bool(bool(-mem[_942 + 31 len 1] - 2 < 32)):
                                if 97 * _921 * _933 / 100 and 10^(-mem[_942 + 31 len 1] - 2) > -1 / 97 * _921 * _933 / 100:
                                    revert with 0, 17
                                _1033 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_1033 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_1033]:
                                    revert with 0, 50
                                mem[_1033 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_1033 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1033 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_1033]:
                                    revert with 0, 50
                                mem[_1033 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_1033]:
                                    revert with 0, 50
                                mem[_1033 + 96] = address(stor52.field_256)
                                mem[_1033 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1033 + ceil32(return_data.size) + 132] = _921
                                mem[_1033 + ceil32(return_data.size) + 164] = 97 * _921 * _933 / 100 * 10^(-uint8(_945) - 2)
                                mem[_1033 + ceil32(return_data.size) + 196] = 160
                                mem[_1033 + ceil32(return_data.size) + 292] = mem[_1033]
                                s = 0
                                t = _1033 + ceil32(return_data.size) + 324
                                u = _1033 + 32
                                while s < mem[_1033]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1033 + ceil32(return_data.size) + 228] = this.address
                                mem[_1033 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _921, 97 * _921 * _933 / 100 * 10^(-uint8(_945) - 2), 160, address(this.address), block.timestamp, mem[_1033 + ceil32(return_data.size) + 292 len (32 * mem[_1033]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_1033 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _1033 + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _1386 = mem[_1033 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32
                                require mem[_1033 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 <= test266151307()
                                require _1033 + ceil32(return_data.size) + mem[_1033 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 159 < _1033 + ceil32(return_data.size) + return_data.size + 128
                                _1401 = mem[_1033 + ceil32(return_data.size) + mem[_1033 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]
                                if mem[_1033 + ceil32(return_data.size) + mem[_1033 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128] > test266151307():
                                    revert with 0, 65
                                if _1033 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1033 + ceil32(return_data.size) + mem[_1033 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_1033 + ceil32(return_data.size) + mem[_1033 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _1033 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1033 + ceil32(return_data.size) + mem[_1033 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]) + 129
                                mem[_1033 + (2 * ceil32(return_data.size)) + 128] = mem[_1033 + ceil32(return_data.size) + mem[_1033 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _921) >> 32 + 128]
                                require return_data.size >= _1386 + (32 * _1401) + 32
                                t = _1033 + ceil32(return_data.size) + _1386 + 160
                                u = _1033 + (2 * ceil32(return_data.size)) + 160
                                s = 0
                                while s < _1401:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                t = 10
                                u = 1
                                s = -mem[_942 + 31 len 1] - 2
                                while s > 1:
                                    if t > -1 / t:
                                        revert with 0, 17
                                    if not bool(s):
                                        t = t * t
                                        u = u
                                        s = uint255(s) * 0.5
                                        continue 
                                    t = t * t
                                    u = t * u
                                    s = uint255(s) * 0.5
                                    continue 
                                if u > -1 / t:
                                    revert with 0, 17
                                if 97 * _921 * _933 / 100 and t * u > -1 / 97 * _921 * _933 / 100:
                                    revert with 0, 17
                                _1445 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_1445 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_1445]:
                                    revert with 0, 50
                                mem[_1445 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_1445 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1445 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_1445]:
                                    revert with 0, 50
                                mem[_1445 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_1445]:
                                    revert with 0, 50
                                mem[_1445 + 96] = address(stor52.field_256)
                                mem[_1445 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1445 + ceil32(return_data.size) + 132] = _921
                                mem[_1445 + ceil32(return_data.size) + 164] = 97 * _921 * _933 / 100 * t * u
                                mem[_1445 + ceil32(return_data.size) + 196] = 160
                                mem[_1445 + ceil32(return_data.size) + 292] = mem[_1445]
                                s = 0
                                t = _1445 + ceil32(return_data.size) + 324
                                u = _1445 + 32
                                while s < mem[_1445]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1445 + ceil32(return_data.size) + 228] = this.address
                                mem[_1445 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1445 + ceil32(return_data.size) + (32 * mem[_1445]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1579 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1585 = mem[_1579]
                                require mem[_1579] <= test266151307()
                                require _1579 + mem[_1579] + 31 < _1579 + return_data.size
                                _1591 = mem[_1579 + mem[_1579]]
                                if mem[_1579 + mem[_1579]] > test266151307():
                                    revert with 0, 65
                                if _1579 + ceil32(return_data.size) + ceil32(32 * mem[_1579 + mem[_1579]]) + 1 > test266151307() or ceil32(32 * mem[_1579 + mem[_1579]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _1579 + ceil32(return_data.size) + ceil32(32 * mem[_1579 + mem[_1579]]) + 1
                                mem[_1579 + ceil32(return_data.size)] = _1591
                                require return_data.size >= _1585 + (32 * _1591) + 32
                                t = _1579 + _1585 + 32
                                u = _1579 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _1591:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if address(governorAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Strategist or Governor'
        if msg.sender == strategistAddr:
            idx = 0
            while idx < stor54.length:
                mem[0] = 54
                require ext_code.size(stor54[idx])
                staticcall stor54[idx].rewardTokenAddress() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _469 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_469] == mem[_469 + 12 len 20]
                if mem[_469 + 12 len 20]:
                    mem[mem[64]] = 0x242241d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor54[idx])
                    call stor54[idx].collectRewardToken() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < swapTokens.length:
                mem[0] = 68
                if address(uniswapAddr):
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(swapTokens[idx])
                    staticcall swapTokens[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _919 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _922 = mem[_919]
                    if mem[_919]:
                        mem[mem[64] + 4] = swapTokens[idx]
                        require ext_code.size(priceProviderAddress)
                        staticcall priceProviderAddress.0xaea91078 with:
                                gas gas_remaining wei
                               args swapTokens[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _931 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _934 = mem[_931]
                        require ext_code.size(swapTokens[idx])
                        staticcall swapTokens[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _943 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _946 = mem[_943]
                        require mem[_943] == mem[_943 + 31 len 1]
                        if mem[_943 + 31 len 1] < 4:
                            revert with 0, 'Token must have sufficient decimal places'
                        if mem[_943 + 31 len 1] > 18:
                            revert with 0, 'Token must have sufficient decimal places'
                        if 8 > !mem[_943 + 31 len 1]:
                            revert with 0, 17
                        if _922 and _934 > -1 / _922:
                            revert with 0, 17
                        if _922 * _934 > 0x2a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3:
                            revert with 0, 17
                        if 6 <= mem[_943 + 31 len 1] + 8:
                            if 6 >= mem[_943 + 31 len 1] + 8:
                                _962 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_962 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_962]:
                                    revert with 0, 50
                                mem[_962 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_962 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _962 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_962]:
                                    revert with 0, 50
                                mem[_962 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_962]:
                                    revert with 0, 50
                                mem[_962 + 96] = address(stor52.field_256)
                                mem[_962 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_962 + ceil32(return_data.size) + 132] = _922
                                mem[_962 + ceil32(return_data.size) + 164] = 97 * _922 * _934 / 100
                                mem[_962 + ceil32(return_data.size) + 196] = 160
                                mem[_962 + ceil32(return_data.size) + 292] = mem[_962]
                                s = 0
                                t = _962 + ceil32(return_data.size) + 324
                                u = _962 + 32
                                while s < mem[_962]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_962 + ceil32(return_data.size) + 228] = this.address
                                mem[_962 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _922, 97 * _922 * _934 / 100, 160, address(this.address), block.timestamp, mem[_962 + ceil32(return_data.size) + 292 len (32 * mem[_962]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_962 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _962 + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _1388 = mem[_962 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32
                                require mem[_962 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 <= test266151307()
                                require _962 + ceil32(return_data.size) + mem[_962 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 159 < _962 + ceil32(return_data.size) + return_data.size + 128
                                _1403 = mem[_962 + ceil32(return_data.size) + mem[_962 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]
                                if mem[_962 + ceil32(return_data.size) + mem[_962 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128] > test266151307():
                                    revert with 0, 65
                                if _962 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_962 + ceil32(return_data.size) + mem[_962 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_962 + ceil32(return_data.size) + mem[_962 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _962 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_962 + ceil32(return_data.size) + mem[_962 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]) + 129
                                mem[_962 + (2 * ceil32(return_data.size)) + 128] = mem[_962 + ceil32(return_data.size) + mem[_962 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]
                                require return_data.size >= _1388 + (32 * _1403) + 32
                                t = _962 + ceil32(return_data.size) + _1388 + 160
                                u = _962 + (2 * ceil32(return_data.size)) + 160
                                s = 0
                                while s < _1403:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                if mem[_943 + 31 len 1] + 8 < 6:
                                    revert with 0, 17
                                if not mem[_943 + 31 len 1] + 2:
                                    _1008 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_1008 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_1008]:
                                        revert with 0, 50
                                    mem[_1008 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_1008 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1008 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_1008]:
                                        revert with 0, 50
                                    mem[_1008 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1008]:
                                        revert with 0, 50
                                    mem[_1008 + 96] = address(stor52.field_256)
                                    mem[_1008 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1008 + ceil32(return_data.size) + 132] = _922
                                    mem[_1008 + ceil32(return_data.size) + 164] = 97 * _922 * _934 / 100
                                    mem[_1008 + ceil32(return_data.size) + 196] = 160
                                    mem[_1008 + ceil32(return_data.size) + 292] = mem[_1008]
                                    s = 0
                                    t = _1008 + ceil32(return_data.size) + 324
                                    u = _1008 + 32
                                    while s < mem[_1008]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1008 + ceil32(return_data.size) + 228] = this.address
                                    mem[_1008 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1008 + ceil32(return_data.size) + (32 * mem[_1008]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1375 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1390 = mem[_1375]
                                    require mem[_1375] <= test266151307()
                                    require _1375 + mem[_1375] + 31 < _1375 + return_data.size
                                    _1405 = mem[_1375 + mem[_1375]]
                                    if mem[_1375 + mem[_1375]] > test266151307():
                                        revert with 0, 65
                                    if _1375 + ceil32(return_data.size) + ceil32(32 * mem[_1375 + mem[_1375]]) + 1 > test266151307() or ceil32(32 * mem[_1375 + mem[_1375]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _1375 + ceil32(return_data.size) + ceil32(32 * mem[_1375 + mem[_1375]]) + 1
                                    mem[_1375 + ceil32(return_data.size)] = _1405
                                    require return_data.size >= _1390 + (32 * _1405) + 32
                                    t = _1375 + _1390 + 32
                                    u = _1375 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1405:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(bool(mem[_943 + 31 len 1] + 2 < 78)) or bool(bool(mem[_943 + 31 len 1] + 2 < 32)):
                                        if not 10^(mem[_943 + 31 len 1] + 2):
                                            revert with 0, 18
                                        _1049 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        mem[_1049 + 32 len 96] = call.data[calldata.size len 96]
                                        if 0 >= mem[_1049]:
                                            revert with 0, 50
                                        mem[_1049 + 32] = swapTokens[idx]
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).WETH() with:
                                                gas gas_remaining wei
                                        mem[_1049 + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1049 + ceil32(return_data.size) + 128
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_1049]:
                                            revert with 0, 50
                                        mem[_1049 + 64] = ext_call.return_data[12 len 20]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_1049]:
                                            revert with 0, 50
                                        mem[_1049 + 96] = address(stor52.field_256)
                                        mem[_1049 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1049 + ceil32(return_data.size) + 132] = _922
                                        mem[_1049 + ceil32(return_data.size) + 164] = 97 * _922 * _934 / 100 / 10^(uint8(_946) + 2)
                                        mem[_1049 + ceil32(return_data.size) + 196] = 160
                                        mem[_1049 + ceil32(return_data.size) + 292] = mem[_1049]
                                        s = 0
                                        t = _1049 + ceil32(return_data.size) + 324
                                        u = _1049 + 32
                                        while s < mem[_1049]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1049 + ceil32(return_data.size) + 228] = this.address
                                        mem[_1049 + ceil32(return_data.size) + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1049 + ceil32(return_data.size) + (32 * mem[_1049]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1374 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1389 = mem[_1374]
                                        require mem[_1374] <= test266151307()
                                        require _1374 + mem[_1374] + 31 < _1374 + return_data.size
                                        _1404 = mem[_1374 + mem[_1374]]
                                        if mem[_1374 + mem[_1374]] > test266151307():
                                            revert with 0, 65
                                        if _1374 + ceil32(return_data.size) + ceil32(32 * mem[_1374 + mem[_1374]]) + 1 > test266151307() or ceil32(32 * mem[_1374 + mem[_1374]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _1374 + ceil32(return_data.size) + ceil32(32 * mem[_1374 + mem[_1374]]) + 1
                                        mem[_1374 + ceil32(return_data.size)] = _1404
                                        require return_data.size >= _1389 + (32 * _1404) + 32
                                        t = _1374 + _1389 + 32
                                        u = _1374 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1404:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        t = 10
                                        u = 1
                                        s = mem[_943 + 31 len 1] + 2
                                        while s > 1:
                                            if t > -1 / t:
                                                revert with 0, 17
                                            if not bool(s):
                                                t = t * t
                                                u = u
                                                s = uint255(s) * 0.5
                                                continue 
                                            t = t * t
                                            u = t * u
                                            s = uint255(s) * 0.5
                                            continue 
                                        if u > -1 / t:
                                            revert with 0, 17
                                        if not t * u:
                                            revert with 0, 18
                                        _1447 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        mem[_1447 + 32 len 96] = call.data[calldata.size len 96]
                                        if 0 >= mem[_1447]:
                                            revert with 0, 50
                                        mem[_1447 + 32] = swapTokens[idx]
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).WETH() with:
                                                gas gas_remaining wei
                                        mem[_1447 + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1447 + ceil32(return_data.size) + 128
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_1447]:
                                            revert with 0, 50
                                        mem[_1447 + 64] = ext_call.return_data[12 len 20]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_1447]:
                                            revert with 0, 50
                                        mem[_1447 + 96] = address(stor52.field_256)
                                        mem[_1447 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1447 + ceil32(return_data.size) + 132] = _922
                                        mem[_1447 + ceil32(return_data.size) + 164] = 97 * _922 * _934 / 100 / t * u
                                        mem[_1447 + ceil32(return_data.size) + 196] = 160
                                        mem[_1447 + ceil32(return_data.size) + 292] = mem[_1447]
                                        s = 0
                                        v = _1447 + ceil32(return_data.size) + 324
                                        w = _1447 + 32
                                        while s < mem[_1447]:
                                            mem[v] = mem[w + 12 len 20]
                                            s = s + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_1447 + ceil32(return_data.size) + 228] = this.address
                                        mem[_1447 + ceil32(return_data.size) + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _922, 97 * _922 * _934 / 100 / t * u, 160, address(this.address), block.timestamp, mem[_1447 + ceil32(return_data.size) + 292 len (32 * mem[_1447]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1447 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1447 + (2 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        _1586 = mem[_1447 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32
                                        require mem[_1447 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 <= test266151307()
                                        require _1447 + ceil32(return_data.size) + mem[_1447 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 159 < _1447 + ceil32(return_data.size) + return_data.size + 128
                                        _1592 = mem[_1447 + ceil32(return_data.size) + mem[_1447 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]
                                        if mem[_1447 + ceil32(return_data.size) + mem[_1447 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128] > test266151307():
                                            revert with 0, 65
                                        if _1447 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1447 + ceil32(return_data.size) + mem[_1447 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_1447 + ceil32(return_data.size) + mem[_1447 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _1447 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1447 + ceil32(return_data.size) + mem[_1447 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]) + 129
                                        mem[_1447 + (2 * ceil32(return_data.size)) + 128] = mem[_1447 + ceil32(return_data.size) + mem[_1447 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]
                                        require return_data.size >= _1586 + (32 * _1592) + 32
                                        t = _1447 + ceil32(return_data.size) + _1586 + 160
                                        u = _1447 + (2 * ceil32(return_data.size)) + 160
                                        s = 0
                                        while s < _1592:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                        else:
                            if 6 < mem[_943 + 31 len 1] + 8:
                                revert with 0, 17
                            if not -mem[_943 + 31 len 1] - 2:
                                if 97 * _922 * _934 / 100 and 1 > -1 / 97 * _922 * _934 / 100:
                                    revert with 0, 17
                                _997 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_997 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_997]:
                                    revert with 0, 50
                                mem[_997 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_997 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _997 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_997]:
                                    revert with 0, 50
                                mem[_997 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_997]:
                                    revert with 0, 50
                                mem[_997 + 96] = address(stor52.field_256)
                                mem[_997 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_997 + ceil32(return_data.size) + 132] = _922
                                mem[_997 + ceil32(return_data.size) + 164] = 97 * _922 * _934 / 100
                                mem[_997 + ceil32(return_data.size) + 196] = 160
                                mem[_997 + ceil32(return_data.size) + 292] = mem[_997]
                                s = 0
                                t = _997 + ceil32(return_data.size) + 324
                                u = _997 + 32
                                while s < mem[_997]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_997 + ceil32(return_data.size) + 228] = this.address
                                mem[_997 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _922, 97 * _922 * _934 / 100, 160, address(this.address), block.timestamp, mem[_997 + ceil32(return_data.size) + 292 len (32 * mem[_997]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_997 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _997 + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _1392 = mem[_997 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32
                                require mem[_997 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 <= test266151307()
                                require _997 + ceil32(return_data.size) + mem[_997 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 159 < _997 + ceil32(return_data.size) + return_data.size + 128
                                _1407 = mem[_997 + ceil32(return_data.size) + mem[_997 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]
                                if mem[_997 + ceil32(return_data.size) + mem[_997 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128] > test266151307():
                                    revert with 0, 65
                                if _997 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_997 + ceil32(return_data.size) + mem[_997 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_997 + ceil32(return_data.size) + mem[_997 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _997 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_997 + ceil32(return_data.size) + mem[_997 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]) + 129
                                mem[_997 + (2 * ceil32(return_data.size)) + 128] = mem[_997 + ceil32(return_data.size) + mem[_997 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]
                                require return_data.size >= _1392 + (32 * _1407) + 32
                                t = _997 + ceil32(return_data.size) + _1392 + 160
                                u = _997 + (2 * ceil32(return_data.size)) + 160
                                s = 0
                                while s < _1407:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                if bool(bool(-mem[_943 + 31 len 1] - 2 < 78)) or bool(bool(-mem[_943 + 31 len 1] - 2 < 32)):
                                    if 97 * _922 * _934 / 100 and 10^(-mem[_943 + 31 len 1] - 2) > -1 / 97 * _922 * _934 / 100:
                                        revert with 0, 17
                                    _1037 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_1037 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_1037]:
                                        revert with 0, 50
                                    mem[_1037 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_1037 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1037 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_1037]:
                                        revert with 0, 50
                                    mem[_1037 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1037]:
                                        revert with 0, 50
                                    mem[_1037 + 96] = address(stor52.field_256)
                                    mem[_1037 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1037 + ceil32(return_data.size) + 132] = _922
                                    mem[_1037 + ceil32(return_data.size) + 164] = 97 * _922 * _934 / 100 * 10^(-uint8(_946) - 2)
                                    mem[_1037 + ceil32(return_data.size) + 196] = 160
                                    mem[_1037 + ceil32(return_data.size) + 292] = mem[_1037]
                                    s = 0
                                    t = _1037 + ceil32(return_data.size) + 324
                                    u = _1037 + 32
                                    while s < mem[_1037]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1037 + ceil32(return_data.size) + 228] = this.address
                                    mem[_1037 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _922, 97 * _922 * _934 / 100 * 10^(-uint8(_946) - 2), 160, address(this.address), block.timestamp, mem[_1037 + ceil32(return_data.size) + 292 len (32 * mem[_1037]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1037 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1037 + (2 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    _1391 = mem[_1037 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32
                                    require mem[_1037 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 <= test266151307()
                                    require _1037 + ceil32(return_data.size) + mem[_1037 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 159 < _1037 + ceil32(return_data.size) + return_data.size + 128
                                    _1406 = mem[_1037 + ceil32(return_data.size) + mem[_1037 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]
                                    if mem[_1037 + ceil32(return_data.size) + mem[_1037 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128] > test266151307():
                                        revert with 0, 65
                                    if _1037 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1037 + ceil32(return_data.size) + mem[_1037 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_1037 + ceil32(return_data.size) + mem[_1037 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _1037 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1037 + ceil32(return_data.size) + mem[_1037 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]) + 129
                                    mem[_1037 + (2 * ceil32(return_data.size)) + 128] = mem[_1037 + ceil32(return_data.size) + mem[_1037 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _922) >> 32 + 128]
                                    require return_data.size >= _1391 + (32 * _1406) + 32
                                    t = _1037 + ceil32(return_data.size) + _1391 + 160
                                    u = _1037 + (2 * ceil32(return_data.size)) + 160
                                    s = 0
                                    while s < _1406:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    t = 10
                                    u = 1
                                    s = -mem[_943 + 31 len 1] - 2
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if 97 * _922 * _934 / 100 and t * u > -1 / 97 * _922 * _934 / 100:
                                        revert with 0, 17
                                    _1449 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_1449 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_1449]:
                                        revert with 0, 50
                                    mem[_1449 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_1449 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1449 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_1449]:
                                        revert with 0, 50
                                    mem[_1449 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1449]:
                                        revert with 0, 50
                                    mem[_1449 + 96] = address(stor52.field_256)
                                    mem[_1449 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1449 + ceil32(return_data.size) + 132] = _922
                                    mem[_1449 + ceil32(return_data.size) + 164] = 97 * _922 * _934 / 100 * t * u
                                    mem[_1449 + ceil32(return_data.size) + 196] = 160
                                    mem[_1449 + ceil32(return_data.size) + 292] = mem[_1449]
                                    s = 0
                                    t = _1449 + ceil32(return_data.size) + 324
                                    u = _1449 + 32
                                    while s < mem[_1449]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1449 + ceil32(return_data.size) + 228] = this.address
                                    mem[_1449 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1449 + ceil32(return_data.size) + (32 * mem[_1449]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1581 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1587 = mem[_1581]
                                    require mem[_1581] <= test266151307()
                                    require _1581 + mem[_1581] + 31 < _1581 + return_data.size
                                    _1593 = mem[_1581 + mem[_1581]]
                                    if mem[_1581 + mem[_1581]] > test266151307():
                                        revert with 0, 65
                                    if _1581 + ceil32(return_data.size) + ceil32(32 * mem[_1581 + mem[_1581]]) + 1 > test266151307() or ceil32(32 * mem[_1581 + mem[_1581]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _1581 + ceil32(return_data.size) + ceil32(32 * mem[_1581 + mem[_1581]]) + 1
                                    mem[_1581 + ceil32(return_data.size)] = _1593
                                    require return_data.size >= _1587 + (32 * _1593) + 32
                                    t = _1581 + _1587 + 32
                                    u = _1581 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1593:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
        else:
            if address(governorAddress) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Strategist or Governor'
            idx = 0
            while idx < stor54.length:
                mem[0] = 54
                require ext_code.size(stor54[idx])
                staticcall stor54[idx].rewardTokenAddress() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _470 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_470] == mem[_470 + 12 len 20]
                if mem[_470 + 12 len 20]:
                    mem[mem[64]] = 0x242241d00000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor54[idx])
                    call stor54[idx].collectRewardToken() with:
                         gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            idx = 0
            while idx < swapTokens.length:
                mem[0] = 68
                if address(uniswapAddr):
                    mem[mem[64] + 4] = this.address
                    require ext_code.size(swapTokens[idx])
                    staticcall swapTokens[idx].0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _920 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _923 = mem[_920]
                    if mem[_920]:
                        mem[mem[64] + 4] = swapTokens[idx]
                        require ext_code.size(priceProviderAddress)
                        staticcall priceProviderAddress.0xaea91078 with:
                                gas gas_remaining wei
                               args swapTokens[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _932 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _935 = mem[_932]
                        require ext_code.size(swapTokens[idx])
                        staticcall swapTokens[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _944 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _947 = mem[_944]
                        require mem[_944] == mem[_944 + 31 len 1]
                        if mem[_944 + 31 len 1] < 4:
                            revert with 0, 'Token must have sufficient decimal places'
                        if mem[_944 + 31 len 1] > 18:
                            revert with 0, 'Token must have sufficient decimal places'
                        if 8 > !mem[_944 + 31 len 1]:
                            revert with 0, 17
                        if _923 and _935 > -1 / _923:
                            revert with 0, 17
                        if _923 * _935 > 0x2a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3:
                            revert with 0, 17
                        if 6 > mem[_944 + 31 len 1] + 8:
                            if 6 < mem[_944 + 31 len 1] + 8:
                                revert with 0, 17
                            if not -mem[_944 + 31 len 1] - 2:
                                if 97 * _923 * _935 / 100 and 1 > -1 / 97 * _923 * _935 / 100:
                                    revert with 0, 17
                                _1000 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_1000 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_1000]:
                                    revert with 0, 50
                                mem[_1000 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_1000 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _1000 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_1000]:
                                    revert with 0, 50
                                mem[_1000 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_1000]:
                                    revert with 0, 50
                                mem[_1000 + 96] = address(stor52.field_256)
                                mem[_1000 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1000 + ceil32(return_data.size) + 132] = _923
                                mem[_1000 + ceil32(return_data.size) + 164] = 97 * _923 * _935 / 100
                                mem[_1000 + ceil32(return_data.size) + 196] = 160
                                mem[_1000 + ceil32(return_data.size) + 292] = mem[_1000]
                                s = 0
                                t = _1000 + ceil32(return_data.size) + 324
                                u = _1000 + 32
                                while s < mem[_1000]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1000 + ceil32(return_data.size) + 228] = this.address
                                mem[_1000 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1000 + ceil32(return_data.size) + (32 * mem[_1000]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1382 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1397 = mem[_1382]
                                require mem[_1382] <= test266151307()
                                require _1382 + mem[_1382] + 31 < _1382 + return_data.size
                                _1412 = mem[_1382 + mem[_1382]]
                                if mem[_1382 + mem[_1382]] > test266151307():
                                    revert with 0, 65
                                if _1382 + ceil32(return_data.size) + ceil32(32 * mem[_1382 + mem[_1382]]) + 1 > test266151307() or ceil32(32 * mem[_1382 + mem[_1382]]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _1382 + ceil32(return_data.size) + ceil32(32 * mem[_1382 + mem[_1382]]) + 1
                                mem[_1382 + ceil32(return_data.size)] = _1412
                                require return_data.size >= _1397 + (32 * _1412) + 32
                                t = _1382 + _1397 + 32
                                u = _1382 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _1412:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                if bool(bool(-mem[_944 + 31 len 1] - 2 < 78)) or bool(bool(-mem[_944 + 31 len 1] - 2 < 32)):
                                    if 97 * _923 * _935 / 100 and 10^(-mem[_944 + 31 len 1] - 2) > -1 / 97 * _923 * _935 / 100:
                                        revert with 0, 17
                                    _1041 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_1041 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_1041]:
                                        revert with 0, 50
                                    mem[_1041 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_1041 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1041 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_1041]:
                                        revert with 0, 50
                                    mem[_1041 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1041]:
                                        revert with 0, 50
                                    mem[_1041 + 96] = address(stor52.field_256)
                                    mem[_1041 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1041 + ceil32(return_data.size) + 132] = _923
                                    mem[_1041 + ceil32(return_data.size) + 164] = 97 * _923 * _935 / 100 * 10^(-uint8(_947) - 2)
                                    mem[_1041 + ceil32(return_data.size) + 196] = 160
                                    mem[_1041 + ceil32(return_data.size) + 292] = mem[_1041]
                                    s = 0
                                    t = _1041 + ceil32(return_data.size) + 324
                                    u = _1041 + 32
                                    while s < mem[_1041]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1041 + ceil32(return_data.size) + 228] = this.address
                                    mem[_1041 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1041 + ceil32(return_data.size) + (32 * mem[_1041]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1381 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1396 = mem[_1381]
                                    require mem[_1381] <= test266151307()
                                    require _1381 + mem[_1381] + 31 < _1381 + return_data.size
                                    _1411 = mem[_1381 + mem[_1381]]
                                    if mem[_1381 + mem[_1381]] > test266151307():
                                        revert with 0, 65
                                    if _1381 + ceil32(return_data.size) + ceil32(32 * mem[_1381 + mem[_1381]]) + 1 > test266151307() or ceil32(32 * mem[_1381 + mem[_1381]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _1381 + ceil32(return_data.size) + ceil32(32 * mem[_1381 + mem[_1381]]) + 1
                                    mem[_1381 + ceil32(return_data.size)] = _1411
                                    require return_data.size >= _1396 + (32 * _1411) + 32
                                    t = _1381 + _1396 + 32
                                    u = _1381 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1411:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    t = 10
                                    u = 1
                                    s = -mem[_944 + 31 len 1] - 2
                                    while s > 1:
                                        if t > -1 / t:
                                            revert with 0, 17
                                        if not bool(s):
                                            t = t * t
                                            u = u
                                            s = uint255(s) * 0.5
                                            continue 
                                        t = t * t
                                        u = t * u
                                        s = uint255(s) * 0.5
                                        continue 
                                    if u > -1 / t:
                                        revert with 0, 17
                                    if 97 * _923 * _935 / 100 and t * u > -1 / 97 * _923 * _935 / 100:
                                        revert with 0, 17
                                    _1453 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_1453 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_1453]:
                                        revert with 0, 50
                                    mem[_1453 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_1453 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1453 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_1453]:
                                        revert with 0, 50
                                    mem[_1453 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1453]:
                                        revert with 0, 50
                                    mem[_1453 + 96] = address(stor52.field_256)
                                    mem[_1453 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1453 + ceil32(return_data.size) + 132] = _923
                                    mem[_1453 + ceil32(return_data.size) + 164] = 97 * _923 * _935 / 100 * t * u
                                    mem[_1453 + ceil32(return_data.size) + 196] = 160
                                    mem[_1453 + ceil32(return_data.size) + 292] = mem[_1453]
                                    s = 0
                                    v = _1453 + ceil32(return_data.size) + 324
                                    w = _1453 + 32
                                    while s < mem[_1453]:
                                        mem[v] = mem[w + 12 len 20]
                                        s = s + 1
                                        v = v + 32
                                        w = w + 32
                                        continue 
                                    mem[_1453 + ceil32(return_data.size) + 228] = this.address
                                    mem[_1453 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _923, 97 * _923 * _935 / 100 * t * u, 160, address(this.address), block.timestamp, mem[_1453 + ceil32(return_data.size) + 292 len (32 * mem[_1453]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1453 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1453 + (2 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    _1589 = mem[_1453 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32
                                    require mem[_1453 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 <= test266151307()
                                    require _1453 + ceil32(return_data.size) + mem[_1453 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 159 < _1453 + ceil32(return_data.size) + return_data.size + 128
                                    _1595 = mem[_1453 + ceil32(return_data.size) + mem[_1453 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]
                                    if mem[_1453 + ceil32(return_data.size) + mem[_1453 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128] > test266151307():
                                        revert with 0, 65
                                    if _1453 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1453 + ceil32(return_data.size) + mem[_1453 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_1453 + ceil32(return_data.size) + mem[_1453 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _1453 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1453 + ceil32(return_data.size) + mem[_1453 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]) + 129
                                    mem[_1453 + (2 * ceil32(return_data.size)) + 128] = mem[_1453 + ceil32(return_data.size) + mem[_1453 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]
                                    require return_data.size >= _1589 + (32 * _1595) + 32
                                    t = _1453 + ceil32(return_data.size) + _1589 + 160
                                    u = _1453 + (2 * ceil32(return_data.size)) + 160
                                    s = 0
                                    while s < _1595:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                        else:
                            if 6 >= mem[_944 + 31 len 1] + 8:
                                _964 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                mem[_964 + 32 len 96] = call.data[calldata.size len 96]
                                if 0 >= mem[_964]:
                                    revert with 0, 50
                                mem[_964 + 32] = swapTokens[idx]
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).WETH() with:
                                        gas gas_remaining wei
                                mem[_964 + 128] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[64] = _964 + ceil32(return_data.size) + 128
                                require return_data.size >= 32
                                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                if 1 >= mem[_964]:
                                    revert with 0, 50
                                mem[_964 + 64] = ext_call.return_data[12 len 20]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_964]:
                                    revert with 0, 50
                                mem[_964 + 96] = address(stor52.field_256)
                                mem[_964 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_964 + ceil32(return_data.size) + 132] = _923
                                mem[_964 + ceil32(return_data.size) + 164] = 97 * _923 * _935 / 100
                                mem[_964 + ceil32(return_data.size) + 196] = 160
                                mem[_964 + ceil32(return_data.size) + 292] = mem[_964]
                                s = 0
                                t = _964 + ceil32(return_data.size) + 324
                                u = _964 + 32
                                while s < mem[_964]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_964 + ceil32(return_data.size) + 228] = this.address
                                mem[_964 + ceil32(return_data.size) + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args _923, 97 * _923 * _935 / 100, 160, address(this.address), block.timestamp, mem[_964 + ceil32(return_data.size) + 292 len (32 * mem[_964]) + 32]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_964 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = _964 + (2 * ceil32(return_data.size)) + 128
                                require return_data.size >= 32
                                _1393 = mem[_964 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32
                                require mem[_964 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 <= test266151307()
                                require _964 + ceil32(return_data.size) + mem[_964 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 159 < _964 + ceil32(return_data.size) + return_data.size + 128
                                _1408 = mem[_964 + ceil32(return_data.size) + mem[_964 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]
                                if mem[_964 + ceil32(return_data.size) + mem[_964 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128] > test266151307():
                                    revert with 0, 65
                                if _964 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_964 + ceil32(return_data.size) + mem[_964 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_964 + ceil32(return_data.size) + mem[_964 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]) + 1 < 0:
                                    revert with 0, 65
                                mem[64] = _964 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_964 + ceil32(return_data.size) + mem[_964 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]) + 129
                                mem[_964 + (2 * ceil32(return_data.size)) + 128] = _1408
                                require return_data.size >= _1393 + (32 * _1408) + 32
                                t = _964 + ceil32(return_data.size) + _1393 + 160
                                u = _964 + (2 * ceil32(return_data.size)) + 160
                                s = 0
                                while s < _1408:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                if mem[_944 + 31 len 1] + 8 < 6:
                                    revert with 0, 17
                                if not mem[_944 + 31 len 1] + 2:
                                    _1013 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    mem[_1013 + 32 len 96] = call.data[calldata.size len 96]
                                    if 0 >= mem[_1013]:
                                        revert with 0, 50
                                    mem[_1013 + 32] = swapTokens[idx]
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).WETH() with:
                                            gas gas_remaining wei
                                    mem[_1013 + 128] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1013 + ceil32(return_data.size) + 128
                                    require return_data.size >= 32
                                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                    if 1 >= mem[_1013]:
                                        revert with 0, 50
                                    mem[_1013 + 64] = ext_call.return_data[12 len 20]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1013]:
                                        revert with 0, 50
                                    mem[_1013 + 96] = address(stor52.field_256)
                                    mem[_1013 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1013 + ceil32(return_data.size) + 132] = _923
                                    mem[_1013 + ceil32(return_data.size) + 164] = 97 * _923 * _935 / 100
                                    mem[_1013 + ceil32(return_data.size) + 196] = 160
                                    mem[_1013 + ceil32(return_data.size) + 292] = mem[_1013]
                                    s = 0
                                    t = _1013 + ceil32(return_data.size) + 324
                                    u = _1013 + 32
                                    while s < mem[_1013]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1013 + ceil32(return_data.size) + 228] = this.address
                                    mem[_1013 + ceil32(return_data.size) + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                         gas gas_remaining wei
                                        args _923, 97 * _923 * _935 / 100, 160, address(this.address), block.timestamp, mem[_1013 + ceil32(return_data.size) + 292 len (32 * mem[_1013]) + 32]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_1013 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = _1013 + (2 * ceil32(return_data.size)) + 128
                                    require return_data.size >= 32
                                    _1395 = mem[_1013 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32
                                    require mem[_1013 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 <= test266151307()
                                    require _1013 + ceil32(return_data.size) + mem[_1013 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 159 < _1013 + ceil32(return_data.size) + return_data.size + 128
                                    _1410 = mem[_1013 + ceil32(return_data.size) + mem[_1013 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]
                                    if mem[_1013 + ceil32(return_data.size) + mem[_1013 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128] > test266151307():
                                        revert with 0, 65
                                    if _1013 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1013 + ceil32(return_data.size) + mem[_1013 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_1013 + ceil32(return_data.size) + mem[_1013 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _1013 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1013 + ceil32(return_data.size) + mem[_1013 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]) + 129
                                    mem[_1013 + (2 * ceil32(return_data.size)) + 128] = _1410
                                    require return_data.size >= _1395 + (32 * _1410) + 32
                                    t = _1013 + ceil32(return_data.size) + _1395 + 160
                                    u = _1013 + (2 * ceil32(return_data.size)) + 160
                                    s = 0
                                    while s < _1410:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    if bool(bool(mem[_944 + 31 len 1] + 2 < 78)) or bool(bool(mem[_944 + 31 len 1] + 2 < 32)):
                                        if not 10^(mem[_944 + 31 len 1] + 2):
                                            revert with 0, 18
                                        _1054 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        mem[_1054 + 32 len 96] = call.data[calldata.size len 96]
                                        if 0 >= mem[_1054]:
                                            revert with 0, 50
                                        mem[_1054 + 32] = swapTokens[idx]
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).WETH() with:
                                                gas gas_remaining wei
                                        mem[_1054 + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1054 + ceil32(return_data.size) + 128
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_1054]:
                                            revert with 0, 50
                                        mem[_1054 + 64] = ext_call.return_data[12 len 20]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_1054]:
                                            revert with 0, 50
                                        mem[_1054 + 96] = address(stor52.field_256)
                                        mem[_1054 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1054 + ceil32(return_data.size) + 132] = _923
                                        mem[_1054 + ceil32(return_data.size) + 164] = 97 * _923 * _935 / 100 / 10^(uint8(_947) + 2)
                                        mem[_1054 + ceil32(return_data.size) + 196] = 160
                                        mem[_1054 + ceil32(return_data.size) + 292] = mem[_1054]
                                        s = 0
                                        t = _1054 + ceil32(return_data.size) + 324
                                        u = _1054 + 32
                                        while s < mem[_1054]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1054 + ceil32(return_data.size) + 228] = this.address
                                        mem[_1054 + ceil32(return_data.size) + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1054 + ceil32(return_data.size) + (32 * mem[_1054]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1379 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1394 = mem[_1379]
                                        require mem[_1379] <= test266151307()
                                        require _1379 + mem[_1379] + 31 < _1379 + return_data.size
                                        _1409 = mem[_1379 + mem[_1379]]
                                        if mem[_1379 + mem[_1379]] > test266151307():
                                            revert with 0, 65
                                        if _1379 + ceil32(return_data.size) + ceil32(32 * mem[_1379 + mem[_1379]]) + 1 > test266151307() or ceil32(32 * mem[_1379 + mem[_1379]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _1379 + ceil32(return_data.size) + ceil32(32 * mem[_1379 + mem[_1379]]) + 1
                                        mem[_1379 + ceil32(return_data.size)] = _1409
                                        require return_data.size >= _1394 + (32 * _1409) + 32
                                        t = _1379 + _1394 + 32
                                        u = _1379 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1409:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        t = 10
                                        u = 1
                                        s = mem[_944 + 31 len 1] + 2
                                        while s > 1:
                                            if t > -1 / t:
                                                revert with 0, 17
                                            if not bool(s):
                                                t = t * t
                                                u = u
                                                s = uint255(s) * 0.5
                                                continue 
                                            t = t * t
                                            u = t * u
                                            s = uint255(s) * 0.5
                                            continue 
                                        if u > -1 / t:
                                            revert with 0, 17
                                        if not t * u:
                                            revert with 0, 18
                                        _1451 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        mem[_1451 + 32 len 96] = call.data[calldata.size len 96]
                                        if 0 >= mem[_1451]:
                                            revert with 0, 50
                                        mem[_1451 + 32] = swapTokens[idx]
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).WETH() with:
                                                gas gas_remaining wei
                                        mem[_1451 + 128] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1451 + ceil32(return_data.size) + 128
                                        require return_data.size >= 32
                                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                                        if 1 >= mem[_1451]:
                                            revert with 0, 50
                                        mem[_1451 + 64] = ext_call.return_data[12 len 20]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_1451]:
                                            revert with 0, 50
                                        mem[_1451 + 96] = address(stor52.field_256)
                                        mem[_1451 + ceil32(return_data.size) + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1451 + ceil32(return_data.size) + 132] = _923
                                        mem[_1451 + ceil32(return_data.size) + 164] = 97 * _923 * _935 / 100 / t * u
                                        mem[_1451 + ceil32(return_data.size) + 196] = 160
                                        mem[_1451 + ceil32(return_data.size) + 292] = mem[_1451]
                                        s = 0
                                        v = _1451 + ceil32(return_data.size) + 324
                                        w = _1451 + 32
                                        while s < mem[_1451]:
                                            mem[v] = mem[w + 12 len 20]
                                            s = s + 1
                                            v = v + 32
                                            w = w + 32
                                            continue 
                                        mem[_1451 + ceil32(return_data.size) + 228] = this.address
                                        mem[_1451 + ceil32(return_data.size) + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).swapExactTokensForTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                             gas gas_remaining wei
                                            args _923, 97 * _923 * _935 / 100 / t * u, 160, address(this.address), block.timestamp, mem[_1451 + ceil32(return_data.size) + 292 len (32 * mem[_1451]) + 32]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[_1451 + ceil32(return_data.size) + 128 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = _1451 + (2 * ceil32(return_data.size)) + 128
                                        require return_data.size >= 32
                                        _1588 = mem[_1451 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32
                                        require mem[_1451 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 <= test266151307()
                                        require _1451 + ceil32(return_data.size) + mem[_1451 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 159 < _1451 + ceil32(return_data.size) + return_data.size + 128
                                        _1594 = mem[_1451 + ceil32(return_data.size) + mem[_1451 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]
                                        if mem[_1451 + ceil32(return_data.size) + mem[_1451 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128] > test266151307():
                                            revert with 0, 65
                                        if _1451 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1451 + ceil32(return_data.size) + mem[_1451 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]) + 129 > test266151307() or ceil32(32 * mem[_1451 + ceil32(return_data.size) + mem[_1451 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _1451 + (2 * ceil32(return_data.size)) + ceil32(32 * mem[_1451 + ceil32(return_data.size) + mem[_1451 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]) + 129
                                        mem[_1451 + (2 * ceil32(return_data.size)) + 128] = mem[_1451 + ceil32(return_data.size) + mem[_1451 + ceil32(return_data.size) + 128 len 4], Mask(224, 32, _923) >> 32 + 128]
                                        require return_data.size >= _1588 + (32 * _1594) + 32
                                        t = _1451 + ceil32(return_data.size) + _1588 + 160
                                        u = _1451 + (2 * ceil32(return_data.size)) + 160
                                        s = 0
                                        while s < _1594:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
}



}
