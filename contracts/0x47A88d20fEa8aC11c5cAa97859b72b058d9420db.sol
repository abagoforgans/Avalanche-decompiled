contract main {




// =====================  Runtime code  =====================


#
#  - mint(address arg1, uint256 arg2, uint256 arg3)
#  - calculateRedeemOutputs(uint256 arg1)
#  - redeemAll(uint256 arg1)
#  - redeem(uint256 arg1, uint256 arg2)
#
mapping of uint8 stor51;
array of struct stor52;
array of address stor54;
uint8 rebasePaused; offset 160
uint8 capitalPaused; offset 168
address priceProviderAddress;
uint256 redeemFeeBps;
uint256 vaultBuffer;
uint256 autoAllocateThreshold;
uint256 rebaseThreshold;
address stor60;
address uniswapAddr;
address strategistAddr;
mapping of address assetDefaultStrategies;
uint256 maxSupplyDiff;
address trusteeAddress;
uint256 trusteeFeeBps;
array of address swapTokens;
uint256 stor1046;
address stor1973;
uint256 stor1973;
address governorAddress;
uint256 stor65FE;
uint256 storFE21;

function redeemFeeBps() {
    return redeemFeeBps
}

function governor() {
    return address(governorAddress)
}

function uniswapAddr() {
    return uniswapAddr
}

function vaultBuffer() {
    return vaultBuffer
}

function trusteeFeeBps() {
    return trusteeFeeBps
}

function getStrategyCount() {
    return stor54.length
}

function trusteeAddress() {
    return trusteeAddress
}

function rebaseThreshold() {
    return rebaseThreshold
}

function rebasePaused() {
    return bool(rebasePaused)
}

function strategistAddr() {
    return strategistAddr
}

function maxSupplyDiff() {
    return maxSupplyDiff
}

function isSupportedAsset(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor51[address(arg1)])
}

function autoAllocateThreshold() {
    return autoAllocateThreshold
}

function getAssetCount() {
    return stor52.length
}

function assetDefaultStrategies(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return assetDefaultStrategies[arg1]
}

function priceProvider() {
    return priceProviderAddress
}

function capitalPaused() {
    return bool(capitalPaused)
}

function swapTokens(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < swapTokens.length
    return swapTokens[arg1]
}

function isGovernor() {
    return (msg.sender == address(governorAddress))
}

function transferGovernance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    uint256(stor1973) = arg1
    emit PendingGovernorshipTransfer(address(governorAddress), arg1);
}

function _fallback() payable {
    delegate stor1046 with:
       funct call.data[0 len 4]
         gas gas_remaining wei
        args call.data[4 len calldata.size - 4]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    return ext_call.return_data[0 len return_data.size]
}

function setAdminImpl(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if not ext_code.size(arg1):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'new implementation is not a contract'
    stor1046 = arg1
}

function claimGovernance() {
    if address(stor1973) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the pending Governor can complete the claim'
    if not msg.sender:
        revert with 0, 'New Governor is address(0)'
    emit GovernorshipTransferred(address(governorAddress), msg.sender);
    uint256(stor65FE) = msg.sender
}

function getAllAssets() {
    mem[64] = (32 * stor52.length) + 128
    mem[96] = stor52.length
    if not stor52.length:
        mem[(32 * stor52.length) + 128] = 32
        mem[(32 * stor52.length) + 160] = stor52.length
        idx = 0
        s = (32 * stor52.length) + 192
        t = 128
        while idx < stor52.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * stor52.length) + 128
           len (96 * stor52.length) + 64
    mem[128] = address(stor52.field_0)
    idx = 128
    s = 0
    while (32 * stor52.length) + 96 > idx:
        mem[idx + 32] = stor52[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor52.length) + 128] = 32
    mem[(32 * stor52.length) + 160] = stor52.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < stor52.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * stor52.length) + -mem[64] + 192
}

function checkBalance(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[100] = this.address
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    idx = 0
    s = mem[96]
    while idx < stor54.length:
        mem[0] = 54
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor54[idx].field_0)
        staticcall stor54[idx].field_0.supportsAsset(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _21 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_21] == bool(mem[_21])
        if not mem[_21]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor54[idx].field_0)
        staticcall stor54[idx].field_0.0x5f515226 with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if s > !mem[_25]:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + mem[_25]
        continue 
    return s
}

function totalValue() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    while idx < stor54.length:
        mem[0] = 54
        s = 0
        t = 0
        while s < stor52.length:
            mem[0] = 52
            require ext_code.size(stor52[s].field_0)
            staticcall stor52[s].field_0.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _80 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _82 = mem[_80]
            require mem[_80] == mem[_80 + 31 len 1]
            if mem[_80 + 31 len 1] < 4:
                revert with 0, 'Token must have sufficient decimal places'
            if mem[_80 + 31 len 1] > 18:
                revert with 0, 'Token must have sufficient decimal places'
            if s >= stor52.length:
                revert with 0, 50
            mem[0] = 52
            mem[mem[64] + 4] = stor52[s].field_0
            require ext_code.size(stor54[idx].field_0)
            staticcall stor54[idx].field_0.supportsAsset(address arg1) with:
                    gas gas_remaining wei
                   args stor52[s].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _100 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require mem[_100] == bool(mem[_100])
            if not mem[_100]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t
                continue 
            if s >= stor52.length:
                revert with 0, 50
            mem[0] = 52
            mem[mem[64] + 4] = stor52[s].field_0
            require ext_code.size(stor54[idx].field_0)
            staticcall stor54[idx].field_0.0x5f515226 with:
                    gas gas_remaining wei
                   args stor52[s].field_0
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _106 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_106]:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t
                continue 
            if 18 > uint8(_82):
                if 18 < uint8(_82):
                    revert with 0, 17
                if not -uint8(_82) + 18:
                    if mem[_106] and 1 > -1 / mem[_106]:
                        revert with 0, 17
                    if t > !mem[_106]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_106]
                    continue 
                if bool(bool(-uint8(_82) + 18 < 78)) or bool(bool(-uint8(_82) + 18 < 32)):
                    if mem[_106] and 10^(-uint8(_82) + 18) > -1 / mem[_106]:
                        revert with 0, 17
                    if t > !(mem[_106] * 10^(-uint8(_82) + 18)):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + (mem[_106] * 10^(-uint8(_82) + 18))
                    continue 
                u = 10
                v = 1
                idx = -uint8(_82) + 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if mem[_106] and u * v > -1 / mem[_106]:
                    revert with 0, 17
                if t > !(mem[_106] * u * v):
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + (mem[_106] * u * v)
                continue 
            if 18 >= uint8(_82):
                if t > !mem[_106]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_106]
                continue 
            if uint8(_82) < 18:
                revert with 0, 17
            if not uint8(_82) - 18:
                if t > !mem[_106]:
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + mem[_106]
                continue 
            if bool(bool(uint8(_82) - 18 < 78)) or bool(bool(uint8(_82) - 18 < 32)):
                if not 10^(uint8(_82) - 18):
                    revert with 0, 18
                if t > !(mem[_106] / 10^(uint8(_82) - 18)):
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + (mem[_106] / 10^(uint8(_82) - 18))
                continue 
            u = 10
            v = 1
            idx = uint8(_82) - 18
            while idx > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(idx):
                    u = u * u
                    v = v
                    idx = uint255(idx) * 0.5
                    continue 
                u = u * u
                v = u * v
                idx = uint255(idx) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            if t > !(mem[_106] / u * v):
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = t + (mem[_106] / u * v)
            continue 
        if 0 > !t:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    while idx < stor52.length:
        mem[0] = 52
        require ext_code.size(stor52[idx].field_0)
        staticcall stor52[idx].field_0.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _81 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _83 = mem[_81]
        require mem[_81] == mem[_81 + 31 len 1]
        if mem[_81 + 31 len 1] < 4:
            revert with 0, 'Token must have sufficient decimal places'
        if mem[_81 + 31 len 1] > 18:
            revert with 0, 'Token must have sufficient decimal places'
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor52[idx].field_0)
        staticcall stor52[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_99]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 18 > uint8(_83):
            if 18 < uint8(_83):
                revert with 0, 17
            if not -uint8(_83) + 18:
                if mem[_99] and 1 > -1 / mem[_99]:
                    revert with 0, 17
                if s > !mem[_99]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_99]
                continue 
            if bool(bool(-uint8(_83) + 18 < 78)) or bool(bool(-uint8(_83) + 18 < 32)):
                if mem[_99] and 10^(-uint8(_83) + 18) > -1 / mem[_99]:
                    revert with 0, 17
                if s > !(mem[_99] * 10^(-uint8(_83) + 18)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (mem[_99] * 10^(-uint8(_83) + 18))
                continue 
            u = 10
            v = 1
            t = -uint8(_83) + 18
            while t > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(t):
                    u = u * u
                    v = v
                    t = uint255(t) * 0.5
                    continue 
                u = u * u
                v = u * v
                t = uint255(t) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if mem[_99] and u * v > -1 / mem[_99]:
                revert with 0, 17
            if s > !(mem[_99] * u * v):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (mem[_99] * u * v)
            continue 
        if 18 >= uint8(_83):
            if s > !mem[_99]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_99]
            continue 
        if uint8(_83) < 18:
            revert with 0, 17
        if not uint8(_83) - 18:
            if s > !mem[_99]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_99]
            continue 
        if bool(bool(uint8(_83) - 18 < 78)) or bool(bool(uint8(_83) - 18 < 32)):
            if not 10^(uint8(_83) - 18):
                revert with 0, 18
            if s > !(mem[_99] / 10^(uint8(_83) - 18)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (mem[_99] / 10^(uint8(_83) - 18))
            continue 
        u = 10
        v = 1
        t = uint8(_83) - 18
        while t > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(t):
                u = u * u
                v = v
                t = uint255(t) * 0.5
                continue 
            u = u * u
            v = u * v
            t = uint255(t) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        if s > !(mem[_99] / u * v):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (mem[_99] / u * v)
        continue 
    if s > -1:
        revert with 0, 17
    return s
}

function rebase() {
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    if rebasePaused:
        revert with 0, 'Rebasing paused'
    require ext_code.size(stor60)
    staticcall stor60.0x18160ddd with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if ext_call.return_data[0]:
        idx = 0
        while idx < stor54.length:
            mem[0] = 54
            s = 0
            t = 0
            while s < stor52.length:
                mem[0] = 52
                require ext_code.size(stor52[s].field_0)
                staticcall stor52[s].field_0.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _150 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _152 = mem[_150]
                require mem[_150] == mem[_150 + 31 len 1]
                if mem[_150 + 31 len 1] < 4:
                    revert with 0, 'Token must have sufficient decimal places'
                if mem[_150 + 31 len 1] > 18:
                    revert with 0, 'Token must have sufficient decimal places'
                if s >= stor52.length:
                    revert with 0, 50
                mem[0] = 52
                mem[mem[64] + 4] = stor52[s].field_0
                require ext_code.size(stor54[idx].field_0)
                staticcall stor54[idx].field_0.supportsAsset(address arg1) with:
                        gas gas_remaining wei
                       args stor52[s].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _178 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_178] == bool(mem[_178])
                if not mem[_178]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= stor52.length:
                    revert with 0, 50
                mem[0] = 52
                mem[mem[64] + 4] = stor52[s].field_0
                require ext_code.size(stor54[idx].field_0)
                staticcall stor54[idx].field_0.0x5f515226 with:
                        gas gas_remaining wei
                       args stor52[s].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _186 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_186]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if 18 > uint8(_152):
                    if 18 < uint8(_152):
                        revert with 0, 17
                    if not -uint8(_152) + 18:
                        if mem[_186] and 1 > -1 / mem[_186]:
                            revert with 0, 17
                        if t > !mem[_186]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_186]
                        continue 
                    if bool(bool(-uint8(_152) + 18 < 78)) or bool(bool(-uint8(_152) + 18 < 32)):
                        if mem[_186] and 10^(-uint8(_152) + 18) > -1 / mem[_186]:
                            revert with 0, 17
                        if t > !(mem[_186] * 10^(-uint8(_152) + 18)):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + (mem[_186] * 10^(-uint8(_152) + 18))
                        continue 
                    u = 10
                    v = 1
                    idx = -uint8(_152) + 18
                    while idx > 1:
                        if u > -1 / u:
                            revert with 0, 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 0, 17
                    if mem[_186] and u * v > -1 / mem[_186]:
                        revert with 0, 17
                    if t > !(mem[_186] * u * v):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + (mem[_186] * u * v)
                    continue 
                if 18 >= uint8(_152):
                    if t > !mem[_186]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_186]
                    continue 
                if uint8(_152) < 18:
                    revert with 0, 17
                if not uint8(_152) - 18:
                    if t > !mem[_186]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_186]
                    continue 
                if bool(bool(uint8(_152) - 18 < 78)) or bool(bool(uint8(_152) - 18 < 32)):
                    if not 10^(uint8(_152) - 18):
                        revert with 0, 18
                    if t > !(mem[_186] / 10^(uint8(_152) - 18)):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + (mem[_186] / 10^(uint8(_152) - 18))
                    continue 
                u = 10
                v = 1
                idx = uint8(_152) - 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if t > !(mem[_186] / u * v):
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + (mem[_186] / u * v)
                continue 
            if 0 > !t:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        idx = 0
        s = 0
        while idx < stor52.length:
            mem[0] = 52
            require ext_code.size(stor52[idx].field_0)
            staticcall stor52[idx].field_0.0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _151 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _153 = mem[_151]
            require mem[_151] == mem[_151 + 31 len 1]
            if mem[_151 + 31 len 1] < 4:
                revert with 0, 'Token must have sufficient decimal places'
            if mem[_151 + 31 len 1] > 18:
                revert with 0, 'Token must have sufficient decimal places'
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor52[idx].field_0)
            staticcall stor52[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _177 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if not mem[_177]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s
                continue 
            if 18 > uint8(_153):
                if 18 < uint8(_153):
                    revert with 0, 17
                if not -uint8(_153) + 18:
                    if mem[_177] and 1 > -1 / mem[_177]:
                        revert with 0, 17
                    if s > !mem[_177]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + mem[_177]
                    continue 
                if bool(bool(-uint8(_153) + 18 < 78)) or bool(bool(-uint8(_153) + 18 < 32)):
                    if mem[_177] and 10^(-uint8(_153) + 18) > -1 / mem[_177]:
                        revert with 0, 17
                    if s > !(mem[_177] * 10^(-uint8(_153) + 18)):
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (mem[_177] * 10^(-uint8(_153) + 18))
                    continue 
                u = 10
                v = 1
                t = -uint8(_153) + 18
                while t > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(t):
                        u = u * u
                        v = v
                        t = uint255(t) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    t = uint255(t) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if mem[_177] and u * v > -1 / mem[_177]:
                    revert with 0, 17
                if s > !(mem[_177] * u * v):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (mem[_177] * u * v)
                continue 
            if 18 >= uint8(_153):
                if s > !mem[_177]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_177]
                continue 
            if uint8(_153) < 18:
                revert with 0, 17
            if not uint8(_153) - 18:
                if s > !mem[_177]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_177]
                continue 
            if bool(bool(uint8(_153) - 18 < 78)) or bool(bool(uint8(_153) - 18 < 32)):
                if not 10^(uint8(_153) - 18):
                    revert with 0, 18
                if s > !(mem[_177] / 10^(uint8(_153) - 18)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (mem[_177] / 10^(uint8(_153) - 18))
                continue 
            u = 10
            v = 1
            t = uint8(_153) - 18
            while t > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(t):
                    u = u * u
                    v = v
                    t = uint255(t) * 0.5
                    continue 
                u = u * u
                v = u * v
                t = uint255(t) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if not u * v:
                revert with 0, 18
            if s > !(mem[_177] / u * v):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (mem[_177] / u * v)
            continue 
        if s > -1:
            revert with 0, 17
        if not trusteeAddress:
            require ext_code.size(stor60)
            staticcall stor60.0x18160ddd with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _159 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if s > mem[_159]:
                require ext_code.size(stor60)
                call stor60.changeSupply(uint256 arg1) with:
                     gas gas_remaining wei
                    args s
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if s <= ext_call.return_data[0]:
                require ext_code.size(stor60)
                staticcall stor60.0x18160ddd with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _163 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if s > mem[_163]:
                    require ext_code.size(stor60)
                    call stor60.changeSupply(uint256 arg1) with:
                         gas gas_remaining wei
                        args s
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if s < ext_call.return_data[0]:
                    revert with 0, 17
                if s - ext_call.return_data[0] and trusteeFeeBps > -1 / s - ext_call.return_data[0]:
                    revert with 0, 17
                if s - ext_call.return_data[0] <= (s * trusteeFeeBps) - (ext_call.return_data[0] * trusteeFeeBps) / 10000:
                    revert with 0, 'Fee must not be greater than yield'
                if not (s * trusteeFeeBps) - (ext_call.return_data[0] * trusteeFeeBps) / 10000:
                    mem[mem[64] + 32] = s - ext_call.return_data[0]
                    mem[mem[64] + 64] = (s * trusteeFeeBps) - (ext_call.return_data[0] * trusteeFeeBps) / 10000
                    emit YieldDistribution(trusteeAddress, s - ext_call.return_data[0], (s * trusteeFeeBps) - (ext_call.return_data[0] * trusteeFeeBps) / 10000);
                    require ext_code.size(stor60)
                    staticcall stor60.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _196 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > mem[_196]:
                        require ext_code.size(stor60)
                        call stor60.changeSupply(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    require ext_code.size(stor60)
                    call stor60.0x40c10f19 with:
                         gas gas_remaining wei
                        args trusteeAddress, (s * trusteeFeeBps) - (ext_call.return_data[0] * trusteeFeeBps) / 10000
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[mem[64] + 32] = s - ext_call.return_data[0]
                    mem[mem[64] + 64] = (s * trusteeFeeBps) - (ext_call.return_data[0] * trusteeFeeBps) / 10000
                    emit YieldDistribution(trusteeAddress, s - ext_call.return_data[0], (s * trusteeFeeBps) - (ext_call.return_data[0] * trusteeFeeBps) / 10000);
                    require ext_code.size(stor60)
                    staticcall stor60.0x18160ddd with:
                            gas gas_remaining wei
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _202 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if s > mem[_202]:
                        require ext_code.size(stor60)
                        call stor60.changeSupply(uint256 arg1) with:
                             gas gas_remaining wei
                            args s
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
    storFE21 = 1
}

function allocate() payable {
    mem[64] = 96
    require not msg.value
    if capitalPaused:
        revert with 0, 'Capital paused'
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    idx = 0
    while idx < stor54.length:
        mem[0] = 54
        mem[mem[64]] = 0xf6ca71b000000000000000000000000000000000000000000000000000000000
        require ext_code.size(stor54[idx].field_0)
        staticcall stor54[idx].field_0.getRewardTokenAddresses() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _52 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _55 = mem[_52]
        require mem[_52] <= test266151307()
        require _52 + mem[_52] + 31 < _52 + return_data.size
        _58 = mem[_52 + mem[_52]]
        if mem[_52 + mem[_52]] > test266151307():
            revert with 0, 65
        if _52 + ceil32(return_data.size) + ceil32(32 * mem[_52 + mem[_52]]) + 1 > test266151307() or ceil32(32 * mem[_52 + mem[_52]]) + 1 < 0:
            revert with 0, 65
        mem[64] = _52 + ceil32(return_data.size) + ceil32(32 * mem[_52 + mem[_52]]) + 1
        mem[_52 + ceil32(return_data.size)] = _58
        require return_data.size >= _55 + (32 * _58) + 32
        t = _52 + _55 + 32
        u = _52 + ceil32(return_data.size) + 32
        s = 0
        while s < _58:
            require mem[t] == mem[t + 12 len 20]
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s + 1
            continue 
        idx = 0
        while idx < _58:
            if idx >= mem[_52 + ceil32(return_data.size)]:
                revert with 0, 50
            if mem[(32 * idx) + _52 + ceil32(return_data.size) + 44 len 20]:
                require ext_code.size(stor[('name', 'stor54', 54) + _52 + _55 + (32 * _58)].field_8192)
                staticcall stor[('name', 'stor54', 54) + _52 + _55 + (32 * _58)].field_8192.rewardLiquidationThreshold() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _255 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _259 = mem[_255]
                if not mem[_255]:
                    if _52 + _55 + (32 * _58) + 32 >= stor54.length:
                        revert with 0, 50
                    mem[0] = 54
                    mem[mem[64]] = 0x548f5ae500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = stor[('name', 'stor54', 54) + _52 + _55 + (32 * _58)].field_8192
                    require ext_code.size(this.address)
                    call this.address.0x548f5ae5 with:
                         gas gas_remaining wei
                        args stor[('name', 'stor54', 54) + _52 + _55 + (32 * _58)].field_8192
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if idx >= mem[_52 + ceil32(return_data.size)]:
                        revert with 0, 50
                    _262 = mem[(32 * idx) + _52 + ceil32(return_data.size) + 32]
                    if _52 + _55 + (32 * _58) + 32 >= stor54.length:
                        revert with 0, 50
                    mem[0] = 54
                    mem[mem[64] + 4] = stor[('name', 'stor54', 54) + _52 + _55 + (32 * _58)].field_8192
                    require ext_code.size(address(_262))
                    staticcall address(_262).0x70a08231 with:
                            gas gas_remaining wei
                           args stor[('name', 'stor54', 54) + _52 + _55 + (32 * _58)].field_8192
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _270 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    if mem[_270] >= _259:
                        if _52 + _55 + (32 * _58) + 32 >= stor54.length:
                            revert with 0, 50
                        mem[0] = 54
                        mem[mem[64]] = 0x548f5ae500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = stor[('name', 'stor54', 54) + _52 + _55 + (32 * _58)].field_8192
                        require ext_code.size(this.address)
                        call this.address.0x548f5ae5 with:
                             gas gas_remaining wei
                            args stor[('name', 'stor54', 54) + _52 + _55 + (32 * _58)].field_8192
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if _52 + _55 + (32 * _58) + 32 == -1:
            revert with 0, 17
        t = _52 + _55 + (32 * _58) + 33
        continue 
    idx = 0
    s = 0
    while idx < stor52.length:
        mem[0] = 52
        require ext_code.size(stor52[idx].field_0)
        staticcall stor52[idx].field_0.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _103 = mem[_99]
        require mem[_99] == mem[_99 + 31 len 1]
        if mem[_99 + 31 len 1] < 4:
            revert with 0, 'Token must have sufficient decimal places'
        if mem[_99 + 31 len 1] > 18:
            revert with 0, 'Token must have sufficient decimal places'
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor52[idx].field_0)
        staticcall stor52[idx].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _125 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if not mem[_125]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        if 18 > uint8(_103):
            if 18 < uint8(_103):
                revert with 0, 17
            if not -uint8(_103) + 18:
                if mem[_125] and 1 > -1 / mem[_125]:
                    revert with 0, 17
                if s > !mem[_125]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + mem[_125]
                continue 
            if bool(bool(-uint8(_103) + 18 < 78)) or bool(bool(-uint8(_103) + 18 < 32)):
                if mem[_125] and 10^(-uint8(_103) + 18) > -1 / mem[_125]:
                    revert with 0, 17
                if s > !(mem[_125] * 10^(-uint8(_103) + 18)):
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (mem[_125] * 10^(-uint8(_103) + 18))
                continue 
            u = 10
            v = 1
            t = -uint8(_103) + 18
            while t > 1:
                if u > -1 / u:
                    revert with 0, 17
                if not bool(t):
                    u = u * u
                    v = v
                    t = uint255(t) * 0.5
                    continue 
                u = u * u
                v = u * v
                t = uint255(t) * 0.5
                continue 
            if v > -1 / u:
                revert with 0, 17
            if mem[_125] and u * v > -1 / mem[_125]:
                revert with 0, 17
            if s > !(mem[_125] * u * v):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (mem[_125] * u * v)
            continue 
        if 18 >= uint8(_103):
            if s > !mem[_125]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_125]
            continue 
        if uint8(_103) < 18:
            revert with 0, 17
        if not uint8(_103) - 18:
            if s > !mem[_125]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + mem[_125]
            continue 
        if bool(bool(uint8(_103) - 18 < 78)) or bool(bool(uint8(_103) - 18 < 32)):
            if not 10^(uint8(_103) - 18):
                revert with 0, 18
            if s > !(mem[_125] / 10^(uint8(_103) - 18)):
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (mem[_125] / 10^(uint8(_103) - 18))
            continue 
        u = 10
        v = 1
        t = uint8(_103) - 18
        while t > 1:
            if u > -1 / u:
                revert with 0, 17
            if not bool(t):
                u = u * u
                v = v
                t = uint255(t) * 0.5
                continue 
            u = u * u
            v = u * v
            t = uint255(t) * 0.5
            continue 
        if v > -1 / u:
            revert with 0, 17
        if not u * v:
            revert with 0, 18
        if s > !(mem[_125] / u * v):
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = s + (mem[_125] / u * v)
        continue 
    if s:
        idx = 0
        while idx < stor54.length:
            mem[0] = 54
            s = 0
            t = 0
            while s < stor52.length:
                mem[0] = 52
                require ext_code.size(stor52[s].field_0)
                staticcall stor52[s].field_0.0x313ce567 with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _401 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _403 = mem[_401]
                require mem[_401] == mem[_401 + 31 len 1]
                if mem[_401 + 31 len 1] < 4:
                    revert with 0, 'Token must have sufficient decimal places'
                if mem[_401 + 31 len 1] > 18:
                    revert with 0, 'Token must have sufficient decimal places'
                if s >= stor52.length:
                    revert with 0, 50
                mem[0] = 52
                mem[mem[64] + 4] = stor52[s].field_0
                require ext_code.size(stor54[idx].field_0)
                staticcall stor54[idx].field_0.supportsAsset(address arg1) with:
                        gas gas_remaining wei
                       args stor52[s].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _411 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                require mem[_411] == bool(mem[_411])
                if not mem[_411]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if s >= stor52.length:
                    revert with 0, 50
                mem[0] = 52
                mem[mem[64] + 4] = stor52[s].field_0
                require ext_code.size(stor54[idx].field_0)
                staticcall stor54[idx].field_0.0x5f515226 with:
                        gas gas_remaining wei
                       args stor52[s].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _417 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if not mem[_417]:
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t
                    continue 
                if 18 > uint8(_403):
                    if 18 < uint8(_403):
                        revert with 0, 17
                    if not -uint8(_403) + 18:
                        if mem[_417] and 1 > -1 / mem[_417]:
                            revert with 0, 17
                        if t > !mem[_417]:
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + mem[_417]
                        continue 
                    if bool(bool(-uint8(_403) + 18 < 78)) or bool(bool(-uint8(_403) + 18 < 32)):
                        if mem[_417] and 10^(-uint8(_403) + 18) > -1 / mem[_417]:
                            revert with 0, 17
                        if t > !(mem[_417] * 10^(-uint8(_403) + 18)):
                            revert with 0, 17
                        if s == -1:
                            revert with 0, 17
                        s = s + 1
                        t = t + (mem[_417] * 10^(-uint8(_403) + 18))
                        continue 
                    u = 10
                    v = 1
                    idx = -uint8(_403) + 18
                    while idx > 1:
                        if u > -1 / u:
                            revert with 0, 17
                        if not bool(idx):
                            u = u * u
                            v = v
                            idx = uint255(idx) * 0.5
                            continue 
                        u = u * u
                        v = u * v
                        idx = uint255(idx) * 0.5
                        continue 
                    if v > -1 / u:
                        revert with 0, 17
                    if mem[_417] and u * v > -1 / mem[_417]:
                        revert with 0, 17
                    if t > !(mem[_417] * u * v):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + (mem[_417] * u * v)
                    continue 
                if 18 >= uint8(_403):
                    if t > !mem[_417]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_417]
                    continue 
                if uint8(_403) < 18:
                    revert with 0, 17
                if not uint8(_403) - 18:
                    if t > !mem[_417]:
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + mem[_417]
                    continue 
                if bool(bool(uint8(_403) - 18 < 78)) or bool(bool(uint8(_403) - 18 < 32)):
                    if not 10^(uint8(_403) - 18):
                        revert with 0, 18
                    if t > !(mem[_417] / 10^(uint8(_403) - 18)):
                        revert with 0, 17
                    if s == -1:
                        revert with 0, 17
                    s = s + 1
                    t = t + (mem[_417] / 10^(uint8(_403) - 18))
                    continue 
                u = 10
                v = 1
                idx = uint8(_403) - 18
                while idx > 1:
                    if u > -1 / u:
                        revert with 0, 17
                    if not bool(idx):
                        u = u * u
                        v = v
                        idx = uint255(idx) * 0.5
                        continue 
                    u = u * u
                    v = u * v
                    idx = uint255(idx) * 0.5
                    continue 
                if v > -1 / u:
                    revert with 0, 17
                if not u * v:
                    revert with 0, 18
                if t > !(mem[_417] / u * v):
                    revert with 0, 17
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t + (mem[_417] / u * v)
                continue 
            if 0 > !t:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if s > -1:
            revert with 0, 17
        if 10^18 < vaultBuffer:
            revert with 0, 17
        if -vaultBuffer + 10^18:
            idx = 0
            while idx < stor52.length:
                mem[0] = 52
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor52[idx].field_0)
                staticcall stor52[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _400 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _402 = mem[_400]
                if mem[_400]:
                    if mem[_400] and -vaultBuffer + 10^18 > -1 / mem[_400]:
                        revert with 0, 17
                    mem[0] = stor52[idx].field_0
                    mem[32] = 64
                    if assetDefaultStrategies[stor52[idx].field_0]:
                        if (10^18 * _402) - (vaultBuffer * _402) / 10^18 > 0:
                            _418 = mem[64]
                            mem[mem[64] + 36] = assetDefaultStrategies[stor52[idx].field_0]
                            mem[mem[64] + 68] = (10^18 * _402) - (vaultBuffer * _402) / 10^18
                            _420 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_420 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_420 + 36 len 28]
                            mem[64] = _418 + 164
                            mem[_418 + 100] = 32
                            mem[_418 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 'Address: insufficient balance for call'
                            if not ext_code.size(stor52[idx].field_0):
                                revert with 0, 'Address: call to non-contract'
                            _427 = mem[_420]
                            s = 0
                            while s < _427:
                                mem[s + _418 + 164] = mem[s + _420 + 32]
                                s = s + 32
                                continue 
                            if ceil32(_427) > _427:
                                mem[_427 + _418 + 164] = 0
                            call stor52[idx].field_0.mem[_418 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_418 + 168 len _427 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_418 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_418 + 168] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _418 + 232] = mem[idx + _418 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_418 + 232]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(assetDefaultStrategies[stor52[idx].field_0])
                                call assetDefaultStrategies[stor52[idx].field_0].deposit(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor52[idx].field_0, (10^18 * _402) - (vaultBuffer * _402) / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_418 + 164] = stor52[idx].field_0
                                mem[_418 + 196] = assetDefaultStrategies[stor52[idx].field_0]
                                mem[_418 + 228] = (10^18 * _402) - (vaultBuffer * _402) / 10^18
                            else:
                                mem[64] = _418 + ceil32(return_data.size) + 165
                                mem[_418 + 164] = return_data.size
                                mem[_418 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_418 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_418 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _418 + ceil32(return_data.size) + 233] = mem[idx + _418 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_418 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_418 + 196] == bool(mem[_418 + 196])
                                    if not mem[_418 + 196]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                require ext_code.size(assetDefaultStrategies[stor52[idx].field_0])
                                call assetDefaultStrategies[stor52[idx].field_0].deposit(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args stor52[idx].field_0, (10^18 * _402) - (vaultBuffer * _402) / 10^18
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_418 + ceil32(return_data.size) + 165] = stor52[idx].field_0
                                mem[_418 + ceil32(return_data.size) + 197] = assetDefaultStrategies[stor52[idx].field_0]
                                mem[_418 + ceil32(return_data.size) + 229] = (10^18 * _402) - (vaultBuffer * _402) / 10^18
                            emit AssetAllocated(stor52[idx].field_0, assetDefaultStrategies[stor52[idx].field_0], (10^18 * _402) - (vaultBuffer * _402) / 10^18);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if trusteeAddress:
                require ext_code.size(trusteeAddress)
                call trusteeAddress.0x8119c065 with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    storFE21 = 1
}



}
