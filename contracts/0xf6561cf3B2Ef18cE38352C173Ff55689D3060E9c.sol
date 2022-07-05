contract main {




// =====================  Runtime code  =====================


#
#  - setPTokenAddress(address arg1, address arg2)
#  - transferToken(address arg1, uint256 arg2)
#  - sub_95bf49cc(?)
#  - sub_9688d2fc(?)
#  - safeApproveAllTokens()
#
address platformAddress;
address vaultAddress;
mapping of address assetToPToken;
array of address stor54;
address sub_2e655201Address;
uint256 rewardLiquidationThreshold;
array of struct rewardToken;
address stor157;
address stor158;
address stor1973;
uint256 stor1973;
address governorAddress;
uint256 stor65FE;
uint256 storFE21;

function governor() payable {
    return address(governorAddress)
}

function assetToPToken(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return assetToPToken[arg1]
}

function sub_2e655201(?) payable {
    return sub_2e655201Address
}

function vaultAddress() payable {
    return vaultAddress
}

function rewardLiquidationThreshold() payable {
    return rewardLiquidationThreshold
}

function rewardTokenAddresses(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardToken.length
    return rewardToken[arg1].field_0
}

function supportsAsset(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(assetToPToken[address(arg1)])
}

function platformAddress() payable {
    return platformAddress
}

function _fallback() payable {
    revert
}

function isGovernor() payable {
    return (msg.sender == address(governorAddress))
}

function transferGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    uint256(stor1973) = arg1
    emit PendingGovernorshipTransfer(address(governorAddress), arg1);
}

function setRewardLiquidationThreshold(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    emit RewardLiquidationThresholdUpdated(rewardLiquidationThreshold, arg1);
    rewardLiquidationThreshold = arg1
}

function claimGovernance() payable {
    if address(stor1973) != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the pending Governor can complete the claim'
    if not msg.sender:
        revert with 0, 'New Governor is address(0)'
    emit GovernorshipTransferred(address(governorAddress), msg.sender);
    uint256(stor65FE) = msg.sender
}

function collectRewardTokens() payable {
    if vaultAddress != msg.sender:
        revert with 0, 'Caller is not the Vault'
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    require ext_code.size(stor158)
    call stor158.claim_rewards(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, vaultAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    storFE21 = 1
}

function removePToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if arg1 >= stor54.length:
        revert with 0, 'Invalid index'
    if stor54.length < 1:
        revert with 0, 17
    if arg1 < stor54.length - 1:
        if stor54.length < 1:
            revert with 0, 17
        if stor54.length - 1 >= stor54.length:
            revert with 0, 50
        if arg1 >= stor54.length:
            revert with 0, 50
        stor54[arg1] = stor54[stor54.length]
    if not stor54.length:
        revert with 0, 49
    stor54[stor54.length] = 0
    stor54.length--
    assetToPToken[stor54[arg1]] = 0
    emit PTokenRemoved(assetToPToken[stor54[arg1]], stor54[arg1]);
}

function getRewardTokenAddresses() payable {
    mem[64] = (32 * rewardToken.length) + 128
    mem[96] = rewardToken.length
    if not rewardToken.length:
        mem[(32 * rewardToken.length) + 128] = 32
        mem[(32 * rewardToken.length) + 160] = rewardToken.length
        idx = 0
        s = (32 * rewardToken.length) + 192
        t = 128
        while idx < rewardToken.length:
            mem[s] = mem[t + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        return memory
          from (32 * rewardToken.length) + 128
           len (96 * rewardToken.length) + 64
    mem[128] = address(rewardToken.field_0)
    idx = 128
    s = 0
    while (32 * rewardToken.length) + 96 > idx:
        mem[idx + 32] = rewardToken[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * rewardToken.length) + 128] = 32
    mem[(32 * rewardToken.length) + 160] = rewardToken.length
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < rewardToken.length:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len (64 * rewardToken.length) + -mem[64] + 192
}

function sub_96d538bb(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    idx = 0
    while idx < ('cd', 4).length:
        require cd[((32 * idx) + cd[4] + 36)] == address(cd[((32 * idx) + cd[4] + 36)])
        if not address(cd[((32 * idx) + cd[4] + 36)]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can not set an empty address as a reward token'
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    idx = 0
    s = 0
    t = 192
    while idx < rewardToken.length:
        mem[t] = rewardToken[s].field_0
        idx = idx + 1
        s = s + 1
        t = t + 32
        continue 
    mem[(32 * rewardToken.length) + 192] = ('cd', 4).length
    idx = 0
    s = (32 * rewardToken.length) + 224
    t = cd[4] + 36
    while idx < ('cd', 4).length:
        require cd[t] == address(cd[t])
        mem[s] = address(cd[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    emit 0x4c0b9649: Array(len=rewardToken.length, data=mem[192 len (32 * rewardToken.length) + (32 * ('cd', 4).length) + 32]), (32 * rewardToken.length) + 96
    rewardToken.length = ('cd', 4).length
    if not ('cd', 4).length:
        idx = 0
        while rewardToken.length > idx:
            rewardToken[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[4] + 36
        while cd[4] + (32 * ('cd', 4).length) + 36 > idx:
            rewardToken[s].field_0 = address(cd[idx])
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 4).length) + 31) >> 5
        while rewardToken.length > idx:
            rewardToken[idx].field_0 = 0
            idx = idx + 1
            continue 
}

function checkBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not assetToPToken[address(arg1)]:
        revert with 0, 'Unsupported asset'
    require ext_code.size(stor157)
    staticcall stor157.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor158)
    staticcall stor158.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    if not uint255(ext_call.return_data[0]):
        return 0
    require ext_code.size(platformAddress)
    staticcall platformAddress.get_virtual_price() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint255(ext_call.return_data[0]) and ext_call.return_data[0] > -1 / 2 * ext_call.return_data[0]:
        revert with 0, 17
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if ext_call.return_data[31 len 1] < 4:
        revert with 0, 'Token must have sufficient decimal places'
    if ext_call.return_data[31 len 1] > 18:
        revert with 0, 'Token must have sufficient decimal places'
    if ext_call.return_data[31 len 1] >= 18:
        return ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 2)
    if 18 < ext_call.return_data[31 len 1]:
        revert with 0, 17
    if not -ext_call.return_data[31 len 1] + 18:
        return ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 2)
    if bool(bool(-ext_call.return_data[31 len 1] + 18 < 78)) or bool(bool(-ext_call.return_data[31 len 1] + 18 < 32)):
        if not 10^(-ext_call.return_data[31 len 1] + 18):
            revert with 0, 18
        return ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / 10^(-ext_call.return_data[31 len 1] + 18) / 2)
    s = 10
    t = 1
    idx = -ext_call.return_data[31 len 1] + 18
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return ((ext_call.return_data[0] * ext_call.return_data[0]) + (ext_call.return_data[0] * ext_call.return_data[0]) / 10^18 / s * t / 2)
}

function withdraw(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if vaultAddress != msg.sender:
        revert with 0, 'Caller is not the Vault'
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    if arg3 <= 0:
        revert with 0, 'Invalid amount'
    mem[0] = arg2
    mem[32] = 53
    mem[128] = arg3
    emit Withdrawal(assetToPToken[address(arg2)], arg3, arg2);
    mem[100] = this.address
    require ext_code.size(stor157)
    staticcall stor157.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(stor158)
    staticcall stor158.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    if ext_call.return_data[0] > !ext_call.return_data[0]:
        revert with 0, 17
    idx = 0
    while idx < 2:
        if idx >= stor54.length:
            revert with 0, 50
        mem[0] = 54
        if stor54[idx] != arg2:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[(2 * ceil32(return_data.size)) + 100] = 2 * ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 132] = ('signextend', 15, ('var', 0))
        require ext_code.size(platformAddress)
        staticcall platformAddress.calc_withdraw_one_coin(uint256 arg1, int128 arg2) with:
                gas gas_remaining wei
               args 2 * ext_call.return_data[0], ('signextend', 15, ('var', 0))
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint255(ext_call.return_data[0]) and arg3 > -1 / 2 * ext_call.return_data[0]:
            revert with 0, 17
        if not ext_call.return_data[0]:
            revert with 0, 18
        if 2 * ext_call.return_data[0] <= (ext_call.return_data[0] * arg3) + (ext_call.return_data[0] * arg3) / ext_call.return_data[0]:
            revert with 0, 'Insufficient USDC-USDCe balance'
        if ext_call.return_data[0] < (ext_call.return_data[0] * arg3) + (ext_call.return_data[0] * arg3) / ext_call.return_data[0]:
            if (ext_call.return_data[0] * arg3) + (ext_call.return_data[0] * arg3) / ext_call.return_data[0] < ext_call.return_data[0]:
                revert with 0, 17
            require ext_code.size(stor158)
            call stor158.withdraw(uint256 arg1) with:
                 gas gas_remaining wei
                args (((ext_call.return_data[0] * arg3) + (ext_call.return_data[0] * arg3) / ext_call.return_data[0]) - ext_call.return_data[0])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 96] = 0
        mem[(4 * ceil32(return_data.size)) + 128] = 0
        if idx >= 2:
            revert with 0, 50
        mem[(32 * idx) + (4 * ceil32(return_data.size)) + 96] = arg3
        mem[(4 * ceil32(return_data.size)) + 160] = 0xe310327300000000000000000000000000000000000000000000000000000000
        idx = 0
        s = (4 * ceil32(return_data.size)) + 96
        t = (4 * ceil32(return_data.size)) + 164
        while idx < 2:
            mem[t] = mem[s]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(platformAddress)
        call platformAddress.mem[(4 * ceil32(return_data.size)) + 160 len 4] with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 164 len 64], (ext_call.return_data[0] * arg3) + (ext_call.return_data[0] * arg3) / ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(4 * ceil32(return_data.size)) + 196] = arg1
        mem[(4 * ceil32(return_data.size)) + 228] = arg3
        mem[(4 * ceil32(return_data.size)) + 160] = 68
        mem[(4 * ceil32(return_data.size)) + 192] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or address(arg1) << 64
        mem[(4 * ceil32(return_data.size)) + 260] = 32
        mem[(4 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        idx = 0
        while idx < 68:
            mem[idx + (4 * ceil32(return_data.size)) + 324] = mem[idx + (4 * ceil32(return_data.size)) + 192]
            idx = idx + 32
            continue 
        mem[(4 * ceil32(return_data.size)) + 392] = 0
        call arg2.mem[(4 * ceil32(return_data.size)) + 324 len 4] with:
             gas gas_remaining wei
            args mem[(4 * ceil32(return_data.size)) + 328 len 64]
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 324] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 328] = 32
                idx = 0
                while idx < 32:
                    mem[idx + (4 * ceil32(return_data.size)) + 392] = mem[idx + (4 * ceil32(return_data.size)) + 292]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[(4 * ceil32(return_data.size)) + 392]
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require uint32(this.address), Mask(224, 0, arg3) == bool(uint32(this.address), Mask(224, 0, arg3))
                if not uint32(this.address), Mask(224, 0, arg3):
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 324] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 325] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = 32
                idx = 0
                while idx < 32:
                    mem[idx + (4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = mem[idx + (4 * ceil32(return_data.size)) + 292]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393]
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 356] == bool(mem[(4 * ceil32(return_data.size)) + 356])
                if not mem[(4 * ceil32(return_data.size)) + 356]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        storFE21 = 1
    revert with 0, 'Invalid pool asset'
}

function depositAll() payable {
    if vaultAddress != msg.sender:
        revert with 0, 'Caller is not the Vault'
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    mem[96] = 0
    mem[128] = 0
    require ext_code.size(platformAddress)
    staticcall platformAddress.get_virtual_price() with:
            gas gas_remaining wei
    mem[160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 160
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < stor54.length:
        mem[0] = 54
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor54[idx])
        staticcall stor54[idx].0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _45 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _46 = mem[_45]
        if not mem[_45]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            continue 
        t = 0
        while t < 2:
            if t >= stor54.length:
                revert with 0, 50
            mem[0] = 54
            if stor54[t] != stor54[idx]:
                if t == -1:
                    revert with 0, 17
                t = t + 1
                continue 
            if t >= 2:
                revert with 0, 50
            mem[(32 * t) + 96] = _46
            require ext_code.size(stor54[idx])
            staticcall stor54[idx].0x313ce567 with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _82 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _84 = mem[_82]
            require mem[_82] == mem[_82 + 31 len 1]
            if mem[_82 + 31 len 1] < 4:
                revert with 0, 'Token must have sufficient decimal places'
            if mem[_82 + 31 len 1] > 18:
                revert with 0, 'Token must have sufficient decimal places'
            if 18 > mem[_82 + 31 len 1]:
                if 18 < mem[_82 + 31 len 1]:
                    revert with 0, 17
                if not -mem[_82 + 31 len 1] + 18:
                    if _46 and 1 > -1 / _46:
                        revert with 0, 17
                    if _46 and 10^18 > -1 / _46:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if s > !(10^18 * _46 / ext_call.return_data[0]):
                        revert with 0, 17
                    mem[mem[64]] = platformAddress
                    mem[mem[64] + 32] = _46
                    emit Deposit(platformAddress, _46, stor54[idx]);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (10^18 * _46 / ext_call.return_data[0])
                    continue 
                if bool(bool(-mem[_82 + 31 len 1] + 18 < 78)) or bool(bool(-mem[_82 + 31 len 1] + 18 < 32)):
                    if _46 and 10^(-mem[_82 + 31 len 1] + 18) > -1 / _46:
                        revert with 0, 17
                    if _46 * 10^(-mem[_82 + 31 len 1] + 18) and 10^18 > -1 / _46 * 10^(-mem[_82 + 31 len 1] + 18):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if s > !(10^18 * _46 * 10^(-mem[_82 + 31 len 1] + 18) / ext_call.return_data[0]):
                        revert with 0, 17
                    mem[mem[64]] = platformAddress
                    mem[mem[64] + 32] = _46
                    emit Deposit(platformAddress, _46, stor54[idx]);
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s + (10^18 * _46 * 10^(-uint8(_84) + 18) / ext_call.return_data[0])
                    continue 
                u = 10
                v = 1
                t = -mem[_82 + 31 len 1] + 18
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
                if _46 and u * v > -1 / _46:
                    revert with 0, 17
                if _46 * u * v and 10^18 > -1 / _46 * u * v:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if s > !(10^18 * _46 * u * v / ext_call.return_data[0]):
                    revert with 0, 17
                mem[mem[64]] = platformAddress
                mem[mem[64] + 32] = _46
                emit Deposit(platformAddress, _46, stor54[idx]);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (10^18 * _46 * u * v / ext_call.return_data[0])
                continue 
            if 18 >= mem[_82 + 31 len 1]:
                if _46 and 10^18 > -1 / _46:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if s > !(10^18 * _46 / ext_call.return_data[0]):
                    revert with 0, 17
                mem[mem[64]] = platformAddress
                mem[mem[64] + 32] = _46
                emit Deposit(platformAddress, _46, stor54[idx]);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (10^18 * _46 / ext_call.return_data[0])
                continue 
            if mem[_82 + 31 len 1] < 18:
                revert with 0, 17
            if not mem[_82 + 31 len 1] - 18:
                if _46 and 10^18 > -1 / _46:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if s > !(10^18 * _46 / ext_call.return_data[0]):
                    revert with 0, 17
                mem[mem[64]] = platformAddress
                mem[mem[64] + 32] = _46
                emit Deposit(platformAddress, _46, stor54[idx]);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (10^18 * _46 / ext_call.return_data[0])
                continue 
            if bool(bool(mem[_82 + 31 len 1] - 18 < 78)) or bool(bool(mem[_82 + 31 len 1] - 18 < 32)):
                if not 10^(mem[_82 + 31 len 1] - 18):
                    revert with 0, 18
                if _46 / 10^(mem[_82 + 31 len 1] - 18) and 10^18 > -1 / _46 / 10^(mem[_82 + 31 len 1] - 18):
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if s > !(10^18 * _46 / 10^(mem[_82 + 31 len 1] - 18) / ext_call.return_data[0]):
                    revert with 0, 17
                mem[mem[64]] = platformAddress
                mem[mem[64] + 32] = _46
                emit Deposit(platformAddress, _46, stor54[idx]);
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s + (10^18 * _46 / 10^(uint8(_84) - 18) / ext_call.return_data[0])
                continue 
            u = 10
            v = 1
            t = mem[_82 + 31 len 1] - 18
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
            if _46 / u * v and 10^18 > -1 / _46 / u * v:
                revert with 0, 17
            if not ext_call.return_data[0]:
                revert with 0, 18
            if s > !(10^18 * _46 / u * v / ext_call.return_data[0]):
                revert with 0, 17
            mem[mem[64]] = platformAddress
            mem[mem[64] + 32] = _46
            emit Deposit(platformAddress, _46, stor54[idx]);
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s + (10^18 * _46 / u * v / ext_call.return_data[0])
            continue 
        revert with 0, 'Invalid pool asset'
    if s and 275 * 10^12 * 3600 > -1 / s:
        revert with 0, 17
    mem[mem[64]] = 0xb4c7e4d00000000000000000000000000000000000000000000000000000000
    mem[mem[64] + 4 len 64] = mem[96 len 64]
    mem[mem[64] + 68] = 275 * 10^12 * 3600 * s / 10^18
    require ext_code.size(platformAddress)
    call platformAddress.add_liquidity(uint256[2] arg1, uint256 arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len 64], 275 * 10^12 * 3600 * s / 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[mem[64] + 4] = this.address
    require ext_code.size(stor157)
    staticcall stor157.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    mem[mem[64]] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _81 = mem[64]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    mem[mem[64] + 4] = mem[_81]
    require ext_code.size(stor158)
    call stor158.deposit(uint256 arg1, address arg2) with:
         gas gas_remaining wei
        args mem[mem[64] + 4], this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    storFE21 = 1
}

function withdrawAll() payable {
    if msg.sender == vaultAddress:
        if storFE21 == 2:
            revert with 0, 'Reentrant call'
        storFE21 = 2
        mem[100] = this.address
        require ext_code.size(stor157)
        staticcall stor157.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(stor158)
        staticcall stor158.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(stor158)
        call stor158.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 160
        mem[(2 * ceil32(return_data.size)) + 96] = 0
        mem[(2 * ceil32(return_data.size)) + 128] = 0
        mem[(2 * ceil32(return_data.size)) + 160] = 0x5b36389c00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 164] = 2 * ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 196 len 64] = 0
        require ext_code.size(platformAddress)
        call platformAddress.remove_liquidity(uint256 arg1, uint256[2] arg2) with:
             gas gas_remaining wei
            args 2 * ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < stor54.length:
            mem[mem[64] + 4] = idx
            require ext_code.size(platformAddress)
            staticcall platformAddress.coins(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _185 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _187 = mem[_185]
            require mem[_185] == mem[_185 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_187))
            staticcall address(_187).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _193 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _195 = mem[_193]
            _197 = mem[64]
            mem[mem[64] + 36] = vaultAddress
            mem[mem[64] + 68] = _195
            _199 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_199 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_199 + 36 len 28]
            mem[64] = _197 + 164
            mem[_197 + 100] = 32
            mem[_197 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(_187)):
                revert with 0, 'Address: call to non-contract'
            _209 = mem[_199]
            s = 0
            while s < _209:
                mem[s + _197 + 164] = mem[s + _199 + 32]
                s = s + 32
                continue 
            if ceil32(_209) > _209:
                mem[_209 + _197 + 164] = 0
            call address(_187).mem[_197 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_197 + 168 len _209 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_197 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_197 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _197 + 232] = mem[idx + _197 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_197 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _197 + ceil32(return_data.size) + 165
                mem[_197 + 164] = return_data.size
                mem[_197 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_197 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_197 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _197 + ceil32(return_data.size) + 233] = mem[idx + _197 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_197 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_197 + 196] == bool(mem[_197 + 196])
                    if not mem[_197 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if address(governorAddress) != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the Vault or Governor'
        if storFE21 == 2:
            revert with 0, 'Reentrant call'
        storFE21 = 2
        mem[100] = this.address
        require ext_code.size(stor157)
        staticcall stor157.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 100] = this.address
        require ext_code.size(stor158)
        staticcall stor158.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > !ext_call.return_data[0]:
            revert with 0, 17
        require ext_code.size(stor158)
        call stor158.withdraw(uint256 arg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[64] = (2 * ceil32(return_data.size)) + 160
        mem[(2 * ceil32(return_data.size)) + 96] = 0
        mem[(2 * ceil32(return_data.size)) + 128] = 0
        mem[(2 * ceil32(return_data.size)) + 160] = 0x5b36389c00000000000000000000000000000000000000000000000000000000
        mem[(2 * ceil32(return_data.size)) + 164] = 2 * ext_call.return_data[0]
        mem[(2 * ceil32(return_data.size)) + 196 len 64] = 0
        require ext_code.size(platformAddress)
        call platformAddress.remove_liquidity(uint256 arg1, uint256[2] arg2) with:
             gas gas_remaining wei
            args 2 * ext_call.return_data[0], 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = 0
        while idx < stor54.length:
            mem[mem[64] + 4] = idx
            require ext_code.size(platformAddress)
            staticcall platformAddress.coins(uint256 arg1) with:
                    gas gas_remaining wei
                   args idx
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _186 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _188 = mem[_186]
            require mem[_186] == mem[_186 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_188))
            staticcall address(_188).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _194 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _196 = mem[_194]
            _198 = mem[64]
            mem[mem[64] + 36] = vaultAddress
            mem[mem[64] + 68] = _196
            _201 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_201 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_201 + 36 len 28]
            mem[64] = _198 + 164
            mem[_198 + 100] = 32
            mem[_198 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(address(_188)):
                revert with 0, 'Address: call to non-contract'
            _211 = mem[_201]
            s = 0
            while s < _211:
                mem[s + _198 + 164] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_211) > _211:
                mem[_211 + _198 + 164] = 0
            call address(_188).mem[_198 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_198 + 168 len _211 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_198 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_198 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _198 + 232] = mem[idx + _198 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_198 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _198 + ceil32(return_data.size) + 165
                mem[_198 + 164] = return_data.size
                mem[_198 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_198 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_198 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _198 + ceil32(return_data.size) + 233] = mem[idx + _198 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_198 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_198 + 196] == bool(mem[_198 + 196])
                    if not mem[_198 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    storFE21 = 1
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if vaultAddress != msg.sender:
        revert with 0, 'Caller is not the Vault'
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    if arg2 <= 0:
        revert with 0, 'Must deposit something'
    emit Deposit(platformAddress, arg2, arg1);
    mem[64] = 160
    mem[96 len 64] = call.data[calldata.size len 64]
    idx = 0
    while idx < 2:
        if idx >= stor54.length:
            revert with 0, 50
        mem[0] = 54
        if stor54[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= 2:
            revert with 0, 50
        mem[(32 * idx) + 96] = arg2
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[31 len 1]
        if ext_call.return_data[31 len 1] < 4:
            revert with 0, 'Token must have sufficient decimal places'
        if ext_call.return_data[31 len 1] > 18:
            revert with 0, 'Token must have sufficient decimal places'
        require ext_code.size(platformAddress)
        staticcall platformAddress.get_virtual_price() with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if 18 > uint8(ext_call.return_data[0]):
            if 18 < uint8(ext_call.return_data[0]):
                revert with 0, 17
            if not -uint8(ext_call.return_data[0]) + 18:
                if arg2 and 1 > -1 / arg2:
                    revert with 0, 17
                if arg2 and 10^18 > -1 / arg2:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 10^18 * arg2 / ext_call.return_data[0] and 275 * 10^12 * 3600 > -1 / 10^18 * arg2 / ext_call.return_data[0]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 160] = 0xb4c7e4d00000000000000000000000000000000000000000000000000000000
                idx = 0
                s = 96
                t = (2 * ceil32(return_data.size)) + 164
                while idx < 2:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(platformAddress)
                call platformAddress.mem[(2 * ceil32(return_data.size)) + 160 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 164 len 64], 275 * 10^12 * 3600 * 10^18 * arg2 / ext_call.return_data[0] / 10^18
            else:
                if bool(bool(-uint8(ext_call.return_data[0]) + 18 < 78)) or bool(bool(-uint8(ext_call.return_data[0]) + 18 < 32)):
                    if arg2 and 10^(-uint8(ext_call.return_data[0]) + 18) > -1 / arg2:
                        revert with 0, 17
                    if arg2 * 10^(-uint8(ext_call.return_data[0]) + 18) and 10^18 > -1 / arg2 * 10^(-uint8(ext_call.return_data[0]) + 18):
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 10^18 * arg2 * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] and 275 * 10^12 * 3600 > -1 / 10^18 * arg2 * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 160] = 0xb4c7e4d00000000000000000000000000000000000000000000000000000000
                    idx = 0
                    s = 96
                    t = (2 * ceil32(return_data.size)) + 164
                    while idx < 2:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(platformAddress)
                    call platformAddress.mem[(2 * ceil32(return_data.size)) + 160 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 164 len 64], 275 * 10^12 * 3600 * 10^18 * arg2 * 10^(-uint8(ext_call.return_data[0]) + 18) / ext_call.return_data[0] / 10^18
                else:
                    s = 10
                    t = 1
                    idx = -uint8(ext_call.return_data[0]) + 18
                    while idx > 1:
                        if s > -1 / s:
                            revert with 0, 17
                        if not bool(idx):
                            s = s * s
                            t = t
                            idx = uint255(idx) * 0.5
                            continue 
                        s = s * s
                        t = s * t
                        idx = uint255(idx) * 0.5
                        continue 
                    if t > -1 / s:
                        revert with 0, 17
                    if arg2 and s * t > -1 / arg2:
                        revert with 0, 17
                    if arg2 * s * t and 10^18 > -1 / arg2 * s * t:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 10^18 * arg2 * s * t / ext_call.return_data[0] and 275 * 10^12 * 3600 > -1 / 10^18 * arg2 * s * t / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 160] = 0xb4c7e4d00000000000000000000000000000000000000000000000000000000
                    idx = 0
                    u = 96
                    v = (2 * ceil32(return_data.size)) + 164
                    while idx < 2:
                        mem[v] = mem[u]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(platformAddress)
                    call platformAddress.mem[(2 * ceil32(return_data.size)) + 160 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 164 len 64], 275 * 10^12 * 3600 * 10^18 * arg2 * s * t / ext_call.return_data[0] / 10^18
        else:
            if 18 >= uint8(ext_call.return_data[0]):
                if arg2 and 10^18 > -1 / arg2:
                    revert with 0, 17
                if not ext_call.return_data[0]:
                    revert with 0, 18
                if 10^18 * arg2 / ext_call.return_data[0] and 275 * 10^12 * 3600 > -1 / 10^18 * arg2 / ext_call.return_data[0]:
                    revert with 0, 17
                mem[(2 * ceil32(return_data.size)) + 160] = 0xb4c7e4d00000000000000000000000000000000000000000000000000000000
                idx = 0
                s = 96
                t = (2 * ceil32(return_data.size)) + 164
                while idx < 2:
                    mem[t] = mem[s]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(platformAddress)
                call platformAddress.mem[(2 * ceil32(return_data.size)) + 160 len 4] with:
                     gas gas_remaining wei
                    args mem[(2 * ceil32(return_data.size)) + 164 len 64], 275 * 10^12 * 3600 * 10^18 * arg2 / ext_call.return_data[0] / 10^18
            else:
                if uint8(ext_call.return_data[0]) < 18:
                    revert with 0, 17
                if not uint8(ext_call.return_data[0]) - 18:
                    if arg2 and 10^18 > -1 / arg2:
                        revert with 0, 17
                    if not ext_call.return_data[0]:
                        revert with 0, 18
                    if 10^18 * arg2 / ext_call.return_data[0] and 275 * 10^12 * 3600 > -1 / 10^18 * arg2 / ext_call.return_data[0]:
                        revert with 0, 17
                    mem[(2 * ceil32(return_data.size)) + 160] = 0xb4c7e4d00000000000000000000000000000000000000000000000000000000
                    idx = 0
                    s = 96
                    t = (2 * ceil32(return_data.size)) + 164
                    while idx < 2:
                        mem[t] = mem[s]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(platformAddress)
                    call platformAddress.mem[(2 * ceil32(return_data.size)) + 160 len 4] with:
                         gas gas_remaining wei
                        args mem[(2 * ceil32(return_data.size)) + 164 len 64], 275 * 10^12 * 3600 * 10^18 * arg2 / ext_call.return_data[0] / 10^18
                else:
                    if bool(bool(uint8(ext_call.return_data[0]) - 18 < 78)) or bool(bool(uint8(ext_call.return_data[0]) - 18 < 32)):
                        if not 10^(uint8(ext_call.return_data[0]) - 18):
                            revert with 0, 18
                        if arg2 / 10^(uint8(ext_call.return_data[0]) - 18) and 10^18 > -1 / arg2 / 10^(uint8(ext_call.return_data[0]) - 18):
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 10^18 * arg2 / 10^(uint8(ext_call.return_data[0]) - 18) / ext_call.return_data[0] and 275 * 10^12 * 3600 > -1 / 10^18 * arg2 / 10^(uint8(ext_call.return_data[0]) - 18) / ext_call.return_data[0]:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 160] = 0xb4c7e4d00000000000000000000000000000000000000000000000000000000
                        idx = 0
                        s = 96
                        t = (2 * ceil32(return_data.size)) + 164
                        while idx < 2:
                            mem[t] = mem[s]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        require ext_code.size(platformAddress)
                        call platformAddress.mem[(2 * ceil32(return_data.size)) + 160 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 164 len 64], 275 * 10^12 * 3600 * 10^18 * arg2 / 10^(uint8(ext_call.return_data[0]) - 18) / ext_call.return_data[0] / 10^18
                    else:
                        s = 10
                        t = 1
                        idx = uint8(ext_call.return_data[0]) - 18
                        while idx > 1:
                            if s > -1 / s:
                                revert with 0, 17
                            if not bool(idx):
                                s = s * s
                                t = t
                                idx = uint255(idx) * 0.5
                                continue 
                            s = s * s
                            t = s * t
                            idx = uint255(idx) * 0.5
                            continue 
                        if t > -1 / s:
                            revert with 0, 17
                        if not s * t:
                            revert with 0, 18
                        if arg2 / s * t and 10^18 > -1 / arg2 / s * t:
                            revert with 0, 17
                        if not ext_call.return_data[0]:
                            revert with 0, 18
                        if 10^18 * arg2 / s * t / ext_call.return_data[0] and 275 * 10^12 * 3600 > -1 / 10^18 * arg2 / s * t / ext_call.return_data[0]:
                            revert with 0, 17
                        mem[(2 * ceil32(return_data.size)) + 160] = 0xb4c7e4d00000000000000000000000000000000000000000000000000000000
                        idx = 0
                        u = 96
                        v = (2 * ceil32(return_data.size)) + 164
                        while idx < 2:
                            mem[v] = mem[u]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        require ext_code.size(platformAddress)
                        call platformAddress.mem[(2 * ceil32(return_data.size)) + 160 len 4] with:
                             gas gas_remaining wei
                            args mem[(2 * ceil32(return_data.size)) + 164 len 64], 275 * 10^12 * 3600 * 10^18 * arg2 / s * t / ext_call.return_data[0] / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(stor157)
        staticcall stor157.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor158)
        call stor158.deposit(uint256 arg1, address arg2) with:
             gas gas_remaining wei
            args ext_call.return_data[0], this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        storFE21 = 1
    revert with 0, 'Invalid pool asset'
}



}
