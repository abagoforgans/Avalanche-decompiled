contract main {




// =====================  Runtime code  =====================


#
#  - setPTokenAddress(address arg1, address arg2)
#  - transferToken(address arg1, uint256 arg2)
#  - sub_9688d2fc(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint16 stor0;
array of uint256 stor1;
address platformAddress;
address vaultAddress;
mapping of address assetToPToken;
array of address stor54;
address sub_2e655201Address;
uint256 rewardLiquidationThreshold;
array of struct rewardToken;
array of address sub_e29f7bc1;
array of struct stor158;
mapping of uint256 stor159;
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
    return address(assetToPToken[arg1])
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
    return bool(address(assetToPToken[address(arg1)]))
}

function platformAddress() payable {
    return platformAddress
}

function sub_e29f7bc1(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_e29f7bc1.length
    return sub_e29f7bc1[arg1].field_0
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
    address(assetToPToken[stor54[arg1]]) = 0
    emit PTokenRemoved(address(assetToPToken[stor54[arg1]]), stor54[arg1]);
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
    if not address(assetToPToken[address(arg1)]):
        revert with 0, 'safeBox does not exist'
    emit Deposit(address(assetToPToken[address(arg1)]), arg2, arg1);
    require ext_code.size(address(assetToPToken[address(arg1)]))
    call address(assetToPToken[address(arg1)]).deposit(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    storFE21 = 1
}

function sub_540ea49a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor158[address(arg1)].field_0:
        mem[128] = stor158[address(arg1)].field_0
        idx = 128
        s = 0
        while (32 * stor158[address(arg1)].field_0) + 96 > idx:
            mem[idx + 32] = stor158[address(arg1)][s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        return Array(len=stor158[address(arg1)].field_0, data=mem[128 len 32 * stor158[address(arg1)].field_0]), 
               stor159[address(arg1)]
    mem[(32 * stor158[address(arg1)].field_0) + 128] = 64
    mem[(32 * stor158[address(arg1)].field_0) + 192] = stor158[address(arg1)].field_0
    mem[(32 * stor158[address(arg1)].field_0) + 224 len 32 * stor158[address(arg1)].field_0] = mem[128 len 32 * stor158[address(arg1)].field_0]
    mem[(32 * stor158[address(arg1)].field_0) + 160] = stor159[address(arg1)]
    return memory
      from (32 * stor158[address(arg1)].field_0) + 128
       len (96 * stor158[address(arg1)].field_0) + 96
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

function checkBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require address(assetToPToken[address(arg1)])
    if not address(assetToPToken[address(arg1)]):
        revert with 0, 'safeBox does not exist'
    require ext_code.size(address(assetToPToken[address(arg1)]))
    staticcall address(assetToPToken[address(arg1)]).cToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(assetToPToken[address(arg1)]))
    staticcall address(assetToPToken[address(arg1)]).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).exchangeRateStored() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
        revert with 0, 17
    return (ext_call.return_data[0] * ext_call.return_data[0] / 10^18)
}

function sub_36ec8999(?) payable {
    require calldata.size - 4 >= 96
    require cd[4] == address(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require ext_code.size(vaultAddress)
    staticcall vaultAddress.0x570d8e1d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != msg.sender:
        if address(governorAddress) != msg.sender:
            revert with 0, 'Caller is not the Strategist or Governor'
    stor158[address(cd[4])].field_0 = ('cd', 36).length
    if not ('cd', 36).length:
        idx = 0
        while stor158[address(cd[4])].field_0 > idx:
            stor158[address(cd[4])][idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = cd[36] + 36
        while cd[36] + (32 * ('cd', 36).length) + 36 > idx:
            stor158[address(cd[4])][s].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * ('cd', 36).length) + 31) >> 5
        while stor158[address(cd[4])].field_0 > idx:
            stor158[address(cd[4])][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor159[address(cd[4])] = cd[68]
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
        _25 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _26 = mem[_25]
        if mem[_25]:
            if idx >= stor54.length:
                revert with 0, 50
            if mem[_25] <= 0:
                revert with 0, 'Must deposit something'
            mem[0] = stor54[idx]
            mem[32] = 53
            if not address(assetToPToken[stor54[idx]]):
                revert with 0, 'safeBox does not exist'
            mem[mem[64] + 32] = _26
            emit Deposit(address(assetToPToken[stor54[idx]]), _26, stor54[idx]);
            mem[mem[64]] = 0xb6b55f2500000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = _26
            require ext_code.size(address(assetToPToken[stor54[idx]]))
            call address(assetToPToken[stor54[idx]]).deposit(uint256 arg1) with:
                 gas gas_remaining wei
                args _26
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    storFE21 = 1
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
    if not address(assetToPToken[address(arg2)]):
        revert with 0, 'safeBox does not exist'
    if not address(assetToPToken[address(arg2)]):
        revert with 0, 'safeBox does not exist'
    require ext_code.size(address(assetToPToken[address(arg2)]))
    staticcall address(assetToPToken[address(arg2)]).cToken() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).exchangeRateStored() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
        revert with 0, 17
    if not ext_call.return_data[0]:
        revert with 0, 18
    mem[(2 * ceil32(return_data.size)) + 128] = 10^18 * arg3 / ext_call.return_data[0]
    emit Withdrawal(address(assetToPToken[address(arg2)]), 10^18 * arg3 / ext_call.return_data[0], arg2);
    if not 10^18 * arg3 / ext_call.return_data[0]:
        emit SkippedWithdrawal(address(arg2), arg3);
    else:
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).underlying() with:
             gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        mem[(4 * ceil32(return_data.size)) + 128] = arg3
        emit Withdrawal(ext_call.return_data[12 len 20], arg3, arg2);
        mem[(4 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(4 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(assetToPToken[address(arg2)]))
        call address(assetToPToken[address(arg2)]).0x2e1a7d4d with:
             gas gas_remaining wei
            args (10^18 * arg3 / ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(6 * ceil32(return_data.size)) + 100] = this.address
        require ext_code.size(arg2)
        staticcall arg2.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        mem[(6 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 17
        if arg3 > 0:
            revert with 0, 'Did not withdraw enough'
        mem[(7 * ceil32(return_data.size)) + 132] = arg1
        mem[(7 * ceil32(return_data.size)) + 164] = arg3
        mem[(7 * ceil32(return_data.size)) + 96] = 68
        mem[(7 * ceil32(return_data.size)) + 132 len 28] = address(arg1) << 64
        mem[(7 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
        mem[(7 * ceil32(return_data.size)) + 196] = 32
        mem[(7 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
        if not ext_code.size(arg2):
            revert with 0, 'Address: call to non-contract'
        mem[(7 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, arg3, 0
        mem[(7 * ceil32(return_data.size)) + 328] = 0
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
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(7 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(7 * ceil32(return_data.size)) + 292] == bool(mem[(7 * ceil32(return_data.size)) + 292])
                if not mem[(7 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    storFE21 = 1
}

function withdrawAll() payable {
    mem[64] = 96
    if msg.sender == vaultAddress:
        if storFE21 == 2:
            revert with 0, 'Reentrant call'
        storFE21 = 2
        idx = 0
        while idx < stor54.length:
            if not address(assetToPToken[stor54[idx]]):
                revert with 0, 'safeBox does not exist'
            if idx >= stor54.length:
                revert with 0, 50
            mem[0] = stor54[idx]
            mem[32] = 53
            if not address(assetToPToken[stor54[idx]]):
                revert with 0, 'safeBox does not exist'
            require ext_code.size(address(assetToPToken[stor54[idx]]))
            staticcall address(assetToPToken[stor54[idx]]).cToken() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _203 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _205 = mem[_203]
            require mem[_203] == mem[_203 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_205))
            staticcall address(_205).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _211 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_211]:
                require ext_code.size(address(assetToPToken[stor54[idx]]))
                call address(assetToPToken[stor54[idx]]).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_211]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor54[idx])
                staticcall stor54[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _223 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _225 = mem[_223]
                _227 = mem[64]
                mem[mem[64] + 36] = vaultAddress
                mem[mem[64] + 68] = _225
                _229 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_229 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_229 + 36 len 28]
                mem[64] = _227 + 164
                mem[_227 + 100] = 32
                mem[_227 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(stor54[idx]):
                    revert with 0, 'Address: call to non-contract'
                _239 = mem[_229]
                s = 0
                while s < _239:
                    mem[s + _227 + 164] = mem[s + _229 + 32]
                    s = s + 32
                    continue 
                if ceil32(_239) > _239:
                    mem[_227 + _239 + 164] = 0
                call stor54[idx].mem[_227 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_227 + 168 len _239 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_227 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_227 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _227 + 232] = mem[idx + _227 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_227 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _227 + ceil32(return_data.size) + 165
                    mem[_227 + 164] = return_data.size
                    mem[_227 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_227 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_227 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _227 + ceil32(return_data.size) + 233] = mem[idx + _227 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_227 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_227 + 196] == bool(mem[_227 + 196])
                        if not mem[_227 + 196]:
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
            if not address(assetToPToken[stor54[idx]]):
                revert with 0, 'safeBox does not exist'
            if idx >= stor54.length:
                revert with 0, 50
            mem[0] = stor54[idx]
            mem[32] = 53
            if not address(assetToPToken[stor54[idx]]):
                revert with 0, 'safeBox does not exist'
            require ext_code.size(address(assetToPToken[stor54[idx]]))
            staticcall address(assetToPToken[stor54[idx]]).cToken() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _204 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _206 = mem[_204]
            require mem[_204] == mem[_204 + 12 len 20]
            mem[mem[64] + 4] = this.address
            require ext_code.size(address(_206))
            staticcall address(_206).0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _212 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_212]:
                require ext_code.size(address(assetToPToken[stor54[idx]]))
                call address(assetToPToken[stor54[idx]]).0x2e1a7d4d with:
                     gas gas_remaining wei
                    args mem[_212]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[mem[64] + 4] = this.address
                require ext_code.size(stor54[idx])
                staticcall stor54[idx].0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _224 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _226 = mem[_224]
                _228 = mem[64]
                mem[mem[64] + 36] = vaultAddress
                mem[mem[64] + 68] = _226
                _231 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_231 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_231 + 36 len 28]
                mem[64] = _228 + 164
                mem[_228 + 100] = 32
                mem[_228 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(stor54[idx]):
                    revert with 0, 'Address: call to non-contract'
                _241 = mem[_231]
                s = 0
                while s < _241:
                    mem[s + _228 + 164] = mem[s + _231 + 32]
                    s = s + 32
                    continue 
                if ceil32(_241) > _241:
                    mem[_228 + _241 + 164] = 0
                call stor54[idx].mem[_228 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_228 + 168 len _241 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_228 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_228 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _228 + 232] = mem[idx + _228 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_228 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _228 + ceil32(return_data.size) + 165
                    mem[_228 + 164] = return_data.size
                    mem[_228 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_228 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_228 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _228 + ceil32(return_data.size) + 233] = mem[idx + _228 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_228 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_228 + 196] == bool(mem[_228 + 196])
                        if not mem[_228 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    storFE21 = 1
}

function safeApproveAllTokens() payable {
    mem[64] = 96
    idx = 0
    while idx < stor54.length:
        mem[0] = stor54[idx]
        mem[32] = 53
        _602 = mem[64]
        mem[mem[64] + 36] = address(assetToPToken[stor54[idx]])
        mem[mem[64] + 68] = 0
        _603 = mem[64]
        mem[mem[64]] = 68
        mem[64] = mem[64] + 100
        mem[_603 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_603 + 36 len 28]
        mem[64] = _602 + 164
        mem[_602 + 100] = 32
        mem[_602 + 132] = 'SafeERC20: low-level call failed'
        if not ext_code.size(stor54[idx]):
            revert with 0, 'Address: call to non-contract'
        _608 = mem[_603]
        s = 0
        while s < _608:
            mem[s + _602 + 164] = mem[s + _603 + 32]
            s = s + 32
            continue 
        if ceil32(_608) > _608:
            mem[_602 + _608 + 164] = 0
        call stor54[idx].mem[_602 + 164 len 4] with:
             gas gas_remaining wei
            args mem[_602 + 168 len _608 - 4]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_602 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_602 + 168] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _602 + 232] = mem[idx + _602 + 132]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_602 + 232]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            mem[_602 + 168] = this.address
            mem[_602 + 200] = address(assetToPToken[stor54[idx]])
            require ext_code.size(stor54[idx])
            staticcall stor54[idx].0xdd62ed3e with:
                    gas gas_remaining wei
                   args this.address, address(assetToPToken[stor54[idx]])
            mem[_602 + 164] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
            mem[_602 + ceil32(return_data.size) + 200] = address(assetToPToken[stor54[idx]])
            mem[_602 + ceil32(return_data.size) + 232] = -1
            mem[_602 + ceil32(return_data.size) + 164] = 68
            mem[_602 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or Mask(224, 0, assetToPToken[stor54[idx]])
            mem[64] = _602 + ceil32(return_data.size) + 328
            mem[_602 + ceil32(return_data.size) + 264] = 32
            mem[_602 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
            if not ext_code.size(stor54[idx]):
                revert with 0, 'Address: call to non-contract'
            s = 0
            while s < 68:
                mem[s + _602 + ceil32(return_data.size) + 328] = mem[s + _602 + ceil32(return_data.size) + 196]
                s = s + 32
                continue 
            mem[_602 + ceil32(return_data.size) + 396] = 0
            call stor54[idx].mem[_602 + ceil32(return_data.size) + 328 len 4] with:
                 gas gas_remaining wei
                args mem[_602 + ceil32(return_data.size) + 332 len 64]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_602 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_602 + ceil32(return_data.size) + 332] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _602 + ceil32(return_data.size) + 396] = mem[idx + _602 + ceil32(return_data.size) + 296]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_602 + ceil32(return_data.size) + 396]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _602 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                mem[_602 + ceil32(return_data.size) + 328] = return_data.size
                mem[_602 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _602 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _602 + ceil32(return_data.size) + 296]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_602 + ceil32(return_data.size) + 360] == bool(mem[_602 + ceil32(return_data.size) + 360])
                    if not mem[_602 + ceil32(return_data.size) + 360]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_602 + 164] = return_data.size
        mem[_602 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_602 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_602 + ceil32(return_data.size) + 169] = 32
            idx = 0
            while idx < 32:
                mem[idx + _602 + ceil32(return_data.size) + 233] = mem[idx + _602 + 132]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_602 + ceil32(return_data.size) + 233]
        if return_data.size:
            require return_data.size >= 32
            require mem[_602 + 196] == bool(mem[_602 + 196])
            if not mem[_602 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        mem[_602 + ceil32(return_data.size) + 169] = this.address
        mem[_602 + ceil32(return_data.size) + 201] = address(assetToPToken[stor54[idx]])
        require ext_code.size(stor54[idx])
        staticcall stor54[idx].0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(assetToPToken[stor54[idx]])
        mem[_602 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
        mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(assetToPToken[stor54[idx]])
        mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
        mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
        mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or Mask(224, 0, assetToPToken[stor54[idx]])
        mem[64] = _602 + ceil32(return_data.size) + ceil32(return_data.size) + 329
        mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
        mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
        if not ext_code.size(stor54[idx]):
            revert with 0, 'Address: call to non-contract'
        s = 0
        while s < 68:
            mem[s + _602 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _602 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
            s = s + 32
            continue 
        mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
        call stor54[idx].mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
             gas gas_remaining wei
            args mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
        if not return_data.size:
            if not ext_call.success:
                if mem[96]:
                    revert with memory
                      from 128
                       len mem[96]
                mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                idx = 0
                while idx < 32:
                    mem[idx + _602 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _602 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                    idx = idx + 32
                    continue 
                revert with 0, 32, 32, mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
            if mem[96]:
                require mem[96] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[64] = _602 + (4 * ceil32(return_data.size)) + 330
        mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
        mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_602 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_602 + (4 * ceil32(return_data.size)) + 334] = 32
            idx = 0
            while idx < 32:
                mem[idx + _602 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _602 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                idx = idx + 32
                continue 
            revert with 0, 32, 32, mem[_602 + (4 * ceil32(return_data.size)) + 398]
        if not return_data.size:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        require return_data.size >= 32
        require mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
        if mem[_602 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[_602 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[_602 + (4 * ceil32(return_data.size)) + 334] = 32
        mem[_602 + (4 * ceil32(return_data.size)) + 366] = 42
        mem[_602 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
        mem[_602 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
        revert with memory
          from _602 + (4 * ceil32(return_data.size)) + 330
           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function collectRewardTokens() payable {
    mem[64] = 96
    if vaultAddress != msg.sender:
        revert with 0, 'Caller is not the Vault'
    if storFE21 == 2:
        revert with 0, 'Reentrant call'
    storFE21 = 2
    idx = 0
    while idx < rewardToken.length:
        if idx >= sub_e29f7bc1.length:
            revert with 0, 50
        if idx >= rewardToken.length:
            revert with 0, 50
        mem[0] = 57
        require ext_code.size(sub_e29f7bc1[idx].field_0)
        staticcall sub_e29f7bc1[idx].field_0.token() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _100 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        require mem[_100] == mem[_100 + 12 len 20]
        require mem[_100 + 12 len 20] == rewardToken[idx].field_0
        if idx >= rewardToken.length:
            revert with 0, 50
        mem[0] = rewardToken[idx].field_0
        mem[32] = 159
        if not stor159[stor57[idx].field_0]:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if idx >= rewardToken.length:
            revert with 0, 50
        mem[0] = rewardToken[idx].field_0
        mem[32] = 158
        _106 = mem[64]
        mem[64] = mem[64] + (32 * stor158[stor57[idx].field_0].field_0) + 32
        mem[_106] = stor158[stor57[idx].field_0].field_0
        if not stor158[stor57[idx].field_0].field_0:
            mem[mem[64] + 4] = this.address
            require ext_code.size(sub_e29f7bc1[idx].field_0)
            staticcall sub_e29f7bc1[idx].field_0.claimed(address arg1) with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _110 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            if mem[_110] < stor159[stor57[idx].field_0]:
                _112 = mem[64]
                mem[mem[64]] = 0x3d13f87400000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = stor159[stor57[idx].field_0]
                mem[mem[64] + 68] = 96
                mem[mem[64] + 100] = stor158[stor57[idx].field_0].field_0
                s = 0
                t = _106 + 32
                u = mem[64] + 132
                while s < stor158[stor57[idx].field_0].field_0:
                    mem[u] = mem[t]
                    s = s + 1
                    t = t + 32
                    u = u + 32
                    continue 
                require ext_code.size(sub_e29f7bc1[idx].field_0)
                call sub_e29f7bc1[idx].field_0.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _112 + (32 * stor158[stor57[idx].field_0].field_0) + -mem[64] + 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if idx >= rewardToken.length:
                    revert with 0, 50
                mem[0] = 57
                mem[mem[64] + 4] = this.address
                require ext_code.size(rewardToken[idx].field_0)
                staticcall rewardToken[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _190 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _191 = mem[_190]
                if idx >= rewardToken.length:
                    revert with 0, 50
                mem[0] = 57
                mem[mem[64] + 32] = rewardToken[idx].field_0
                mem[mem[64] + 64] = _191
                emit 0xf6c07a06: vaultAddress, rewardToken[idx].field_0, _191
                _195 = mem[64]
                mem[mem[64] + 36] = vaultAddress
                mem[mem[64] + 68] = _191
                _196 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_196 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_196 + 36 len 28]
                mem[64] = _195 + 164
                mem[_195 + 100] = 32
                mem[_195 + 132] = 'SafeERC20: low-level call failed'
                if not ext_code.size(rewardToken[idx].field_0):
                    revert with 0, 'Address: call to non-contract'
                _201 = mem[_196]
                s = 0
                while s < _201:
                    mem[s + _195 + 164] = mem[s + _196 + 32]
                    s = s + 32
                    continue 
                if ceil32(_201) > _201:
                    mem[_195 + _201 + 164] = 0
                call rewardToken[idx].field_0.mem[_195 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_195 + 168 len _201 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_195 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_195 + 168] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _195 + 232] = mem[idx + _195 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_195 + 232]
                    if mem[96]:
                        require mem[96] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = _195 + ceil32(return_data.size) + 165
                    mem[_195 + 164] = return_data.size
                    mem[_195 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_195 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_195 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _195 + ceil32(return_data.size) + 233] = mem[idx + _195 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_195 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_195 + 196] == bool(mem[_195 + 196])
                        if not mem[_195 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        mem[0] = sha3(rewardToken[idx].field_0, 158)
        mem[_106 + 32] = stor158[stor57[idx].field_0].field_0
        s = _106 + 32
        t = sha3(sha3(rewardToken[s].field_0, 158))
        while _106 + (32 * stor158[stor57[s].field_0].field_0) > s:
            mem[s + 32] = stor1[t]
            s = s + 32
            t = t + 1
            continue 
        mem[mem[64] + 4] = this.address
        require ext_code.size(stor[('name', 'sub_e29f7bc1', 157) + _106 + floor32((32 * stor158[stor57[s].field_0].field_0) - 1)].field_8192)
        staticcall stor[('name', 'sub_e29f7bc1', 157) + _106 + floor32((32 * stor158[stor57[s].field_0].field_0) - 1)].field_8192.claimed(address arg1) with:
                gas gas_remaining wei
               args this.address
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _259 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        if mem[_259] < stor159[stor57[s].field_0]:
            _265 = mem[64]
            mem[mem[64]] = 0x3d13f87400000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = stor159[stor57[s].field_0]
            mem[mem[64] + 68] = 96
            mem[mem[64] + 100] = stor158[stor57[s].field_0].field_0
            t = 0
            u = _106 + 32
            v = mem[64] + 132
            while t < stor158[stor57[s].field_0].field_0:
                mem[v] = mem[u]
                t = t + 1
                u = u + 32
                v = v + 32
                continue 
            require ext_code.size(stor[('name', 'sub_e29f7bc1', 157) + _106 + floor32((32 * stor158[stor57[s].field_0].field_0) - 1)].field_8192)
            call stor[('name', 'sub_e29f7bc1', 157) + _106 + floor32((32 * stor158[stor57[s].field_0].field_0) - 1)].field_8192.mem[mem[64] len 4] with:
                 gas gas_remaining wei
                args mem[mem[64] + 4 len _265 + (32 * stor158[stor57[s].field_0].field_0) + -mem[64] + 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if _106 + floor32((32 * stor158[stor57[s].field_0].field_0) - 1) + 32 >= rewardToken.length:
                revert with 0, 50
            mem[0] = 57
            mem[mem[64] + 4] = this.address
            require ext_code.size(stor[('name', 'rewardToken', 57) + _106 + floor32((32 * stor158[rewardToken[s].field_0].field_0) - 1)].field_8192)
            staticcall stor[('name', 'rewardToken', 57) + _106 + floor32((32 * stor158[rewardToken[s].field_0].field_0) - 1)].field_8192.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _403 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _404 = mem[_403]
            if _106 + floor32((32 * stor158[stor57[s].field_0].field_0) - 1) + 32 >= rewardToken.length:
                revert with 0, 50
            mem[0] = 57
            mem[mem[64] + 32] = stor[('name', 'rewardToken', 57) + _106 + floor32((32 * stor158[rewardToken[s].field_0].field_0) - 1)].field_8192
            mem[mem[64] + 64] = _404
            emit 0xf6c07a06: vaultAddress, stor[('name', 'rewardToken', 57) + _106 + floor32((32 * stor158[rewardToken[s].field_0].field_0) - 1)].field_8192, _404
            _408 = mem[64]
            mem[mem[64] + 36] = vaultAddress
            mem[mem[64] + 68] = _404
            _409 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_409 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_409 + 36 len 28]
            mem[64] = _408 + 164
            mem[_408 + 100] = 32
            mem[_408 + 132] = 'SafeERC20: low-level call failed'
            if not ext_code.size(stor[('name', 'rewardToken', 57) + _106 + floor32((32 * stor158[rewardToken[s].field_0].field_0) - 1)].field_8192):
                revert with 0, 'Address: call to non-contract'
            _414 = mem[_409]
            idx = 0
            while idx < _414:
                mem[idx + _408 + 164] = mem[idx + _409 + 32]
                idx = idx + 32
                continue 
            if ceil32(_414) > _414:
                mem[_408 + _414 + 164] = 0
            call stor[('name', 'rewardToken', 57) + _106 + floor32((32 * stor158[rewardToken[s].field_0].field_0) - 1)].field_8192.mem[_408 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_408 + 168 len _414 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_408 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_408 + 168] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _408 + 232] = mem[idx + _408 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_408 + 232]
                if mem[96]:
                    require mem[96] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = _408 + ceil32(return_data.size) + 165
                mem[_408 + 164] = return_data.size
                mem[_408 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_408 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_408 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _408 + ceil32(return_data.size) + 233] = mem[idx + _408 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_408 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    require mem[_408 + 196] == bool(mem[_408 + 196])
                    if not mem[_408 + 196]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        if _106 + floor32((32 * stor158[stor57[s].field_0].field_0) - 1) + 32 == -1:
            revert with 0, 17
        s = _106 + floor32((32 * stor158[stor57[s].field_0].field_0) - 1) + 33
        continue 
    storFE21 = 1
}

function sub_a8a3f0fc(?) payable {
    require calldata.size - 4 >= 192
    require cd[4] == address(cd[4])
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    require ('cd', 100).length <= test266151307()
    require cd[100] + (32 * ('cd', 100).length) + 36 <= calldata.size
    require cd[132] <= test266151307()
    require cd[132] + 35 < calldata.size
    require ('cd', 132).length <= test266151307()
    require cd[132] + (32 * ('cd', 132).length) + 36 <= calldata.size
    require cd[164] <= test266151307()
    require cd[164] + 35 < calldata.size
    require ('cd', 164).length <= test266151307()
    require cd[164] + (32 * ('cd', 164).length) + 36 <= calldata.size
    if address(governorAddress) != msg.sender:
        revert with 0, 'Caller is not the Governor'
    if uint8(stor0.field_8):
        if ('cd', 164).length != ('cd', 68).length:
            revert with 0, 'not 1:1 rewards-to-incentives'
        sub_e29f7bc1.length = ('cd', 164).length
        if not ('cd', 164).length:
            idx = 0
            while sub_e29f7bc1.length > idx:
                sub_e29f7bc1[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[96] = ('cd', 100).length
            mem[128 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[64] = (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + 160
            mem[(32 * ('cd', 100).length) + 128] = ('cd', 132).length
            mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 160] = 0
            platformAddress = address(cd[4])
            vaultAddress = address(cd[36])
            rewardToken.length = ('cd', 68).length
            mem[0] = 57
            if not ('cd', 68).length:
                idx = 0
                while rewardToken.length > idx:
                    rewardToken[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if ('cd', 100).length != ('cd', 132).length:
                    revert with 0, 'Invalid input arrays'
                idx = 0
                while idx < ('cd', 100).length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _22204 = mem[(32 * idx) + 128]
                    if idx >= mem[(32 * ('cd', 100).length) + 128]:
                        revert with 0, 50
                    _22210 = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                    if address(assetToPToken[mem[(32 * idx) + 140 len 20]]):
                        revert with 0, 'pToken already set'
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'Invalid addresses'
                    if not mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]:
                        revert with 0, 'Invalid addresses'
                    mem[32] = 53
                    address(assetToPToken[address(mem[(32 * idx) + 128])]) = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                    stor54.length++
                    mem[0] = 54
                    stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                    emit PTokenAdded(mem[mem[64]], address(_22204));
                    _22333 = mem[64]
                    mem[mem[64] + 36] = address(_22210)
                    mem[mem[64] + 68] = 0
                    _22345 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_22345 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_22345 + 36 len 28]
                    mem[64] = _22333 + 164
                    mem[_22333 + 100] = 32
                    mem[_22333 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_22204)):
                        revert with 0, 'Address: call to non-contract'
                    _22420 = mem[_22345]
                    s = 0
                    while s < _22420:
                        mem[s + _22333 + 164] = mem[s + _22345 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_22420) > _22420:
                        mem[_22333 + _22420 + 164] = 0
                    call address(_22204).mem[_22333 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_22333 + 168 len _22420 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_22333 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_22333 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _22333 + 232] = mem[idx + _22333 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_22333 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_22333 + 168] = this.address
                        mem[_22333 + 200] = address(_22210)
                        require ext_code.size(address(_22204))
                        staticcall address(_22204).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_22210)
                        mem[_22333 + 164] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_22333 + ceil32(return_data.size) + 200] = address(_22210)
                        mem[_22333 + ceil32(return_data.size) + 232] = -1
                        mem[_22333 + ceil32(return_data.size) + 164] = 68
                        mem[_22333 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_22210) << 64
                        mem[64] = _22333 + ceil32(return_data.size) + 328
                        mem[_22333 + ceil32(return_data.size) + 264] = 32
                        mem[_22333 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_22204)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _22333 + ceil32(return_data.size) + 328] = mem[s + _22333 + ceil32(return_data.size) + 196]
                            s = s + 32
                            continue 
                        mem[_22333 + ceil32(return_data.size) + 396] = 0
                        call address(_22204).mem[_22333 + ceil32(return_data.size) + 328 len 4] with:
                             gas gas_remaining wei
                            args mem[_22333 + ceil32(return_data.size) + 332 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_22333 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_22333 + ceil32(return_data.size) + 332] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _22333 + ceil32(return_data.size) + 396] = mem[idx + _22333 + ceil32(return_data.size) + 296]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_22333 + ceil32(return_data.size) + 396]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _22333 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                            mem[_22333 + ceil32(return_data.size) + 328] = return_data.size
                            mem[_22333 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _22333 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _22333 + ceil32(return_data.size) + 296]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_22333 + ceil32(return_data.size) + 360] == bool(mem[_22333 + ceil32(return_data.size) + 360])
                                if not mem[_22333 + ceil32(return_data.size) + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_22333 + 164] = return_data.size
                    mem[_22333 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_22333 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_22333 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _22333 + ceil32(return_data.size) + 233] = mem[idx + _22333 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_22333 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_22333 + 196] == bool(mem[_22333 + 196])
                        if not mem[_22333 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_22333 + ceil32(return_data.size) + 169] = this.address
                    mem[_22333 + ceil32(return_data.size) + 201] = address(_22210)
                    require ext_code.size(address(_22204))
                    staticcall address(_22204).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_22210)
                    mem[_22333 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_22210)
                    mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                    mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_22210) << 64
                    mem[64] = _22333 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                    mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                    mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_22204)):
                        revert with 0, 'Address: call to non-contract'
                    s = 0
                    while s < 68:
                        mem[s + _22333 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _22333 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                    call address(_22204).mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                         gas gas_remaining wei
                        args mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _22333 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _22333 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[64] = _22333 + (4 * ceil32(return_data.size)) + 330
                    mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                    mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_22333 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_22333 + (4 * ceil32(return_data.size)) + 334] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _22333 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _22333 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_22333 + (4 * ceil32(return_data.size)) + 398]
                    if not return_data.size:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require return_data.size >= 32
                    require mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                    if mem[_22333 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_22333 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_22333 + (4 * ceil32(return_data.size)) + 334] = 32
                    mem[_22333 + (4 * ceil32(return_data.size)) + 366] = 42
                    mem[_22333 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                    mem[_22333 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from _22333 + (4 * ceil32(return_data.size)) + 330
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            else:
                s = 0
                idx = cd[68] + 36
                while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
                    rewardToken[s].field_0 = address(cd[idx])
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                while rewardToken.length > idx:
                    rewardToken[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if ('cd', 100).length != ('cd', 132).length:
                    revert with 0, 'Invalid input arrays'
                idx = 0
                while idx < ('cd', 100).length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _29578 = mem[(32 * idx) + 128]
                    if idx >= mem[(32 * ('cd', 100).length) + 128]:
                        revert with 0, 50
                    _29590 = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                    if address(assetToPToken[mem[(32 * idx) + 140 len 20]]):
                        revert with 0, 'pToken already set'
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'Invalid addresses'
                    if not mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]:
                        revert with 0, 'Invalid addresses'
                    mem[32] = 53
                    address(assetToPToken[address(mem[(32 * idx) + 128])]) = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                    stor54.length++
                    mem[0] = 54
                    stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                    emit PTokenAdded(mem[mem[64]], address(_29578));
                    _29751 = mem[64]
                    mem[mem[64] + 36] = address(_29590)
                    mem[mem[64] + 68] = 0
                    _29770 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_29770 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_29770 + 36 len 28]
                    mem[64] = _29751 + 164
                    mem[_29751 + 100] = 32
                    mem[_29751 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_29578)):
                        revert with 0, 'Address: call to non-contract'
                    _29868 = mem[_29770]
                    s = 0
                    while s < _29868:
                        mem[s + _29751 + 164] = mem[s + _29770 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_29868) > _29868:
                        mem[_29751 + _29868 + 164] = 0
                    call address(_29578).mem[_29751 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_29751 + 168 len _29868 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_29751 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_29751 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _29751 + 232] = mem[idx + _29751 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_29751 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_29751 + 168] = this.address
                        mem[_29751 + 200] = address(_29590)
                        require ext_code.size(address(_29578))
                        staticcall address(_29578).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_29590)
                        mem[_29751 + 164] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_29751 + ceil32(return_data.size) + 200] = address(_29590)
                        mem[_29751 + ceil32(return_data.size) + 232] = -1
                        mem[_29751 + ceil32(return_data.size) + 164] = 68
                        mem[_29751 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_29590) << 64
                        mem[64] = _29751 + ceil32(return_data.size) + 328
                        mem[_29751 + ceil32(return_data.size) + 264] = 32
                        mem[_29751 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_29578)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _29751 + ceil32(return_data.size) + 328] = mem[s + _29751 + ceil32(return_data.size) + 196]
                            s = s + 32
                            continue 
                        mem[_29751 + ceil32(return_data.size) + 396] = 0
                        call address(_29578).mem[_29751 + ceil32(return_data.size) + 328 len 4] with:
                             gas gas_remaining wei
                            args mem[_29751 + ceil32(return_data.size) + 332 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_29751 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_29751 + ceil32(return_data.size) + 332] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _29751 + ceil32(return_data.size) + 396] = mem[idx + _29751 + ceil32(return_data.size) + 296]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_29751 + ceil32(return_data.size) + 396]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _29751 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                            mem[_29751 + ceil32(return_data.size) + 328] = return_data.size
                            mem[_29751 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _29751 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _29751 + ceil32(return_data.size) + 296]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_29751 + ceil32(return_data.size) + 360] == bool(mem[_29751 + ceil32(return_data.size) + 360])
                                if not mem[_29751 + ceil32(return_data.size) + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_29751 + 164] = return_data.size
                    mem[_29751 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_29751 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_29751 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _29751 + ceil32(return_data.size) + 233] = mem[idx + _29751 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_29751 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_29751 + 196] == bool(mem[_29751 + 196])
                        if not mem[_29751 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_29751 + ceil32(return_data.size) + 169] = this.address
                    mem[_29751 + ceil32(return_data.size) + 201] = address(_29590)
                    require ext_code.size(address(_29578))
                    staticcall address(_29578).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_29590)
                    mem[_29751 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_29590)
                    mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                    mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_29590) << 64
                    mem[64] = _29751 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                    mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                    mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_29578)):
                        revert with 0, 'Address: call to non-contract'
                    s = 0
                    while s < 68:
                        mem[s + _29751 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _29751 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                    call address(_29578).mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                         gas gas_remaining wei
                        args mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _29751 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _29751 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[64] = _29751 + (4 * ceil32(return_data.size)) + 330
                    mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                    mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_29751 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_29751 + (4 * ceil32(return_data.size)) + 334] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _29751 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _29751 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_29751 + (4 * ceil32(return_data.size)) + 398]
                    if not return_data.size:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require return_data.size >= 32
                    require mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                    if mem[_29751 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_29751 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_29751 + (4 * ceil32(return_data.size)) + 334] = 32
                    mem[_29751 + (4 * ceil32(return_data.size)) + 366] = 42
                    mem[_29751 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                    mem[_29751 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from _29751 + (4 * ceil32(return_data.size)) + 330
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        else:
            s = 0
            idx = cd[164] + 36
            while cd[164] + (32 * ('cd', 164).length) + 36 > idx:
                sub_e29f7bc1[s].field_0 = address(cd[idx])
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
            while sub_e29f7bc1.length > idx:
                sub_e29f7bc1[idx].field_0 = 0
                idx = idx + 1
                continue 
            mem[96] = ('cd', 100).length
            mem[128 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
            mem[64] = (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + 160
            mem[(32 * ('cd', 100).length) + 128] = ('cd', 132).length
            mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
            mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 160] = 0
            platformAddress = address(cd[4])
            vaultAddress = address(cd[36])
            rewardToken.length = ('cd', 68).length
            mem[0] = 57
            if not ('cd', 68).length:
                idx = 0
                while rewardToken.length > idx:
                    rewardToken[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if ('cd', 100).length != ('cd', 132).length:
                    revert with 0, 'Invalid input arrays'
                idx = 0
                while idx < ('cd', 100).length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _29580 = mem[(32 * idx) + 128]
                    if idx >= mem[(32 * ('cd', 100).length) + 128]:
                        revert with 0, 50
                    _29591 = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                    if address(assetToPToken[mem[(32 * idx) + 140 len 20]]):
                        revert with 0, 'pToken already set'
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'Invalid addresses'
                    if not mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]:
                        revert with 0, 'Invalid addresses'
                    mem[32] = 53
                    address(assetToPToken[address(mem[(32 * idx) + 128])]) = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                    stor54.length++
                    mem[0] = 54
                    stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                    emit PTokenAdded(mem[mem[64]], address(_29580));
                    _29752 = mem[64]
                    mem[mem[64] + 36] = address(_29591)
                    mem[mem[64] + 68] = 0
                    _29772 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_29772 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_29772 + 36 len 28]
                    mem[64] = _29752 + 164
                    mem[_29752 + 100] = 32
                    mem[_29752 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_29580)):
                        revert with 0, 'Address: call to non-contract'
                    _29870 = mem[_29772]
                    s = 0
                    while s < _29870:
                        mem[s + _29752 + 164] = mem[s + _29772 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_29870) > _29870:
                        mem[_29752 + _29870 + 164] = 0
                    call address(_29580).mem[_29752 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_29752 + 168 len _29870 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_29752 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_29752 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _29752 + 232] = mem[idx + _29752 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_29752 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_29752 + 168] = this.address
                        mem[_29752 + 200] = address(_29591)
                        require ext_code.size(address(_29580))
                        staticcall address(_29580).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_29591)
                        mem[_29752 + 164] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_29752 + ceil32(return_data.size) + 200] = address(_29591)
                        mem[_29752 + ceil32(return_data.size) + 232] = -1
                        mem[_29752 + ceil32(return_data.size) + 164] = 68
                        mem[_29752 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_29591) << 64
                        mem[64] = _29752 + ceil32(return_data.size) + 328
                        mem[_29752 + ceil32(return_data.size) + 264] = 32
                        mem[_29752 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_29580)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _29752 + ceil32(return_data.size) + 328] = mem[s + _29752 + ceil32(return_data.size) + 196]
                            s = s + 32
                            continue 
                        mem[_29752 + ceil32(return_data.size) + 396] = 0
                        call address(_29580).mem[_29752 + ceil32(return_data.size) + 328 len 4] with:
                             gas gas_remaining wei
                            args mem[_29752 + ceil32(return_data.size) + 332 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_29752 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_29752 + ceil32(return_data.size) + 332] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _29752 + ceil32(return_data.size) + 396] = mem[idx + _29752 + ceil32(return_data.size) + 296]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_29752 + ceil32(return_data.size) + 396]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _29752 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                            mem[_29752 + ceil32(return_data.size) + 328] = return_data.size
                            mem[_29752 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _29752 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _29752 + ceil32(return_data.size) + 296]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_29752 + ceil32(return_data.size) + 360] == bool(mem[_29752 + ceil32(return_data.size) + 360])
                                if not mem[_29752 + ceil32(return_data.size) + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_29752 + 164] = return_data.size
                    mem[_29752 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_29752 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_29752 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _29752 + ceil32(return_data.size) + 233] = mem[idx + _29752 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_29752 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_29752 + 196] == bool(mem[_29752 + 196])
                        if not mem[_29752 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_29752 + ceil32(return_data.size) + 169] = this.address
                    mem[_29752 + ceil32(return_data.size) + 201] = address(_29591)
                    require ext_code.size(address(_29580))
                    staticcall address(_29580).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_29591)
                    mem[_29752 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_29591)
                    mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                    mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_29591) << 64
                    mem[64] = _29752 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                    mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                    mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_29580)):
                        revert with 0, 'Address: call to non-contract'
                    s = 0
                    while s < 68:
                        mem[s + _29752 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _29752 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                    call address(_29580).mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                         gas gas_remaining wei
                        args mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _29752 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _29752 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[64] = _29752 + (4 * ceil32(return_data.size)) + 330
                    mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                    mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_29752 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_29752 + (4 * ceil32(return_data.size)) + 334] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _29752 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _29752 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_29752 + (4 * ceil32(return_data.size)) + 398]
                    if not return_data.size:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require return_data.size >= 32
                    require mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                    if mem[_29752 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_29752 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_29752 + (4 * ceil32(return_data.size)) + 334] = 32
                    mem[_29752 + (4 * ceil32(return_data.size)) + 366] = 42
                    mem[_29752 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                    mem[_29752 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from _29752 + (4 * ceil32(return_data.size)) + 330
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            else:
                s = 0
                idx = cd[68] + 36
                while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
                    rewardToken[s].field_0 = address(cd[idx])
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                while rewardToken.length > idx:
                    rewardToken[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if ('cd', 100).length != ('cd', 132).length:
                    revert with 0, 'Invalid input arrays'
                idx = 0
                while idx < ('cd', 100).length:
                    if idx >= mem[96]:
                        revert with 0, 50
                    _36892 = mem[(32 * idx) + 128]
                    if idx >= mem[(32 * ('cd', 100).length) + 128]:
                        revert with 0, 50
                    _36898 = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                    if address(assetToPToken[mem[(32 * idx) + 140 len 20]]):
                        revert with 0, 'pToken already set'
                    if not mem[(32 * idx) + 140 len 20]:
                        revert with 0, 'Invalid addresses'
                    if not mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]:
                        revert with 0, 'Invalid addresses'
                    mem[32] = 53
                    address(assetToPToken[address(mem[(32 * idx) + 128])]) = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                    stor54.length++
                    mem[0] = 54
                    stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                    mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                    emit PTokenAdded(mem[mem[64]], address(_36892));
                    _37575 = mem[64]
                    mem[mem[64] + 36] = address(_36898)
                    mem[mem[64] + 68] = 0
                    _37678 = mem[64]
                    mem[mem[64]] = 68
                    mem[64] = mem[64] + 100
                    mem[_37678 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_37678 + 36 len 28]
                    mem[64] = _37575 + 164
                    mem[_37575 + 100] = 32
                    mem[_37575 + 132] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_36892)):
                        revert with 0, 'Address: call to non-contract'
                    _38161 = mem[_37678]
                    s = 0
                    while s < _38161:
                        mem[s + _37575 + 164] = mem[s + _37678 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_38161) > _38161:
                        mem[_37575 + _38161 + 164] = 0
                    call address(_36892).mem[_37575 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_37575 + 168 len _38161 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_37575 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_37575 + 168] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _37575 + 232] = mem[idx + _37575 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_37575 + 232]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_37575 + 168] = this.address
                        mem[_37575 + 200] = address(_36898)
                        require ext_code.size(address(_36892))
                        staticcall address(_36892).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_36898)
                        mem[_37575 + 164] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_37575 + ceil32(return_data.size) + 200] = address(_36898)
                        mem[_37575 + ceil32(return_data.size) + 232] = -1
                        mem[_37575 + ceil32(return_data.size) + 164] = 68
                        mem[_37575 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_36898) << 64
                        mem[64] = _37575 + ceil32(return_data.size) + 328
                        mem[_37575 + ceil32(return_data.size) + 264] = 32
                        mem[_37575 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_36892)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _37575 + ceil32(return_data.size) + 328] = mem[s + _37575 + ceil32(return_data.size) + 196]
                            s = s + 32
                            continue 
                        mem[_37575 + ceil32(return_data.size) + 396] = 0
                        call address(_36892).mem[_37575 + ceil32(return_data.size) + 328 len 4] with:
                             gas gas_remaining wei
                            args mem[_37575 + ceil32(return_data.size) + 332 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_37575 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_37575 + ceil32(return_data.size) + 332] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _37575 + ceil32(return_data.size) + 396] = mem[idx + _37575 + ceil32(return_data.size) + 296]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_37575 + ceil32(return_data.size) + 396]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            mem[64] = _37575 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                            mem[_37575 + ceil32(return_data.size) + 328] = return_data.size
                            mem[_37575 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _37575 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _37575 + ceil32(return_data.size) + 296]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                            if return_data.size:
                                require return_data.size >= 32
                                require mem[_37575 + ceil32(return_data.size) + 360] == bool(mem[_37575 + ceil32(return_data.size) + 360])
                                if not mem[_37575 + ceil32(return_data.size) + 360]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_37575 + 164] = return_data.size
                    mem[_37575 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_37575 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_37575 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _37575 + ceil32(return_data.size) + 233] = mem[idx + _37575 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_37575 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[_37575 + 196] == bool(mem[_37575 + 196])
                        if not mem[_37575 + 196]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                    mem[_37575 + ceil32(return_data.size) + 169] = this.address
                    mem[_37575 + ceil32(return_data.size) + 201] = address(_36898)
                    require ext_code.size(address(_36892))
                    staticcall address(_36892).0xdd62ed3e with:
                            gas gas_remaining wei
                           args this.address, address(_36898)
                    mem[_37575 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0]:
                        revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                    mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_36898)
                    mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                    mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                    mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_36898) << 64
                    mem[64] = _37575 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                    mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                    mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                    if not ext_code.size(address(_36892)):
                        revert with 0, 'Address: call to non-contract'
                    s = 0
                    while s < 68:
                        mem[s + _37575 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _37575 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                        s = s + 32
                        continue 
                    mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                    call address(_36892).mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                         gas gas_remaining wei
                        args mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _37575 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _37575 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                        if mem[96]:
                            require mem[96] >= 32
                            require mem[128] == bool(mem[128])
                            if not mem[128]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[64] = _37575 + (4 * ceil32(return_data.size)) + 330
                    mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                    mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_37575 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_37575 + (4 * ceil32(return_data.size)) + 334] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _37575 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _37575 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_37575 + (4 * ceil32(return_data.size)) + 398]
                    if not return_data.size:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    require return_data.size >= 32
                    require mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                    if mem[_37575 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    mem[_37575 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_37575 + (4 * ceil32(return_data.size)) + 334] = 32
                    mem[_37575 + (4 * ceil32(return_data.size)) + 366] = 42
                    mem[_37575 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                    mem[_37575 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                    revert with memory
                      from _37575 + (4 * ceil32(return_data.size)) + 330
                       len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    else:
        if uint8(stor0.field_0):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Initializable: contract is already initialized'
        if uint8(stor0.field_8):
            if ('cd', 164).length != ('cd', 68).length:
                revert with 0, 'not 1:1 rewards-to-incentives'
            sub_e29f7bc1.length = ('cd', 164).length
            if not ('cd', 164).length:
                idx = 0
                while sub_e29f7bc1.length > idx:
                    sub_e29f7bc1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[96] = ('cd', 100).length
                mem[128 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[64] = (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + 160
                mem[(32 * ('cd', 100).length) + 128] = ('cd', 132).length
                mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 160] = 0
                platformAddress = address(cd[4])
                vaultAddress = address(cd[36])
                rewardToken.length = ('cd', 68).length
                mem[0] = 57
                if not ('cd', 68).length:
                    idx = 0
                    while rewardToken.length > idx:
                        rewardToken[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if ('cd', 100).length != ('cd', 132).length:
                        revert with 0, 'Invalid input arrays'
                    idx = 0
                    while idx < ('cd', 100).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _22206 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * ('cd', 100).length) + 128]:
                            revert with 0, 50
                        _22215 = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                        if address(assetToPToken[mem[(32 * idx) + 140 len 20]]):
                            revert with 0, 'pToken already set'
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Invalid addresses'
                        if not mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]:
                            revert with 0, 'Invalid addresses'
                        mem[32] = 53
                        address(assetToPToken[address(mem[(32 * idx) + 128])]) = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        stor54.length++
                        mem[0] = 54
                        stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        emit PTokenAdded(mem[mem[64]], address(_22206));
                        _22337 = mem[64]
                        mem[mem[64] + 36] = address(_22215)
                        mem[mem[64] + 68] = 0
                        _22358 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_22358 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_22358 + 36 len 28]
                        mem[64] = _22337 + 164
                        mem[_22337 + 100] = 32
                        mem[_22337 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_22206)):
                            revert with 0, 'Address: call to non-contract'
                        _22425 = mem[_22358]
                        s = 0
                        while s < _22425:
                            mem[s + _22337 + 164] = mem[s + _22358 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_22425) > _22425:
                            mem[_22337 + _22425 + 164] = 0
                        call address(_22206).mem[_22337 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_22337 + 168 len _22425 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_22337 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_22337 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _22337 + 232] = mem[idx + _22337 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_22337 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_22337 + 168] = this.address
                            mem[_22337 + 200] = address(_22215)
                            require ext_code.size(address(_22206))
                            staticcall address(_22206).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_22215)
                            mem[_22337 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_22337 + ceil32(return_data.size) + 200] = address(_22215)
                            mem[_22337 + ceil32(return_data.size) + 232] = -1
                            mem[_22337 + ceil32(return_data.size) + 164] = 68
                            mem[_22337 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_22215) << 64
                            mem[64] = _22337 + ceil32(return_data.size) + 328
                            mem[_22337 + ceil32(return_data.size) + 264] = 32
                            mem[_22337 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_22206)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _22337 + ceil32(return_data.size) + 328] = mem[s + _22337 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_22337 + ceil32(return_data.size) + 396] = 0
                            call address(_22206).mem[_22337 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_22337 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_22337 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_22337 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _22337 + ceil32(return_data.size) + 396] = mem[idx + _22337 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_22337 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _22337 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_22337 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_22337 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _22337 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _22337 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_22337 + ceil32(return_data.size) + 360] == bool(mem[_22337 + ceil32(return_data.size) + 360])
                                    if not mem[_22337 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_22337 + 164] = return_data.size
                        mem[_22337 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_22337 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_22337 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _22337 + ceil32(return_data.size) + 233] = mem[idx + _22337 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_22337 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_22337 + 196] == bool(mem[_22337 + 196])
                            if not mem[_22337 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_22337 + ceil32(return_data.size) + 169] = this.address
                        mem[_22337 + ceil32(return_data.size) + 201] = address(_22215)
                        require ext_code.size(address(_22206))
                        staticcall address(_22206).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_22215)
                        mem[_22337 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_22215)
                        mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                        mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                        mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_22215) << 64
                        mem[64] = _22337 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                        mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                        mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_22206)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _22337 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _22337 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                        call address(_22206).mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _22337 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _22337 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[64] = _22337 + (4 * ceil32(return_data.size)) + 330
                        mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                        mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_22337 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_22337 + (4 * ceil32(return_data.size)) + 334] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _22337 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _22337 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_22337 + (4 * ceil32(return_data.size)) + 398]
                        if not return_data.size:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require return_data.size >= 32
                        require mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                        if mem[_22337 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_22337 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_22337 + (4 * ceil32(return_data.size)) + 334] = 32
                        mem[_22337 + (4 * ceil32(return_data.size)) + 366] = 42
                        mem[_22337 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                        mem[_22337 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                        revert with memory
                          from _22337 + (4 * ceil32(return_data.size)) + 330
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                else:
                    s = 0
                    idx = cd[68] + 36
                    while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
                        rewardToken[s].field_0 = address(cd[idx])
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                    while rewardToken.length > idx:
                        rewardToken[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if ('cd', 100).length != ('cd', 132).length:
                        revert with 0, 'Invalid input arrays'
                    idx = 0
                    while idx < ('cd', 100).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _29582 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * ('cd', 100).length) + 128]:
                            revert with 0, 50
                        _29594 = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                        if address(assetToPToken[mem[(32 * idx) + 140 len 20]]):
                            revert with 0, 'pToken already set'
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Invalid addresses'
                        if not mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]:
                            revert with 0, 'Invalid addresses'
                        mem[32] = 53
                        address(assetToPToken[address(mem[(32 * idx) + 128])]) = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        stor54.length++
                        mem[0] = 54
                        stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        emit PTokenAdded(mem[mem[64]], address(_29582));
                        _29756 = mem[64]
                        mem[mem[64] + 36] = address(_29594)
                        mem[mem[64] + 68] = 0
                        _29785 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_29785 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_29785 + 36 len 28]
                        mem[64] = _29756 + 164
                        mem[_29756 + 100] = 32
                        mem[_29756 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_29582)):
                            revert with 0, 'Address: call to non-contract'
                        _29881 = mem[_29785]
                        s = 0
                        while s < _29881:
                            mem[s + _29756 + 164] = mem[s + _29785 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_29881) > _29881:
                            mem[_29756 + _29881 + 164] = 0
                        call address(_29582).mem[_29756 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_29756 + 168 len _29881 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_29756 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_29756 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _29756 + 232] = mem[idx + _29756 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_29756 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_29756 + 168] = this.address
                            mem[_29756 + 200] = address(_29594)
                            require ext_code.size(address(_29582))
                            staticcall address(_29582).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_29594)
                            mem[_29756 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_29756 + ceil32(return_data.size) + 200] = address(_29594)
                            mem[_29756 + ceil32(return_data.size) + 232] = -1
                            mem[_29756 + ceil32(return_data.size) + 164] = 68
                            mem[_29756 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_29594) << 64
                            mem[64] = _29756 + ceil32(return_data.size) + 328
                            mem[_29756 + ceil32(return_data.size) + 264] = 32
                            mem[_29756 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_29582)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _29756 + ceil32(return_data.size) + 328] = mem[s + _29756 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_29756 + ceil32(return_data.size) + 396] = 0
                            call address(_29582).mem[_29756 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_29756 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_29756 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_29756 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _29756 + ceil32(return_data.size) + 396] = mem[idx + _29756 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_29756 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _29756 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_29756 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_29756 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _29756 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _29756 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_29756 + ceil32(return_data.size) + 360] == bool(mem[_29756 + ceil32(return_data.size) + 360])
                                    if not mem[_29756 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_29756 + 164] = return_data.size
                        mem[_29756 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_29756 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_29756 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _29756 + ceil32(return_data.size) + 233] = mem[idx + _29756 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_29756 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_29756 + 196] == bool(mem[_29756 + 196])
                            if not mem[_29756 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_29756 + ceil32(return_data.size) + 169] = this.address
                        mem[_29756 + ceil32(return_data.size) + 201] = address(_29594)
                        require ext_code.size(address(_29582))
                        staticcall address(_29582).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_29594)
                        mem[_29756 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_29594)
                        mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                        mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                        mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_29594) << 64
                        mem[64] = _29756 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                        mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                        mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_29582)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _29756 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _29756 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                        call address(_29582).mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _29756 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _29756 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[64] = _29756 + (4 * ceil32(return_data.size)) + 330
                        mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                        mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_29756 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_29756 + (4 * ceil32(return_data.size)) + 334] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _29756 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _29756 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_29756 + (4 * ceil32(return_data.size)) + 398]
                        if not return_data.size:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require return_data.size >= 32
                        require mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                        if mem[_29756 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_29756 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_29756 + (4 * ceil32(return_data.size)) + 334] = 32
                        mem[_29756 + (4 * ceil32(return_data.size)) + 366] = 42
                        mem[_29756 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                        mem[_29756 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                        revert with memory
                          from _29756 + (4 * ceil32(return_data.size)) + 330
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            else:
                s = 0
                idx = cd[164] + 36
                while cd[164] + (32 * ('cd', 164).length) + 36 > idx:
                    sub_e29f7bc1[s].field_0 = address(cd[idx])
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                while sub_e29f7bc1.length > idx:
                    sub_e29f7bc1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[96] = ('cd', 100).length
                mem[128 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[64] = (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + 160
                mem[(32 * ('cd', 100).length) + 128] = ('cd', 132).length
                mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 160] = 0
                platformAddress = address(cd[4])
                vaultAddress = address(cd[36])
                rewardToken.length = ('cd', 68).length
                mem[0] = 57
                if not ('cd', 68).length:
                    idx = 0
                    while rewardToken.length > idx:
                        rewardToken[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if ('cd', 100).length != ('cd', 132).length:
                        revert with 0, 'Invalid input arrays'
                    idx = 0
                    while idx < ('cd', 100).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _29584 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * ('cd', 100).length) + 128]:
                            revert with 0, 50
                        _29595 = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                        if address(assetToPToken[mem[(32 * idx) + 140 len 20]]):
                            revert with 0, 'pToken already set'
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Invalid addresses'
                        if not mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]:
                            revert with 0, 'Invalid addresses'
                        mem[32] = 53
                        address(assetToPToken[address(mem[(32 * idx) + 128])]) = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        stor54.length++
                        mem[0] = 54
                        stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        emit PTokenAdded(mem[mem[64]], address(_29584));
                        _29757 = mem[64]
                        mem[mem[64] + 36] = address(_29595)
                        mem[mem[64] + 68] = 0
                        _29787 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_29787 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_29787 + 36 len 28]
                        mem[64] = _29757 + 164
                        mem[_29757 + 100] = 32
                        mem[_29757 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_29584)):
                            revert with 0, 'Address: call to non-contract'
                        _29883 = mem[_29787]
                        s = 0
                        while s < _29883:
                            mem[s + _29757 + 164] = mem[s + _29787 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_29883) > _29883:
                            mem[_29757 + _29883 + 164] = 0
                        call address(_29584).mem[_29757 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_29757 + 168 len _29883 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_29757 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_29757 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _29757 + 232] = mem[idx + _29757 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_29757 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_29757 + 168] = this.address
                            mem[_29757 + 200] = address(_29595)
                            require ext_code.size(address(_29584))
                            staticcall address(_29584).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_29595)
                            mem[_29757 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_29757 + ceil32(return_data.size) + 200] = address(_29595)
                            mem[_29757 + ceil32(return_data.size) + 232] = -1
                            mem[_29757 + ceil32(return_data.size) + 164] = 68
                            mem[_29757 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_29595) << 64
                            mem[64] = _29757 + ceil32(return_data.size) + 328
                            mem[_29757 + ceil32(return_data.size) + 264] = 32
                            mem[_29757 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_29584)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _29757 + ceil32(return_data.size) + 328] = mem[s + _29757 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_29757 + ceil32(return_data.size) + 396] = 0
                            call address(_29584).mem[_29757 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_29757 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_29757 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_29757 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _29757 + ceil32(return_data.size) + 396] = mem[idx + _29757 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_29757 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _29757 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_29757 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_29757 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _29757 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _29757 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_29757 + ceil32(return_data.size) + 360] == bool(mem[_29757 + ceil32(return_data.size) + 360])
                                    if not mem[_29757 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_29757 + 164] = return_data.size
                        mem[_29757 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_29757 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_29757 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _29757 + ceil32(return_data.size) + 233] = mem[idx + _29757 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_29757 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_29757 + 196] == bool(mem[_29757 + 196])
                            if not mem[_29757 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_29757 + ceil32(return_data.size) + 169] = this.address
                        mem[_29757 + ceil32(return_data.size) + 201] = address(_29595)
                        require ext_code.size(address(_29584))
                        staticcall address(_29584).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_29595)
                        mem[_29757 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_29595)
                        mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                        mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                        mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_29595) << 64
                        mem[64] = _29757 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                        mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                        mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_29584)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _29757 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _29757 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                        call address(_29584).mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _29757 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _29757 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[64] = _29757 + (4 * ceil32(return_data.size)) + 330
                        mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                        mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_29757 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_29757 + (4 * ceil32(return_data.size)) + 334] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _29757 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _29757 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_29757 + (4 * ceil32(return_data.size)) + 398]
                        if not return_data.size:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require return_data.size >= 32
                        require mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                        if mem[_29757 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_29757 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_29757 + (4 * ceil32(return_data.size)) + 334] = 32
                        mem[_29757 + (4 * ceil32(return_data.size)) + 366] = 42
                        mem[_29757 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                        mem[_29757 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                        revert with memory
                          from _29757 + (4 * ceil32(return_data.size)) + 330
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                else:
                    s = 0
                    idx = cd[68] + 36
                    while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
                        rewardToken[s].field_0 = address(cd[idx])
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                    while rewardToken.length > idx:
                        rewardToken[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if ('cd', 100).length != ('cd', 132).length:
                        revert with 0, 'Invalid input arrays'
                    idx = 0
                    while idx < ('cd', 100).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _36894 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * ('cd', 100).length) + 128]:
                            revert with 0, 50
                        _36899 = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                        if address(assetToPToken[mem[(32 * idx) + 140 len 20]]):
                            revert with 0, 'pToken already set'
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Invalid addresses'
                        if not mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]:
                            revert with 0, 'Invalid addresses'
                        mem[32] = 53
                        address(assetToPToken[address(mem[(32 * idx) + 128])]) = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        stor54.length++
                        mem[0] = 54
                        stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        emit PTokenAdded(mem[mem[64]], address(_36894));
                        _37596 = mem[64]
                        mem[mem[64] + 36] = address(_36899)
                        mem[mem[64] + 68] = 0
                        _37740 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_37740 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_37740 + 36 len 28]
                        mem[64] = _37596 + 164
                        mem[_37596 + 100] = 32
                        mem[_37596 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_36894)):
                            revert with 0, 'Address: call to non-contract'
                        _38211 = mem[_37740]
                        s = 0
                        while s < _38211:
                            mem[s + _37596 + 164] = mem[s + _37740 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_38211) > _38211:
                            mem[_37596 + _38211 + 164] = 0
                        call address(_36894).mem[_37596 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_37596 + 168 len _38211 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_37596 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_37596 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _37596 + 232] = mem[idx + _37596 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_37596 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_37596 + 168] = this.address
                            mem[_37596 + 200] = address(_36899)
                            require ext_code.size(address(_36894))
                            staticcall address(_36894).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_36899)
                            mem[_37596 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_37596 + ceil32(return_data.size) + 200] = address(_36899)
                            mem[_37596 + ceil32(return_data.size) + 232] = -1
                            mem[_37596 + ceil32(return_data.size) + 164] = 68
                            mem[_37596 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_36899) << 64
                            mem[64] = _37596 + ceil32(return_data.size) + 328
                            mem[_37596 + ceil32(return_data.size) + 264] = 32
                            mem[_37596 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_36894)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _37596 + ceil32(return_data.size) + 328] = mem[s + _37596 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_37596 + ceil32(return_data.size) + 396] = 0
                            call address(_36894).mem[_37596 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_37596 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_37596 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_37596 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _37596 + ceil32(return_data.size) + 396] = mem[idx + _37596 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_37596 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _37596 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_37596 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_37596 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _37596 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _37596 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_37596 + ceil32(return_data.size) + 360] == bool(mem[_37596 + ceil32(return_data.size) + 360])
                                    if not mem[_37596 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_37596 + 164] = return_data.size
                        mem[_37596 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_37596 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_37596 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _37596 + ceil32(return_data.size) + 233] = mem[idx + _37596 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_37596 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_37596 + 196] == bool(mem[_37596 + 196])
                            if not mem[_37596 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_37596 + ceil32(return_data.size) + 169] = this.address
                        mem[_37596 + ceil32(return_data.size) + 201] = address(_36899)
                        require ext_code.size(address(_36894))
                        staticcall address(_36894).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_36899)
                        mem[_37596 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_36899)
                        mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                        mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                        mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_36899) << 64
                        mem[64] = _37596 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                        mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                        mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_36894)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _37596 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _37596 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                        call address(_36894).mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _37596 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _37596 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[64] = _37596 + (4 * ceil32(return_data.size)) + 330
                        mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                        mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_37596 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_37596 + (4 * ceil32(return_data.size)) + 334] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _37596 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _37596 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_37596 + (4 * ceil32(return_data.size)) + 398]
                        if not return_data.size:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require return_data.size >= 32
                        require mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                        if mem[_37596 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_37596 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_37596 + (4 * ceil32(return_data.size)) + 334] = 32
                        mem[_37596 + (4 * ceil32(return_data.size)) + 366] = 42
                        mem[_37596 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                        mem[_37596 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                        revert with memory
                          from _37596 + (4 * ceil32(return_data.size)) + 330
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        else:
            uint16(stor0.field_0) = 257
            if ('cd', 164).length != ('cd', 68).length:
                revert with 0, 'not 1:1 rewards-to-incentives'
            sub_e29f7bc1.length = ('cd', 164).length
            if not ('cd', 164).length:
                idx = 0
                while sub_e29f7bc1.length > idx:
                    sub_e29f7bc1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[96] = ('cd', 100).length
                mem[128 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[64] = (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + 160
                mem[(32 * ('cd', 100).length) + 128] = ('cd', 132).length
                mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 160] = 0
                platformAddress = address(cd[4])
                vaultAddress = address(cd[36])
                rewardToken.length = ('cd', 68).length
                mem[0] = 57
                if not ('cd', 68).length:
                    idx = 0
                    while rewardToken.length > idx:
                        rewardToken[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if ('cd', 100).length != ('cd', 132).length:
                        revert with 0, 'Invalid input arrays'
                    idx = 0
                    while idx < ('cd', 100).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _22208 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * ('cd', 100).length) + 128]:
                            revert with 0, 50
                        _22220 = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                        if address(assetToPToken[mem[(32 * idx) + 140 len 20]]):
                            revert with 0, 'pToken already set'
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Invalid addresses'
                        if not mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]:
                            revert with 0, 'Invalid addresses'
                        mem[32] = 53
                        address(assetToPToken[address(mem[(32 * idx) + 128])]) = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        stor54.length++
                        mem[0] = 54
                        stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        emit PTokenAdded(mem[mem[64]], address(_22208));
                        _22341 = mem[64]
                        mem[mem[64] + 36] = address(_22220)
                        mem[mem[64] + 68] = 0
                        _22371 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_22371 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_22371 + 36 len 28]
                        mem[64] = _22341 + 164
                        mem[_22341 + 100] = 32
                        mem[_22341 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_22208)):
                            revert with 0, 'Address: call to non-contract'
                        _22430 = mem[_22371]
                        s = 0
                        while s < _22430:
                            mem[s + _22341 + 164] = mem[s + _22371 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_22430) > _22430:
                            mem[_22341 + _22430 + 164] = 0
                        call address(_22208).mem[_22341 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_22341 + 168 len _22430 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_22341 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_22341 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _22341 + 232] = mem[idx + _22341 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_22341 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_22341 + 168] = this.address
                            mem[_22341 + 200] = address(_22220)
                            require ext_code.size(address(_22208))
                            staticcall address(_22208).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_22220)
                            mem[_22341 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_22341 + ceil32(return_data.size) + 200] = address(_22220)
                            mem[_22341 + ceil32(return_data.size) + 232] = -1
                            mem[_22341 + ceil32(return_data.size) + 164] = 68
                            mem[_22341 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_22220) << 64
                            mem[64] = _22341 + ceil32(return_data.size) + 328
                            mem[_22341 + ceil32(return_data.size) + 264] = 32
                            mem[_22341 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_22208)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _22341 + ceil32(return_data.size) + 328] = mem[s + _22341 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_22341 + ceil32(return_data.size) + 396] = 0
                            call address(_22208).mem[_22341 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_22341 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_22341 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_22341 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _22341 + ceil32(return_data.size) + 396] = mem[idx + _22341 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_22341 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _22341 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_22341 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_22341 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _22341 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _22341 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_22341 + ceil32(return_data.size) + 360] == bool(mem[_22341 + ceil32(return_data.size) + 360])
                                    if not mem[_22341 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_22341 + 164] = return_data.size
                        mem[_22341 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_22341 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_22341 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _22341 + ceil32(return_data.size) + 233] = mem[idx + _22341 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_22341 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_22341 + 196] == bool(mem[_22341 + 196])
                            if not mem[_22341 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_22341 + ceil32(return_data.size) + 169] = this.address
                        mem[_22341 + ceil32(return_data.size) + 201] = address(_22220)
                        require ext_code.size(address(_22208))
                        staticcall address(_22208).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_22220)
                        mem[_22341 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_22220)
                        mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                        mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                        mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_22220) << 64
                        mem[64] = _22341 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                        mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                        mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_22208)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _22341 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _22341 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                        call address(_22208).mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _22341 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _22341 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[64] = _22341 + (4 * ceil32(return_data.size)) + 330
                        mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                        mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_22341 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_22341 + (4 * ceil32(return_data.size)) + 334] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _22341 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _22341 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_22341 + (4 * ceil32(return_data.size)) + 398]
                        if not return_data.size:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require return_data.size >= 32
                        require mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                        if mem[_22341 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_22341 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_22341 + (4 * ceil32(return_data.size)) + 334] = 32
                        mem[_22341 + (4 * ceil32(return_data.size)) + 366] = 42
                        mem[_22341 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                        mem[_22341 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                        revert with memory
                          from _22341 + (4 * ceil32(return_data.size)) + 330
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                else:
                    s = 0
                    idx = cd[68] + 36
                    while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
                        rewardToken[s].field_0 = address(cd[idx])
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                    while rewardToken.length > idx:
                        rewardToken[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if ('cd', 100).length != ('cd', 132).length:
                        revert with 0, 'Invalid input arrays'
                    idx = 0
                    while idx < ('cd', 100).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _29586 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * ('cd', 100).length) + 128]:
                            revert with 0, 50
                        _29598 = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                        if address(assetToPToken[mem[(32 * idx) + 140 len 20]]):
                            revert with 0, 'pToken already set'
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Invalid addresses'
                        if not mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]:
                            revert with 0, 'Invalid addresses'
                        mem[32] = 53
                        address(assetToPToken[address(mem[(32 * idx) + 128])]) = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        stor54.length++
                        mem[0] = 54
                        stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        emit PTokenAdded(mem[mem[64]], address(_29586));
                        _29761 = mem[64]
                        mem[mem[64] + 36] = address(_29598)
                        mem[mem[64] + 68] = 0
                        _29800 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_29800 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_29800 + 36 len 28]
                        mem[64] = _29761 + 164
                        mem[_29761 + 100] = 32
                        mem[_29761 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_29586)):
                            revert with 0, 'Address: call to non-contract'
                        _29894 = mem[_29800]
                        s = 0
                        while s < _29894:
                            mem[s + _29761 + 164] = mem[s + _29800 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_29894) > _29894:
                            mem[_29761 + _29894 + 164] = 0
                        call address(_29586).mem[_29761 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_29761 + 168 len _29894 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_29761 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_29761 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _29761 + 232] = mem[idx + _29761 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_29761 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_29761 + 168] = this.address
                            mem[_29761 + 200] = address(_29598)
                            require ext_code.size(address(_29586))
                            staticcall address(_29586).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_29598)
                            mem[_29761 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_29761 + ceil32(return_data.size) + 200] = address(_29598)
                            mem[_29761 + ceil32(return_data.size) + 232] = -1
                            mem[_29761 + ceil32(return_data.size) + 164] = 68
                            mem[_29761 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_29598) << 64
                            mem[64] = _29761 + ceil32(return_data.size) + 328
                            mem[_29761 + ceil32(return_data.size) + 264] = 32
                            mem[_29761 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_29586)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _29761 + ceil32(return_data.size) + 328] = mem[s + _29761 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_29761 + ceil32(return_data.size) + 396] = 0
                            call address(_29586).mem[_29761 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_29761 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_29761 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_29761 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _29761 + ceil32(return_data.size) + 396] = mem[idx + _29761 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_29761 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _29761 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_29761 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_29761 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _29761 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _29761 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_29761 + ceil32(return_data.size) + 360] == bool(mem[_29761 + ceil32(return_data.size) + 360])
                                    if not mem[_29761 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_29761 + 164] = return_data.size
                        mem[_29761 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_29761 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_29761 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _29761 + ceil32(return_data.size) + 233] = mem[idx + _29761 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_29761 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_29761 + 196] == bool(mem[_29761 + 196])
                            if not mem[_29761 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_29761 + ceil32(return_data.size) + 169] = this.address
                        mem[_29761 + ceil32(return_data.size) + 201] = address(_29598)
                        require ext_code.size(address(_29586))
                        staticcall address(_29586).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_29598)
                        mem[_29761 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_29598)
                        mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                        mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                        mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_29598) << 64
                        mem[64] = _29761 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                        mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                        mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_29586)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _29761 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _29761 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                        call address(_29586).mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _29761 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _29761 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[64] = _29761 + (4 * ceil32(return_data.size)) + 330
                        mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                        mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_29761 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_29761 + (4 * ceil32(return_data.size)) + 334] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _29761 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _29761 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_29761 + (4 * ceil32(return_data.size)) + 398]
                        if not return_data.size:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require return_data.size >= 32
                        require mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                        if mem[_29761 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_29761 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_29761 + (4 * ceil32(return_data.size)) + 334] = 32
                        mem[_29761 + (4 * ceil32(return_data.size)) + 366] = 42
                        mem[_29761 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                        mem[_29761 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                        revert with memory
                          from _29761 + (4 * ceil32(return_data.size)) + 330
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
            else:
                s = 0
                idx = cd[164] + 36
                while cd[164] + (32 * ('cd', 164).length) + 36 > idx:
                    sub_e29f7bc1[s].field_0 = address(cd[idx])
                    s = s + 1
                    idx = idx + 32
                    continue 
                idx = Mask(251, 0, (32 * ('cd', 164).length) + 31) >> 5
                while sub_e29f7bc1.length > idx:
                    sub_e29f7bc1[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                mem[96] = ('cd', 100).length
                mem[128 len 32 * ('cd', 100).length] = call.data[cd[100] + 36 len 32 * ('cd', 100).length]
                mem[64] = (32 * ('cd', 132).length) + (32 * ('cd', 100).length) + 160
                mem[(32 * ('cd', 100).length) + 128] = ('cd', 132).length
                mem[(32 * ('cd', 100).length) + 160 len 32 * ('cd', 132).length] = call.data[cd[132] + 36 len 32 * ('cd', 132).length]
                mem[(32 * ('cd', 100).length) + (32 * ('cd', 132).length) + 160] = 0
                platformAddress = address(cd[4])
                vaultAddress = address(cd[36])
                rewardToken.length = ('cd', 68).length
                mem[0] = 57
                if not ('cd', 68).length:
                    idx = 0
                    while rewardToken.length > idx:
                        rewardToken[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if ('cd', 100).length != ('cd', 132).length:
                        revert with 0, 'Invalid input arrays'
                    idx = 0
                    while idx < ('cd', 100).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _29588 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * ('cd', 100).length) + 128]:
                            revert with 0, 50
                        _29599 = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                        if address(assetToPToken[mem[(32 * idx) + 140 len 20]]):
                            revert with 0, 'pToken already set'
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Invalid addresses'
                        if not mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]:
                            revert with 0, 'Invalid addresses'
                        mem[32] = 53
                        address(assetToPToken[address(mem[(32 * idx) + 128])]) = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        stor54.length++
                        mem[0] = 54
                        stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        emit PTokenAdded(mem[mem[64]], address(_29588));
                        _29762 = mem[64]
                        mem[mem[64] + 36] = address(_29599)
                        mem[mem[64] + 68] = 0
                        _29802 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_29802 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_29802 + 36 len 28]
                        mem[64] = _29762 + 164
                        mem[_29762 + 100] = 32
                        mem[_29762 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_29588)):
                            revert with 0, 'Address: call to non-contract'
                        _29896 = mem[_29802]
                        s = 0
                        while s < _29896:
                            mem[s + _29762 + 164] = mem[s + _29802 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_29896) > _29896:
                            mem[_29762 + _29896 + 164] = 0
                        call address(_29588).mem[_29762 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_29762 + 168 len _29896 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_29762 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_29762 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _29762 + 232] = mem[idx + _29762 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_29762 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_29762 + 168] = this.address
                            mem[_29762 + 200] = address(_29599)
                            require ext_code.size(address(_29588))
                            staticcall address(_29588).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_29599)
                            mem[_29762 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_29762 + ceil32(return_data.size) + 200] = address(_29599)
                            mem[_29762 + ceil32(return_data.size) + 232] = -1
                            mem[_29762 + ceil32(return_data.size) + 164] = 68
                            mem[_29762 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_29599) << 64
                            mem[64] = _29762 + ceil32(return_data.size) + 328
                            mem[_29762 + ceil32(return_data.size) + 264] = 32
                            mem[_29762 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_29588)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _29762 + ceil32(return_data.size) + 328] = mem[s + _29762 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_29762 + ceil32(return_data.size) + 396] = 0
                            call address(_29588).mem[_29762 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_29762 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_29762 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_29762 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _29762 + ceil32(return_data.size) + 396] = mem[idx + _29762 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_29762 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _29762 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_29762 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_29762 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _29762 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _29762 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_29762 + ceil32(return_data.size) + 360] == bool(mem[_29762 + ceil32(return_data.size) + 360])
                                    if not mem[_29762 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_29762 + 164] = return_data.size
                        mem[_29762 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_29762 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_29762 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _29762 + ceil32(return_data.size) + 233] = mem[idx + _29762 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_29762 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_29762 + 196] == bool(mem[_29762 + 196])
                            if not mem[_29762 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_29762 + ceil32(return_data.size) + 169] = this.address
                        mem[_29762 + ceil32(return_data.size) + 201] = address(_29599)
                        require ext_code.size(address(_29588))
                        staticcall address(_29588).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_29599)
                        mem[_29762 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_29599)
                        mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                        mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                        mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_29599) << 64
                        mem[64] = _29762 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                        mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                        mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_29588)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _29762 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _29762 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                        call address(_29588).mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _29762 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _29762 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[64] = _29762 + (4 * ceil32(return_data.size)) + 330
                        mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                        mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_29762 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_29762 + (4 * ceil32(return_data.size)) + 334] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _29762 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _29762 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_29762 + (4 * ceil32(return_data.size)) + 398]
                        if not return_data.size:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require return_data.size >= 32
                        require mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                        if mem[_29762 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_29762 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_29762 + (4 * ceil32(return_data.size)) + 334] = 32
                        mem[_29762 + (4 * ceil32(return_data.size)) + 366] = 42
                        mem[_29762 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                        mem[_29762 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                        revert with memory
                          from _29762 + (4 * ceil32(return_data.size)) + 330
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
                else:
                    s = 0
                    idx = cd[68] + 36
                    while cd[68] + (32 * ('cd', 68).length) + 36 > idx:
                        rewardToken[s].field_0 = address(cd[idx])
                        s = s + 1
                        idx = idx + 32
                        continue 
                    idx = Mask(251, 0, (32 * ('cd', 68).length) + 31) >> 5
                    while rewardToken.length > idx:
                        rewardToken[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if ('cd', 100).length != ('cd', 132).length:
                        revert with 0, 'Invalid input arrays'
                    idx = 0
                    while idx < ('cd', 100).length:
                        if idx >= mem[96]:
                            revert with 0, 50
                        _36896 = mem[(32 * idx) + 128]
                        if idx >= mem[(32 * ('cd', 100).length) + 128]:
                            revert with 0, 50
                        _36900 = mem[(32 * idx) + (32 * ('cd', 100).length) + 160]
                        if address(assetToPToken[mem[(32 * idx) + 140 len 20]]):
                            revert with 0, 'pToken already set'
                        if not mem[(32 * idx) + 140 len 20]:
                            revert with 0, 'Invalid addresses'
                        if not mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]:
                            revert with 0, 'Invalid addresses'
                        mem[32] = 53
                        address(assetToPToken[address(mem[(32 * idx) + 128])]) = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        stor54.length++
                        mem[0] = 54
                        stor4A11[stor54.length] = mem[(32 * idx) + 140 len 20]
                        mem[mem[64]] = mem[(32 * idx) + (32 * ('cd', 100).length) + 172 len 20]
                        emit PTokenAdded(mem[mem[64]], address(_36896));
                        _37617 = mem[64]
                        mem[mem[64] + 36] = address(_36900)
                        mem[mem[64] + 68] = 0
                        _37802 = mem[64]
                        mem[mem[64]] = 68
                        mem[64] = mem[64] + 100
                        mem[_37802 + 32] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or mem[_37802 + 36 len 28]
                        mem[64] = _37617 + 164
                        mem[_37617 + 100] = 32
                        mem[_37617 + 132] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_36896)):
                            revert with 0, 'Address: call to non-contract'
                        _38261 = mem[_37802]
                        s = 0
                        while s < _38261:
                            mem[s + _37617 + 164] = mem[s + _37802 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_38261) > _38261:
                            mem[_37617 + _38261 + 164] = 0
                        call address(_36896).mem[_37617 + 164 len 4] with:
                             gas gas_remaining wei
                            args mem[_37617 + 168 len _38261 - 4]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_37617 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_37617 + 168] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _37617 + 232] = mem[idx + _37617 + 132]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_37617 + 232]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            mem[_37617 + 168] = this.address
                            mem[_37617 + 200] = address(_36900)
                            require ext_code.size(address(_36896))
                            staticcall address(_36896).0xdd62ed3e with:
                                    gas gas_remaining wei
                                   args this.address, address(_36900)
                            mem[_37617 + 164] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0]:
                                revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                            mem[_37617 + ceil32(return_data.size) + 200] = address(_36900)
                            mem[_37617 + ceil32(return_data.size) + 232] = -1
                            mem[_37617 + ceil32(return_data.size) + 164] = 68
                            mem[_37617 + ceil32(return_data.size) + 196] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_36900) << 64
                            mem[64] = _37617 + ceil32(return_data.size) + 328
                            mem[_37617 + ceil32(return_data.size) + 264] = 32
                            mem[_37617 + ceil32(return_data.size) + 296] = 'SafeERC20: low-level call failed'
                            if not ext_code.size(address(_36896)):
                                revert with 0, 'Address: call to non-contract'
                            s = 0
                            while s < 68:
                                mem[s + _37617 + ceil32(return_data.size) + 328] = mem[s + _37617 + ceil32(return_data.size) + 196]
                                s = s + 32
                                continue 
                            mem[_37617 + ceil32(return_data.size) + 396] = 0
                            call address(_36896).mem[_37617 + ceil32(return_data.size) + 328 len 4] with:
                                 gas gas_remaining wei
                                args mem[_37617 + ceil32(return_data.size) + 332 len 64]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_37617 + ceil32(return_data.size) + 328] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_37617 + ceil32(return_data.size) + 332] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _37617 + ceil32(return_data.size) + 396] = mem[idx + _37617 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_37617 + ceil32(return_data.size) + 396]
                                if mem[96]:
                                    require mem[96] >= 32
                                    require mem[128] == bool(mem[128])
                                    if not mem[128]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                mem[64] = _37617 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                                mem[_37617 + ceil32(return_data.size) + 328] = return_data.size
                                mem[_37617 + ceil32(return_data.size) + 360 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _37617 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _37617 + ceil32(return_data.size) + 296]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                                if return_data.size:
                                    require return_data.size >= 32
                                    require mem[_37617 + ceil32(return_data.size) + 360] == bool(mem[_37617 + ceil32(return_data.size) + 360])
                                    if not mem[_37617 + ceil32(return_data.size) + 360]:
                                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_37617 + 164] = return_data.size
                        mem[_37617 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_37617 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_37617 + ceil32(return_data.size) + 169] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _37617 + ceil32(return_data.size) + 233] = mem[idx + _37617 + 132]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_37617 + ceil32(return_data.size) + 233]
                        if return_data.size:
                            require return_data.size >= 32
                            require mem[_37617 + 196] == bool(mem[_37617 + 196])
                            if not mem[_37617 + 196]:
                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        mem[_37617 + ceil32(return_data.size) + 169] = this.address
                        mem[_37617 + ceil32(return_data.size) + 201] = address(_36900)
                        require ext_code.size(address(_36896))
                        staticcall address(_36896).0xdd62ed3e with:
                                gas gas_remaining wei
                               args this.address, address(_36900)
                        mem[_37617 + ceil32(return_data.size) + 165] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            revert with 0, 'SafeERC20: approve from non-zero to non-zero allowance'
                        mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 201] = address(_36900)
                        mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 233] = -1
                        mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 165] = 68
                        mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 197] = 0x95ea7b300000000000000000000000000000000000000000000000000000000 or address(_36900) << 64
                        mem[64] = _37617 + ceil32(return_data.size) + ceil32(return_data.size) + 329
                        mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 265] = 32
                        mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 297] = 'SafeERC20: low-level call failed'
                        if not ext_code.size(address(_36896)):
                            revert with 0, 'Address: call to non-contract'
                        s = 0
                        while s < 68:
                            mem[s + _37617 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = mem[s + _37617 + ceil32(return_data.size) + ceil32(return_data.size) + 197]
                            s = s + 32
                            continue 
                        mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = 0
                        call address(_36896).mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 329 len 4] with:
                             gas gas_remaining wei
                            args mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 333 len 64]
                        if not return_data.size:
                            if not ext_call.success:
                                if mem[96]:
                                    revert with memory
                                      from 128
                                       len mem[96]
                                mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 333] = 32
                                idx = 0
                                while idx < 32:
                                    mem[idx + _37617 + ceil32(return_data.size) + ceil32(return_data.size) + 397] = mem[idx + _37617 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 32, mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 397]
                            if mem[96]:
                                require mem[96] >= 32
                                require mem[128] == bool(mem[128])
                                if not mem[128]:
                                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[64] = _37617 + (4 * ceil32(return_data.size)) + 330
                        mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 329] = return_data.size
                        mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 361 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_37617 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_37617 + (4 * ceil32(return_data.size)) + 334] = 32
                            idx = 0
                            while idx < 32:
                                mem[idx + _37617 + (4 * ceil32(return_data.size)) + 398] = mem[idx + _37617 + ceil32(return_data.size) + ceil32(return_data.size) + 297]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 32, mem[_37617 + (4 * ceil32(return_data.size)) + 398]
                        if not return_data.size:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        require return_data.size >= 32
                        require mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 361] == bool(mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 361])
                        if mem[_37617 + ceil32(return_data.size) + ceil32(return_data.size) + 361]:
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            continue 
                        mem[_37617 + (4 * ceil32(return_data.size)) + 330] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_37617 + (4 * ceil32(return_data.size)) + 334] = 32
                        mem[_37617 + (4 * ceil32(return_data.size)) + 366] = 42
                        mem[_37617 + (4 * ceil32(return_data.size)) + 398] = 'SafeERC20: ERC20 operation did n'
                        mem[_37617 + (4 * ceil32(return_data.size)) + 430] = 0x6f74207375636365656400000000000000000000000000000000000000000000
                        revert with memory
                          from _37617 + (4 * ceil32(return_data.size)) + 330
                           len (4 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}



}
