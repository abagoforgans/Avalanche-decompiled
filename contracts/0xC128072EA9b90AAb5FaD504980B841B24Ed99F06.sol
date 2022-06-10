contract main {




// =====================  Runtime code  =====================


#
#  - transferToken(address arg1, uint256 arg2)
#  - sub_6a0597f9(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
address platformAddress;
address vaultAddress;
mapping of address assetToPToken;
array of address stor54;
address rewardTokenAddress;
uint256 rewardLiquidationThreshold;
address incentivesControllerAddress;
address stor1973;
uint256 stor1973;
array of address stor33502907836418749244169045844382937189522934634747984393157770024170991419832;
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

function rewardTokenAddress() payable {
    return rewardTokenAddress
}

function vaultAddress() payable {
    return vaultAddress
}

function rewardLiquidationThreshold() payable {
    return rewardLiquidationThreshold
}

function supportsAsset(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(assetToPToken[address(arg1)])
}

function incentivesController() payable {
    return incentivesControllerAddress
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

function setRewardTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    emit RewardTokenAddressUpdated(rewardTokenAddress, arg1);
    rewardTokenAddress = arg1
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

function checkBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not assetToPToken[address(arg1)]:
        revert with 0, 'aToken does not exist'
    require ext_code.size(assetToPToken[address(arg1)])
    staticcall assetToPToken[address(arg1)].0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
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
    if not assetToPToken[address(arg1)]:
        revert with 0, 'aToken does not exist'
    emit Deposit(assetToPToken[address(arg1)], arg2, arg1);
    require ext_code.size(platformAddress)
    staticcall platformAddress.getLendingPool() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Lending pool does not exist'
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
         gas gas_remaining wei
        args address(arg1), arg2, this.address, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    storFE21 = 1
}

function depositAll() payable {
    mem[64] = 96
    if vaultAddress != msg.sender:
        revert with 0, 'Caller is not the Vault'
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    idx = 0
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
        _31 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _32 = mem[_31]
        if mem[_31]:
            if idx >= stor54.length:
                revert with 0, 50
            if mem[_31] <= 0:
                revert with 0, 'Must deposit something'
            mem[0] = stor54[idx]
            mem[32] = 53
            if not assetToPToken[stor54[idx]]:
                revert with 0, 'aToken does not exist'
            mem[mem[64] + 32] = _32
            emit Deposit(assetToPToken[stor54[idx]], _32, stor54[idx]);
            require ext_code.size(platformAddress)
            staticcall platformAddress.getLendingPool() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _43 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _44 = mem[_43]
            require mem[_43] == mem[_43 + 12 len 20]
            if not mem[_43 + 12 len 20]:
                revert with 0, 'Lending pool does not exist'
            mem[mem[64]] = 0xe8eda9df00000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = stor54[idx]
            mem[mem[64] + 36] = _32
            mem[mem[64] + 68] = this.address
            mem[mem[64] + 100] = 0
            require ext_code.size(address(_44))
            call address(_44).deposit(address arg1, uint256 arg2, address arg3, uint16 arg4) with:
                 gas gas_remaining wei
                args stor54[idx], _32, this.address, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    storFE21 = 1
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
        revert with 0, 'Must withdraw something'
    if not arg1:
        revert with 0, 'Must specify recipient'
    if not assetToPToken[address(arg2)]:
        revert with 0, 'aToken does not exist'
    mem[128] = arg3
    emit Withdrawal(assetToPToken[address(arg2)], arg3, arg2);
    require ext_code.size(platformAddress)
    staticcall platformAddress.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Lending pool does not exist'
    mem[ceil32(return_data.size) + 100] = arg2
    mem[ceil32(return_data.size) + 132] = arg3
    mem[ceil32(return_data.size) + 164] = this.address
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).withdraw(address arg1, uint256 arg2, address arg3) with:
         gas gas_remaining wei
        args address(arg2), arg3, this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != arg3:
        revert with 0, 'Did not withdraw enough'
    mem[(2 * ceil32(return_data.size)) + 132] = arg1
    mem[(2 * ceil32(return_data.size)) + 164] = arg3
    mem[(2 * ceil32(return_data.size)) + 96] = 68
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
    mem[(2 * ceil32(return_data.size)) + 196] = 32
    mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg2):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0
    mem[(2 * ceil32(return_data.size)) + 328] = 0
    call arg2 with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require arg3 == bool(arg3)
            if not arg3:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[(2 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(2 * ceil32(return_data.size)) + 292] == bool(mem[(2 * ceil32(return_data.size)) + 292])
            if not mem[(2 * ceil32(return_data.size)) + 292]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    storFE21 = 1
}

function collectRewardToken() payable {
    if vaultAddress != msg.sender:
        revert with 0, 'Caller is not the Vault'
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    if stor54.length > test266151307():
        revert with 0, 65
    if stor54.length:
        mem[128 len 32 * stor54.length] = call.data[calldata.size len 32 * stor54.length]
    idx = 0
    while idx < stor54.length:
        mem[0] = stor54[idx]
        mem[32] = 53
        if not assetToPToken[stor54[idx]]:
            revert with 0, 'aToken does not exist'
        if idx >= stor54.length:
            revert with 0, 50
        mem[(32 * idx) + 128] = assetToPToken[stor54[idx]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[(32 * stor54.length) + 128] = 0x8b599f2600000000000000000000000000000000000000000000000000000000
    mem[(32 * stor54.length) + 132] = 64
    mem[(32 * stor54.length) + 196] = stor54.length
    idx = 0
    s = 128
    t = (32 * stor54.length) + 228
    while idx < stor54.length:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[(32 * stor54.length) + 164] = this.address
    require ext_code.size(incentivesControllerAddress)
    staticcall incentivesControllerAddress.getRewardsBalance(address[] arg1, address arg2) with:
            gas gas_remaining wei
           args mem[(32 * stor54.length) + 132 len (96 * stor54.length) + 96]
    mem[(32 * stor54.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        mem[(32 * stor54.length) + ceil32(return_data.size) + 128] = 0x3111e7b300000000000000000000000000000000000000000000000000000000
        mem[(32 * stor54.length) + ceil32(return_data.size) + 132] = 96
        idx = 0
        s = 128
        t = (32 * stor54.length) + ceil32(return_data.size) + 260
        while idx < stor54.length:
            mem[t] = mem[s + 12 len 20]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(incentivesControllerAddress)
        call incentivesControllerAddress.claimRewards(address[] arg1, uint256 arg2, address arg3) with:
             gas gas_remaining wei
            args Array(len=stor54.length, data=mem[(32 * stor54.length) + ceil32(return_data.size) + 260 len 32 * stor54.length]), ext_call.return_data[0], this.address
        mem[(32 * stor54.length) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] != ext_call.return_data[0]:
            revert with 0, 'AAVE reward difference'
        mem[(32 * stor54.length) + (2 * ceil32(return_data.size)) + 128] = 68
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(rewardTokenAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * stor54.length) + (2 * ceil32(return_data.size)) + 292 len 96] = 0, vaultAddress, ext_call.return_data[0], 0
        call rewardTokenAddress with:
             gas gas_remaining wei
            args (Mask(512, -288, 0, vaultAddress, ext_call.return_data[0], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if stor54.length:
                    revert with memory
                      from 128
                       len stor54.length
                revert with 0, 'SafeERC20: low-level call failed'
            if stor54.length:
                require stor54.length >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(32 * stor54.length) + (2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(32 * stor54.length) + (2 * ceil32(return_data.size)) + 324] == bool(mem[(32 * stor54.length) + (2 * ceil32(return_data.size)) + 324])
                if not mem[(32 * stor54.length) + (2 * ceil32(return_data.size)) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    storFE21 = 1
}

function setPTokenAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if assetToPToken[address(arg1)]:
        revert with 0, 'pToken already set'
    if not arg1:
        revert with 0, 'Invalid addresses'
    if not arg2:
        revert with 0, 'Invalid addresses'
    assetToPToken[address(arg1)] = arg2
    stor54.length++
    stor4A11[stor54.length] = arg1
    emit PTokenAdded(arg2, arg1);
    require ext_code.size(platformAddress)
    staticcall platformAddress.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Lending pool does not exist'
    mem[ceil32(return_data.size) + 132] = ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 164] = 0
    mem[ceil32(return_data.size) + 96] = 68
    mem[ceil32(return_data.size) + 128 len 4] = approve(address arg1, uint256 arg2)
    mem[ceil32(return_data.size) + 196] = 32
    mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[ceil32(return_data.size) + 260 len 96] = 0, ext_call.return_data[12 len 20], 0, 0
    mem[ceil32(return_data.size) + 328] = 0
    call arg1 with:
       funct Mask(32, 224, 0, ext_call.return_data[12 len 20], 0, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, ext_call.return_data[12 len 20], 0, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[ceil32(return_data.size) + 264] = this.address
        mem[ceil32(return_data.size) + 296] = address(ext_call.return_data[0])
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(ext_call.return_data[0])
        mem[ceil32(return_data.size) + 260] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[(2 * ceil32(return_data.size)) + 296] = address(ext_call.return_data[0])
        mem[(2 * ceil32(return_data.size)) + 328] = -1
        mem[(2 * ceil32(return_data.size)) + 260] = 68
        mem[(2 * ceil32(return_data.size)) + 292 len 4] = approve(address arg1, uint256 arg2)
        mem[(2 * ceil32(return_data.size)) + 360] = 32
        mem[(2 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[(2 * ceil32(return_data.size)) + 424 len 96] = 0, address(ext_call.return_data[0]), -1, 0
        mem[(2 * ceil32(return_data.size)) + 492] = 0
        call arg1 with:
           funct Mask(32, 224, 0, address(ext_call.return_data[0]), -1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, address(ext_call.return_data[0]), -1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0]:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0]:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
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
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(ext_call.return_data[0])
    mem[ceil32(return_data.size) + ceil32(return_data.size) + 261] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = -1
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = approve(address arg1, uint256 arg2)
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, address(ext_call.return_data[0]), -1, 0
    mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
    call arg1 with:
       funct Mask(32, 224, 0, address(ext_call.return_data[0]), -1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, address(ext_call.return_data[0]), -1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if ext_call.return_data[0]:
                revert with memory
                  from 128
                   len ext_call.return_data[0]
            revert with 0, 'SafeERC20: low-level call failed'
        if ext_call.return_data[0]:
            require ext_call.return_data[0] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
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
    require return_data.size >= 32
    require mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
    if mem[(2 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
    mem[(4 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(4 * ceil32(return_data.size)) + 430] = 32
    mem[(4 * ceil32(return_data.size)) + 462] = 42
    mem[(4 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
    mem[(4 * ceil32(return_data.size)) + 526] = 0x6f74207375636365656400000000000000000000000000000000000000000000
    revert with memory
      from (4 * ceil32(return_data.size)) + 426
       len (6 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function withdrawAll() payable {
    mem[64] = 96
    if msg.sender == vaultAddress:
        if storFE21 == 2:
            revert with 0, 'Reentrant call'
        storFE21 = 2
        idx = 0
        while idx < stor54.length:
            mem[0] = stor54[idx]
            mem[32] = 53
            if not assetToPToken[stor54[idx]]:
                revert with 0, 'aToken does not exist'
            mem[mem[64] + 4] = this.address
            require ext_code.size(assetToPToken[stor54[idx]])
            staticcall assetToPToken[stor54[idx]].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _205 = mem[_203]
            if mem[_203]:
                require ext_code.size(platformAddress)
                staticcall platformAddress.getLendingPool() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _211 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _213 = mem[_211]
                require mem[_211] == mem[_211 + 12 len 20]
                if not mem[_211 + 12 len 20]:
                    revert with 0, 'Lending pool does not exist'
                mem[mem[64] + 4] = stor54[idx]
                mem[mem[64] + 36] = _205
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(_213))
                call address(_213).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args stor54[idx], _205, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _223 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_223] != _205:
                    revert with 0, 'Did not withdraw enough'
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor54[idx])
                staticcall stor54[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _235 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _237 = mem[_235]
                _239 = mem[64]
                mem[mem[64] + 36] = vaultAddress
                mem[mem[64] + 68] = _237
                _241 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_241 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_241 + 36 len 28]
                mem[64] = _239 + 164
                mem[_239 + 100] = 32
                mem[_239 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor54[idx]):
                    revert with 0, 'Address: call to non-contract'
                _255 = mem[_241]
                s = 0
                while s < _255:
                    mem[s + _239 + 164] = mem[s + _241 + 32]
                    s = s + 32
                    continue 
                if ceil32(_255) > _255:
                    mem[_239 + _255 + 164] = 0
                call stor54[idx].mem[_239 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_239 + 168 len _255 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_239 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_239 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _239 + 232] = mem[idx + _239 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_239 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _239 + ceil32(return_data.size) + 165
                    mem[_239 + 164] = return_data.size
                    mem[_239 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_239 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_239 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _239 + ceil32(return_data.size) + 233] = mem[idx + _239 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_239 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_239 + 196] == bool(mem[_239 + 196])
                        if not mem[_239 + 196]:
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
        idx = 0
        while idx < stor54.length:
            mem[0] = stor54[idx]
            mem[32] = 53
            if not assetToPToken[stor54[idx]]:
                revert with 0, 'aToken does not exist'
            mem[mem[64] + 4] = this.address
            require ext_code.size(assetToPToken[stor54[idx]])
            staticcall assetToPToken[stor54[idx]].0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _204 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _206 = mem[_204]
            if mem[_204]:
                require ext_code.size(platformAddress)
                staticcall platformAddress.getLendingPool() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _212 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _214 = mem[_212]
                require mem[_212] == mem[_212 + 12 len 20]
                if not mem[_212 + 12 len 20]:
                    revert with 0, 'Lending pool does not exist'
                mem[mem[64] + 4] = stor54[idx]
                mem[mem[64] + 36] = _206
                mem[mem[64] + 68] = this.address
                require ext_code.size(address(_214))
                call address(_214).withdraw(address arg1, uint256 arg2, address arg3) with:
                     gas gas_remaining wei
                    args stor54[idx], _206, this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                if mem[_224] != _206:
                    revert with 0, 'Did not withdraw enough'
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor54[idx])
                staticcall stor54[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _236 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _238 = mem[_236]
                _240 = mem[64]
                mem[mem[64] + 36] = vaultAddress
                mem[mem[64] + 68] = _238
                _243 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_243 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_243 + 36 len 28]
                mem[64] = _240 + 164
                mem[_240 + 100] = 32
                mem[_240 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(stor54[idx]):
                    revert with 0, 'Address: call to non-contract'
                _257 = mem[_243]
                s = 0
                while s < _257:
                    mem[s + _240 + 164] = mem[s + _243 + 32]
                    s = s + 32
                    continue 
                if ceil32(_257) > _257:
                    mem[_240 + _257 + 164] = 0
                call stor54[idx].mem[_240 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_240 + 168 len _257 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_240 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_240 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _240 + 232] = mem[idx + _240 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_240 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _240 + ceil32(return_data.size) + 165
                    mem[_240 + 164] = return_data.size
                    mem[_240 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_240 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_240 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _240 + ceil32(return_data.size) + 233] = mem[idx + _240 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_240 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_240 + 196] == bool(mem[_240 + 196])
                        if not mem[_240 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    storFE21 = 1
}

function safeApproveAllTokens() payable {
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    require ext_code.size(platformAddress)
    staticcall platformAddress.getLendingPool() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Lending pool does not exist'
    idx = 0
    while idx < stor54.length:
        mem[0] = 54
        _632 = mem[64]
        mem[mem[64] + 36] = address(ext_call.return_data[0])
        mem[mem[64] + 68] = 0
        _633 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_633 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_633 + 36 len 28]
        mem[64] = _632 + 164
        mem[_632 + 100] = 32
        mem[_632 + 132] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stor54[idx]):
            revert with 0, 'Address: call to non-contract'
        _640 = mem[_633]
        s = 0
        while s < _640:
            mem[s + _632 + 164] = mem[s + _633 + 32]
            s = s + 32
            continue 
        if ceil32(_640) > _640:
            mem[_632 + _640 + 164] = 0
        call stor54[idx].mem[_632 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_632 + 168 len _640 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_632 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_632 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _632 + 232] = mem[idx + _632 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_632 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_632 + 168] = this.address
            mem[_632 + 200] = address(ext_call.return_data[0])
            require ext_code.size(stor54[idx])
            staticcall stor54[idx].0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(ext_call.return_data[0])
            mem[_632 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[_632 + ceil32(return_data.size) + 200] = address(ext_call.return_data[0])
            mem[_632 + ceil32(return_data.size) + 232] = -1
            mem[_632 + ceil32(return_data.size) + 164] = 68
            mem[_632 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(ext_call.return_data[0]) << 64
            mem[64] = _632 + ceil32(return_data.size) + 328
            mem[_632 + ceil32(return_data.size) + 264] = 32
            mem[_632 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(stor54[idx]):
                revert with 0, 'Address: call to non-contract'
            s = 0
            while s < 68:
                mem[s + _632 + ceil32(return_data.size) + 328] = mem[s + _632 + ceil32(return_data.size) + 196]
                s = s + 32
                continue 
            mem[_632 + ceil32(return_data.size) + 396] = 0
            call stor54[idx].mem[_632 + ceil32(return_data.size) + 328 len 4] with:
                 gas gas_remaining wei
                args mem[_632 + ceil32(return_data.size) + 332 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_632 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_632 + ceil32(return_data.size) + 332] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _632 + ceil32(return_data.size) + 396] = mem[idx + _632 + ceil32(return_data.size) + 296]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_632 + ceil32(return_data.size) + 396]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _632 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                mem[_632 + ceil32(return_data.size) + 328] = return_data.size
                mem[_632 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _632 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _632 + ceil32(return_data.size) + 296]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_632 + ceil32(return_data.size) + 360] == bool(mem[_632 + ceil32(return_data.size) + 360])
                    if not mem[_632 + ceil32(return_data.size) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_632 + 164] = return_data.size
        mem[_632 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_632 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_632 + ceil32(return_data.size) + 169] = 32
            idx = 0
            while idx < 32:
                mem[idx + _632 + ceil32(return_data.size) + 233] = mem[idx + _632 + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_632 + ceil32(return_data.size) + 233]
        if return_data.size:
            require return_data.size >= 32
            require mem[_632 + 196] == bool(mem[_632 + 196])
            if not mem[_632 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_632 + ceil32(return_data.size) + 169] = this.address
        mem[_632 + ceil32(return_data.size) + 201] = address(ext_call.return_data[0])
        require ext_code.size(stor54[idx])
        staticcall stor54[idx].0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(ext_call.return_data[0])
        mem[_632 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(ext_call.return_data[0])
        mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
        mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
        mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(ext_call.return_data[0]) << 64
        mem[64] = _632 + ceil32(return_data.size) + ceil32(return_data.size) + 329
        mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
        mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        if not ext_code.size(stor54[idx]):
            revert with 0, 'Address: call to non-contract'
        s = 0
        while s < 68:
            mem[s + _632 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _632 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
            s = s + 32
            continue 
        mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
        call stor54[idx].mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
             gas gas_remaining wei
            args mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _632 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _632 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[64] = _632 + (4 * ceil32(return_data.size)) + 330
        mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
        mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_632 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_632 + (4 * ceil32(return_data.size)) + 334] = 32
            idx = 0
            while idx < 32:
                mem[idx + _632 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _632 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_632 + (4 * ceil32(return_data.size)) + 398]
        if not return_data.size:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require return_data.size >= 32
        require mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
        if mem[_632 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_632 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_632 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_632 + (4 * ceil32(return_data.size)) + 366] = 42
        mem[_632 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
        mem[_632 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from _632 + (4 * ceil32(return_data.size)) + 330
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    storFE21 = 1
}

function initialize(address arg1, address arg2, address arg3, address[] arg4, address[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if uint8(stor0.field_8):
        mem[96] = arg4.length
        mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
        mem[64] = (32 * arg5.length) + (32 * arg4.length) + 160
        mem[(32 * arg4.length) + 128] = arg5.length
        mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
        mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0
        platformAddress = arg1
        vaultAddress = arg2
        rewardTokenAddress = arg3
        if arg4.length != arg5.length:
            revert with 0, 'Invalid input arrays'
        idx = 0
        while idx < arg4.length:
            if idx >= mem[96]:
                revert with 0, 50
            _1933 = mem[(32 * idx) + 128]
            if idx >= mem[(32 * arg4.length) + 128]:
                revert with 0, 50
            if assetToPToken[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'pToken already set'
            if not mem[(32 * idx) + 140 len 20]:
                revert with 0, 'Invalid addresses'
            if not mem[(32 * idx) + (32 * arg4.length) + 172 len 20]:
                revert with 0, 'Invalid addresses'
            mem[32] = 53
            assetToPToken[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
            stor54.length++
            mem[0] = 54
            stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
            mem[mem[64]] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
            emit PTokenAdded(mem[mem[64]], address(_1933));
            require ext_code.size(platformAddress)
            staticcall platformAddress.getLendingPool() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _1978 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _1981 = mem[_1978]
            require mem[_1978] == mem[_1978 + 12 len 20]
            if not mem[_1978 + 12 len 20]:
                revert with 0, 'Lending pool does not exist'
            _1990 = mem[64]
            mem[mem[64] + 36] = mem[_1978 + 12 len 20]
            mem[mem[64] + 68] = 0
            _1993 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_1993 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1993 + 36 len 28]
            mem[64] = _1990 + 164
            mem[_1990 + 100] = 32
            mem[_1990 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_1933)):
                revert with 0, 'Address: call to non-contract'
            _2014 = mem[_1993]
            s = 0
            while s < _2014:
                mem[s + _1990 + 164] = mem[s + _1993 + 32]
                s = s + 32
                continue 
            if ceil32(_2014) > _2014:
                mem[_1990 + _2014 + 164] = 0
            call address(_1933).mem[_1990 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_1990 + 168 len _2014 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1990 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1990 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1990 + 232] = mem[idx + _1990 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1990 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_1990 + 168] = this.address
                mem[_1990 + 200] = address(_1981)
                require ext_code.size(address(_1933))
                staticcall address(_1933).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(_1981)
                mem[_1990 + 164] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[_1990 + ceil32(return_data.size) + 200] = address(_1981)
                mem[_1990 + ceil32(return_data.size) + 232] = -1
                mem[_1990 + ceil32(return_data.size) + 164] = 68
                mem[_1990 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1981) << 64
                mem[64] = _1990 + ceil32(return_data.size) + 328
                mem[_1990 + ceil32(return_data.size) + 264] = 32
                mem[_1990 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_1933)):
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 68:
                    mem[s + _1990 + ceil32(return_data.size) + 328] = mem[s + _1990 + ceil32(return_data.size) + 196]
                    s = s + 32
                    continue 
                mem[_1990 + ceil32(return_data.size) + 396] = 0
                call address(_1933).mem[_1990 + ceil32(return_data.size) + 328 len 4] with:
                     gas gas_remaining wei
                    args mem[_1990 + ceil32(return_data.size) + 332 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1990 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1990 + ceil32(return_data.size) + 332] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1990 + ceil32(return_data.size) + 396] = mem[idx + _1990 + ceil32(return_data.size) + 296]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1990 + ceil32(return_data.size) + 396]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _1990 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                    mem[_1990 + ceil32(return_data.size) + 328] = return_data.size
                    mem[_1990 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1990 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _1990 + ceil32(return_data.size) + 296]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_1990 + ceil32(return_data.size) + 360] == bool(mem[_1990 + ceil32(return_data.size) + 360])
                        if not mem[_1990 + ceil32(return_data.size) + 360]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_1990 + 164] = return_data.size
            mem[_1990 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1990 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1990 + ceil32(return_data.size) + 169] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _1990 + ceil32(return_data.size) + 233] = mem[idx + _1990 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_1990 + ceil32(return_data.size) + 233]
            if return_data.size:
                require return_data.size >= 32
                require mem[_1990 + 196] == bool(mem[_1990 + 196])
                if not mem[_1990 + 196]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_1990 + ceil32(return_data.size) + 169] = this.address
            mem[_1990 + ceil32(return_data.size) + 201] = address(_1981)
            require ext_code.size(address(_1933))
            staticcall address(_1933).0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(_1981)
            mem[_1990 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_1981)
            mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
            mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
            mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1981) << 64
            mem[64] = _1990 + ceil32(return_data.size) + ceil32(return_data.size) + 329
            mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
            mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            if not ext_code.size(address(_1933)):
                revert with 0, 'Address: call to non-contract'
            s = 0
            while s < 68:
                mem[s + _1990 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _1990 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                s = s + 32
                continue 
            mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
            call address(_1933).mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                 gas gas_remaining wei
                args mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1990 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _1990 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[64] = _1990 + (4 * ceil32(return_data.size)) + 330
            mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
            mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[_1990 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1990 + (4 * ceil32(return_data.size)) + 334] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _1990 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _1990 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_1990 + (4 * ceil32(return_data.size)) + 398]
            if not return_data.size:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            require return_data.size >= 32
            require mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
            if mem[_1990 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            mem[_1990 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_1990 + (4 * ceil32(return_data.size)) + 334] = 32
            mem[_1990 + (4 * ceil32(return_data.size)) + 366] = 42
            mem[_1990 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
            mem[_1990 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
            revert with memory
              from _1990 + (4 * ceil32(return_data.size)) + 330
               len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            mem[96] = arg4.length
            mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
            mem[64] = (32 * arg5.length) + (32 * arg4.length) + 160
            mem[(32 * arg4.length) + 128] = arg5.length
            mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0
            platformAddress = arg1
            vaultAddress = arg2
            rewardTokenAddress = arg3
            if arg4.length != arg5.length:
                revert with 0, 'Invalid input arrays'
            idx = 0
            while idx < arg4.length:
                if idx >= mem[96]:
                    revert with 0, 50
                _1935 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * arg4.length) + 128]:
                    revert with 0, 50
                if assetToPToken[mem[(32 * idx) + 140 len 20]]:
                    revert with 0, 'pToken already set'
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'Invalid addresses'
                if not mem[(32 * idx) + (32 * arg4.length) + 172 len 20]:
                    revert with 0, 'Invalid addresses'
                mem[32] = 53
                assetToPToken[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                stor54.length++
                mem[0] = 54
                stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                mem[mem[64]] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                emit PTokenAdded(mem[mem[64]], address(_1935));
                require ext_code.size(platformAddress)
                staticcall platformAddress.getLendingPool() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1979 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1982 = mem[_1979]
                require mem[_1979] == mem[_1979 + 12 len 20]
                if not mem[_1979 + 12 len 20]:
                    revert with 0, 'Lending pool does not exist'
                _1991 = mem[64]
                mem[mem[64] + 36] = mem[_1979 + 12 len 20]
                mem[mem[64] + 68] = 0
                _1995 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1995 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1995 + 36 len 28]
                mem[64] = _1991 + 164
                mem[_1991 + 100] = 32
                mem[_1991 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_1935)):
                    revert with 0, 'Address: call to non-contract'
                _2016 = mem[_1995]
                s = 0
                while s < _2016:
                    mem[s + _1991 + 164] = mem[s + _1995 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2016) > _2016:
                    mem[_1991 + _2016 + 164] = 0
                call address(_1935).mem[_1991 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1991 + 168 len _2016 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1991 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1991 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1991 + 232] = mem[idx + _1991 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1991 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1991 + 168] = this.address
                    mem[_1991 + 200] = address(_1982)
                    require ext_code.size(address(_1935))
                    staticcall address(_1935).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_1982)
                    mem[_1991 + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_1991 + ceil32(return_data.size) + 200] = address(_1982)
                    mem[_1991 + ceil32(return_data.size) + 232] = -1
                    mem[_1991 + ceil32(return_data.size) + 164] = 68
                    mem[_1991 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1982) << 64
                    mem[64] = _1991 + ceil32(return_data.size) + 328
                    mem[_1991 + ceil32(return_data.size) + 264] = 32
                    mem[_1991 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_1935)):
                        revert with 0, 'Address: call to non-contract'
                    s = 0
                    while s < 68:
                        mem[s + _1991 + ceil32(return_data.size) + 328] = mem[s + _1991 + ceil32(return_data.size) + 196]
                        s = s + 32
                        continue 
                    mem[_1991 + ceil32(return_data.size) + 396] = 0
                    call address(_1935).mem[_1991 + ceil32(return_data.size) + 328 len 4] with:
                         gas gas_remaining wei
                        args mem[_1991 + ceil32(return_data.size) + 332 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1991 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1991 + ceil32(return_data.size) + 332] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1991 + ceil32(return_data.size) + 396] = mem[idx + _1991 + ceil32(return_data.size) + 296]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1991 + ceil32(return_data.size) + 396]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1991 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                        mem[_1991 + ceil32(return_data.size) + 328] = return_data.size
                        mem[_1991 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1991 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _1991 + ceil32(return_data.size) + 296]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1991 + ceil32(return_data.size) + 360] == bool(mem[_1991 + ceil32(return_data.size) + 360])
                            if not mem[_1991 + ceil32(return_data.size) + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_1991 + 164] = return_data.size
                mem[_1991 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1991 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1991 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1991 + ceil32(return_data.size) + 233] = mem[idx + _1991 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1991 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1991 + 196] == bool(mem[_1991 + 196])
                    if not mem[_1991 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_1991 + ceil32(return_data.size) + 169] = this.address
                mem[_1991 + ceil32(return_data.size) + 201] = address(_1982)
                require ext_code.size(address(_1935))
                staticcall address(_1935).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(_1982)
                mem[_1991 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_1982)
                mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1982) << 64
                mem[64] = _1991 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_1935)):
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 68:
                    mem[s + _1991 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _1991 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                    s = s + 32
                    continue 
                mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                call address(_1935).mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                     gas gas_remaining wei
                    args mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1991 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _1991 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[64] = _1991 + (4 * ceil32(return_data.size)) + 330
                mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1991 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1991 + (4 * ceil32(return_data.size)) + 334] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1991 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _1991 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1991 + (4 * ceil32(return_data.size)) + 398]
                if not return_data.size:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require return_data.size >= 32
                require mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                if mem[_1991 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_1991 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1991 + (4 * ceil32(return_data.size)) + 334] = 32
                mem[_1991 + (4 * ceil32(return_data.size)) + 366] = 42
                mem[_1991 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                mem[_1991 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from _1991 + (4 * ceil32(return_data.size)) + 330
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        else:
            uint16(stor0.field_0) = 257
            mem[96] = arg4.length
            mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
            mem[64] = (32 * arg5.length) + (32 * arg4.length) + 160
            mem[(32 * arg4.length) + 128] = arg5.length
            mem[(32 * arg4.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
            mem[(32 * arg4.length) + (32 * arg5.length) + 160] = 0
            platformAddress = arg1
            vaultAddress = arg2
            rewardTokenAddress = arg3
            if arg4.length != arg5.length:
                revert with 0, 'Invalid input arrays'
            idx = 0
            while idx < arg4.length:
                if idx >= mem[96]:
                    revert with 0, 50
                _1937 = mem[(32 * idx) + 128]
                if idx >= mem[(32 * arg4.length) + 128]:
                    revert with 0, 50
                if assetToPToken[mem[(32 * idx) + 140 len 20]]:
                    revert with 0, 'pToken already set'
                if not mem[(32 * idx) + 140 len 20]:
                    revert with 0, 'Invalid addresses'
                if not mem[(32 * idx) + (32 * arg4.length) + 172 len 20]:
                    revert with 0, 'Invalid addresses'
                mem[32] = 53
                assetToPToken[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                stor54.length++
                mem[0] = 54
                stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                mem[mem[64]] = mem[(32 * idx) + (32 * arg4.length) + 172 len 20]
                emit PTokenAdded(mem[mem[64]], address(_1937));
                require ext_code.size(platformAddress)
                staticcall platformAddress.getLendingPool() with:
                        gas gas_remaining wei
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _1980 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _1983 = mem[_1980]
                require mem[_1980] == mem[_1980 + 12 len 20]
                if not mem[_1980 + 12 len 20]:
                    revert with 0, 'Lending pool does not exist'
                _1992 = mem[64]
                mem[mem[64] + 36] = mem[_1980 + 12 len 20]
                mem[mem[64] + 68] = 0
                _1997 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_1997 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_1997 + 36 len 28]
                mem[64] = _1992 + 164
                mem[_1992 + 100] = 32
                mem[_1992 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_1937)):
                    revert with 0, 'Address: call to non-contract'
                _2018 = mem[_1997]
                s = 0
                while s < _2018:
                    mem[s + _1992 + 164] = mem[s + _1997 + 32]
                    s = s + 32
                    continue 
                if ceil32(_2018) > _2018:
                    mem[_1992 + _2018 + 164] = 0
                call address(_1937).mem[_1992 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_1992 + 168 len _2018 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1992 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1992 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1992 + 232] = mem[idx + _1992 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1992 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_1992 + 168] = this.address
                    mem[_1992 + 200] = address(_1983)
                    require ext_code.size(address(_1937))
                    staticcall address(_1937).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_1983)
                    mem[_1992 + 164] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_1992 + ceil32(return_data.size) + 200] = address(_1983)
                    mem[_1992 + ceil32(return_data.size) + 232] = -1
                    mem[_1992 + ceil32(return_data.size) + 164] = 68
                    mem[_1992 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1983) << 64
                    mem[64] = _1992 + ceil32(return_data.size) + 328
                    mem[_1992 + ceil32(return_data.size) + 264] = 32
                    mem[_1992 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 'Address: insufficient balance for call'
                    if not ext_code.size(address(_1937)):
                        revert with 0, 'Address: call to non-contract'
                    s = 0
                    while s < 68:
                        mem[s + _1992 + ceil32(return_data.size) + 328] = mem[s + _1992 + ceil32(return_data.size) + 196]
                        s = s + 32
                        continue 
                    mem[_1992 + ceil32(return_data.size) + 396] = 0
                    call address(_1937).mem[_1992 + ceil32(return_data.size) + 328 len 4] with:
                         gas gas_remaining wei
                        args mem[_1992 + ceil32(return_data.size) + 332 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_1992 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1992 + ceil32(return_data.size) + 332] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1992 + ceil32(return_data.size) + 396] = mem[idx + _1992 + ceil32(return_data.size) + 296]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1992 + ceil32(return_data.size) + 396]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    else:
                        mem[64] = _1992 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                        mem[_1992 + ceil32(return_data.size) + 328] = return_data.size
                        mem[_1992 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _1992 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _1992 + ceil32(return_data.size) + 296]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_1992 + ceil32(return_data.size) + 360] == bool(mem[_1992 + ceil32(return_data.size) + 360])
                            if not mem[_1992 + ceil32(return_data.size) + 360]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_1992 + 164] = return_data.size
                mem[_1992 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1992 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1992 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1992 + ceil32(return_data.size) + 233] = mem[idx + _1992 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1992 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_1992 + 196] == bool(mem[_1992 + 196])
                    if not mem[_1992 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                mem[_1992 + ceil32(return_data.size) + 169] = this.address
                mem[_1992 + ceil32(return_data.size) + 201] = address(_1983)
                require ext_code.size(address(_1937))
                staticcall address(_1937).0xdd62ed3e with:
                        gas gas_remaining wei
                       args this.address, address(_1983)
                mem[_1992 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_1983)
                mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_1983) << 64
                mem[64] = _1992 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                if not ext_code.size(address(_1937)):
                    revert with 0, 'Address: call to non-contract'
                s = 0
                while s < 68:
                    mem[s + _1992 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _1992 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                    s = s + 32
                    continue 
                mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                call address(_1937).mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                     gas gas_remaining wei
                    args mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _1992 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _1992 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[64] = _1992 + (4 * ceil32(return_data.size)) + 330
                mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_1992 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_1992 + (4 * ceil32(return_data.size)) + 334] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _1992 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _1992 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_1992 + (4 * ceil32(return_data.size)) + 398]
                if not return_data.size:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                require return_data.size >= 32
                require mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                if mem[_1992 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                mem[_1992 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_1992 + (4 * ceil32(return_data.size)) + 334] = 32
                mem[_1992 + (4 * ceil32(return_data.size)) + 366] = 42
                mem[_1992 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                mem[_1992 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                revert with memory
                  from _1992 + (4 * ceil32(return_data.size)) + 330
                   len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
