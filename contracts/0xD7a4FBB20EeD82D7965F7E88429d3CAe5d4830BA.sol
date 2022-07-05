contract main {




// =====================  Runtime code  =====================


#
#  - transferToken(address arg1, uint256 arg2)
#  - harvestAndSwap(address arg1)
#  - removeSwapToken(address arg1)
#
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
    staticcall priceProviderAddress.price(address arg1) with:
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
    staticcall priceProviderAddress.price(address arg1) with:
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
    staticcall priceProviderAddress.price(address arg1) with:
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
            mem[mem[64]] = 0xf6ca71b000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor54[idx])
            staticcall stor54[idx].getRewardTokenAddresses() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _35 = mem[_33]
            require mem[_33] <= test266151307()
            require _33 + return_data.size > _33 + mem[_33] + 31
            _37 = mem[_33 + mem[_33]]
            if mem[_33 + mem[_33]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_33 + mem[_33]]) + 1 < 0 or _33 + ceil32(return_data.size) + ceil32(32 * mem[_33 + mem[_33]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _33 + ceil32(return_data.size) + ceil32(32 * mem[_33 + mem[_33]]) + 1
            mem[_33 + ceil32(return_data.size)] = _37
            require _35 + (32 * _37) + 32 <= return_data.size
            t = _33 + _35 + 32
            u = _33 + ceil32(return_data.size) + 32
            s = 0
            while s < _37:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _37 != 0:
                mem[mem[64]] = 0x5a063f6300000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor54[idx])
                call stor54[idx].collectRewardTokens() with:
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
            mem[mem[64]] = 0xf6ca71b000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor54[idx])
            staticcall stor54[idx].getRewardTokenAddresses() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _34 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _36 = mem[_34]
            require mem[_34] <= test266151307()
            require _34 + return_data.size > _34 + mem[_34] + 31
            _38 = mem[_34 + mem[_34]]
            if mem[_34 + mem[_34]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_34 + mem[_34]]) + 1 < 0 or _34 + ceil32(return_data.size) + ceil32(32 * mem[_34 + mem[_34]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _34 + ceil32(return_data.size) + ceil32(32 * mem[_34 + mem[_34]]) + 1
            mem[_34 + ceil32(return_data.size)] = _38
            require _36 + (32 * _38) + 32 <= return_data.size
            t = _34 + _36 + 32
            u = _34 + ceil32(return_data.size) + 32
            s = 0
            while s < _38:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _38 != 0:
                mem[mem[64]] = 0x5a063f6300000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor54[idx])
                call stor54[idx].collectRewardTokens() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
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

function harvest(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if this.address == msg.sender:
        mem[96] = 0xf6ca71b000000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.getRewardTokenAddresses() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _10 = mem[96]
        require mem[96] <= test266151307()
        require return_data.size + 96 > mem[96] + 127
        _15 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _15
        require _10 + (32 * _15) + 32 <= return_data.size
        s = _10 + 128
        t = ceil32(return_data.size) + 128
        idx = 0
        while idx < _15:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if _15 != 0:
            require ext_code.size(arg1)
            call arg1.collectRewardTokens() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
    else:
        if msg.sender == strategistAddr:
            mem[96] = 0xf6ca71b000000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            staticcall arg1.getRewardTokenAddresses() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _13 = mem[96]
            require mem[96] <= test266151307()
            require return_data.size + 96 > mem[96] + 127
            _17 = mem[mem[96] + 96]
            if mem[mem[96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
            mem[ceil32(return_data.size) + 96] = _17
            require _13 + (32 * _17) + 32 <= return_data.size
            s = _13 + 128
            t = ceil32(return_data.size) + 128
            idx = 0
            while idx < _17:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if _17 != 0:
                require ext_code.size(arg1)
                call arg1.collectRewardTokens() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if address(governorAddress) != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Vault, Governor, or Strategist'
            mem[96] = 0xf6ca71b000000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            staticcall arg1.getRewardTokenAddresses() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _18 = mem[96]
            require mem[96] <= test266151307()
            require return_data.size + 96 > mem[96] + 127
            _20 = mem[mem[96] + 96]
            if mem[mem[96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
            mem[ceil32(return_data.size) + 96] = _20
            require _18 + (32 * _20) + 32 <= return_data.size
            s = _18 + 128
            t = ceil32(return_data.size) + 128
            idx = 0
            while idx < _20:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if _20 != 0:
                require ext_code.size(arg1)
                call arg1.collectRewardTokens() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
}

function removeStrategy(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    mem[0] = arg1
    mem[32] = 53
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
            mem[0] = arg1
            mem[32] = 53
            stor53[address(arg1)].field_0 = 0
            require ext_code.size(arg1)
            call arg1.withdrawAll() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96] = 0xf6ca71b000000000000000000000000000000000000000000000000000000000
            require ext_code.size(arg1)
            staticcall arg1.getRewardTokenAddresses() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = ceil32(return_data.size) + 96
            require return_data.size >= 32
            _119 = mem[96]
            require mem[96] <= test266151307()
            require return_data.size + 96 > mem[96] + 127
            _120 = mem[mem[96] + 96]
            if mem[mem[96] + 96] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
                revert with 0, 65
            mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
            mem[ceil32(return_data.size) + 96] = _120
            require _119 + (32 * _120) + 32 <= return_data.size
            s = _119 + 128
            t = ceil32(return_data.size) + 128
            idx = 0
            while idx < _120:
                require mem[s] == mem[s + 12 len 20]
                mem[t] = mem[s]
                s = s + 32
                t = t + 32
                idx = idx + 1
                continue 
            if _120 != 0:
                require ext_code.size(arg1)
                call arg1.collectRewardTokens() with:
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
        mem[0] = arg1
        mem[32] = 53
        stor53[address(arg1)].field_0 = 0
        require ext_code.size(arg1)
        call arg1.withdrawAll() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96] = 0xf6ca71b000000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.getRewardTokenAddresses() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = ceil32(return_data.size) + 96
        require return_data.size >= 32
        _116 = mem[96]
        require mem[96] <= test266151307()
        require return_data.size + 96 > mem[96] + 127
        _118 = mem[mem[96] + 96]
        if mem[mem[96] + 96] > test266151307():
            revert with 0, 65
        if ceil32(32 * mem[mem[96] + 96]) + 1 < 0 or ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97 > test266151307():
            revert with 0, 65
        mem[64] = ceil32(return_data.size) + ceil32(32 * mem[mem[96] + 96]) + 97
        mem[ceil32(return_data.size) + 96] = _118
        require _116 + (32 * _118) + 32 <= return_data.size
        s = _116 + 128
        t = ceil32(return_data.size) + 128
        idx = 0
        while idx < _118:
            require mem[s] == mem[s + 12 len 20]
            mem[t] = mem[s]
            s = s + 32
            t = t + 32
            idx = idx + 1
            continue 
        if _118 != 0:
            require ext_code.size(arg1)
            call arg1.collectRewardTokens() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        emit StrategyRemoved(arg1);
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
    staticcall priceProviderAddress.price(address arg1) with:
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
                _716 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _719 = mem[_716]
                if mem[_716]:
                    mem[mem[64] + 4] = swapTokens[idx]
                    require ext_code.size(priceProviderAddress)
                    staticcall priceProviderAddress.price(address arg1) with:
                            gas gas_remaining wei
                           args swapTokens[idx]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _728 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _731 = mem[_728]
                    require ext_code.size(swapTokens[idx])
                    staticcall swapTokens[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _740 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _743 = mem[_740]
                    require mem[_740] == mem[_740 + 31 len 1]
                    if mem[_740 + 31 len 1] < 4:
                        revert with 0, 'Token must have sufficient decimal places'
                    if mem[_740 + 31 len 1] > 18:
                        revert with 0, 'Token must have sufficient decimal places'
                    if 8 > !mem[_740 + 31 len 1]:
                        revert with 0, 17
                    if _719 and _731 > -1 / _719:
                        revert with 0, 17
                    if _719 * _731 > 0x2a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3:
                        revert with 0, 17
                    if 6 > mem[_740 + 31 len 1] + 8:
                        if 6 < mem[_740 + 31 len 1] + 8:
                            revert with 0, 17
                        if not -mem[_740 + 31 len 1] - 2:
                            if 97 * _719 * _731 / 100 and 1 > -1 / 97 * _719 * _731 / 100:
                                revert with 0, 17
                            require ext_code.size(address(uniswapAddr))
                            staticcall address(uniswapAddr).0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _826 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _840 = mem[_826]
                            require mem[_826] == mem[_826 + 12 len 20]
                            if swapTokens[idx] == mem[_826 + 12 len 20]:
                                _884 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_884]:
                                    revert with 0, 50
                                mem[_884 + 32] = swapTokens[idx]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 1 >= mem[_884]:
                                    revert with 0, 50
                                mem[_884 + 64] = address(stor52.field_256)
                                mem[_884 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_884 + 100] = _719
                                mem[_884 + 132] = 97 * _719 * _731 / 100
                                mem[_884 + 164] = 160
                                mem[_884 + 260] = mem[_884]
                                s = 0
                                t = _884 + 292
                                u = _884 + 32
                                while s < mem[_884]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_884 + 196] = this.address
                                mem[_884 + 228] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _884 + (32 * mem[_884]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1478 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1508 = mem[_1478]
                                require mem[_1478] <= test266151307()
                                require _1478 + return_data.size > _1478 + mem[_1478] + 31
                                _1538 = mem[_1478 + mem[_1478]]
                                if mem[_1478 + mem[_1478]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_1478 + mem[_1478]]) + 1 < 0 or _1478 + ceil32(return_data.size) + ceil32(32 * mem[_1478 + mem[_1478]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1478 + ceil32(return_data.size) + ceil32(32 * mem[_1478 + mem[_1478]]) + 1
                                mem[_1478 + ceil32(return_data.size)] = _1538
                                require _1508 + (32 * _1538) + 32 <= return_data.size
                                t = _1478 + _1508 + 32
                                u = _1478 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _1538:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                _882 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_882]:
                                    revert with 0, 50
                                mem[_882 + 32] = swapTokens[idx]
                                if 1 >= mem[_882]:
                                    revert with 0, 50
                                mem[_882 + 64] = address(_840)
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_882]:
                                    revert with 0, 50
                                mem[_882 + 96] = address(stor52.field_256)
                                mem[_882 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_882 + 132] = _719
                                mem[_882 + 164] = 97 * _719 * _731 / 100
                                mem[_882 + 196] = 160
                                mem[_882 + 292] = mem[_882]
                                s = 0
                                t = _882 + 324
                                u = _882 + 32
                                while s < mem[_882]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_882 + 228] = this.address
                                mem[_882 + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _882 + (32 * mem[_882]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1477 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1507 = mem[_1477]
                                require mem[_1477] <= test266151307()
                                require _1477 + return_data.size > _1477 + mem[_1477] + 31
                                _1537 = mem[_1477 + mem[_1477]]
                                if mem[_1477 + mem[_1477]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_1477 + mem[_1477]]) + 1 < 0 or _1477 + ceil32(return_data.size) + ceil32(32 * mem[_1477 + mem[_1477]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1477 + ceil32(return_data.size) + ceil32(32 * mem[_1477 + mem[_1477]]) + 1
                                mem[_1477 + ceil32(return_data.size)] = _1537
                                require _1507 + (32 * _1537) + 32 <= return_data.size
                                t = _1477 + _1507 + 32
                                u = _1477 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _1537:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                        else:
                            if bool(bool(-mem[_740 + 31 len 1] - 2 < 78)) or bool(bool(-mem[_740 + 31 len 1] - 2 < 32)):
                                if 97 * _719 * _731 / 100 and 10^(-mem[_740 + 31 len 1] - 2) > -1 / 97 * _719 * _731 / 100:
                                    revert with 0, 17
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _867 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _881 = mem[_867]
                                require mem[_867] == mem[_867 + 12 len 20]
                                if swapTokens[idx] == mem[_867 + 12 len 20]:
                                    _975 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_975]:
                                        revert with 0, 50
                                    mem[_975 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_975]:
                                        revert with 0, 50
                                    mem[_975 + 64] = address(stor52.field_256)
                                    mem[_975 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_975 + 100] = _719
                                    mem[_975 + 132] = 97 * _719 * _731 / 100 * 10^(-uint8(_743) - 2)
                                    mem[_975 + 164] = 160
                                    mem[_975 + 260] = mem[_975]
                                    s = 0
                                    t = _975 + 292
                                    u = _975 + 32
                                    while s < mem[_975]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_975 + 196] = this.address
                                    mem[_975 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _975 + (32 * mem[_975]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1476 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1506 = mem[_1476]
                                    require mem[_1476] <= test266151307()
                                    require _1476 + return_data.size > _1476 + mem[_1476] + 31
                                    _1536 = mem[_1476 + mem[_1476]]
                                    if mem[_1476 + mem[_1476]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1476 + mem[_1476]]) + 1 < 0 or _1476 + ceil32(return_data.size) + ceil32(32 * mem[_1476 + mem[_1476]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1476 + ceil32(return_data.size) + ceil32(32 * mem[_1476 + mem[_1476]]) + 1
                                    mem[_1476 + ceil32(return_data.size)] = _1536
                                    require _1506 + (32 * _1536) + 32 <= return_data.size
                                    t = _1476 + _1506 + 32
                                    u = _1476 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1536:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    if _1476 + _1506 + (32 * _1536) + 32 == -1:
                                        revert with 0, 17
                                    t = _1476 + _1506 + (32 * _1536) + 33
                                    continue 
                                _973 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_973]:
                                    revert with 0, 50
                                mem[_973 + 32] = swapTokens[idx]
                                if 1 >= mem[_973]:
                                    revert with 0, 50
                                mem[_973 + 64] = address(_881)
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_973]:
                                    revert with 0, 50
                                mem[_973 + 96] = address(stor52.field_256)
                                mem[_973 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_973 + 132] = _719
                                mem[_973 + 164] = 97 * _719 * _731 / 100 * 10^(-uint8(_743) - 2)
                                mem[_973 + 196] = 160
                                mem[_973 + 292] = mem[_973]
                                s = 0
                                t = _973 + 324
                                u = _973 + 32
                                while s < mem[_973]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_973 + 228] = this.address
                                mem[_973 + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _973 + (32 * mem[_973]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1475 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1505 = mem[_1475]
                                require mem[_1475] <= test266151307()
                                require _1475 + return_data.size > _1475 + mem[_1475] + 31
                                _1535 = mem[_1475 + mem[_1475]]
                                if mem[_1475 + mem[_1475]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_1475 + mem[_1475]]) + 1 < 0 or _1475 + ceil32(return_data.size) + ceil32(32 * mem[_1475 + mem[_1475]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1475 + ceil32(return_data.size) + ceil32(32 * mem[_1475 + mem[_1475]]) + 1
                                mem[_1475 + ceil32(return_data.size)] = _1535
                                require _1505 + (32 * _1535) + 32 <= return_data.size
                                t = _1475 + _1505 + 32
                                u = _1475 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _1535:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                t = 10
                                u = 1
                                s = -mem[_740 + 31 len 1] - 2
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
                                if 97 * _719 * _731 / 100 and t * u > -1 / 97 * _719 * _731 / 100:
                                    revert with 0, 17
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1602 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1638 = mem[_1602]
                                require mem[_1602] == mem[_1602 + 12 len 20]
                                if swapTokens[idx] == mem[_1602 + 12 len 20]:
                                    _1649 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_1649]:
                                        revert with 0, 50
                                    mem[_1649 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_1649]:
                                        revert with 0, 50
                                    mem[_1649 + 64] = address(stor52.field_256)
                                    mem[_1649 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1649 + 100] = _719
                                    mem[_1649 + 132] = 97 * _719 * _731 / 100 * t * u
                                    mem[_1649 + 164] = 160
                                    mem[_1649 + 260] = mem[_1649]
                                    s = 0
                                    t = _1649 + 292
                                    u = _1649 + 32
                                    while s < mem[_1649]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1649 + 196] = this.address
                                    mem[_1649 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1649 + (32 * mem[_1649]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1862 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1874 = mem[_1862]
                                    require mem[_1862] <= test266151307()
                                    require _1862 + return_data.size > _1862 + mem[_1862] + 31
                                    _1886 = mem[_1862 + mem[_1862]]
                                    if mem[_1862 + mem[_1862]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1862 + mem[_1862]]) + 1 < 0 or _1862 + ceil32(return_data.size) + ceil32(32 * mem[_1862 + mem[_1862]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1862 + ceil32(return_data.size) + ceil32(32 * mem[_1862 + mem[_1862]]) + 1
                                    mem[_1862 + ceil32(return_data.size)] = _1886
                                    require _1874 + (32 * _1886) + 32 <= return_data.size
                                    t = _1862 + _1874 + 32
                                    u = _1862 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1886:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    _1647 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_1647]:
                                        revert with 0, 50
                                    mem[_1647 + 32] = swapTokens[idx]
                                    if 1 >= mem[_1647]:
                                        revert with 0, 50
                                    mem[_1647 + 64] = address(_1638)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1647]:
                                        revert with 0, 50
                                    mem[_1647 + 96] = address(stor52.field_256)
                                    mem[_1647 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1647 + 132] = _719
                                    mem[_1647 + 164] = 97 * _719 * _731 / 100 * t * u
                                    mem[_1647 + 196] = 160
                                    mem[_1647 + 292] = mem[_1647]
                                    s = 0
                                    t = _1647 + 324
                                    u = _1647 + 32
                                    while s < mem[_1647]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1647 + 228] = this.address
                                    mem[_1647 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1647 + (32 * mem[_1647]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1861 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1873 = mem[_1861]
                                    require mem[_1861] <= test266151307()
                                    require _1861 + return_data.size > _1861 + mem[_1861] + 31
                                    _1885 = mem[_1861 + mem[_1861]]
                                    if mem[_1861 + mem[_1861]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1861 + mem[_1861]]) + 1 < 0 or _1861 + ceil32(return_data.size) + ceil32(32 * mem[_1861 + mem[_1861]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1861 + ceil32(return_data.size) + ceil32(32 * mem[_1861 + mem[_1861]]) + 1
                                    mem[_1861 + ceil32(return_data.size)] = _1885
                                    require _1873 + (32 * _1885) + 32 <= return_data.size
                                    t = _1861 + _1873 + 32
                                    u = _1861 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1885:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                    else:
                        if 6 >= mem[_740 + 31 len 1] + 8:
                            require ext_code.size(address(uniswapAddr))
                            staticcall address(uniswapAddr).0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _764 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _767 = mem[_764]
                            require mem[_764] == mem[_764 + 12 len 20]
                            if swapTokens[idx] == mem[_764 + 12 len 20]:
                                _772 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_772]:
                                    revert with 0, 50
                                mem[_772 + 32] = swapTokens[idx]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 1 >= mem[_772]:
                                    revert with 0, 50
                                mem[_772 + 64] = address(stor52.field_256)
                                mem[_772 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_772 + 100] = _719
                                mem[_772 + 132] = 97 * _719 * _731 / 100
                                mem[_772 + 164] = 160
                                mem[_772 + 260] = mem[_772]
                                s = 0
                                t = _772 + 292
                                u = _772 + 32
                                while s < mem[_772]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_772 + 196] = this.address
                                mem[_772 + 228] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _772 + (32 * mem[_772]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1470 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1500 = mem[_1470]
                                require mem[_1470] <= test266151307()
                                require _1470 + return_data.size > _1470 + mem[_1470] + 31
                                _1530 = mem[_1470 + mem[_1470]]
                                if mem[_1470 + mem[_1470]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_1470 + mem[_1470]]) + 1 < 0 or _1470 + ceil32(return_data.size) + ceil32(32 * mem[_1470 + mem[_1470]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1470 + ceil32(return_data.size) + ceil32(32 * mem[_1470 + mem[_1470]]) + 1
                                mem[_1470 + ceil32(return_data.size)] = _1530
                                require _1500 + (32 * _1530) + 32 <= return_data.size
                                t = _1470 + _1500 + 32
                                u = _1470 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _1530:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                _770 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_770]:
                                    revert with 0, 50
                                mem[_770 + 32] = swapTokens[idx]
                                if 1 >= mem[_770]:
                                    revert with 0, 50
                                mem[_770 + 64] = address(_767)
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_770]:
                                    revert with 0, 50
                                mem[_770 + 96] = address(stor52.field_256)
                                mem[_770 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_770 + 132] = _719
                                mem[_770 + 164] = 97 * _719 * _731 / 100
                                mem[_770 + 196] = 160
                                mem[_770 + 292] = mem[_770]
                                s = 0
                                t = _770 + 324
                                u = _770 + 32
                                while s < mem[_770]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_770 + 228] = this.address
                                mem[_770 + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _770 + (32 * mem[_770]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1469 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1499 = mem[_1469]
                                require mem[_1469] <= test266151307()
                                require _1469 + return_data.size > _1469 + mem[_1469] + 31
                                _1529 = mem[_1469 + mem[_1469]]
                                if mem[_1469 + mem[_1469]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_1469 + mem[_1469]]) + 1 < 0 or _1469 + ceil32(return_data.size) + ceil32(32 * mem[_1469 + mem[_1469]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _1469 + ceil32(return_data.size) + ceil32(32 * mem[_1469 + mem[_1469]]) + 1
                                mem[_1469 + ceil32(return_data.size)] = _1529
                                require _1499 + (32 * _1529) + 32 <= return_data.size
                                t = _1469 + _1499 + 32
                                u = _1469 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _1529:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                        else:
                            if mem[_740 + 31 len 1] + 8 < 6:
                                revert with 0, 17
                            if not mem[_740 + 31 len 1] + 2:
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _834 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _846 = mem[_834]
                                require mem[_834] == mem[_834 + 12 len 20]
                                if swapTokens[idx] == mem[_834 + 12 len 20]:
                                    _907 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_907]:
                                        revert with 0, 50
                                    mem[_907 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_907]:
                                        revert with 0, 50
                                    mem[_907 + 64] = address(stor52.field_256)
                                    mem[_907 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_907 + 100] = _719
                                    mem[_907 + 132] = 97 * _719 * _731 / 100
                                    mem[_907 + 164] = 160
                                    mem[_907 + 260] = mem[_907]
                                    s = 0
                                    t = _907 + 292
                                    u = _907 + 32
                                    while s < mem[_907]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_907 + 196] = this.address
                                    mem[_907 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _907 + (32 * mem[_907]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1474 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1504 = mem[_1474]
                                    require mem[_1474] <= test266151307()
                                    require _1474 + return_data.size > _1474 + mem[_1474] + 31
                                    _1534 = mem[_1474 + mem[_1474]]
                                    if mem[_1474 + mem[_1474]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1474 + mem[_1474]]) + 1 < 0 or _1474 + ceil32(return_data.size) + ceil32(32 * mem[_1474 + mem[_1474]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1474 + ceil32(return_data.size) + ceil32(32 * mem[_1474 + mem[_1474]]) + 1
                                    mem[_1474 + ceil32(return_data.size)] = _1534
                                    require _1504 + (32 * _1534) + 32 <= return_data.size
                                    t = _1474 + _1504 + 32
                                    u = _1474 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1534:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    _905 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_905]:
                                        revert with 0, 50
                                    mem[_905 + 32] = swapTokens[idx]
                                    if 1 >= mem[_905]:
                                        revert with 0, 50
                                    mem[_905 + 64] = address(_846)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_905]:
                                        revert with 0, 50
                                    mem[_905 + 96] = address(stor52.field_256)
                                    mem[_905 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_905 + 132] = _719
                                    mem[_905 + 164] = 97 * _719 * _731 / 100
                                    mem[_905 + 196] = 160
                                    mem[_905 + 292] = mem[_905]
                                    s = 0
                                    t = _905 + 324
                                    u = _905 + 32
                                    while s < mem[_905]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_905 + 228] = this.address
                                    mem[_905 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _905 + (32 * mem[_905]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1473 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1503 = mem[_1473]
                                    require mem[_1473] <= test266151307()
                                    require _1473 + return_data.size > _1473 + mem[_1473] + 31
                                    _1533 = mem[_1473 + mem[_1473]]
                                    if mem[_1473 + mem[_1473]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1473 + mem[_1473]]) + 1 < 0 or _1473 + ceil32(return_data.size) + ceil32(32 * mem[_1473 + mem[_1473]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1473 + ceil32(return_data.size) + ceil32(32 * mem[_1473 + mem[_1473]]) + 1
                                    mem[_1473 + ceil32(return_data.size)] = _1533
                                    require _1503 + (32 * _1533) + 32 <= return_data.size
                                    t = _1473 + _1503 + 32
                                    u = _1473 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1533:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                            else:
                                if bool(bool(mem[_740 + 31 len 1] + 2 < 78)) or bool(bool(mem[_740 + 31 len 1] + 2 < 32)):
                                    if not 10^(mem[_740 + 31 len 1] + 2):
                                        revert with 0, 18
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _873 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _904 = mem[_873]
                                    require mem[_873] == mem[_873 + 12 len 20]
                                    if swapTokens[idx] == mem[_873 + 12 len 20]:
                                        _997 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_997]:
                                            revert with 0, 50
                                        mem[_997 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_997]:
                                            revert with 0, 50
                                        mem[_997 + 64] = address(stor52.field_256)
                                        mem[_997 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_997 + 100] = _719
                                        mem[_997 + 132] = 97 * _719 * _731 / 100 / 10^(uint8(_743) + 2)
                                        mem[_997 + 164] = 160
                                        mem[_997 + 260] = mem[_997]
                                        s = 0
                                        t = _997 + 292
                                        u = _997 + 32
                                        while s < mem[_997]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_997 + 196] = this.address
                                        mem[_997 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _997 + (32 * mem[_997]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1472 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1502 = mem[_1472]
                                        require mem[_1472] <= test266151307()
                                        require _1472 + return_data.size > _1472 + mem[_1472] + 31
                                        _1532 = mem[_1472 + mem[_1472]]
                                        if mem[_1472 + mem[_1472]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1472 + mem[_1472]]) + 1 < 0 or _1472 + ceil32(return_data.size) + ceil32(32 * mem[_1472 + mem[_1472]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1472 + ceil32(return_data.size) + ceil32(32 * mem[_1472 + mem[_1472]]) + 1
                                        mem[_1472 + ceil32(return_data.size)] = _1532
                                        require _1502 + (32 * _1532) + 32 <= return_data.size
                                        t = _1472 + _1502 + 32
                                        u = _1472 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1532:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        _995 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if 0 >= mem[_995]:
                                            revert with 0, 50
                                        mem[_995 + 32] = swapTokens[idx]
                                        if 1 >= mem[_995]:
                                            revert with 0, 50
                                        mem[_995 + 64] = address(_904)
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_995]:
                                            revert with 0, 50
                                        mem[_995 + 96] = address(stor52.field_256)
                                        mem[_995 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_995 + 132] = _719
                                        mem[_995 + 164] = 97 * _719 * _731 / 100 / 10^(uint8(_743) + 2)
                                        mem[_995 + 196] = 160
                                        mem[_995 + 292] = mem[_995]
                                        s = 0
                                        t = _995 + 324
                                        u = _995 + 32
                                        while s < mem[_995]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_995 + 228] = this.address
                                        mem[_995 + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _995 + (32 * mem[_995]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1471 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1501 = mem[_1471]
                                        require mem[_1471] <= test266151307()
                                        require _1471 + return_data.size > _1471 + mem[_1471] + 31
                                        _1531 = mem[_1471 + mem[_1471]]
                                        if mem[_1471 + mem[_1471]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1471 + mem[_1471]]) + 1 < 0 or _1471 + ceil32(return_data.size) + ceil32(32 * mem[_1471 + mem[_1471]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1471 + ceil32(return_data.size) + ceil32(32 * mem[_1471 + mem[_1471]]) + 1
                                        mem[_1471 + ceil32(return_data.size)] = _1531
                                        require _1501 + (32 * _1531) + 32 <= return_data.size
                                        t = _1471 + _1501 + 32
                                        u = _1471 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1531:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                else:
                                    t = 10
                                    u = 1
                                    s = mem[_740 + 31 len 1] + 2
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
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1601 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1637 = mem[_1601]
                                    require mem[_1601] == mem[_1601 + 12 len 20]
                                    if swapTokens[idx] == mem[_1601 + 12 len 20]:
                                        _1645 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_1645]:
                                            revert with 0, 50
                                        mem[_1645 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_1645]:
                                            revert with 0, 50
                                        mem[_1645 + 64] = address(stor52.field_256)
                                        mem[_1645 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1645 + 100] = _719
                                        mem[_1645 + 132] = 97 * _719 * _731 / 100 / t * u
                                        mem[_1645 + 164] = 160
                                        mem[_1645 + 260] = mem[_1645]
                                        s = 0
                                        t = _1645 + 292
                                        u = _1645 + 32
                                        while s < mem[_1645]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1645 + 196] = this.address
                                        mem[_1645 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1645 + (32 * mem[_1645]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1860 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1872 = mem[_1860]
                                        require mem[_1860] <= test266151307()
                                        require _1860 + return_data.size > _1860 + mem[_1860] + 31
                                        _1884 = mem[_1860 + mem[_1860]]
                                        if mem[_1860 + mem[_1860]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1860 + mem[_1860]]) + 1 < 0 or _1860 + ceil32(return_data.size) + ceil32(32 * mem[_1860 + mem[_1860]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1860 + ceil32(return_data.size) + ceil32(32 * mem[_1860 + mem[_1860]]) + 1
                                        mem[_1860 + ceil32(return_data.size)] = _1884
                                        require _1872 + (32 * _1884) + 32 <= return_data.size
                                        t = _1860 + _1872 + 32
                                        u = _1860 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1884:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        _1643 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if 0 >= mem[_1643]:
                                            revert with 0, 50
                                        mem[_1643 + 32] = swapTokens[idx]
                                        if 1 >= mem[_1643]:
                                            revert with 0, 50
                                        mem[_1643 + 64] = address(_1637)
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_1643]:
                                            revert with 0, 50
                                        mem[_1643 + 96] = address(stor52.field_256)
                                        mem[_1643 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1643 + 132] = _719
                                        mem[_1643 + 164] = 97 * _719 * _731 / 100 / t * u
                                        mem[_1643 + 196] = 160
                                        mem[_1643 + 292] = mem[_1643]
                                        s = 0
                                        t = _1643 + 324
                                        u = _1643 + 32
                                        while s < mem[_1643]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1643 + 228] = this.address
                                        mem[_1643 + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1643 + (32 * mem[_1643]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1859 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1871 = mem[_1859]
                                        require mem[_1859] <= test266151307()
                                        require _1859 + return_data.size > _1859 + mem[_1859] + 31
                                        _1883 = mem[_1859 + mem[_1859]]
                                        if mem[_1859 + mem[_1859]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1859 + mem[_1859]]) + 1 < 0 or _1859 + ceil32(return_data.size) + ceil32(32 * mem[_1859 + mem[_1859]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1859 + ceil32(return_data.size) + ceil32(32 * mem[_1859 + mem[_1859]]) + 1
                                        mem[_1859 + ceil32(return_data.size)] = _1883
                                        require _1871 + (32 * _1883) + 32 <= return_data.size
                                        t = _1859 + _1871 + 32
                                        u = _1859 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1883:
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
                    _717 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _720 = mem[_717]
                    if mem[_717]:
                        mem[mem[64] + 4] = swapTokens[idx]
                        require ext_code.size(priceProviderAddress)
                        staticcall priceProviderAddress.price(address arg1) with:
                                gas gas_remaining wei
                               args swapTokens[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _729 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _732 = mem[_729]
                        require ext_code.size(swapTokens[idx])
                        staticcall swapTokens[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _741 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _744 = mem[_741]
                        require mem[_741] == mem[_741 + 31 len 1]
                        if mem[_741 + 31 len 1] < 4:
                            revert with 0, 'Token must have sufficient decimal places'
                        if mem[_741 + 31 len 1] > 18:
                            revert with 0, 'Token must have sufficient decimal places'
                        if 8 > !mem[_741 + 31 len 1]:
                            revert with 0, 17
                        if _720 and _732 > -1 / _720:
                            revert with 0, 17
                        if _720 * _732 > 0x2a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3:
                            revert with 0, 17
                        if 6 > mem[_741 + 31 len 1] + 8:
                            if 6 < mem[_741 + 31 len 1] + 8:
                                revert with 0, 17
                            if not -mem[_741 + 31 len 1] - 2:
                                if 97 * _720 * _732 / 100 and 1 > -1 / 97 * _720 * _732 / 100:
                                    revert with 0, 17
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _829 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _842 = mem[_829]
                                require mem[_829] == mem[_829 + 12 len 20]
                                if swapTokens[idx] == mem[_829 + 12 len 20]:
                                    _892 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_892]:
                                        revert with 0, 50
                                    mem[_892 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_892]:
                                        revert with 0, 50
                                    mem[_892 + 64] = address(stor52.field_256)
                                    mem[_892 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_892 + 100] = _720
                                    mem[_892 + 132] = 97 * _720 * _732 / 100
                                    mem[_892 + 164] = 160
                                    mem[_892 + 260] = mem[_892]
                                    s = 0
                                    t = _892 + 292
                                    u = _892 + 32
                                    while s < mem[_892]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_892 + 196] = this.address
                                    mem[_892 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _892 + (32 * mem[_892]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1488 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1518 = mem[_1488]
                                    require mem[_1488] <= test266151307()
                                    require _1488 + return_data.size > _1488 + mem[_1488] + 31
                                    _1548 = mem[_1488 + mem[_1488]]
                                    if mem[_1488 + mem[_1488]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1488 + mem[_1488]]) + 1 < 0 or _1488 + ceil32(return_data.size) + ceil32(32 * mem[_1488 + mem[_1488]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1488 + ceil32(return_data.size) + ceil32(32 * mem[_1488 + mem[_1488]]) + 1
                                    mem[_1488 + ceil32(return_data.size)] = _1548
                                    require _1518 + (32 * _1548) + 32 <= return_data.size
                                    t = _1488 + _1518 + 32
                                    u = _1488 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1548:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    _890 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_890]:
                                        revert with 0, 50
                                    mem[_890 + 32] = swapTokens[idx]
                                    if 1 >= mem[_890]:
                                        revert with 0, 50
                                    mem[_890 + 64] = address(_842)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_890]:
                                        revert with 0, 50
                                    mem[_890 + 96] = address(stor52.field_256)
                                    mem[_890 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_890 + 132] = _720
                                    mem[_890 + 164] = 97 * _720 * _732 / 100
                                    mem[_890 + 196] = 160
                                    mem[_890 + 292] = mem[_890]
                                    s = 0
                                    t = _890 + 324
                                    u = _890 + 32
                                    while s < mem[_890]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_890 + 228] = this.address
                                    mem[_890 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _890 + (32 * mem[_890]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1487 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1517 = mem[_1487]
                                    require mem[_1487] <= test266151307()
                                    require _1487 + return_data.size > _1487 + mem[_1487] + 31
                                    _1547 = mem[_1487 + mem[_1487]]
                                    if mem[_1487 + mem[_1487]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1487 + mem[_1487]]) + 1 < 0 or _1487 + ceil32(return_data.size) + ceil32(32 * mem[_1487 + mem[_1487]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1487 + ceil32(return_data.size) + ceil32(32 * mem[_1487 + mem[_1487]]) + 1
                                    mem[_1487 + ceil32(return_data.size)] = _1547
                                    require _1517 + (32 * _1547) + 32 <= return_data.size
                                    t = _1487 + _1517 + 32
                                    u = _1487 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1547:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                            else:
                                if bool(bool(-mem[_741 + 31 len 1] - 2 < 78)) or bool(bool(-mem[_741 + 31 len 1] - 2 < 32)):
                                    if 97 * _720 * _732 / 100 and 10^(-mem[_741 + 31 len 1] - 2) > -1 / 97 * _720 * _732 / 100:
                                        revert with 0, 17
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _869 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _889 = mem[_869]
                                    require mem[_869] == mem[_869 + 12 len 20]
                                    if swapTokens[idx] == mem[_869 + 12 len 20]:
                                        _983 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_983]:
                                            revert with 0, 50
                                        mem[_983 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_983]:
                                            revert with 0, 50
                                        mem[_983 + 64] = address(stor52.field_256)
                                        mem[_983 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_983 + 100] = _720
                                        mem[_983 + 132] = 97 * _720 * _732 / 100 * 10^(-uint8(_744) - 2)
                                        mem[_983 + 164] = 160
                                        mem[_983 + 260] = mem[_983]
                                        s = 0
                                        t = _983 + 292
                                        u = _983 + 32
                                        while s < mem[_983]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_983 + 196] = this.address
                                        mem[_983 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _983 + (32 * mem[_983]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1486 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1516 = mem[_1486]
                                        require mem[_1486] <= test266151307()
                                        require _1486 + return_data.size > _1486 + mem[_1486] + 31
                                        _1546 = mem[_1486 + mem[_1486]]
                                        if mem[_1486 + mem[_1486]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1486 + mem[_1486]]) + 1 < 0 or _1486 + ceil32(return_data.size) + ceil32(32 * mem[_1486 + mem[_1486]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1486 + ceil32(return_data.size) + ceil32(32 * mem[_1486 + mem[_1486]]) + 1
                                        mem[_1486 + ceil32(return_data.size)] = _1546
                                        require _1516 + (32 * _1546) + 32 <= return_data.size
                                        t = _1486 + _1516 + 32
                                        u = _1486 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1546:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if _1486 + _1516 + (32 * _1546) + 32 == -1:
                                            revert with 0, 17
                                        t = _1486 + _1516 + (32 * _1546) + 33
                                        continue 
                                    _981 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_981]:
                                        revert with 0, 50
                                    mem[_981 + 32] = swapTokens[idx]
                                    if 1 >= mem[_981]:
                                        revert with 0, 50
                                    mem[_981 + 64] = address(_889)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_981]:
                                        revert with 0, 50
                                    mem[_981 + 96] = address(stor52.field_256)
                                    mem[_981 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_981 + 132] = _720
                                    mem[_981 + 164] = 97 * _720 * _732 / 100 * 10^(-uint8(_744) - 2)
                                    mem[_981 + 196] = 160
                                    mem[_981 + 292] = mem[_981]
                                    s = 0
                                    t = _981 + 324
                                    u = _981 + 32
                                    while s < mem[_981]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_981 + 228] = this.address
                                    mem[_981 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _981 + (32 * mem[_981]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1485 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1515 = mem[_1485]
                                    require mem[_1485] <= test266151307()
                                    require _1485 + return_data.size > _1485 + mem[_1485] + 31
                                    _1545 = mem[_1485 + mem[_1485]]
                                    if mem[_1485 + mem[_1485]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1485 + mem[_1485]]) + 1 < 0 or _1485 + ceil32(return_data.size) + ceil32(32 * mem[_1485 + mem[_1485]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1485 + ceil32(return_data.size) + ceil32(32 * mem[_1485 + mem[_1485]]) + 1
                                    mem[_1485 + ceil32(return_data.size)] = _1545
                                    require _1515 + (32 * _1545) + 32 <= return_data.size
                                    t = _1485 + _1515 + 32
                                    u = _1485 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1545:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    t = 10
                                    u = 1
                                    s = -mem[_741 + 31 len 1] - 2
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
                                    if 97 * _720 * _732 / 100 and t * u > -1 / 97 * _720 * _732 / 100:
                                        revert with 0, 17
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1604 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1640 = mem[_1604]
                                    require mem[_1604] == mem[_1604 + 12 len 20]
                                    if swapTokens[idx] == mem[_1604 + 12 len 20]:
                                        _1657 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_1657]:
                                            revert with 0, 50
                                        mem[_1657 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_1657]:
                                            revert with 0, 50
                                        mem[_1657 + 64] = address(stor52.field_256)
                                        mem[_1657 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1657 + 100] = _720
                                        mem[_1657 + 132] = 97 * _720 * _732 / 100 * t * u
                                        mem[_1657 + 164] = 160
                                        mem[_1657 + 260] = mem[_1657]
                                        s = 0
                                        t = _1657 + 292
                                        u = _1657 + 32
                                        while s < mem[_1657]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1657 + 196] = this.address
                                        mem[_1657 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1657 + (32 * mem[_1657]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1866 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1878 = mem[_1866]
                                        require mem[_1866] <= test266151307()
                                        require _1866 + return_data.size > _1866 + mem[_1866] + 31
                                        _1890 = mem[_1866 + mem[_1866]]
                                        if mem[_1866 + mem[_1866]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1866 + mem[_1866]]) + 1 < 0 or _1866 + ceil32(return_data.size) + ceil32(32 * mem[_1866 + mem[_1866]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1866 + ceil32(return_data.size) + ceil32(32 * mem[_1866 + mem[_1866]]) + 1
                                        mem[_1866 + ceil32(return_data.size)] = _1890
                                        require _1878 + (32 * _1890) + 32 <= return_data.size
                                        t = _1866 + _1878 + 32
                                        u = _1866 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1890:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        _1655 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if 0 >= mem[_1655]:
                                            revert with 0, 50
                                        mem[_1655 + 32] = swapTokens[idx]
                                        if 1 >= mem[_1655]:
                                            revert with 0, 50
                                        mem[_1655 + 64] = address(_1640)
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_1655]:
                                            revert with 0, 50
                                        mem[_1655 + 96] = address(stor52.field_256)
                                        mem[_1655 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1655 + 132] = _720
                                        mem[_1655 + 164] = 97 * _720 * _732 / 100 * t * u
                                        mem[_1655 + 196] = 160
                                        mem[_1655 + 292] = mem[_1655]
                                        s = 0
                                        t = _1655 + 324
                                        u = _1655 + 32
                                        while s < mem[_1655]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1655 + 228] = this.address
                                        mem[_1655 + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1655 + (32 * mem[_1655]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1865 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1877 = mem[_1865]
                                        require mem[_1865] <= test266151307()
                                        require _1865 + return_data.size > _1865 + mem[_1865] + 31
                                        _1889 = mem[_1865 + mem[_1865]]
                                        if mem[_1865 + mem[_1865]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1865 + mem[_1865]]) + 1 < 0 or _1865 + ceil32(return_data.size) + ceil32(32 * mem[_1865 + mem[_1865]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1865 + ceil32(return_data.size) + ceil32(32 * mem[_1865 + mem[_1865]]) + 1
                                        mem[_1865 + ceil32(return_data.size)] = _1889
                                        require _1877 + (32 * _1889) + 32 <= return_data.size
                                        t = _1865 + _1877 + 32
                                        u = _1865 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1889:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                        else:
                            if 6 >= mem[_741 + 31 len 1] + 8:
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _765 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _768 = mem[_765]
                                require mem[_765] == mem[_765 + 12 len 20]
                                if swapTokens[idx] == mem[_765 + 12 len 20]:
                                    _776 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_776]:
                                        revert with 0, 50
                                    mem[_776 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_776]:
                                        revert with 0, 50
                                    mem[_776 + 64] = address(stor52.field_256)
                                    mem[_776 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_776 + 100] = _720
                                    mem[_776 + 132] = 97 * _720 * _732 / 100
                                    mem[_776 + 164] = 160
                                    mem[_776 + 260] = mem[_776]
                                    s = 0
                                    t = _776 + 292
                                    u = _776 + 32
                                    while s < mem[_776]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_776 + 196] = this.address
                                    mem[_776 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _776 + (32 * mem[_776]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1480 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1510 = mem[_1480]
                                    require mem[_1480] <= test266151307()
                                    require _1480 + return_data.size > _1480 + mem[_1480] + 31
                                    _1540 = mem[_1480 + mem[_1480]]
                                    if mem[_1480 + mem[_1480]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1480 + mem[_1480]]) + 1 < 0 or _1480 + ceil32(return_data.size) + ceil32(32 * mem[_1480 + mem[_1480]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1480 + ceil32(return_data.size) + ceil32(32 * mem[_1480 + mem[_1480]]) + 1
                                    mem[_1480 + ceil32(return_data.size)] = _1540
                                    require _1510 + (32 * _1540) + 32 <= return_data.size
                                    t = _1480 + _1510 + 32
                                    u = _1480 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1540:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    _774 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_774]:
                                        revert with 0, 50
                                    mem[_774 + 32] = swapTokens[idx]
                                    if 1 >= mem[_774]:
                                        revert with 0, 50
                                    mem[_774 + 64] = address(_768)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_774]:
                                        revert with 0, 50
                                    mem[_774 + 96] = address(stor52.field_256)
                                    mem[_774 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_774 + 132] = _720
                                    mem[_774 + 164] = 97 * _720 * _732 / 100
                                    mem[_774 + 196] = 160
                                    mem[_774 + 292] = mem[_774]
                                    s = 0
                                    t = _774 + 324
                                    u = _774 + 32
                                    while s < mem[_774]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_774 + 228] = this.address
                                    mem[_774 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _774 + (32 * mem[_774]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1479 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1509 = mem[_1479]
                                    require mem[_1479] <= test266151307()
                                    require _1479 + return_data.size > _1479 + mem[_1479] + 31
                                    _1539 = mem[_1479 + mem[_1479]]
                                    if mem[_1479 + mem[_1479]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1479 + mem[_1479]]) + 1 < 0 or _1479 + ceil32(return_data.size) + ceil32(32 * mem[_1479 + mem[_1479]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1479 + ceil32(return_data.size) + ceil32(32 * mem[_1479 + mem[_1479]]) + 1
                                    mem[_1479 + ceil32(return_data.size)] = _1539
                                    require _1509 + (32 * _1539) + 32 <= return_data.size
                                    t = _1479 + _1509 + 32
                                    u = _1479 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1539:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                            else:
                                if mem[_741 + 31 len 1] + 8 < 6:
                                    revert with 0, 17
                                if not mem[_741 + 31 len 1] + 2:
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _836 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _850 = mem[_836]
                                    require mem[_836] == mem[_836 + 12 len 20]
                                    if swapTokens[idx] == mem[_836 + 12 len 20]:
                                        _915 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_915]:
                                            revert with 0, 50
                                        mem[_915 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_915]:
                                            revert with 0, 50
                                        mem[_915 + 64] = address(stor52.field_256)
                                        mem[_915 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_915 + 100] = _720
                                        mem[_915 + 132] = 97 * _720 * _732 / 100
                                        mem[_915 + 164] = 160
                                        mem[_915 + 260] = mem[_915]
                                        s = 0
                                        t = _915 + 292
                                        u = _915 + 32
                                        while s < mem[_915]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_915 + 196] = this.address
                                        mem[_915 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _915 + (32 * mem[_915]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1484 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1514 = mem[_1484]
                                        require mem[_1484] <= test266151307()
                                        require _1484 + return_data.size > _1484 + mem[_1484] + 31
                                        _1544 = mem[_1484 + mem[_1484]]
                                        if mem[_1484 + mem[_1484]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1484 + mem[_1484]]) + 1 < 0 or _1484 + ceil32(return_data.size) + ceil32(32 * mem[_1484 + mem[_1484]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1484 + ceil32(return_data.size) + ceil32(32 * mem[_1484 + mem[_1484]]) + 1
                                        mem[_1484 + ceil32(return_data.size)] = _1544
                                        require _1514 + (32 * _1544) + 32 <= return_data.size
                                        t = _1484 + _1514 + 32
                                        u = _1484 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1544:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        _913 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if 0 >= mem[_913]:
                                            revert with 0, 50
                                        mem[_913 + 32] = swapTokens[idx]
                                        if 1 >= mem[_913]:
                                            revert with 0, 50
                                        mem[_913 + 64] = address(_850)
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_913]:
                                            revert with 0, 50
                                        mem[_913 + 96] = address(stor52.field_256)
                                        mem[_913 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_913 + 132] = _720
                                        mem[_913 + 164] = 97 * _720 * _732 / 100
                                        mem[_913 + 196] = 160
                                        mem[_913 + 292] = mem[_913]
                                        s = 0
                                        t = _913 + 324
                                        u = _913 + 32
                                        while s < mem[_913]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_913 + 228] = this.address
                                        mem[_913 + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _913 + (32 * mem[_913]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1483 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1513 = mem[_1483]
                                        require mem[_1483] <= test266151307()
                                        require _1483 + return_data.size > _1483 + mem[_1483] + 31
                                        _1543 = mem[_1483 + mem[_1483]]
                                        if mem[_1483 + mem[_1483]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1483 + mem[_1483]]) + 1 < 0 or _1483 + ceil32(return_data.size) + ceil32(32 * mem[_1483 + mem[_1483]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1483 + ceil32(return_data.size) + ceil32(32 * mem[_1483 + mem[_1483]]) + 1
                                        mem[_1483 + ceil32(return_data.size)] = _1543
                                        require _1513 + (32 * _1543) + 32 <= return_data.size
                                        t = _1483 + _1513 + 32
                                        u = _1483 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1543:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(bool(mem[_741 + 31 len 1] + 2 < 78)) or bool(bool(mem[_741 + 31 len 1] + 2 < 32)):
                                        if not 10^(mem[_741 + 31 len 1] + 2):
                                            revert with 0, 18
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _875 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _912 = mem[_875]
                                        require mem[_875] == mem[_875 + 12 len 20]
                                        if swapTokens[idx] == mem[_875 + 12 len 20]:
                                            _1005 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            if 0 >= mem[_1005]:
                                                revert with 0, 50
                                            mem[_1005 + 32] = swapTokens[idx]
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 1 >= mem[_1005]:
                                                revert with 0, 50
                                            mem[_1005 + 64] = address(stor52.field_256)
                                            mem[_1005 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1005 + 100] = _720
                                            mem[_1005 + 132] = 97 * _720 * _732 / 100 / 10^(uint8(_744) + 2)
                                            mem[_1005 + 164] = 160
                                            mem[_1005 + 260] = mem[_1005]
                                            s = 0
                                            t = _1005 + 292
                                            u = _1005 + 32
                                            while s < mem[_1005]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_1005 + 196] = this.address
                                            mem[_1005 + 228] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1005 + (32 * mem[_1005]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1482 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1512 = mem[_1482]
                                            require mem[_1482] <= test266151307()
                                            require _1482 + return_data.size > _1482 + mem[_1482] + 31
                                            _1542 = mem[_1482 + mem[_1482]]
                                            if mem[_1482 + mem[_1482]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_1482 + mem[_1482]]) + 1 < 0 or _1482 + ceil32(return_data.size) + ceil32(32 * mem[_1482 + mem[_1482]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _1482 + ceil32(return_data.size) + ceil32(32 * mem[_1482 + mem[_1482]]) + 1
                                            mem[_1482 + ceil32(return_data.size)] = _1542
                                            require _1512 + (32 * _1542) + 32 <= return_data.size
                                            t = _1482 + _1512 + 32
                                            u = _1482 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _1542:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                        else:
                                            _1003 = mem[64]
                                            mem[mem[64]] = 3
                                            mem[64] = mem[64] + 128
                                            if 0 >= mem[_1003]:
                                                revert with 0, 50
                                            mem[_1003 + 32] = swapTokens[idx]
                                            if 1 >= mem[_1003]:
                                                revert with 0, 50
                                            mem[_1003 + 64] = address(_912)
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 2 >= mem[_1003]:
                                                revert with 0, 50
                                            mem[_1003 + 96] = address(stor52.field_256)
                                            mem[_1003 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1003 + 132] = _720
                                            mem[_1003 + 164] = 97 * _720 * _732 / 100 / 10^(uint8(_744) + 2)
                                            mem[_1003 + 196] = 160
                                            mem[_1003 + 292] = mem[_1003]
                                            s = 0
                                            t = _1003 + 324
                                            u = _1003 + 32
                                            while s < mem[_1003]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_1003 + 228] = this.address
                                            mem[_1003 + 260] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1003 + (32 * mem[_1003]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1481 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1511 = mem[_1481]
                                            require mem[_1481] <= test266151307()
                                            require _1481 + return_data.size > _1481 + mem[_1481] + 31
                                            _1541 = mem[_1481 + mem[_1481]]
                                            if mem[_1481 + mem[_1481]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_1481 + mem[_1481]]) + 1 < 0 or _1481 + ceil32(return_data.size) + ceil32(32 * mem[_1481 + mem[_1481]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _1481 + ceil32(return_data.size) + ceil32(32 * mem[_1481 + mem[_1481]]) + 1
                                            mem[_1481 + ceil32(return_data.size)] = _1541
                                            require _1511 + (32 * _1541) + 32 <= return_data.size
                                            t = _1481 + _1511 + 32
                                            u = _1481 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _1541:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                    else:
                                        t = 10
                                        u = 1
                                        s = mem[_741 + 31 len 1] + 2
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
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1603 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1639 = mem[_1603]
                                        require mem[_1603] == mem[_1603 + 12 len 20]
                                        if swapTokens[idx] == mem[_1603 + 12 len 20]:
                                            _1653 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            if 0 >= mem[_1653]:
                                                revert with 0, 50
                                            mem[_1653 + 32] = swapTokens[idx]
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 1 >= mem[_1653]:
                                                revert with 0, 50
                                            mem[_1653 + 64] = address(stor52.field_256)
                                            mem[_1653 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1653 + 100] = _720
                                            mem[_1653 + 132] = 97 * _720 * _732 / 100 / t * u
                                            mem[_1653 + 164] = 160
                                            mem[_1653 + 260] = mem[_1653]
                                            s = 0
                                            t = _1653 + 292
                                            u = _1653 + 32
                                            while s < mem[_1653]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_1653 + 196] = this.address
                                            mem[_1653 + 228] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1653 + (32 * mem[_1653]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1864 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1876 = mem[_1864]
                                            require mem[_1864] <= test266151307()
                                            require _1864 + return_data.size > _1864 + mem[_1864] + 31
                                            _1888 = mem[_1864 + mem[_1864]]
                                            if mem[_1864 + mem[_1864]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_1864 + mem[_1864]]) + 1 < 0 or _1864 + ceil32(return_data.size) + ceil32(32 * mem[_1864 + mem[_1864]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _1864 + ceil32(return_data.size) + ceil32(32 * mem[_1864 + mem[_1864]]) + 1
                                            mem[_1864 + ceil32(return_data.size)] = _1888
                                            require _1876 + (32 * _1888) + 32 <= return_data.size
                                            t = _1864 + _1876 + 32
                                            u = _1864 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _1888:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                        else:
                                            _1651 = mem[64]
                                            mem[mem[64]] = 3
                                            mem[64] = mem[64] + 128
                                            if 0 >= mem[_1651]:
                                                revert with 0, 50
                                            mem[_1651 + 32] = swapTokens[idx]
                                            if 1 >= mem[_1651]:
                                                revert with 0, 50
                                            mem[_1651 + 64] = address(_1639)
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 2 >= mem[_1651]:
                                                revert with 0, 50
                                            mem[_1651 + 96] = address(stor52.field_256)
                                            mem[_1651 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1651 + 132] = _720
                                            mem[_1651 + 164] = 97 * _720 * _732 / 100 / t * u
                                            mem[_1651 + 196] = 160
                                            mem[_1651 + 292] = mem[_1651]
                                            s = 0
                                            t = _1651 + 324
                                            u = _1651 + 32
                                            while s < mem[_1651]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_1651 + 228] = this.address
                                            mem[_1651 + 260] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1651 + (32 * mem[_1651]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1863 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1875 = mem[_1863]
                                            require mem[_1863] <= test266151307()
                                            require _1863 + return_data.size > _1863 + mem[_1863] + 31
                                            _1887 = mem[_1863 + mem[_1863]]
                                            if mem[_1863 + mem[_1863]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_1863 + mem[_1863]]) + 1 < 0 or _1863 + ceil32(return_data.size) + ceil32(32 * mem[_1863 + mem[_1863]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _1863 + ceil32(return_data.size) + ceil32(32 * mem[_1863 + mem[_1863]]) + 1
                                            mem[_1863 + ceil32(return_data.size)] = _1887
                                            require _1875 + (32 * _1887) + 32 <= return_data.size
                                            t = _1863 + _1875 + 32
                                            u = _1863 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _1887:
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
                    _718 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _721 = mem[_718]
                    if mem[_718]:
                        mem[mem[64] + 4] = swapTokens[idx]
                        require ext_code.size(priceProviderAddress)
                        staticcall priceProviderAddress.price(address arg1) with:
                                gas gas_remaining wei
                               args swapTokens[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _730 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _733 = mem[_730]
                        require ext_code.size(swapTokens[idx])
                        staticcall swapTokens[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _742 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _745 = mem[_742]
                        require mem[_742] == mem[_742 + 31 len 1]
                        if mem[_742 + 31 len 1] < 4:
                            revert with 0, 'Token must have sufficient decimal places'
                        if mem[_742 + 31 len 1] > 18:
                            revert with 0, 'Token must have sufficient decimal places'
                        if 8 > !mem[_742 + 31 len 1]:
                            revert with 0, 17
                        if _721 and _733 > -1 / _721:
                            revert with 0, 17
                        if _721 * _733 > 0x2a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3:
                            revert with 0, 17
                        if 6 > mem[_742 + 31 len 1] + 8:
                            if 6 < mem[_742 + 31 len 1] + 8:
                                revert with 0, 17
                            if not -mem[_742 + 31 len 1] - 2:
                                if 97 * _721 * _733 / 100 and 1 > -1 / 97 * _721 * _733 / 100:
                                    revert with 0, 17
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _832 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _844 = mem[_832]
                                require mem[_832] == mem[_832 + 12 len 20]
                                if swapTokens[idx] == mem[_832 + 12 len 20]:
                                    _900 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_900]:
                                        revert with 0, 50
                                    mem[_900 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_900]:
                                        revert with 0, 50
                                    mem[_900 + 64] = address(stor52.field_256)
                                    mem[_900 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_900 + 100] = _721
                                    mem[_900 + 132] = 97 * _721 * _733 / 100
                                    mem[_900 + 164] = 160
                                    mem[_900 + 260] = mem[_900]
                                    s = 0
                                    t = _900 + 292
                                    u = _900 + 32
                                    while s < mem[_900]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_900 + 196] = this.address
                                    mem[_900 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _900 + (32 * mem[_900]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1498 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1528 = mem[_1498]
                                    require mem[_1498] <= test266151307()
                                    require _1498 + return_data.size > _1498 + mem[_1498] + 31
                                    _1558 = mem[_1498 + mem[_1498]]
                                    if mem[_1498 + mem[_1498]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1498 + mem[_1498]]) + 1 < 0 or _1498 + ceil32(return_data.size) + ceil32(32 * mem[_1498 + mem[_1498]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1498 + ceil32(return_data.size) + ceil32(32 * mem[_1498 + mem[_1498]]) + 1
                                    mem[_1498 + ceil32(return_data.size)] = _1558
                                    require _1528 + (32 * _1558) + 32 <= return_data.size
                                    t = _1498 + _1528 + 32
                                    u = _1498 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1558:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    _898 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_898]:
                                        revert with 0, 50
                                    mem[_898 + 32] = swapTokens[idx]
                                    if 1 >= mem[_898]:
                                        revert with 0, 50
                                    mem[_898 + 64] = address(_844)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_898]:
                                        revert with 0, 50
                                    mem[_898 + 96] = address(stor52.field_256)
                                    mem[_898 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_898 + 132] = _721
                                    mem[_898 + 164] = 97 * _721 * _733 / 100
                                    mem[_898 + 196] = 160
                                    mem[_898 + 292] = mem[_898]
                                    s = 0
                                    t = _898 + 324
                                    u = _898 + 32
                                    while s < mem[_898]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_898 + 228] = this.address
                                    mem[_898 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _898 + (32 * mem[_898]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1497 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1527 = mem[_1497]
                                    require mem[_1497] <= test266151307()
                                    require _1497 + return_data.size > _1497 + mem[_1497] + 31
                                    _1557 = mem[_1497 + mem[_1497]]
                                    if mem[_1497 + mem[_1497]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1497 + mem[_1497]]) + 1 < 0 or _1497 + ceil32(return_data.size) + ceil32(32 * mem[_1497 + mem[_1497]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1497 + ceil32(return_data.size) + ceil32(32 * mem[_1497 + mem[_1497]]) + 1
                                    mem[_1497 + ceil32(return_data.size)] = _1557
                                    require _1527 + (32 * _1557) + 32 <= return_data.size
                                    t = _1497 + _1527 + 32
                                    u = _1497 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1557:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                            else:
                                if bool(bool(-mem[_742 + 31 len 1] - 2 < 78)) or bool(bool(-mem[_742 + 31 len 1] - 2 < 32)):
                                    if 97 * _721 * _733 / 100 and 10^(-mem[_742 + 31 len 1] - 2) > -1 / 97 * _721 * _733 / 100:
                                        revert with 0, 17
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _871 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _897 = mem[_871]
                                    require mem[_871] == mem[_871 + 12 len 20]
                                    if swapTokens[idx] == mem[_871 + 12 len 20]:
                                        _991 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_991]:
                                            revert with 0, 50
                                        mem[_991 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_991]:
                                            revert with 0, 50
                                        mem[_991 + 64] = address(stor52.field_256)
                                        mem[_991 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_991 + 100] = _721
                                        mem[_991 + 132] = 97 * _721 * _733 / 100 * 10^(-uint8(_745) - 2)
                                        mem[_991 + 164] = 160
                                        mem[_991 + 260] = mem[_991]
                                        s = 0
                                        t = _991 + 292
                                        u = _991 + 32
                                        while s < mem[_991]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_991 + 196] = this.address
                                        mem[_991 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _991 + (32 * mem[_991]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1496 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1526 = mem[_1496]
                                        require mem[_1496] <= test266151307()
                                        require _1496 + return_data.size > _1496 + mem[_1496] + 31
                                        _1556 = mem[_1496 + mem[_1496]]
                                        if mem[_1496 + mem[_1496]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1496 + mem[_1496]]) + 1 < 0 or _1496 + ceil32(return_data.size) + ceil32(32 * mem[_1496 + mem[_1496]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1496 + ceil32(return_data.size) + ceil32(32 * mem[_1496 + mem[_1496]]) + 1
                                        mem[_1496 + ceil32(return_data.size)] = _1556
                                        require _1526 + (32 * _1556) + 32 <= return_data.size
                                        t = _1496 + _1526 + 32
                                        u = _1496 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1556:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if _1496 + _1526 + (32 * _1556) + 32 == -1:
                                            revert with 0, 17
                                        t = _1496 + _1526 + (32 * _1556) + 33
                                        continue 
                                    _989 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_989]:
                                        revert with 0, 50
                                    mem[_989 + 32] = swapTokens[idx]
                                    if 1 >= mem[_989]:
                                        revert with 0, 50
                                    mem[_989 + 64] = address(_897)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_989]:
                                        revert with 0, 50
                                    mem[_989 + 96] = address(stor52.field_256)
                                    mem[_989 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_989 + 132] = _721
                                    mem[_989 + 164] = 97 * _721 * _733 / 100 * 10^(-uint8(_745) - 2)
                                    mem[_989 + 196] = 160
                                    mem[_989 + 292] = mem[_989]
                                    s = 0
                                    t = _989 + 324
                                    u = _989 + 32
                                    while s < mem[_989]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_989 + 228] = this.address
                                    mem[_989 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _989 + (32 * mem[_989]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1495 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1525 = mem[_1495]
                                    require mem[_1495] <= test266151307()
                                    require _1495 + return_data.size > _1495 + mem[_1495] + 31
                                    _1555 = mem[_1495 + mem[_1495]]
                                    if mem[_1495 + mem[_1495]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1495 + mem[_1495]]) + 1 < 0 or _1495 + ceil32(return_data.size) + ceil32(32 * mem[_1495 + mem[_1495]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1495 + ceil32(return_data.size) + ceil32(32 * mem[_1495 + mem[_1495]]) + 1
                                    mem[_1495 + ceil32(return_data.size)] = _1555
                                    require _1525 + (32 * _1555) + 32 <= return_data.size
                                    t = _1495 + _1525 + 32
                                    u = _1495 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1555:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    t = 10
                                    u = 1
                                    s = -mem[_742 + 31 len 1] - 2
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
                                    if 97 * _721 * _733 / 100 and t * u > -1 / 97 * _721 * _733 / 100:
                                        revert with 0, 17
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1606 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1642 = mem[_1606]
                                    require mem[_1606] == mem[_1606 + 12 len 20]
                                    if swapTokens[idx] == mem[_1606 + 12 len 20]:
                                        _1665 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_1665]:
                                            revert with 0, 50
                                        mem[_1665 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_1665]:
                                            revert with 0, 50
                                        mem[_1665 + 64] = address(stor52.field_256)
                                        mem[_1665 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1665 + 100] = _721
                                        mem[_1665 + 132] = 97 * _721 * _733 / 100 * t * u
                                        mem[_1665 + 164] = 160
                                        mem[_1665 + 260] = mem[_1665]
                                        s = 0
                                        t = _1665 + 292
                                        u = _1665 + 32
                                        while s < mem[_1665]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1665 + 196] = this.address
                                        mem[_1665 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1665 + (32 * mem[_1665]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1870 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1882 = mem[_1870]
                                        require mem[_1870] <= test266151307()
                                        require _1870 + return_data.size > _1870 + mem[_1870] + 31
                                        _1894 = mem[_1870 + mem[_1870]]
                                        if mem[_1870 + mem[_1870]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1870 + mem[_1870]]) + 1 < 0 or _1870 + ceil32(return_data.size) + ceil32(32 * mem[_1870 + mem[_1870]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1870 + ceil32(return_data.size) + ceil32(32 * mem[_1870 + mem[_1870]]) + 1
                                        mem[_1870 + ceil32(return_data.size)] = _1894
                                        require _1882 + (32 * _1894) + 32 <= return_data.size
                                        t = _1870 + _1882 + 32
                                        u = _1870 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1894:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        _1663 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if 0 >= mem[_1663]:
                                            revert with 0, 50
                                        mem[_1663 + 32] = swapTokens[idx]
                                        if 1 >= mem[_1663]:
                                            revert with 0, 50
                                        mem[_1663 + 64] = address(_1642)
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_1663]:
                                            revert with 0, 50
                                        mem[_1663 + 96] = address(stor52.field_256)
                                        mem[_1663 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1663 + 132] = _721
                                        mem[_1663 + 164] = 97 * _721 * _733 / 100 * t * u
                                        mem[_1663 + 196] = 160
                                        mem[_1663 + 292] = mem[_1663]
                                        s = 0
                                        t = _1663 + 324
                                        u = _1663 + 32
                                        while s < mem[_1663]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1663 + 228] = this.address
                                        mem[_1663 + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1663 + (32 * mem[_1663]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1869 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1881 = mem[_1869]
                                        require mem[_1869] <= test266151307()
                                        require _1869 + return_data.size > _1869 + mem[_1869] + 31
                                        _1893 = mem[_1869 + mem[_1869]]
                                        if mem[_1869 + mem[_1869]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1869 + mem[_1869]]) + 1 < 0 or _1869 + ceil32(return_data.size) + ceil32(32 * mem[_1869 + mem[_1869]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1869 + ceil32(return_data.size) + ceil32(32 * mem[_1869 + mem[_1869]]) + 1
                                        mem[_1869 + ceil32(return_data.size)] = _1893
                                        require _1881 + (32 * _1893) + 32 <= return_data.size
                                        t = _1869 + _1881 + 32
                                        u = _1869 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1893:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                        else:
                            if 6 >= mem[_742 + 31 len 1] + 8:
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _766 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _769 = mem[_766]
                                require mem[_766] == mem[_766 + 12 len 20]
                                if swapTokens[idx] == mem[_766 + 12 len 20]:
                                    _780 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_780]:
                                        revert with 0, 50
                                    mem[_780 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_780]:
                                        revert with 0, 50
                                    mem[_780 + 64] = address(stor52.field_256)
                                    mem[_780 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_780 + 100] = _721
                                    mem[_780 + 132] = 97 * _721 * _733 / 100
                                    mem[_780 + 164] = 160
                                    mem[_780 + 260] = mem[_780]
                                    s = 0
                                    t = _780 + 292
                                    u = _780 + 32
                                    while s < mem[_780]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_780 + 196] = this.address
                                    mem[_780 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _780 + (32 * mem[_780]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1490 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1520 = mem[_1490]
                                    require mem[_1490] <= test266151307()
                                    require _1490 + return_data.size > _1490 + mem[_1490] + 31
                                    _1550 = mem[_1490 + mem[_1490]]
                                    if mem[_1490 + mem[_1490]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1490 + mem[_1490]]) + 1 < 0 or _1490 + ceil32(return_data.size) + ceil32(32 * mem[_1490 + mem[_1490]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1490 + ceil32(return_data.size) + ceil32(32 * mem[_1490 + mem[_1490]]) + 1
                                    mem[_1490 + ceil32(return_data.size)] = _1550
                                    require _1520 + (32 * _1550) + 32 <= return_data.size
                                    t = _1490 + _1520 + 32
                                    u = _1490 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1550:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    _778 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_778]:
                                        revert with 0, 50
                                    mem[_778 + 32] = swapTokens[idx]
                                    if 1 >= mem[_778]:
                                        revert with 0, 50
                                    mem[_778 + 64] = address(_769)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_778]:
                                        revert with 0, 50
                                    mem[_778 + 96] = address(stor52.field_256)
                                    mem[_778 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_778 + 132] = _721
                                    mem[_778 + 164] = 97 * _721 * _733 / 100
                                    mem[_778 + 196] = 160
                                    mem[_778 + 292] = mem[_778]
                                    s = 0
                                    t = _778 + 324
                                    u = _778 + 32
                                    while s < mem[_778]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_778 + 228] = this.address
                                    mem[_778 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _778 + (32 * mem[_778]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1489 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1519 = mem[_1489]
                                    require mem[_1489] <= test266151307()
                                    require _1489 + return_data.size > _1489 + mem[_1489] + 31
                                    _1549 = mem[_1489 + mem[_1489]]
                                    if mem[_1489 + mem[_1489]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_1489 + mem[_1489]]) + 1 < 0 or _1489 + ceil32(return_data.size) + ceil32(32 * mem[_1489 + mem[_1489]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _1489 + ceil32(return_data.size) + ceil32(32 * mem[_1489 + mem[_1489]]) + 1
                                    mem[_1489 + ceil32(return_data.size)] = _1549
                                    require _1519 + (32 * _1549) + 32 <= return_data.size
                                    t = _1489 + _1519 + 32
                                    u = _1489 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _1549:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                            else:
                                if mem[_742 + 31 len 1] + 8 < 6:
                                    revert with 0, 17
                                if not mem[_742 + 31 len 1] + 2:
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _838 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _854 = mem[_838]
                                    require mem[_838] == mem[_838 + 12 len 20]
                                    if swapTokens[idx] == mem[_838 + 12 len 20]:
                                        _923 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_923]:
                                            revert with 0, 50
                                        mem[_923 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_923]:
                                            revert with 0, 50
                                        mem[_923 + 64] = address(stor52.field_256)
                                        mem[_923 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_923 + 100] = _721
                                        mem[_923 + 132] = 97 * _721 * _733 / 100
                                        mem[_923 + 164] = 160
                                        mem[_923 + 260] = mem[_923]
                                        s = 0
                                        t = _923 + 292
                                        u = _923 + 32
                                        while s < mem[_923]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_923 + 196] = this.address
                                        mem[_923 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _923 + (32 * mem[_923]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1494 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1524 = mem[_1494]
                                        require mem[_1494] <= test266151307()
                                        require _1494 + return_data.size > _1494 + mem[_1494] + 31
                                        _1554 = mem[_1494 + mem[_1494]]
                                        if mem[_1494 + mem[_1494]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1494 + mem[_1494]]) + 1 < 0 or _1494 + ceil32(return_data.size) + ceil32(32 * mem[_1494 + mem[_1494]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1494 + ceil32(return_data.size) + ceil32(32 * mem[_1494 + mem[_1494]]) + 1
                                        mem[_1494 + ceil32(return_data.size)] = _1554
                                        require _1524 + (32 * _1554) + 32 <= return_data.size
                                        t = _1494 + _1524 + 32
                                        u = _1494 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1554:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        _921 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if 0 >= mem[_921]:
                                            revert with 0, 50
                                        mem[_921 + 32] = swapTokens[idx]
                                        if 1 >= mem[_921]:
                                            revert with 0, 50
                                        mem[_921 + 64] = address(_854)
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_921]:
                                            revert with 0, 50
                                        mem[_921 + 96] = address(stor52.field_256)
                                        mem[_921 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_921 + 132] = _721
                                        mem[_921 + 164] = 97 * _721 * _733 / 100
                                        mem[_921 + 196] = 160
                                        mem[_921 + 292] = mem[_921]
                                        s = 0
                                        t = _921 + 324
                                        u = _921 + 32
                                        while s < mem[_921]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_921 + 228] = this.address
                                        mem[_921 + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _921 + (32 * mem[_921]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1493 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1523 = mem[_1493]
                                        require mem[_1493] <= test266151307()
                                        require _1493 + return_data.size > _1493 + mem[_1493] + 31
                                        _1553 = mem[_1493 + mem[_1493]]
                                        if mem[_1493 + mem[_1493]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_1493 + mem[_1493]]) + 1 < 0 or _1493 + ceil32(return_data.size) + ceil32(32 * mem[_1493 + mem[_1493]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _1493 + ceil32(return_data.size) + ceil32(32 * mem[_1493 + mem[_1493]]) + 1
                                        mem[_1493 + ceil32(return_data.size)] = _1553
                                        require _1523 + (32 * _1553) + 32 <= return_data.size
                                        t = _1493 + _1523 + 32
                                        u = _1493 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _1553:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(bool(mem[_742 + 31 len 1] + 2 < 78)) or bool(bool(mem[_742 + 31 len 1] + 2 < 32)):
                                        if not 10^(mem[_742 + 31 len 1] + 2):
                                            revert with 0, 18
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _877 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _920 = mem[_877]
                                        require mem[_877] == mem[_877 + 12 len 20]
                                        if swapTokens[idx] == mem[_877 + 12 len 20]:
                                            _1013 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            if 0 >= mem[_1013]:
                                                revert with 0, 50
                                            mem[_1013 + 32] = swapTokens[idx]
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 1 >= mem[_1013]:
                                                revert with 0, 50
                                            mem[_1013 + 64] = address(stor52.field_256)
                                            mem[_1013 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1013 + 100] = _721
                                            mem[_1013 + 132] = 97 * _721 * _733 / 100 / 10^(uint8(_745) + 2)
                                            mem[_1013 + 164] = 160
                                            mem[_1013 + 260] = mem[_1013]
                                            s = 0
                                            t = _1013 + 292
                                            u = _1013 + 32
                                            while s < mem[_1013]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_1013 + 196] = this.address
                                            mem[_1013 + 228] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1013 + (32 * mem[_1013]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1492 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1522 = mem[_1492]
                                            require mem[_1492] <= test266151307()
                                            require _1492 + return_data.size > _1492 + mem[_1492] + 31
                                            _1552 = mem[_1492 + mem[_1492]]
                                            if mem[_1492 + mem[_1492]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_1492 + mem[_1492]]) + 1 < 0 or _1492 + ceil32(return_data.size) + ceil32(32 * mem[_1492 + mem[_1492]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _1492 + ceil32(return_data.size) + ceil32(32 * mem[_1492 + mem[_1492]]) + 1
                                            mem[_1492 + ceil32(return_data.size)] = _1552
                                            require _1522 + (32 * _1552) + 32 <= return_data.size
                                            t = _1492 + _1522 + 32
                                            u = _1492 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _1552:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                        else:
                                            _1011 = mem[64]
                                            mem[mem[64]] = 3
                                            mem[64] = mem[64] + 128
                                            if 0 >= mem[_1011]:
                                                revert with 0, 50
                                            mem[_1011 + 32] = swapTokens[idx]
                                            if 1 >= mem[_1011]:
                                                revert with 0, 50
                                            mem[_1011 + 64] = address(_920)
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 2 >= mem[_1011]:
                                                revert with 0, 50
                                            mem[_1011 + 96] = address(stor52.field_256)
                                            mem[_1011 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1011 + 132] = _721
                                            mem[_1011 + 164] = 97 * _721 * _733 / 100 / 10^(uint8(_745) + 2)
                                            mem[_1011 + 196] = 160
                                            mem[_1011 + 292] = mem[_1011]
                                            s = 0
                                            t = _1011 + 324
                                            u = _1011 + 32
                                            while s < mem[_1011]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_1011 + 228] = this.address
                                            mem[_1011 + 260] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1011 + (32 * mem[_1011]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1491 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1521 = mem[_1491]
                                            require mem[_1491] <= test266151307()
                                            require _1491 + return_data.size > _1491 + mem[_1491] + 31
                                            _1551 = mem[_1491 + mem[_1491]]
                                            if mem[_1491 + mem[_1491]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_1491 + mem[_1491]]) + 1 < 0 or _1491 + ceil32(return_data.size) + ceil32(32 * mem[_1491 + mem[_1491]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _1491 + ceil32(return_data.size) + ceil32(32 * mem[_1491 + mem[_1491]]) + 1
                                            mem[_1491 + ceil32(return_data.size)] = _1551
                                            require _1521 + (32 * _1551) + 32 <= return_data.size
                                            t = _1491 + _1521 + 32
                                            u = _1491 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _1551:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                    else:
                                        t = 10
                                        u = 1
                                        s = mem[_742 + 31 len 1] + 2
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
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1605 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1641 = mem[_1605]
                                        require mem[_1605] == mem[_1605 + 12 len 20]
                                        if swapTokens[idx] == mem[_1605 + 12 len 20]:
                                            _1661 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            if 0 >= mem[_1661]:
                                                revert with 0, 50
                                            mem[_1661 + 32] = swapTokens[idx]
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 1 >= mem[_1661]:
                                                revert with 0, 50
                                            mem[_1661 + 64] = address(stor52.field_256)
                                            mem[_1661 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1661 + 100] = _721
                                            mem[_1661 + 132] = 97 * _721 * _733 / 100 / t * u
                                            mem[_1661 + 164] = 160
                                            mem[_1661 + 260] = mem[_1661]
                                            s = 0
                                            t = _1661 + 292
                                            u = _1661 + 32
                                            while s < mem[_1661]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_1661 + 196] = this.address
                                            mem[_1661 + 228] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1661 + (32 * mem[_1661]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1868 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1880 = mem[_1868]
                                            require mem[_1868] <= test266151307()
                                            require _1868 + return_data.size > _1868 + mem[_1868] + 31
                                            _1892 = mem[_1868 + mem[_1868]]
                                            if mem[_1868 + mem[_1868]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_1868 + mem[_1868]]) + 1 < 0 or _1868 + ceil32(return_data.size) + ceil32(32 * mem[_1868 + mem[_1868]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _1868 + ceil32(return_data.size) + ceil32(32 * mem[_1868 + mem[_1868]]) + 1
                                            mem[_1868 + ceil32(return_data.size)] = _1892
                                            require _1880 + (32 * _1892) + 32 <= return_data.size
                                            t = _1868 + _1880 + 32
                                            u = _1868 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _1892:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                        else:
                                            _1659 = mem[64]
                                            mem[mem[64]] = 3
                                            mem[64] = mem[64] + 128
                                            if 0 >= mem[_1659]:
                                                revert with 0, 50
                                            mem[_1659 + 32] = swapTokens[idx]
                                            if 1 >= mem[_1659]:
                                                revert with 0, 50
                                            mem[_1659 + 64] = address(_1641)
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 2 >= mem[_1659]:
                                                revert with 0, 50
                                            mem[_1659 + 96] = address(stor52.field_256)
                                            mem[_1659 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1659 + 132] = _721
                                            mem[_1659 + 164] = 97 * _721 * _733 / 100 / t * u
                                            mem[_1659 + 196] = 160
                                            mem[_1659 + 292] = mem[_1659]
                                            s = 0
                                            t = _1659 + 324
                                            u = _1659 + 32
                                            while s < mem[_1659]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_1659 + 228] = this.address
                                            mem[_1659 + 260] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1659 + (32 * mem[_1659]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _1867 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _1879 = mem[_1867]
                                            require mem[_1867] <= test266151307()
                                            require _1867 + return_data.size > _1867 + mem[_1867] + 31
                                            _1891 = mem[_1867 + mem[_1867]]
                                            if mem[_1867 + mem[_1867]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_1867 + mem[_1867]]) + 1 < 0 or _1867 + ceil32(return_data.size) + ceil32(32 * mem[_1867 + mem[_1867]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _1867 + ceil32(return_data.size) + ceil32(32 * mem[_1867 + mem[_1867]]) + 1
                                            mem[_1867 + ceil32(return_data.size)] = _1891
                                            require _1879 + (32 * _1891) + 32 <= return_data.size
                                            t = _1867 + _1879 + 32
                                            u = _1867 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _1891:
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
            mem[mem[64]] = 0xf6ca71b000000000000000000000000000000000000000000000000000000000
            require ext_code.size(stor54[idx])
            staticcall stor54[idx].getRewardTokenAddresses() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _753 = mem[64]
            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _759 = mem[_753]
            require mem[_753] <= test266151307()
            require _753 + return_data.size > _753 + mem[_753] + 31
            _768 = mem[_753 + mem[_753]]
            if mem[_753 + mem[_753]] > test266151307():
                revert with 0, 65
            if ceil32(32 * mem[_753 + mem[_753]]) + 1 < 0 or _753 + ceil32(return_data.size) + ceil32(32 * mem[_753 + mem[_753]]) + 1 > test266151307():
                revert with 0, 65
            mem[64] = _753 + ceil32(return_data.size) + ceil32(32 * mem[_753 + mem[_753]]) + 1
            mem[_753 + ceil32(return_data.size)] = _768
            require _759 + (32 * _768) + 32 <= return_data.size
            t = _753 + _759 + 32
            u = _753 + ceil32(return_data.size) + 32
            s = 0
            while s < _768:
                require mem[t] == mem[t + 12 len 20]
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s + 1
                continue 
            if _768 != 0:
                mem[mem[64]] = 0x5a063f6300000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor54[idx])
                call stor54[idx].collectRewardTokens() with:
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
                _1500 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1503 = mem[_1500]
                if mem[_1500]:
                    mem[mem[64] + 4] = swapTokens[idx]
                    require ext_code.size(priceProviderAddress)
                    staticcall priceProviderAddress.price(address arg1) with:
                            gas gas_remaining wei
                           args swapTokens[idx]
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1512 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1515 = mem[_1512]
                    require ext_code.size(swapTokens[idx])
                    staticcall swapTokens[idx].0x313ce567 with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _1524 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1527 = mem[_1524]
                    require mem[_1524] == mem[_1524 + 31 len 1]
                    if mem[_1524 + 31 len 1] < 4:
                        revert with 0, 'Token must have sufficient decimal places'
                    if mem[_1524 + 31 len 1] > 18:
                        revert with 0, 'Token must have sufficient decimal places'
                    if 8 > !mem[_1524 + 31 len 1]:
                        revert with 0, 17
                    if _1503 and _1515 > -1 / _1503:
                        revert with 0, 17
                    if _1503 * _1515 > 0x2a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3:
                        revert with 0, 17
                    if 6 > mem[_1524 + 31 len 1] + 8:
                        if 6 < mem[_1524 + 31 len 1] + 8:
                            revert with 0, 17
                        if not -mem[_1524 + 31 len 1] - 2:
                            if 97 * _1503 * _1515 / 100 and 1 > -1 / 97 * _1503 * _1515 / 100:
                                revert with 0, 17
                            require ext_code.size(address(uniswapAddr))
                            staticcall address(uniswapAddr).0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1610 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1624 = mem[_1610]
                            require mem[_1610] == mem[_1610 + 12 len 20]
                            if swapTokens[idx] == mem[_1610 + 12 len 20]:
                                _1668 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_1668]:
                                    revert with 0, 50
                                mem[_1668 + 32] = swapTokens[idx]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 1 >= mem[_1668]:
                                    revert with 0, 50
                                mem[_1668 + 64] = address(stor52.field_256)
                                mem[_1668 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1668 + 100] = _1503
                                mem[_1668 + 132] = 97 * _1503 * _1515 / 100
                                mem[_1668 + 164] = 160
                                mem[_1668 + 260] = mem[_1668]
                                s = 0
                                t = _1668 + 292
                                u = _1668 + 32
                                while s < mem[_1668]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1668 + 196] = this.address
                                mem[_1668 + 228] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1668 + (32 * mem[_1668]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2262 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2292 = mem[_2262]
                                require mem[_2262] <= test266151307()
                                require _2262 + return_data.size > _2262 + mem[_2262] + 31
                                _2322 = mem[_2262 + mem[_2262]]
                                if mem[_2262 + mem[_2262]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_2262 + mem[_2262]]) + 1 < 0 or _2262 + ceil32(return_data.size) + ceil32(32 * mem[_2262 + mem[_2262]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _2262 + ceil32(return_data.size) + ceil32(32 * mem[_2262 + mem[_2262]]) + 1
                                mem[_2262 + ceil32(return_data.size)] = _2322
                                require _2292 + (32 * _2322) + 32 <= return_data.size
                                t = _2262 + _2292 + 32
                                u = _2262 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2322:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                _1666 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_1666]:
                                    revert with 0, 50
                                mem[_1666 + 32] = swapTokens[idx]
                                if 1 >= mem[_1666]:
                                    revert with 0, 50
                                mem[_1666 + 64] = address(_1624)
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_1666]:
                                    revert with 0, 50
                                mem[_1666 + 96] = address(stor52.field_256)
                                mem[_1666 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1666 + 132] = _1503
                                mem[_1666 + 164] = 97 * _1503 * _1515 / 100
                                mem[_1666 + 196] = 160
                                mem[_1666 + 292] = mem[_1666]
                                s = 0
                                t = _1666 + 324
                                u = _1666 + 32
                                while s < mem[_1666]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1666 + 228] = this.address
                                mem[_1666 + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1666 + (32 * mem[_1666]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2261 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2291 = mem[_2261]
                                require mem[_2261] <= test266151307()
                                require _2261 + return_data.size > _2261 + mem[_2261] + 31
                                _2321 = mem[_2261 + mem[_2261]]
                                if mem[_2261 + mem[_2261]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_2261 + mem[_2261]]) + 1 < 0 or _2261 + ceil32(return_data.size) + ceil32(32 * mem[_2261 + mem[_2261]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _2261 + ceil32(return_data.size) + ceil32(32 * mem[_2261 + mem[_2261]]) + 1
                                mem[_2261 + ceil32(return_data.size)] = _2321
                                require _2291 + (32 * _2321) + 32 <= return_data.size
                                t = _2261 + _2291 + 32
                                u = _2261 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2321:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                        else:
                            if bool(bool(-mem[_1524 + 31 len 1] - 2 < 78)) or bool(bool(-mem[_1524 + 31 len 1] - 2 < 32)):
                                if 97 * _1503 * _1515 / 100 and 10^(-mem[_1524 + 31 len 1] - 2) > -1 / 97 * _1503 * _1515 / 100:
                                    revert with 0, 17
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1651 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1665 = mem[_1651]
                                require mem[_1651] == mem[_1651 + 12 len 20]
                                if swapTokens[idx] == mem[_1651 + 12 len 20]:
                                    _1759 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_1759]:
                                        revert with 0, 50
                                    mem[_1759 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_1759]:
                                        revert with 0, 50
                                    mem[_1759 + 64] = address(stor52.field_256)
                                    mem[_1759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1759 + 100] = _1503
                                    mem[_1759 + 132] = 97 * _1503 * _1515 / 100 * 10^(-uint8(_1527) - 2)
                                    mem[_1759 + 164] = 160
                                    mem[_1759 + 260] = mem[_1759]
                                    s = 0
                                    t = _1759 + 292
                                    u = _1759 + 32
                                    while s < mem[_1759]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1759 + 196] = this.address
                                    mem[_1759 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1759 + (32 * mem[_1759]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2260 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2290 = mem[_2260]
                                    require mem[_2260] <= test266151307()
                                    require _2260 + return_data.size > _2260 + mem[_2260] + 31
                                    _2320 = mem[_2260 + mem[_2260]]
                                    if mem[_2260 + mem[_2260]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2260 + mem[_2260]]) + 1 < 0 or _2260 + ceil32(return_data.size) + ceil32(32 * mem[_2260 + mem[_2260]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2260 + ceil32(return_data.size) + ceil32(32 * mem[_2260 + mem[_2260]]) + 1
                                    mem[_2260 + ceil32(return_data.size)] = _2320
                                    require _2290 + (32 * _2320) + 32 <= return_data.size
                                    t = _2260 + _2290 + 32
                                    u = _2260 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2320:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                    if _2260 + _2290 + (32 * _2320) + 32 == -1:
                                        revert with 0, 17
                                    t = _2260 + _2290 + (32 * _2320) + 33
                                    continue 
                                _1757 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_1757]:
                                    revert with 0, 50
                                mem[_1757 + 32] = swapTokens[idx]
                                if 1 >= mem[_1757]:
                                    revert with 0, 50
                                mem[_1757 + 64] = address(_1665)
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_1757]:
                                    revert with 0, 50
                                mem[_1757 + 96] = address(stor52.field_256)
                                mem[_1757 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1757 + 132] = _1503
                                mem[_1757 + 164] = 97 * _1503 * _1515 / 100 * 10^(-uint8(_1527) - 2)
                                mem[_1757 + 196] = 160
                                mem[_1757 + 292] = mem[_1757]
                                s = 0
                                t = _1757 + 324
                                u = _1757 + 32
                                while s < mem[_1757]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1757 + 228] = this.address
                                mem[_1757 + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1757 + (32 * mem[_1757]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2259 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2289 = mem[_2259]
                                require mem[_2259] <= test266151307()
                                require _2259 + return_data.size > _2259 + mem[_2259] + 31
                                _2319 = mem[_2259 + mem[_2259]]
                                if mem[_2259 + mem[_2259]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_2259 + mem[_2259]]) + 1 < 0 or _2259 + ceil32(return_data.size) + ceil32(32 * mem[_2259 + mem[_2259]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _2259 + ceil32(return_data.size) + ceil32(32 * mem[_2259 + mem[_2259]]) + 1
                                mem[_2259 + ceil32(return_data.size)] = _2319
                                require _2289 + (32 * _2319) + 32 <= return_data.size
                                t = _2259 + _2289 + 32
                                u = _2259 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2319:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                t = 10
                                u = 1
                                s = -mem[_1524 + 31 len 1] - 2
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
                                if 97 * _1503 * _1515 / 100 and t * u > -1 / 97 * _1503 * _1515 / 100:
                                    revert with 0, 17
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2386 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2422 = mem[_2386]
                                require mem[_2386] == mem[_2386 + 12 len 20]
                                if swapTokens[idx] == mem[_2386 + 12 len 20]:
                                    _2433 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_2433]:
                                        revert with 0, 50
                                    mem[_2433 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_2433]:
                                        revert with 0, 50
                                    mem[_2433 + 64] = address(stor52.field_256)
                                    mem[_2433 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_2433 + 100] = _1503
                                    mem[_2433 + 132] = 97 * _1503 * _1515 / 100 * t * u
                                    mem[_2433 + 164] = 160
                                    mem[_2433 + 260] = mem[_2433]
                                    s = 0
                                    t = _2433 + 292
                                    u = _2433 + 32
                                    while s < mem[_2433]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2433 + 196] = this.address
                                    mem[_2433 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2433 + (32 * mem[_2433]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2646 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2658 = mem[_2646]
                                    require mem[_2646] <= test266151307()
                                    require _2646 + return_data.size > _2646 + mem[_2646] + 31
                                    _2670 = mem[_2646 + mem[_2646]]
                                    if mem[_2646 + mem[_2646]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2646 + mem[_2646]]) + 1 < 0 or _2646 + ceil32(return_data.size) + ceil32(32 * mem[_2646 + mem[_2646]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2646 + ceil32(return_data.size) + ceil32(32 * mem[_2646 + mem[_2646]]) + 1
                                    mem[_2646 + ceil32(return_data.size)] = _2670
                                    require _2658 + (32 * _2670) + 32 <= return_data.size
                                    t = _2646 + _2658 + 32
                                    u = _2646 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2670:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    _2431 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_2431]:
                                        revert with 0, 50
                                    mem[_2431 + 32] = swapTokens[idx]
                                    if 1 >= mem[_2431]:
                                        revert with 0, 50
                                    mem[_2431 + 64] = address(_2422)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_2431]:
                                        revert with 0, 50
                                    mem[_2431 + 96] = address(stor52.field_256)
                                    mem[_2431 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_2431 + 132] = _1503
                                    mem[_2431 + 164] = 97 * _1503 * _1515 / 100 * t * u
                                    mem[_2431 + 196] = 160
                                    mem[_2431 + 292] = mem[_2431]
                                    s = 0
                                    t = _2431 + 324
                                    u = _2431 + 32
                                    while s < mem[_2431]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_2431 + 228] = this.address
                                    mem[_2431 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _2431 + (32 * mem[_2431]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2645 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2657 = mem[_2645]
                                    require mem[_2645] <= test266151307()
                                    require _2645 + return_data.size > _2645 + mem[_2645] + 31
                                    _2669 = mem[_2645 + mem[_2645]]
                                    if mem[_2645 + mem[_2645]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2645 + mem[_2645]]) + 1 < 0 or _2645 + ceil32(return_data.size) + ceil32(32 * mem[_2645 + mem[_2645]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2645 + ceil32(return_data.size) + ceil32(32 * mem[_2645 + mem[_2645]]) + 1
                                    mem[_2645 + ceil32(return_data.size)] = _2669
                                    require _2657 + (32 * _2669) + 32 <= return_data.size
                                    t = _2645 + _2657 + 32
                                    u = _2645 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2669:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                    else:
                        if 6 >= mem[_1524 + 31 len 1] + 8:
                            require ext_code.size(address(uniswapAddr))
                            staticcall address(uniswapAddr).0x73b295c2 with:
                                    gas gas_remaining wei
                            mem[mem[64]] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _1548 = mem[64]
                            mem[64] = mem[64] + ceil32(return_data.size)
                            require return_data.size >= 32
                            _1551 = mem[_1548]
                            require mem[_1548] == mem[_1548 + 12 len 20]
                            if swapTokens[idx] == mem[_1548 + 12 len 20]:
                                _1556 = mem[64]
                                mem[mem[64]] = 2
                                mem[64] = mem[64] + 96
                                if 0 >= mem[_1556]:
                                    revert with 0, 50
                                mem[_1556 + 32] = swapTokens[idx]
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 1 >= mem[_1556]:
                                    revert with 0, 50
                                mem[_1556 + 64] = address(stor52.field_256)
                                mem[_1556 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1556 + 100] = _1503
                                mem[_1556 + 132] = 97 * _1503 * _1515 / 100
                                mem[_1556 + 164] = 160
                                mem[_1556 + 260] = mem[_1556]
                                s = 0
                                t = _1556 + 292
                                u = _1556 + 32
                                while s < mem[_1556]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1556 + 196] = this.address
                                mem[_1556 + 228] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1556 + (32 * mem[_1556]) + -mem[64] + 288]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2254 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2284 = mem[_2254]
                                require mem[_2254] <= test266151307()
                                require _2254 + return_data.size > _2254 + mem[_2254] + 31
                                _2314 = mem[_2254 + mem[_2254]]
                                if mem[_2254 + mem[_2254]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_2254 + mem[_2254]]) + 1 < 0 or _2254 + ceil32(return_data.size) + ceil32(32 * mem[_2254 + mem[_2254]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _2254 + ceil32(return_data.size) + ceil32(32 * mem[_2254 + mem[_2254]]) + 1
                                mem[_2254 + ceil32(return_data.size)] = _2314
                                require _2284 + (32 * _2314) + 32 <= return_data.size
                                t = _2254 + _2284 + 32
                                u = _2254 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2314:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                            else:
                                _1554 = mem[64]
                                mem[mem[64]] = 3
                                mem[64] = mem[64] + 128
                                if 0 >= mem[_1554]:
                                    revert with 0, 50
                                mem[_1554 + 32] = swapTokens[idx]
                                if 1 >= mem[_1554]:
                                    revert with 0, 50
                                mem[_1554 + 64] = address(_1551)
                                if 1 >= stor52.length:
                                    revert with 0, 50
                                mem[0] = 52
                                if 2 >= mem[_1554]:
                                    revert with 0, 50
                                mem[_1554 + 96] = address(stor52.field_256)
                                mem[_1554 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[_1554 + 132] = _1503
                                mem[_1554 + 164] = 97 * _1503 * _1515 / 100
                                mem[_1554 + 196] = 160
                                mem[_1554 + 292] = mem[_1554]
                                s = 0
                                t = _1554 + 324
                                u = _1554 + 32
                                while s < mem[_1554]:
                                    mem[t] = mem[u + 12 len 20]
                                    s = s + 1
                                    t = t + 32
                                    u = u + 32
                                    continue 
                                mem[_1554 + 228] = this.address
                                mem[_1554 + 260] = block.timestamp
                                require ext_code.size(address(uniswapAddr))
                                call address(uniswapAddr).mem[mem[64] len 4] with:
                                     gas gas_remaining wei
                                    args mem[mem[64] + 4 len _1554 + (32 * mem[_1554]) + -mem[64] + 320]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _2253 = mem[64]
                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _2283 = mem[_2253]
                                require mem[_2253] <= test266151307()
                                require _2253 + return_data.size > _2253 + mem[_2253] + 31
                                _2313 = mem[_2253 + mem[_2253]]
                                if mem[_2253 + mem[_2253]] > test266151307():
                                    revert with 0, 65
                                if ceil32(32 * mem[_2253 + mem[_2253]]) + 1 < 0 or _2253 + ceil32(return_data.size) + ceil32(32 * mem[_2253 + mem[_2253]]) + 1 > test266151307():
                                    revert with 0, 65
                                mem[64] = _2253 + ceil32(return_data.size) + ceil32(32 * mem[_2253 + mem[_2253]]) + 1
                                mem[_2253 + ceil32(return_data.size)] = _2313
                                require _2283 + (32 * _2313) + 32 <= return_data.size
                                t = _2253 + _2283 + 32
                                u = _2253 + ceil32(return_data.size) + 32
                                s = 0
                                while s < _2313:
                                    mem[u] = mem[t]
                                    t = t + 32
                                    u = u + 32
                                    s = s + 1
                                    continue 
                        else:
                            if mem[_1524 + 31 len 1] + 8 < 6:
                                revert with 0, 17
                            if not mem[_1524 + 31 len 1] + 2:
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1618 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1630 = mem[_1618]
                                require mem[_1618] == mem[_1618 + 12 len 20]
                                if swapTokens[idx] == mem[_1618 + 12 len 20]:
                                    _1691 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_1691]:
                                        revert with 0, 50
                                    mem[_1691 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_1691]:
                                        revert with 0, 50
                                    mem[_1691 + 64] = address(stor52.field_256)
                                    mem[_1691 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1691 + 100] = _1503
                                    mem[_1691 + 132] = 97 * _1503 * _1515 / 100
                                    mem[_1691 + 164] = 160
                                    mem[_1691 + 260] = mem[_1691]
                                    s = 0
                                    t = _1691 + 292
                                    u = _1691 + 32
                                    while s < mem[_1691]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1691 + 196] = this.address
                                    mem[_1691 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1691 + (32 * mem[_1691]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2258 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2288 = mem[_2258]
                                    require mem[_2258] <= test266151307()
                                    require _2258 + return_data.size > _2258 + mem[_2258] + 31
                                    _2318 = mem[_2258 + mem[_2258]]
                                    if mem[_2258 + mem[_2258]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2258 + mem[_2258]]) + 1 < 0 or _2258 + ceil32(return_data.size) + ceil32(32 * mem[_2258 + mem[_2258]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2258 + ceil32(return_data.size) + ceil32(32 * mem[_2258 + mem[_2258]]) + 1
                                    mem[_2258 + ceil32(return_data.size)] = _2318
                                    require _2288 + (32 * _2318) + 32 <= return_data.size
                                    t = _2258 + _2288 + 32
                                    u = _2258 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2318:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    _1689 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_1689]:
                                        revert with 0, 50
                                    mem[_1689 + 32] = swapTokens[idx]
                                    if 1 >= mem[_1689]:
                                        revert with 0, 50
                                    mem[_1689 + 64] = address(_1630)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1689]:
                                        revert with 0, 50
                                    mem[_1689 + 96] = address(stor52.field_256)
                                    mem[_1689 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1689 + 132] = _1503
                                    mem[_1689 + 164] = 97 * _1503 * _1515 / 100
                                    mem[_1689 + 196] = 160
                                    mem[_1689 + 292] = mem[_1689]
                                    s = 0
                                    t = _1689 + 324
                                    u = _1689 + 32
                                    while s < mem[_1689]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1689 + 228] = this.address
                                    mem[_1689 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1689 + (32 * mem[_1689]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2257 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2287 = mem[_2257]
                                    require mem[_2257] <= test266151307()
                                    require _2257 + return_data.size > _2257 + mem[_2257] + 31
                                    _2317 = mem[_2257 + mem[_2257]]
                                    if mem[_2257 + mem[_2257]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2257 + mem[_2257]]) + 1 < 0 or _2257 + ceil32(return_data.size) + ceil32(32 * mem[_2257 + mem[_2257]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2257 + ceil32(return_data.size) + ceil32(32 * mem[_2257 + mem[_2257]]) + 1
                                    mem[_2257 + ceil32(return_data.size)] = _2317
                                    require _2287 + (32 * _2317) + 32 <= return_data.size
                                    t = _2257 + _2287 + 32
                                    u = _2257 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2317:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                            else:
                                if bool(bool(mem[_1524 + 31 len 1] + 2 < 78)) or bool(bool(mem[_1524 + 31 len 1] + 2 < 32)):
                                    if not 10^(mem[_1524 + 31 len 1] + 2):
                                        revert with 0, 18
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1657 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1688 = mem[_1657]
                                    require mem[_1657] == mem[_1657 + 12 len 20]
                                    if swapTokens[idx] == mem[_1657 + 12 len 20]:
                                        _1781 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_1781]:
                                            revert with 0, 50
                                        mem[_1781 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_1781]:
                                            revert with 0, 50
                                        mem[_1781 + 64] = address(stor52.field_256)
                                        mem[_1781 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1781 + 100] = _1503
                                        mem[_1781 + 132] = 97 * _1503 * _1515 / 100 / 10^(uint8(_1527) + 2)
                                        mem[_1781 + 164] = 160
                                        mem[_1781 + 260] = mem[_1781]
                                        s = 0
                                        t = _1781 + 292
                                        u = _1781 + 32
                                        while s < mem[_1781]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1781 + 196] = this.address
                                        mem[_1781 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1781 + (32 * mem[_1781]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2256 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2286 = mem[_2256]
                                        require mem[_2256] <= test266151307()
                                        require _2256 + return_data.size > _2256 + mem[_2256] + 31
                                        _2316 = mem[_2256 + mem[_2256]]
                                        if mem[_2256 + mem[_2256]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2256 + mem[_2256]]) + 1 < 0 or _2256 + ceil32(return_data.size) + ceil32(32 * mem[_2256 + mem[_2256]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2256 + ceil32(return_data.size) + ceil32(32 * mem[_2256 + mem[_2256]]) + 1
                                        mem[_2256 + ceil32(return_data.size)] = _2316
                                        require _2286 + (32 * _2316) + 32 <= return_data.size
                                        t = _2256 + _2286 + 32
                                        u = _2256 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2316:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        _1779 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if 0 >= mem[_1779]:
                                            revert with 0, 50
                                        mem[_1779 + 32] = swapTokens[idx]
                                        if 1 >= mem[_1779]:
                                            revert with 0, 50
                                        mem[_1779 + 64] = address(_1688)
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_1779]:
                                            revert with 0, 50
                                        mem[_1779 + 96] = address(stor52.field_256)
                                        mem[_1779 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1779 + 132] = _1503
                                        mem[_1779 + 164] = 97 * _1503 * _1515 / 100 / 10^(uint8(_1527) + 2)
                                        mem[_1779 + 196] = 160
                                        mem[_1779 + 292] = mem[_1779]
                                        s = 0
                                        t = _1779 + 324
                                        u = _1779 + 32
                                        while s < mem[_1779]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1779 + 228] = this.address
                                        mem[_1779 + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1779 + (32 * mem[_1779]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2255 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2285 = mem[_2255]
                                        require mem[_2255] <= test266151307()
                                        require _2255 + return_data.size > _2255 + mem[_2255] + 31
                                        _2315 = mem[_2255 + mem[_2255]]
                                        if mem[_2255 + mem[_2255]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2255 + mem[_2255]]) + 1 < 0 or _2255 + ceil32(return_data.size) + ceil32(32 * mem[_2255 + mem[_2255]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2255 + ceil32(return_data.size) + ceil32(32 * mem[_2255 + mem[_2255]]) + 1
                                        mem[_2255 + ceil32(return_data.size)] = _2315
                                        require _2285 + (32 * _2315) + 32 <= return_data.size
                                        t = _2255 + _2285 + 32
                                        u = _2255 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2315:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                else:
                                    t = 10
                                    u = 1
                                    s = mem[_1524 + 31 len 1] + 2
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
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2385 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2421 = mem[_2385]
                                    require mem[_2385] == mem[_2385 + 12 len 20]
                                    if swapTokens[idx] == mem[_2385 + 12 len 20]:
                                        _2429 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_2429]:
                                            revert with 0, 50
                                        mem[_2429 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_2429]:
                                            revert with 0, 50
                                        mem[_2429 + 64] = address(stor52.field_256)
                                        mem[_2429 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_2429 + 100] = _1503
                                        mem[_2429 + 132] = 97 * _1503 * _1515 / 100 / t * u
                                        mem[_2429 + 164] = 160
                                        mem[_2429 + 260] = mem[_2429]
                                        s = 0
                                        t = _2429 + 292
                                        u = _2429 + 32
                                        while s < mem[_2429]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_2429 + 196] = this.address
                                        mem[_2429 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2429 + (32 * mem[_2429]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2644 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2656 = mem[_2644]
                                        require mem[_2644] <= test266151307()
                                        require _2644 + return_data.size > _2644 + mem[_2644] + 31
                                        _2668 = mem[_2644 + mem[_2644]]
                                        if mem[_2644 + mem[_2644]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2644 + mem[_2644]]) + 1 < 0 or _2644 + ceil32(return_data.size) + ceil32(32 * mem[_2644 + mem[_2644]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2644 + ceil32(return_data.size) + ceil32(32 * mem[_2644 + mem[_2644]]) + 1
                                        mem[_2644 + ceil32(return_data.size)] = _2668
                                        require _2656 + (32 * _2668) + 32 <= return_data.size
                                        t = _2644 + _2656 + 32
                                        u = _2644 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2668:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        _2427 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if 0 >= mem[_2427]:
                                            revert with 0, 50
                                        mem[_2427 + 32] = swapTokens[idx]
                                        if 1 >= mem[_2427]:
                                            revert with 0, 50
                                        mem[_2427 + 64] = address(_2421)
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_2427]:
                                            revert with 0, 50
                                        mem[_2427 + 96] = address(stor52.field_256)
                                        mem[_2427 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_2427 + 132] = _1503
                                        mem[_2427 + 164] = 97 * _1503 * _1515 / 100 / t * u
                                        mem[_2427 + 196] = 160
                                        mem[_2427 + 292] = mem[_2427]
                                        s = 0
                                        t = _2427 + 324
                                        u = _2427 + 32
                                        while s < mem[_2427]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_2427 + 228] = this.address
                                        mem[_2427 + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2427 + (32 * mem[_2427]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2643 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2655 = mem[_2643]
                                        require mem[_2643] <= test266151307()
                                        require _2643 + return_data.size > _2643 + mem[_2643] + 31
                                        _2667 = mem[_2643 + mem[_2643]]
                                        if mem[_2643 + mem[_2643]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2643 + mem[_2643]]) + 1 < 0 or _2643 + ceil32(return_data.size) + ceil32(32 * mem[_2643 + mem[_2643]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2643 + ceil32(return_data.size) + ceil32(32 * mem[_2643 + mem[_2643]]) + 1
                                        mem[_2643 + ceil32(return_data.size)] = _2667
                                        require _2655 + (32 * _2667) + 32 <= return_data.size
                                        t = _2643 + _2655 + 32
                                        u = _2643 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2667:
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
                mem[mem[64]] = 0xf6ca71b000000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor54[idx])
                staticcall stor54[idx].getRewardTokenAddresses() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _754 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _760 = mem[_754]
                require mem[_754] <= test266151307()
                require _754 + return_data.size > _754 + mem[_754] + 31
                _769 = mem[_754 + mem[_754]]
                if mem[_754 + mem[_754]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_754 + mem[_754]]) + 1 < 0 or _754 + ceil32(return_data.size) + ceil32(32 * mem[_754 + mem[_754]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _754 + ceil32(return_data.size) + ceil32(32 * mem[_754 + mem[_754]]) + 1
                mem[_754 + ceil32(return_data.size)] = _769
                require _760 + (32 * _769) + 32 <= return_data.size
                t = _754 + _760 + 32
                u = _754 + ceil32(return_data.size) + 32
                s = 0
                while s < _769:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _769 != 0:
                    mem[mem[64]] = 0x5a063f6300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor54[idx])
                    call stor54[idx].collectRewardTokens() with:
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
                    _1501 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1504 = mem[_1501]
                    if mem[_1501]:
                        mem[mem[64] + 4] = swapTokens[idx]
                        require ext_code.size(priceProviderAddress)
                        staticcall priceProviderAddress.price(address arg1) with:
                                gas gas_remaining wei
                               args swapTokens[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1513 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1516 = mem[_1513]
                        require ext_code.size(swapTokens[idx])
                        staticcall swapTokens[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1525 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1528 = mem[_1525]
                        require mem[_1525] == mem[_1525 + 31 len 1]
                        if mem[_1525 + 31 len 1] < 4:
                            revert with 0, 'Token must have sufficient decimal places'
                        if mem[_1525 + 31 len 1] > 18:
                            revert with 0, 'Token must have sufficient decimal places'
                        if 8 > !mem[_1525 + 31 len 1]:
                            revert with 0, 17
                        if _1504 and _1516 > -1 / _1504:
                            revert with 0, 17
                        if _1504 * _1516 > 0x2a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3:
                            revert with 0, 17
                        if 6 > mem[_1525 + 31 len 1] + 8:
                            if 6 < mem[_1525 + 31 len 1] + 8:
                                revert with 0, 17
                            if not -mem[_1525 + 31 len 1] - 2:
                                if 97 * _1504 * _1516 / 100 and 1 > -1 / 97 * _1504 * _1516 / 100:
                                    revert with 0, 17
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1613 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1626 = mem[_1613]
                                require mem[_1613] == mem[_1613 + 12 len 20]
                                if swapTokens[idx] == mem[_1613 + 12 len 20]:
                                    _1676 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_1676]:
                                        revert with 0, 50
                                    mem[_1676 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_1676]:
                                        revert with 0, 50
                                    mem[_1676 + 64] = address(stor52.field_256)
                                    mem[_1676 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1676 + 100] = _1504
                                    mem[_1676 + 132] = 97 * _1504 * _1516 / 100
                                    mem[_1676 + 164] = 160
                                    mem[_1676 + 260] = mem[_1676]
                                    s = 0
                                    t = _1676 + 292
                                    u = _1676 + 32
                                    while s < mem[_1676]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1676 + 196] = this.address
                                    mem[_1676 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1676 + (32 * mem[_1676]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2272 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2302 = mem[_2272]
                                    require mem[_2272] <= test266151307()
                                    require _2272 + return_data.size > _2272 + mem[_2272] + 31
                                    _2332 = mem[_2272 + mem[_2272]]
                                    if mem[_2272 + mem[_2272]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2272 + mem[_2272]]) + 1 < 0 or _2272 + ceil32(return_data.size) + ceil32(32 * mem[_2272 + mem[_2272]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2272 + ceil32(return_data.size) + ceil32(32 * mem[_2272 + mem[_2272]]) + 1
                                    mem[_2272 + ceil32(return_data.size)] = _2332
                                    require _2302 + (32 * _2332) + 32 <= return_data.size
                                    t = _2272 + _2302 + 32
                                    u = _2272 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2332:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    _1674 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_1674]:
                                        revert with 0, 50
                                    mem[_1674 + 32] = swapTokens[idx]
                                    if 1 >= mem[_1674]:
                                        revert with 0, 50
                                    mem[_1674 + 64] = address(_1626)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1674]:
                                        revert with 0, 50
                                    mem[_1674 + 96] = address(stor52.field_256)
                                    mem[_1674 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1674 + 132] = _1504
                                    mem[_1674 + 164] = 97 * _1504 * _1516 / 100
                                    mem[_1674 + 196] = 160
                                    mem[_1674 + 292] = mem[_1674]
                                    s = 0
                                    t = _1674 + 324
                                    u = _1674 + 32
                                    while s < mem[_1674]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1674 + 228] = this.address
                                    mem[_1674 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1674 + (32 * mem[_1674]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2271 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2301 = mem[_2271]
                                    require mem[_2271] <= test266151307()
                                    require _2271 + return_data.size > _2271 + mem[_2271] + 31
                                    _2331 = mem[_2271 + mem[_2271]]
                                    if mem[_2271 + mem[_2271]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2271 + mem[_2271]]) + 1 < 0 or _2271 + ceil32(return_data.size) + ceil32(32 * mem[_2271 + mem[_2271]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2271 + ceil32(return_data.size) + ceil32(32 * mem[_2271 + mem[_2271]]) + 1
                                    mem[_2271 + ceil32(return_data.size)] = _2331
                                    require _2301 + (32 * _2331) + 32 <= return_data.size
                                    t = _2271 + _2301 + 32
                                    u = _2271 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2331:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                            else:
                                if bool(bool(-mem[_1525 + 31 len 1] - 2 < 78)) or bool(bool(-mem[_1525 + 31 len 1] - 2 < 32)):
                                    if 97 * _1504 * _1516 / 100 and 10^(-mem[_1525 + 31 len 1] - 2) > -1 / 97 * _1504 * _1516 / 100:
                                        revert with 0, 17
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1653 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1673 = mem[_1653]
                                    require mem[_1653] == mem[_1653 + 12 len 20]
                                    if swapTokens[idx] == mem[_1653 + 12 len 20]:
                                        _1767 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_1767]:
                                            revert with 0, 50
                                        mem[_1767 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_1767]:
                                            revert with 0, 50
                                        mem[_1767 + 64] = address(stor52.field_256)
                                        mem[_1767 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1767 + 100] = _1504
                                        mem[_1767 + 132] = 97 * _1504 * _1516 / 100 * 10^(-uint8(_1528) - 2)
                                        mem[_1767 + 164] = 160
                                        mem[_1767 + 260] = mem[_1767]
                                        s = 0
                                        t = _1767 + 292
                                        u = _1767 + 32
                                        while s < mem[_1767]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1767 + 196] = this.address
                                        mem[_1767 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1767 + (32 * mem[_1767]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2270 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2300 = mem[_2270]
                                        require mem[_2270] <= test266151307()
                                        require _2270 + return_data.size > _2270 + mem[_2270] + 31
                                        _2330 = mem[_2270 + mem[_2270]]
                                        if mem[_2270 + mem[_2270]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2270 + mem[_2270]]) + 1 < 0 or _2270 + ceil32(return_data.size) + ceil32(32 * mem[_2270 + mem[_2270]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2270 + ceil32(return_data.size) + ceil32(32 * mem[_2270 + mem[_2270]]) + 1
                                        mem[_2270 + ceil32(return_data.size)] = _2330
                                        require _2300 + (32 * _2330) + 32 <= return_data.size
                                        t = _2270 + _2300 + 32
                                        u = _2270 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2330:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if _2270 + _2300 + (32 * _2330) + 32 == -1:
                                            revert with 0, 17
                                        t = _2270 + _2300 + (32 * _2330) + 33
                                        continue 
                                    _1765 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_1765]:
                                        revert with 0, 50
                                    mem[_1765 + 32] = swapTokens[idx]
                                    if 1 >= mem[_1765]:
                                        revert with 0, 50
                                    mem[_1765 + 64] = address(_1673)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1765]:
                                        revert with 0, 50
                                    mem[_1765 + 96] = address(stor52.field_256)
                                    mem[_1765 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1765 + 132] = _1504
                                    mem[_1765 + 164] = 97 * _1504 * _1516 / 100 * 10^(-uint8(_1528) - 2)
                                    mem[_1765 + 196] = 160
                                    mem[_1765 + 292] = mem[_1765]
                                    s = 0
                                    t = _1765 + 324
                                    u = _1765 + 32
                                    while s < mem[_1765]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1765 + 228] = this.address
                                    mem[_1765 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1765 + (32 * mem[_1765]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2269 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2299 = mem[_2269]
                                    require mem[_2269] <= test266151307()
                                    require _2269 + return_data.size > _2269 + mem[_2269] + 31
                                    _2329 = mem[_2269 + mem[_2269]]
                                    if mem[_2269 + mem[_2269]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2269 + mem[_2269]]) + 1 < 0 or _2269 + ceil32(return_data.size) + ceil32(32 * mem[_2269 + mem[_2269]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2269 + ceil32(return_data.size) + ceil32(32 * mem[_2269 + mem[_2269]]) + 1
                                    mem[_2269 + ceil32(return_data.size)] = _2329
                                    require _2299 + (32 * _2329) + 32 <= return_data.size
                                    t = _2269 + _2299 + 32
                                    u = _2269 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2329:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    t = 10
                                    u = 1
                                    s = -mem[_1525 + 31 len 1] - 2
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
                                    if 97 * _1504 * _1516 / 100 and t * u > -1 / 97 * _1504 * _1516 / 100:
                                        revert with 0, 17
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2388 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2424 = mem[_2388]
                                    require mem[_2388] == mem[_2388 + 12 len 20]
                                    if swapTokens[idx] == mem[_2388 + 12 len 20]:
                                        _2441 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_2441]:
                                            revert with 0, 50
                                        mem[_2441 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_2441]:
                                            revert with 0, 50
                                        mem[_2441 + 64] = address(stor52.field_256)
                                        mem[_2441 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_2441 + 100] = _1504
                                        mem[_2441 + 132] = 97 * _1504 * _1516 / 100 * t * u
                                        mem[_2441 + 164] = 160
                                        mem[_2441 + 260] = mem[_2441]
                                        s = 0
                                        t = _2441 + 292
                                        u = _2441 + 32
                                        while s < mem[_2441]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_2441 + 196] = this.address
                                        mem[_2441 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2441 + (32 * mem[_2441]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2650 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2662 = mem[_2650]
                                        require mem[_2650] <= test266151307()
                                        require _2650 + return_data.size > _2650 + mem[_2650] + 31
                                        _2674 = mem[_2650 + mem[_2650]]
                                        if mem[_2650 + mem[_2650]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2650 + mem[_2650]]) + 1 < 0 or _2650 + ceil32(return_data.size) + ceil32(32 * mem[_2650 + mem[_2650]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2650 + ceil32(return_data.size) + ceil32(32 * mem[_2650 + mem[_2650]]) + 1
                                        mem[_2650 + ceil32(return_data.size)] = _2674
                                        require _2662 + (32 * _2674) + 32 <= return_data.size
                                        t = _2650 + _2662 + 32
                                        u = _2650 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2674:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        _2439 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if 0 >= mem[_2439]:
                                            revert with 0, 50
                                        mem[_2439 + 32] = swapTokens[idx]
                                        if 1 >= mem[_2439]:
                                            revert with 0, 50
                                        mem[_2439 + 64] = address(_2424)
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_2439]:
                                            revert with 0, 50
                                        mem[_2439 + 96] = address(stor52.field_256)
                                        mem[_2439 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_2439 + 132] = _1504
                                        mem[_2439 + 164] = 97 * _1504 * _1516 / 100 * t * u
                                        mem[_2439 + 196] = 160
                                        mem[_2439 + 292] = mem[_2439]
                                        s = 0
                                        t = _2439 + 324
                                        u = _2439 + 32
                                        while s < mem[_2439]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_2439 + 228] = this.address
                                        mem[_2439 + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2439 + (32 * mem[_2439]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2649 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2661 = mem[_2649]
                                        require mem[_2649] <= test266151307()
                                        require _2649 + return_data.size > _2649 + mem[_2649] + 31
                                        _2673 = mem[_2649 + mem[_2649]]
                                        if mem[_2649 + mem[_2649]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2649 + mem[_2649]]) + 1 < 0 or _2649 + ceil32(return_data.size) + ceil32(32 * mem[_2649 + mem[_2649]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2649 + ceil32(return_data.size) + ceil32(32 * mem[_2649 + mem[_2649]]) + 1
                                        mem[_2649 + ceil32(return_data.size)] = _2673
                                        require _2661 + (32 * _2673) + 32 <= return_data.size
                                        t = _2649 + _2661 + 32
                                        u = _2649 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2673:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                        else:
                            if 6 >= mem[_1525 + 31 len 1] + 8:
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1549 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1552 = mem[_1549]
                                require mem[_1549] == mem[_1549 + 12 len 20]
                                if swapTokens[idx] == mem[_1549 + 12 len 20]:
                                    _1560 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_1560]:
                                        revert with 0, 50
                                    mem[_1560 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_1560]:
                                        revert with 0, 50
                                    mem[_1560 + 64] = address(stor52.field_256)
                                    mem[_1560 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1560 + 100] = _1504
                                    mem[_1560 + 132] = 97 * _1504 * _1516 / 100
                                    mem[_1560 + 164] = 160
                                    mem[_1560 + 260] = mem[_1560]
                                    s = 0
                                    t = _1560 + 292
                                    u = _1560 + 32
                                    while s < mem[_1560]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1560 + 196] = this.address
                                    mem[_1560 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1560 + (32 * mem[_1560]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2264 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2294 = mem[_2264]
                                    require mem[_2264] <= test266151307()
                                    require _2264 + return_data.size > _2264 + mem[_2264] + 31
                                    _2324 = mem[_2264 + mem[_2264]]
                                    if mem[_2264 + mem[_2264]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2264 + mem[_2264]]) + 1 < 0 or _2264 + ceil32(return_data.size) + ceil32(32 * mem[_2264 + mem[_2264]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2264 + ceil32(return_data.size) + ceil32(32 * mem[_2264 + mem[_2264]]) + 1
                                    mem[_2264 + ceil32(return_data.size)] = _2324
                                    require _2294 + (32 * _2324) + 32 <= return_data.size
                                    t = _2264 + _2294 + 32
                                    u = _2264 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2324:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    _1558 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_1558]:
                                        revert with 0, 50
                                    mem[_1558 + 32] = swapTokens[idx]
                                    if 1 >= mem[_1558]:
                                        revert with 0, 50
                                    mem[_1558 + 64] = address(_1552)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1558]:
                                        revert with 0, 50
                                    mem[_1558 + 96] = address(stor52.field_256)
                                    mem[_1558 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1558 + 132] = _1504
                                    mem[_1558 + 164] = 97 * _1504 * _1516 / 100
                                    mem[_1558 + 196] = 160
                                    mem[_1558 + 292] = mem[_1558]
                                    s = 0
                                    t = _1558 + 324
                                    u = _1558 + 32
                                    while s < mem[_1558]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1558 + 228] = this.address
                                    mem[_1558 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1558 + (32 * mem[_1558]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2263 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2293 = mem[_2263]
                                    require mem[_2263] <= test266151307()
                                    require _2263 + return_data.size > _2263 + mem[_2263] + 31
                                    _2323 = mem[_2263 + mem[_2263]]
                                    if mem[_2263 + mem[_2263]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2263 + mem[_2263]]) + 1 < 0 or _2263 + ceil32(return_data.size) + ceil32(32 * mem[_2263 + mem[_2263]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2263 + ceil32(return_data.size) + ceil32(32 * mem[_2263 + mem[_2263]]) + 1
                                    mem[_2263 + ceil32(return_data.size)] = _2323
                                    require _2293 + (32 * _2323) + 32 <= return_data.size
                                    t = _2263 + _2293 + 32
                                    u = _2263 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2323:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                            else:
                                if mem[_1525 + 31 len 1] + 8 < 6:
                                    revert with 0, 17
                                if not mem[_1525 + 31 len 1] + 2:
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1620 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1634 = mem[_1620]
                                    require mem[_1620] == mem[_1620 + 12 len 20]
                                    if swapTokens[idx] == mem[_1620 + 12 len 20]:
                                        _1699 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_1699]:
                                            revert with 0, 50
                                        mem[_1699 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_1699]:
                                            revert with 0, 50
                                        mem[_1699 + 64] = address(stor52.field_256)
                                        mem[_1699 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1699 + 100] = _1504
                                        mem[_1699 + 132] = 97 * _1504 * _1516 / 100
                                        mem[_1699 + 164] = 160
                                        mem[_1699 + 260] = mem[_1699]
                                        s = 0
                                        t = _1699 + 292
                                        u = _1699 + 32
                                        while s < mem[_1699]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1699 + 196] = this.address
                                        mem[_1699 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1699 + (32 * mem[_1699]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2268 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2298 = mem[_2268]
                                        require mem[_2268] <= test266151307()
                                        require _2268 + return_data.size > _2268 + mem[_2268] + 31
                                        _2328 = mem[_2268 + mem[_2268]]
                                        if mem[_2268 + mem[_2268]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2268 + mem[_2268]]) + 1 < 0 or _2268 + ceil32(return_data.size) + ceil32(32 * mem[_2268 + mem[_2268]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2268 + ceil32(return_data.size) + ceil32(32 * mem[_2268 + mem[_2268]]) + 1
                                        mem[_2268 + ceil32(return_data.size)] = _2328
                                        require _2298 + (32 * _2328) + 32 <= return_data.size
                                        t = _2268 + _2298 + 32
                                        u = _2268 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2328:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        _1697 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if 0 >= mem[_1697]:
                                            revert with 0, 50
                                        mem[_1697 + 32] = swapTokens[idx]
                                        if 1 >= mem[_1697]:
                                            revert with 0, 50
                                        mem[_1697 + 64] = address(_1634)
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_1697]:
                                            revert with 0, 50
                                        mem[_1697 + 96] = address(stor52.field_256)
                                        mem[_1697 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1697 + 132] = _1504
                                        mem[_1697 + 164] = 97 * _1504 * _1516 / 100
                                        mem[_1697 + 196] = 160
                                        mem[_1697 + 292] = mem[_1697]
                                        s = 0
                                        t = _1697 + 324
                                        u = _1697 + 32
                                        while s < mem[_1697]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1697 + 228] = this.address
                                        mem[_1697 + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1697 + (32 * mem[_1697]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2267 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2297 = mem[_2267]
                                        require mem[_2267] <= test266151307()
                                        require _2267 + return_data.size > _2267 + mem[_2267] + 31
                                        _2327 = mem[_2267 + mem[_2267]]
                                        if mem[_2267 + mem[_2267]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2267 + mem[_2267]]) + 1 < 0 or _2267 + ceil32(return_data.size) + ceil32(32 * mem[_2267 + mem[_2267]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2267 + ceil32(return_data.size) + ceil32(32 * mem[_2267 + mem[_2267]]) + 1
                                        mem[_2267 + ceil32(return_data.size)] = _2327
                                        require _2297 + (32 * _2327) + 32 <= return_data.size
                                        t = _2267 + _2297 + 32
                                        u = _2267 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2327:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(bool(mem[_1525 + 31 len 1] + 2 < 78)) or bool(bool(mem[_1525 + 31 len 1] + 2 < 32)):
                                        if not 10^(mem[_1525 + 31 len 1] + 2):
                                            revert with 0, 18
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1659 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1696 = mem[_1659]
                                        require mem[_1659] == mem[_1659 + 12 len 20]
                                        if swapTokens[idx] == mem[_1659 + 12 len 20]:
                                            _1789 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            if 0 >= mem[_1789]:
                                                revert with 0, 50
                                            mem[_1789 + 32] = swapTokens[idx]
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 1 >= mem[_1789]:
                                                revert with 0, 50
                                            mem[_1789 + 64] = address(stor52.field_256)
                                            mem[_1789 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1789 + 100] = _1504
                                            mem[_1789 + 132] = 97 * _1504 * _1516 / 100 / 10^(uint8(_1528) + 2)
                                            mem[_1789 + 164] = 160
                                            mem[_1789 + 260] = mem[_1789]
                                            s = 0
                                            t = _1789 + 292
                                            u = _1789 + 32
                                            while s < mem[_1789]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_1789 + 196] = this.address
                                            mem[_1789 + 228] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1789 + (32 * mem[_1789]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2266 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2296 = mem[_2266]
                                            require mem[_2266] <= test266151307()
                                            require _2266 + return_data.size > _2266 + mem[_2266] + 31
                                            _2326 = mem[_2266 + mem[_2266]]
                                            if mem[_2266 + mem[_2266]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_2266 + mem[_2266]]) + 1 < 0 or _2266 + ceil32(return_data.size) + ceil32(32 * mem[_2266 + mem[_2266]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _2266 + ceil32(return_data.size) + ceil32(32 * mem[_2266 + mem[_2266]]) + 1
                                            mem[_2266 + ceil32(return_data.size)] = _2326
                                            require _2296 + (32 * _2326) + 32 <= return_data.size
                                            t = _2266 + _2296 + 32
                                            u = _2266 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2326:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                        else:
                                            _1787 = mem[64]
                                            mem[mem[64]] = 3
                                            mem[64] = mem[64] + 128
                                            if 0 >= mem[_1787]:
                                                revert with 0, 50
                                            mem[_1787 + 32] = swapTokens[idx]
                                            if 1 >= mem[_1787]:
                                                revert with 0, 50
                                            mem[_1787 + 64] = address(_1696)
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 2 >= mem[_1787]:
                                                revert with 0, 50
                                            mem[_1787 + 96] = address(stor52.field_256)
                                            mem[_1787 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1787 + 132] = _1504
                                            mem[_1787 + 164] = 97 * _1504 * _1516 / 100 / 10^(uint8(_1528) + 2)
                                            mem[_1787 + 196] = 160
                                            mem[_1787 + 292] = mem[_1787]
                                            s = 0
                                            t = _1787 + 324
                                            u = _1787 + 32
                                            while s < mem[_1787]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_1787 + 228] = this.address
                                            mem[_1787 + 260] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1787 + (32 * mem[_1787]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2265 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2295 = mem[_2265]
                                            require mem[_2265] <= test266151307()
                                            require _2265 + return_data.size > _2265 + mem[_2265] + 31
                                            _2325 = mem[_2265 + mem[_2265]]
                                            if mem[_2265 + mem[_2265]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_2265 + mem[_2265]]) + 1 < 0 or _2265 + ceil32(return_data.size) + ceil32(32 * mem[_2265 + mem[_2265]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _2265 + ceil32(return_data.size) + ceil32(32 * mem[_2265 + mem[_2265]]) + 1
                                            mem[_2265 + ceil32(return_data.size)] = _2325
                                            require _2295 + (32 * _2325) + 32 <= return_data.size
                                            t = _2265 + _2295 + 32
                                            u = _2265 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2325:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                    else:
                                        t = 10
                                        u = 1
                                        s = mem[_1525 + 31 len 1] + 2
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
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2387 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2423 = mem[_2387]
                                        require mem[_2387] == mem[_2387 + 12 len 20]
                                        if swapTokens[idx] == mem[_2387 + 12 len 20]:
                                            _2437 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            if 0 >= mem[_2437]:
                                                revert with 0, 50
                                            mem[_2437 + 32] = swapTokens[idx]
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 1 >= mem[_2437]:
                                                revert with 0, 50
                                            mem[_2437 + 64] = address(stor52.field_256)
                                            mem[_2437 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_2437 + 100] = _1504
                                            mem[_2437 + 132] = 97 * _1504 * _1516 / 100 / t * u
                                            mem[_2437 + 164] = 160
                                            mem[_2437 + 260] = mem[_2437]
                                            s = 0
                                            t = _2437 + 292
                                            u = _2437 + 32
                                            while s < mem[_2437]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_2437 + 196] = this.address
                                            mem[_2437 + 228] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2437 + (32 * mem[_2437]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2648 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2660 = mem[_2648]
                                            require mem[_2648] <= test266151307()
                                            require _2648 + return_data.size > _2648 + mem[_2648] + 31
                                            _2672 = mem[_2648 + mem[_2648]]
                                            if mem[_2648 + mem[_2648]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_2648 + mem[_2648]]) + 1 < 0 or _2648 + ceil32(return_data.size) + ceil32(32 * mem[_2648 + mem[_2648]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _2648 + ceil32(return_data.size) + ceil32(32 * mem[_2648 + mem[_2648]]) + 1
                                            mem[_2648 + ceil32(return_data.size)] = _2672
                                            require _2660 + (32 * _2672) + 32 <= return_data.size
                                            t = _2648 + _2660 + 32
                                            u = _2648 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2672:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                        else:
                                            _2435 = mem[64]
                                            mem[mem[64]] = 3
                                            mem[64] = mem[64] + 128
                                            if 0 >= mem[_2435]:
                                                revert with 0, 50
                                            mem[_2435 + 32] = swapTokens[idx]
                                            if 1 >= mem[_2435]:
                                                revert with 0, 50
                                            mem[_2435 + 64] = address(_2423)
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 2 >= mem[_2435]:
                                                revert with 0, 50
                                            mem[_2435 + 96] = address(stor52.field_256)
                                            mem[_2435 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_2435 + 132] = _1504
                                            mem[_2435 + 164] = 97 * _1504 * _1516 / 100 / t * u
                                            mem[_2435 + 196] = 160
                                            mem[_2435 + 292] = mem[_2435]
                                            s = 0
                                            t = _2435 + 324
                                            u = _2435 + 32
                                            while s < mem[_2435]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_2435 + 228] = this.address
                                            mem[_2435 + 260] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2435 + (32 * mem[_2435]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2647 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2659 = mem[_2647]
                                            require mem[_2647] <= test266151307()
                                            require _2647 + return_data.size > _2647 + mem[_2647] + 31
                                            _2671 = mem[_2647 + mem[_2647]]
                                            if mem[_2647 + mem[_2647]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_2647 + mem[_2647]]) + 1 < 0 or _2647 + ceil32(return_data.size) + ceil32(32 * mem[_2647 + mem[_2647]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _2647 + ceil32(return_data.size) + ceil32(32 * mem[_2647 + mem[_2647]]) + 1
                                            mem[_2647 + ceil32(return_data.size)] = _2671
                                            require _2659 + (32 * _2671) + 32 <= return_data.size
                                            t = _2647 + _2659 + 32
                                            u = _2647 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2671:
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
                mem[mem[64]] = 0xf6ca71b000000000000000000000000000000000000000000000000000000000
                require ext_code.size(stor54[idx])
                staticcall stor54[idx].getRewardTokenAddresses() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _755 = mem[64]
                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _761 = mem[_755]
                require mem[_755] <= test266151307()
                require _755 + return_data.size > _755 + mem[_755] + 31
                _770 = mem[_755 + mem[_755]]
                if mem[_755 + mem[_755]] > test266151307():
                    revert with 0, 65
                if ceil32(32 * mem[_755 + mem[_755]]) + 1 < 0 or _755 + ceil32(return_data.size) + ceil32(32 * mem[_755 + mem[_755]]) + 1 > test266151307():
                    revert with 0, 65
                mem[64] = _755 + ceil32(return_data.size) + ceil32(32 * mem[_755 + mem[_755]]) + 1
                mem[_755 + ceil32(return_data.size)] = _770
                require _761 + (32 * _770) + 32 <= return_data.size
                t = _755 + _761 + 32
                u = _755 + ceil32(return_data.size) + 32
                s = 0
                while s < _770:
                    require mem[t] == mem[t + 12 len 20]
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s + 1
                    continue 
                if _770 != 0:
                    mem[mem[64]] = 0x5a063f6300000000000000000000000000000000000000000000000000000000
                    require ext_code.size(stor54[idx])
                    call stor54[idx].collectRewardTokens() with:
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
                    _1502 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    _1505 = mem[_1502]
                    if mem[_1502]:
                        mem[mem[64] + 4] = swapTokens[idx]
                        require ext_code.size(priceProviderAddress)
                        staticcall priceProviderAddress.price(address arg1) with:
                                gas gas_remaining wei
                               args swapTokens[idx]
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1514 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1517 = mem[_1514]
                        require ext_code.size(swapTokens[idx])
                        staticcall swapTokens[idx].0x313ce567 with:
                                gas gas_remaining wei
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _1526 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        _1529 = mem[_1526]
                        require mem[_1526] == mem[_1526 + 31 len 1]
                        if mem[_1526 + 31 len 1] < 4:
                            revert with 0, 'Token must have sufficient decimal places'
                        if mem[_1526 + 31 len 1] > 18:
                            revert with 0, 'Token must have sufficient decimal places'
                        if 8 > !mem[_1526 + 31 len 1]:
                            revert with 0, 17
                        if _1505 and _1517 > -1 / _1505:
                            revert with 0, 17
                        if _1505 * _1517 > 0x2a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3a0fd5c5f02a3:
                            revert with 0, 17
                        if 6 > mem[_1526 + 31 len 1] + 8:
                            if 6 < mem[_1526 + 31 len 1] + 8:
                                revert with 0, 17
                            if not -mem[_1526 + 31 len 1] - 2:
                                if 97 * _1505 * _1517 / 100 and 1 > -1 / 97 * _1505 * _1517 / 100:
                                    revert with 0, 17
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1616 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1628 = mem[_1616]
                                require mem[_1616] == mem[_1616 + 12 len 20]
                                if swapTokens[idx] == mem[_1616 + 12 len 20]:
                                    _1684 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_1684]:
                                        revert with 0, 50
                                    mem[_1684 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_1684]:
                                        revert with 0, 50
                                    mem[_1684 + 64] = address(stor52.field_256)
                                    mem[_1684 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1684 + 100] = _1505
                                    mem[_1684 + 132] = 97 * _1505 * _1517 / 100
                                    mem[_1684 + 164] = 160
                                    mem[_1684 + 260] = mem[_1684]
                                    s = 0
                                    t = _1684 + 292
                                    u = _1684 + 32
                                    while s < mem[_1684]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1684 + 196] = this.address
                                    mem[_1684 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1684 + (32 * mem[_1684]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2282 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2312 = mem[_2282]
                                    require mem[_2282] <= test266151307()
                                    require _2282 + return_data.size > _2282 + mem[_2282] + 31
                                    _2342 = mem[_2282 + mem[_2282]]
                                    if mem[_2282 + mem[_2282]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2282 + mem[_2282]]) + 1 < 0 or _2282 + ceil32(return_data.size) + ceil32(32 * mem[_2282 + mem[_2282]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2282 + ceil32(return_data.size) + ceil32(32 * mem[_2282 + mem[_2282]]) + 1
                                    mem[_2282 + ceil32(return_data.size)] = _2342
                                    require _2312 + (32 * _2342) + 32 <= return_data.size
                                    t = _2282 + _2312 + 32
                                    u = _2282 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2342:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    _1682 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_1682]:
                                        revert with 0, 50
                                    mem[_1682 + 32] = swapTokens[idx]
                                    if 1 >= mem[_1682]:
                                        revert with 0, 50
                                    mem[_1682 + 64] = address(_1628)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1682]:
                                        revert with 0, 50
                                    mem[_1682 + 96] = address(stor52.field_256)
                                    mem[_1682 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1682 + 132] = _1505
                                    mem[_1682 + 164] = 97 * _1505 * _1517 / 100
                                    mem[_1682 + 196] = 160
                                    mem[_1682 + 292] = mem[_1682]
                                    s = 0
                                    t = _1682 + 324
                                    u = _1682 + 32
                                    while s < mem[_1682]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1682 + 228] = this.address
                                    mem[_1682 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1682 + (32 * mem[_1682]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2281 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2311 = mem[_2281]
                                    require mem[_2281] <= test266151307()
                                    require _2281 + return_data.size > _2281 + mem[_2281] + 31
                                    _2341 = mem[_2281 + mem[_2281]]
                                    if mem[_2281 + mem[_2281]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2281 + mem[_2281]]) + 1 < 0 or _2281 + ceil32(return_data.size) + ceil32(32 * mem[_2281 + mem[_2281]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2281 + ceil32(return_data.size) + ceil32(32 * mem[_2281 + mem[_2281]]) + 1
                                    mem[_2281 + ceil32(return_data.size)] = _2341
                                    require _2311 + (32 * _2341) + 32 <= return_data.size
                                    t = _2281 + _2311 + 32
                                    u = _2281 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2341:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                            else:
                                if bool(bool(-mem[_1526 + 31 len 1] - 2 < 78)) or bool(bool(-mem[_1526 + 31 len 1] - 2 < 32)):
                                    if 97 * _1505 * _1517 / 100 and 10^(-mem[_1526 + 31 len 1] - 2) > -1 / 97 * _1505 * _1517 / 100:
                                        revert with 0, 17
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1655 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1681 = mem[_1655]
                                    require mem[_1655] == mem[_1655 + 12 len 20]
                                    if swapTokens[idx] == mem[_1655 + 12 len 20]:
                                        _1775 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_1775]:
                                            revert with 0, 50
                                        mem[_1775 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_1775]:
                                            revert with 0, 50
                                        mem[_1775 + 64] = address(stor52.field_256)
                                        mem[_1775 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1775 + 100] = _1505
                                        mem[_1775 + 132] = 97 * _1505 * _1517 / 100 * 10^(-uint8(_1529) - 2)
                                        mem[_1775 + 164] = 160
                                        mem[_1775 + 260] = mem[_1775]
                                        s = 0
                                        t = _1775 + 292
                                        u = _1775 + 32
                                        while s < mem[_1775]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1775 + 196] = this.address
                                        mem[_1775 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1775 + (32 * mem[_1775]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2280 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2310 = mem[_2280]
                                        require mem[_2280] <= test266151307()
                                        require _2280 + return_data.size > _2280 + mem[_2280] + 31
                                        _2340 = mem[_2280 + mem[_2280]]
                                        if mem[_2280 + mem[_2280]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2280 + mem[_2280]]) + 1 < 0 or _2280 + ceil32(return_data.size) + ceil32(32 * mem[_2280 + mem[_2280]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2280 + ceil32(return_data.size) + ceil32(32 * mem[_2280 + mem[_2280]]) + 1
                                        mem[_2280 + ceil32(return_data.size)] = _2340
                                        require _2310 + (32 * _2340) + 32 <= return_data.size
                                        t = _2280 + _2310 + 32
                                        u = _2280 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2340:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                        if _2280 + _2310 + (32 * _2340) + 32 == -1:
                                            revert with 0, 17
                                        t = _2280 + _2310 + (32 * _2340) + 33
                                        continue 
                                    _1773 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_1773]:
                                        revert with 0, 50
                                    mem[_1773 + 32] = swapTokens[idx]
                                    if 1 >= mem[_1773]:
                                        revert with 0, 50
                                    mem[_1773 + 64] = address(_1681)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1773]:
                                        revert with 0, 50
                                    mem[_1773 + 96] = address(stor52.field_256)
                                    mem[_1773 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1773 + 132] = _1505
                                    mem[_1773 + 164] = 97 * _1505 * _1517 / 100 * 10^(-uint8(_1529) - 2)
                                    mem[_1773 + 196] = 160
                                    mem[_1773 + 292] = mem[_1773]
                                    s = 0
                                    t = _1773 + 324
                                    u = _1773 + 32
                                    while s < mem[_1773]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1773 + 228] = this.address
                                    mem[_1773 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1773 + (32 * mem[_1773]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2279 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2309 = mem[_2279]
                                    require mem[_2279] <= test266151307()
                                    require _2279 + return_data.size > _2279 + mem[_2279] + 31
                                    _2339 = mem[_2279 + mem[_2279]]
                                    if mem[_2279 + mem[_2279]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2279 + mem[_2279]]) + 1 < 0 or _2279 + ceil32(return_data.size) + ceil32(32 * mem[_2279 + mem[_2279]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2279 + ceil32(return_data.size) + ceil32(32 * mem[_2279 + mem[_2279]]) + 1
                                    mem[_2279 + ceil32(return_data.size)] = _2339
                                    require _2309 + (32 * _2339) + 32 <= return_data.size
                                    t = _2279 + _2309 + 32
                                    u = _2279 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2339:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    t = 10
                                    u = 1
                                    s = -mem[_1526 + 31 len 1] - 2
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
                                    if 97 * _1505 * _1517 / 100 and t * u > -1 / 97 * _1505 * _1517 / 100:
                                        revert with 0, 17
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2390 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2426 = mem[_2390]
                                    require mem[_2390] == mem[_2390 + 12 len 20]
                                    if swapTokens[idx] == mem[_2390 + 12 len 20]:
                                        _2449 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_2449]:
                                            revert with 0, 50
                                        mem[_2449 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_2449]:
                                            revert with 0, 50
                                        mem[_2449 + 64] = address(stor52.field_256)
                                        mem[_2449 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_2449 + 100] = _1505
                                        mem[_2449 + 132] = 97 * _1505 * _1517 / 100 * t * u
                                        mem[_2449 + 164] = 160
                                        mem[_2449 + 260] = mem[_2449]
                                        s = 0
                                        t = _2449 + 292
                                        u = _2449 + 32
                                        while s < mem[_2449]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_2449 + 196] = this.address
                                        mem[_2449 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2449 + (32 * mem[_2449]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2654 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2666 = mem[_2654]
                                        require mem[_2654] <= test266151307()
                                        require _2654 + return_data.size > _2654 + mem[_2654] + 31
                                        _2678 = mem[_2654 + mem[_2654]]
                                        if mem[_2654 + mem[_2654]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2654 + mem[_2654]]) + 1 < 0 or _2654 + ceil32(return_data.size) + ceil32(32 * mem[_2654 + mem[_2654]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2654 + ceil32(return_data.size) + ceil32(32 * mem[_2654 + mem[_2654]]) + 1
                                        mem[_2654 + ceil32(return_data.size)] = _2678
                                        require _2666 + (32 * _2678) + 32 <= return_data.size
                                        t = _2654 + _2666 + 32
                                        u = _2654 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2678:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        _2447 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if 0 >= mem[_2447]:
                                            revert with 0, 50
                                        mem[_2447 + 32] = swapTokens[idx]
                                        if 1 >= mem[_2447]:
                                            revert with 0, 50
                                        mem[_2447 + 64] = address(_2426)
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_2447]:
                                            revert with 0, 50
                                        mem[_2447 + 96] = address(stor52.field_256)
                                        mem[_2447 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_2447 + 132] = _1505
                                        mem[_2447 + 164] = 97 * _1505 * _1517 / 100 * t * u
                                        mem[_2447 + 196] = 160
                                        mem[_2447 + 292] = mem[_2447]
                                        s = 0
                                        t = _2447 + 324
                                        u = _2447 + 32
                                        while s < mem[_2447]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_2447 + 228] = this.address
                                        mem[_2447 + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _2447 + (32 * mem[_2447]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2653 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2665 = mem[_2653]
                                        require mem[_2653] <= test266151307()
                                        require _2653 + return_data.size > _2653 + mem[_2653] + 31
                                        _2677 = mem[_2653 + mem[_2653]]
                                        if mem[_2653 + mem[_2653]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2653 + mem[_2653]]) + 1 < 0 or _2653 + ceil32(return_data.size) + ceil32(32 * mem[_2653 + mem[_2653]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2653 + ceil32(return_data.size) + ceil32(32 * mem[_2653 + mem[_2653]]) + 1
                                        mem[_2653 + ceil32(return_data.size)] = _2677
                                        require _2665 + (32 * _2677) + 32 <= return_data.size
                                        t = _2653 + _2665 + 32
                                        u = _2653 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2677:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                        else:
                            if 6 >= mem[_1526 + 31 len 1] + 8:
                                require ext_code.size(address(uniswapAddr))
                                staticcall address(uniswapAddr).0x73b295c2 with:
                                        gas gas_remaining wei
                                mem[mem[64]] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                _1550 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size)
                                require return_data.size >= 32
                                _1553 = mem[_1550]
                                require mem[_1550] == mem[_1550 + 12 len 20]
                                if swapTokens[idx] == mem[_1550 + 12 len 20]:
                                    _1564 = mem[64]
                                    mem[mem[64]] = 2
                                    mem[64] = mem[64] + 96
                                    if 0 >= mem[_1564]:
                                        revert with 0, 50
                                    mem[_1564 + 32] = swapTokens[idx]
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 1 >= mem[_1564]:
                                        revert with 0, 50
                                    mem[_1564 + 64] = address(stor52.field_256)
                                    mem[_1564 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1564 + 100] = _1505
                                    mem[_1564 + 132] = 97 * _1505 * _1517 / 100
                                    mem[_1564 + 164] = 160
                                    mem[_1564 + 260] = mem[_1564]
                                    s = 0
                                    t = _1564 + 292
                                    u = _1564 + 32
                                    while s < mem[_1564]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1564 + 196] = this.address
                                    mem[_1564 + 228] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1564 + (32 * mem[_1564]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2274 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2304 = mem[_2274]
                                    require mem[_2274] <= test266151307()
                                    require _2274 + return_data.size > _2274 + mem[_2274] + 31
                                    _2334 = mem[_2274 + mem[_2274]]
                                    if mem[_2274 + mem[_2274]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2274 + mem[_2274]]) + 1 < 0 or _2274 + ceil32(return_data.size) + ceil32(32 * mem[_2274 + mem[_2274]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2274 + ceil32(return_data.size) + ceil32(32 * mem[_2274 + mem[_2274]]) + 1
                                    mem[_2274 + ceil32(return_data.size)] = _2334
                                    require _2304 + (32 * _2334) + 32 <= return_data.size
                                    t = _2274 + _2304 + 32
                                    u = _2274 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2334:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                                else:
                                    _1562 = mem[64]
                                    mem[mem[64]] = 3
                                    mem[64] = mem[64] + 128
                                    if 0 >= mem[_1562]:
                                        revert with 0, 50
                                    mem[_1562 + 32] = swapTokens[idx]
                                    if 1 >= mem[_1562]:
                                        revert with 0, 50
                                    mem[_1562 + 64] = address(_1553)
                                    if 1 >= stor52.length:
                                        revert with 0, 50
                                    mem[0] = 52
                                    if 2 >= mem[_1562]:
                                        revert with 0, 50
                                    mem[_1562 + 96] = address(stor52.field_256)
                                    mem[_1562 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_1562 + 132] = _1505
                                    mem[_1562 + 164] = 97 * _1505 * _1517 / 100
                                    mem[_1562 + 196] = 160
                                    mem[_1562 + 292] = mem[_1562]
                                    s = 0
                                    t = _1562 + 324
                                    u = _1562 + 32
                                    while s < mem[_1562]:
                                        mem[t] = mem[u + 12 len 20]
                                        s = s + 1
                                        t = t + 32
                                        u = u + 32
                                        continue 
                                    mem[_1562 + 228] = this.address
                                    mem[_1562 + 260] = block.timestamp
                                    require ext_code.size(address(uniswapAddr))
                                    call address(uniswapAddr).mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _1562 + (32 * mem[_1562]) + -mem[64] + 320]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _2273 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _2303 = mem[_2273]
                                    require mem[_2273] <= test266151307()
                                    require _2273 + return_data.size > _2273 + mem[_2273] + 31
                                    _2333 = mem[_2273 + mem[_2273]]
                                    if mem[_2273 + mem[_2273]] > test266151307():
                                        revert with 0, 65
                                    if ceil32(32 * mem[_2273 + mem[_2273]]) + 1 < 0 or _2273 + ceil32(return_data.size) + ceil32(32 * mem[_2273 + mem[_2273]]) + 1 > test266151307():
                                        revert with 0, 65
                                    mem[64] = _2273 + ceil32(return_data.size) + ceil32(32 * mem[_2273 + mem[_2273]]) + 1
                                    mem[_2273 + ceil32(return_data.size)] = _2333
                                    require _2303 + (32 * _2333) + 32 <= return_data.size
                                    t = _2273 + _2303 + 32
                                    u = _2273 + ceil32(return_data.size) + 32
                                    s = 0
                                    while s < _2333:
                                        mem[u] = mem[t]
                                        t = t + 32
                                        u = u + 32
                                        s = s + 1
                                        continue 
                            else:
                                if mem[_1526 + 31 len 1] + 8 < 6:
                                    revert with 0, 17
                                if not mem[_1526 + 31 len 1] + 2:
                                    require ext_code.size(address(uniswapAddr))
                                    staticcall address(uniswapAddr).0x73b295c2 with:
                                            gas gas_remaining wei
                                    mem[mem[64]] = ext_call.return_data[0]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _1622 = mem[64]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _1638 = mem[_1622]
                                    require mem[_1622] == mem[_1622 + 12 len 20]
                                    if swapTokens[idx] == mem[_1622 + 12 len 20]:
                                        _1707 = mem[64]
                                        mem[mem[64]] = 2
                                        mem[64] = mem[64] + 96
                                        if 0 >= mem[_1707]:
                                            revert with 0, 50
                                        mem[_1707 + 32] = swapTokens[idx]
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 1 >= mem[_1707]:
                                            revert with 0, 50
                                        mem[_1707 + 64] = address(stor52.field_256)
                                        mem[_1707 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1707 + 100] = _1505
                                        mem[_1707 + 132] = 97 * _1505 * _1517 / 100
                                        mem[_1707 + 164] = 160
                                        mem[_1707 + 260] = mem[_1707]
                                        s = 0
                                        t = _1707 + 292
                                        u = _1707 + 32
                                        while s < mem[_1707]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1707 + 196] = this.address
                                        mem[_1707 + 228] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1707 + (32 * mem[_1707]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2278 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2308 = mem[_2278]
                                        require mem[_2278] <= test266151307()
                                        require _2278 + return_data.size > _2278 + mem[_2278] + 31
                                        _2338 = mem[_2278 + mem[_2278]]
                                        if mem[_2278 + mem[_2278]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2278 + mem[_2278]]) + 1 < 0 or _2278 + ceil32(return_data.size) + ceil32(32 * mem[_2278 + mem[_2278]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2278 + ceil32(return_data.size) + ceil32(32 * mem[_2278 + mem[_2278]]) + 1
                                        mem[_2278 + ceil32(return_data.size)] = _2338
                                        require _2308 + (32 * _2338) + 32 <= return_data.size
                                        t = _2278 + _2308 + 32
                                        u = _2278 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2338:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                    else:
                                        _1705 = mem[64]
                                        mem[mem[64]] = 3
                                        mem[64] = mem[64] + 128
                                        if 0 >= mem[_1705]:
                                            revert with 0, 50
                                        mem[_1705 + 32] = swapTokens[idx]
                                        if 1 >= mem[_1705]:
                                            revert with 0, 50
                                        mem[_1705 + 64] = address(_1638)
                                        if 1 >= stor52.length:
                                            revert with 0, 50
                                        mem[0] = 52
                                        if 2 >= mem[_1705]:
                                            revert with 0, 50
                                        mem[_1705 + 96] = address(stor52.field_256)
                                        mem[_1705 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_1705 + 132] = _1505
                                        mem[_1705 + 164] = 97 * _1505 * _1517 / 100
                                        mem[_1705 + 196] = 160
                                        mem[_1705 + 292] = mem[_1705]
                                        s = 0
                                        t = _1705 + 324
                                        u = _1705 + 32
                                        while s < mem[_1705]:
                                            mem[t] = mem[u + 12 len 20]
                                            s = s + 1
                                            t = t + 32
                                            u = u + 32
                                            continue 
                                        mem[_1705 + 228] = this.address
                                        mem[_1705 + 260] = block.timestamp
                                        require ext_code.size(address(uniswapAddr))
                                        call address(uniswapAddr).mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _1705 + (32 * mem[_1705]) + -mem[64] + 320]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2277 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2307 = mem[_2277]
                                        require mem[_2277] <= test266151307()
                                        require _2277 + return_data.size > _2277 + mem[_2277] + 31
                                        _2337 = mem[_2277 + mem[_2277]]
                                        if mem[_2277 + mem[_2277]] > test266151307():
                                            revert with 0, 65
                                        if ceil32(32 * mem[_2277 + mem[_2277]]) + 1 < 0 or _2277 + ceil32(return_data.size) + ceil32(32 * mem[_2277 + mem[_2277]]) + 1 > test266151307():
                                            revert with 0, 65
                                        mem[64] = _2277 + ceil32(return_data.size) + ceil32(32 * mem[_2277 + mem[_2277]]) + 1
                                        mem[_2277 + ceil32(return_data.size)] = _2337
                                        require _2307 + (32 * _2337) + 32 <= return_data.size
                                        t = _2277 + _2307 + 32
                                        u = _2277 + ceil32(return_data.size) + 32
                                        s = 0
                                        while s < _2337:
                                            mem[u] = mem[t]
                                            t = t + 32
                                            u = u + 32
                                            s = s + 1
                                            continue 
                                else:
                                    if bool(bool(mem[_1526 + 31 len 1] + 2 < 78)) or bool(bool(mem[_1526 + 31 len 1] + 2 < 32)):
                                        if not 10^(mem[_1526 + 31 len 1] + 2):
                                            revert with 0, 18
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _1661 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _1704 = mem[_1661]
                                        require mem[_1661] == mem[_1661 + 12 len 20]
                                        if swapTokens[idx] == mem[_1661 + 12 len 20]:
                                            _1797 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            if 0 >= mem[_1797]:
                                                revert with 0, 50
                                            mem[_1797 + 32] = swapTokens[idx]
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 1 >= mem[_1797]:
                                                revert with 0, 50
                                            mem[_1797 + 64] = address(stor52.field_256)
                                            mem[_1797 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1797 + 100] = _1505
                                            mem[_1797 + 132] = 97 * _1505 * _1517 / 100 / 10^(uint8(_1529) + 2)
                                            mem[_1797 + 164] = 160
                                            mem[_1797 + 260] = mem[_1797]
                                            s = 0
                                            t = _1797 + 292
                                            u = _1797 + 32
                                            while s < mem[_1797]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_1797 + 196] = this.address
                                            mem[_1797 + 228] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1797 + (32 * mem[_1797]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2276 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2306 = mem[_2276]
                                            require mem[_2276] <= test266151307()
                                            require _2276 + return_data.size > _2276 + mem[_2276] + 31
                                            _2336 = mem[_2276 + mem[_2276]]
                                            if mem[_2276 + mem[_2276]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_2276 + mem[_2276]]) + 1 < 0 or _2276 + ceil32(return_data.size) + ceil32(32 * mem[_2276 + mem[_2276]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _2276 + ceil32(return_data.size) + ceil32(32 * mem[_2276 + mem[_2276]]) + 1
                                            mem[_2276 + ceil32(return_data.size)] = _2336
                                            require _2306 + (32 * _2336) + 32 <= return_data.size
                                            t = _2276 + _2306 + 32
                                            u = _2276 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2336:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                        else:
                                            _1795 = mem[64]
                                            mem[mem[64]] = 3
                                            mem[64] = mem[64] + 128
                                            if 0 >= mem[_1795]:
                                                revert with 0, 50
                                            mem[_1795 + 32] = swapTokens[idx]
                                            if 1 >= mem[_1795]:
                                                revert with 0, 50
                                            mem[_1795 + 64] = address(_1704)
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 2 >= mem[_1795]:
                                                revert with 0, 50
                                            mem[_1795 + 96] = address(stor52.field_256)
                                            mem[_1795 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_1795 + 132] = _1505
                                            mem[_1795 + 164] = 97 * _1505 * _1517 / 100 / 10^(uint8(_1529) + 2)
                                            mem[_1795 + 196] = 160
                                            mem[_1795 + 292] = mem[_1795]
                                            s = 0
                                            t = _1795 + 324
                                            u = _1795 + 32
                                            while s < mem[_1795]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_1795 + 228] = this.address
                                            mem[_1795 + 260] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _1795 + (32 * mem[_1795]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2275 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2305 = mem[_2275]
                                            require mem[_2275] <= test266151307()
                                            require _2275 + return_data.size > _2275 + mem[_2275] + 31
                                            _2335 = mem[_2275 + mem[_2275]]
                                            if mem[_2275 + mem[_2275]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_2275 + mem[_2275]]) + 1 < 0 or _2275 + ceil32(return_data.size) + ceil32(32 * mem[_2275 + mem[_2275]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _2275 + ceil32(return_data.size) + ceil32(32 * mem[_2275 + mem[_2275]]) + 1
                                            mem[_2275 + ceil32(return_data.size)] = _2335
                                            require _2305 + (32 * _2335) + 32 <= return_data.size
                                            t = _2275 + _2305 + 32
                                            u = _2275 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2335:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                    else:
                                        t = 10
                                        u = 1
                                        s = mem[_1526 + 31 len 1] + 2
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
                                        require ext_code.size(address(uniswapAddr))
                                        staticcall address(uniswapAddr).0x73b295c2 with:
                                                gas gas_remaining wei
                                        mem[mem[64]] = ext_call.return_data[0]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _2389 = mem[64]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _2425 = mem[_2389]
                                        require mem[_2389] == mem[_2389 + 12 len 20]
                                        if swapTokens[idx] == mem[_2389 + 12 len 20]:
                                            _2445 = mem[64]
                                            mem[mem[64]] = 2
                                            mem[64] = mem[64] + 96
                                            if 0 >= mem[_2445]:
                                                revert with 0, 50
                                            mem[_2445 + 32] = swapTokens[idx]
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 1 >= mem[_2445]:
                                                revert with 0, 50
                                            mem[_2445 + 64] = address(stor52.field_256)
                                            mem[_2445 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_2445 + 100] = _1505
                                            mem[_2445 + 132] = 97 * _1505 * _1517 / 100 / t * u
                                            mem[_2445 + 164] = 160
                                            mem[_2445 + 260] = mem[_2445]
                                            s = 0
                                            t = _2445 + 292
                                            u = _2445 + 32
                                            while s < mem[_2445]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_2445 + 196] = this.address
                                            mem[_2445 + 228] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2445 + (32 * mem[_2445]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2652 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2664 = mem[_2652]
                                            require mem[_2652] <= test266151307()
                                            require _2652 + return_data.size > _2652 + mem[_2652] + 31
                                            _2676 = mem[_2652 + mem[_2652]]
                                            if mem[_2652 + mem[_2652]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_2652 + mem[_2652]]) + 1 < 0 or _2652 + ceil32(return_data.size) + ceil32(32 * mem[_2652 + mem[_2652]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _2652 + ceil32(return_data.size) + ceil32(32 * mem[_2652 + mem[_2652]]) + 1
                                            mem[_2652 + ceil32(return_data.size)] = _2676
                                            require _2664 + (32 * _2676) + 32 <= return_data.size
                                            t = _2652 + _2664 + 32
                                            u = _2652 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2676:
                                                mem[u] = mem[t]
                                                t = t + 32
                                                u = u + 32
                                                s = s + 1
                                                continue 
                                        else:
                                            _2443 = mem[64]
                                            mem[mem[64]] = 3
                                            mem[64] = mem[64] + 128
                                            if 0 >= mem[_2443]:
                                                revert with 0, 50
                                            mem[_2443 + 32] = swapTokens[idx]
                                            if 1 >= mem[_2443]:
                                                revert with 0, 50
                                            mem[_2443 + 64] = address(_2425)
                                            if 1 >= stor52.length:
                                                revert with 0, 50
                                            mem[0] = 52
                                            if 2 >= mem[_2443]:
                                                revert with 0, 50
                                            mem[_2443 + 96] = address(stor52.field_256)
                                            mem[_2443 + 128] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_2443 + 132] = _1505
                                            mem[_2443 + 164] = 97 * _1505 * _1517 / 100 / t * u
                                            mem[_2443 + 196] = 160
                                            mem[_2443 + 292] = mem[_2443]
                                            s = 0
                                            t = _2443 + 324
                                            u = _2443 + 32
                                            while s < mem[_2443]:
                                                mem[t] = mem[u + 12 len 20]
                                                s = s + 1
                                                t = t + 32
                                                u = u + 32
                                                continue 
                                            mem[_2443 + 228] = this.address
                                            mem[_2443 + 260] = block.timestamp
                                            require ext_code.size(address(uniswapAddr))
                                            call address(uniswapAddr).mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _2443 + (32 * mem[_2443]) + -mem[64] + 320]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _2651 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _2663 = mem[_2651]
                                            require mem[_2651] <= test266151307()
                                            require _2651 + return_data.size > _2651 + mem[_2651] + 31
                                            _2675 = mem[_2651 + mem[_2651]]
                                            if mem[_2651 + mem[_2651]] > test266151307():
                                                revert with 0, 65
                                            if ceil32(32 * mem[_2651 + mem[_2651]]) + 1 < 0 or _2651 + ceil32(return_data.size) + ceil32(32 * mem[_2651 + mem[_2651]]) + 1 > test266151307():
                                                revert with 0, 65
                                            mem[64] = _2651 + ceil32(return_data.size) + ceil32(32 * mem[_2651 + mem[_2651]]) + 1
                                            mem[_2651 + ceil32(return_data.size)] = _2675
                                            require _2663 + (32 * _2675) + 32 <= return_data.size
                                            t = _2651 + _2663 + 32
                                            u = _2651 + ceil32(return_data.size) + 32
                                            s = 0
                                            while s < _2675:
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
