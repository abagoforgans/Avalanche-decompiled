contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
address vestTokenAddress;
address stakingPoolAddress;
uint256 depositId;
array of struct allDepositIds;
array of struct depositsByWithdrawal;
mapping of struct lockedToken;
mapping of uint256 tokenBalanceBy;
mapping of uint256 tokenFees;
mapping of uint256 sub_0776a890;
mapping of uint8 stor11;
uint256 sub_07663f28;
uint256 sub_c7bb27c2;
uint256 minStakeAmount;

function sub_07663f28(?) payable {
    return sub_07663f28
}

function sub_0776a890(?) payable {
    require calldata.size - 4 >= 32
    return sub_0776a890[arg1]
}

function stakingPool() payable {
    return stakingPoolAddress
}

function getTokenBalanceByAddress(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return tokenBalanceBy[address(arg1)][address(arg2)]
}

function tokenFees(address arg1) payable {
    require calldata.size - 4 >= 32
    return tokenFees[arg1]
}

function depositsByWithdrawalAddress(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 < depositsByWithdrawal[arg1].field_0
    return depositsByWithdrawal[arg1][arg2].field_0
}

function getDepositDetails(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lockedToken[arg1].field_0, 
           lockedToken[arg1].field_256,
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(lockedToken[arg1].field_1024)
}

function owner() payable {
    return owner
}

function depositId() payable {
    return depositId
}

function isClaimed(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor11[arg1][arg2])
}

function vestToken() payable {
    return vestTokenAddress
}

function walletTokenBalance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return tokenBalanceBy[arg1][arg2]
}

function lockedToken(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return lockedToken[arg1].field_0, 
           lockedToken[arg1].field_256,
           lockedToken[arg1].field_512,
           lockedToken[arg1].field_768,
           bool(lockedToken[arg1].field_1024)
}

function sub_c7bb27c2(?) payable {
    return sub_c7bb27c2
}

function allDepositIds(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < allDepositIds.length
    return allDepositIds[arg1].field_0
}

function pendingOwner() payable {
    return pendingOwner
}

function minStakeAmount() payable {
    return minStakeAmount
}

function _fallback() payable {
    revert
}

function sub_ec7a2ce6(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    vestTokenAddress = arg1
}

function sub_71e108cc(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stakingPoolAddress = arg1
}

function setMinStakeAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    minStakeAmount = arg1
}

function sub_93e60845(?) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    sub_07663f28 = arg1
    sub_c7bb27c2 = arg2
}

function claimOwnership() payable {
    require msg.sender == pendingOwner
    owner = pendingOwner
    pendingOwner = 0
    emit LogOwnerShipTransferred(pendingOwner, 0);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pendingOwner = arg1
    emit LogOwnerShipTransferInitiated(owner, arg1);
}

function getTotalTokenBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getAllDepositIds() payable {
    if not allDepositIds.length:
        mem[(32 * allDepositIds.length) + 128] = 32
        mem[(32 * allDepositIds.length) + 160] = allDepositIds.length
        mem[(32 * allDepositIds.length) + 192 len floor32(allDepositIds.length)] = mem[128 len floor32(allDepositIds.length)]
        return memory
          from (32 * allDepositIds.length) + 128
           len (96 * allDepositIds.length) + 64
    mem[128] = uint256(allDepositIds.field_0)
    idx = 128
    s = 0
    while (32 * allDepositIds.length) + 96 > idx:
        mem[idx + 32] = allDepositIds[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * allDepositIds.length) + 192 len floor32(allDepositIds.length)] = mem[128 len floor32(allDepositIds.length)]
    return Array(len=allDepositIds.length, data=mem[128 len floor32(allDepositIds.length)], mem[(32 * allDepositIds.length) + floor32(allDepositIds.length) + 192 len (32 * allDepositIds.length) - floor32(allDepositIds.length)]), 
}

function getDepositsByWithdrawalAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if not depositsByWithdrawal[address(arg1)].field_0:
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 128] = 32
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 160] = depositsByWithdrawal[address(arg1)].field_0
        mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 192 len floor32(depositsByWithdrawal[address(arg1)].field_0)] = mem[128 len floor32(depositsByWithdrawal[address(arg1)].field_0)]
        return memory
          from (32 * depositsByWithdrawal[address(arg1)].field_0) + 128
           len (96 * depositsByWithdrawal[address(arg1)].field_0) + 64
    mem[128] = depositsByWithdrawal[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * depositsByWithdrawal[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = depositsByWithdrawal[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + 192 len floor32(depositsByWithdrawal[address(arg1)].field_0)] = mem[128 len floor32(depositsByWithdrawal[address(arg1)].field_0)]
    return Array(len=depositsByWithdrawal[address(arg1)].field_0, data=mem[128 len floor32(depositsByWithdrawal[address(arg1)].field_0)], mem[(32 * depositsByWithdrawal[address(arg1)].field_0) + floor32(depositsByWithdrawal[address(arg1)].field_0) + 192 len (32 * depositsByWithdrawal[address(arg1)].field_0) - floor32(depositsByWithdrawal[address(arg1)].field_0)]), 
}

function sub_80ac8228(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stakingPoolAddress)
    staticcall stakingPoolAddress.0x87cad0bf with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(vestTokenAddress)
    staticcall vestTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args stakingPoolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_0776a890[address(arg2)] + tokenFees[address(arg2)] < tokenFees[address(arg2)]:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / ext_call.return_data[0])
    if (sub_0776a890[address(arg2)] * ext_call.return_data[0]) + (tokenFees[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != sub_0776a890[address(arg2)] + tokenFees[address(arg2)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero'
    return ((sub_0776a890[address(arg2)] * ext_call.return_data[0]) + (tokenFees[address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0])
}

function withdrawTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if block.timestamp < lockedToken[arg1].field_768:
        revert with 0, 'Tokens are locked'
    if lockedToken[arg1].field_256 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    39,
                    0x7743616e207769746864726177206279207769746864726177616c2041646472657373206f6e6c,
                    mem[203 len 25]
    if lockedToken[arg1].field_1024:
        revert with 0, 'Tokens already withdrawn'
    require ext_code.size(lockedToken[arg1].field_0)
    call lockedToken[arg1].field_0.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, lockedToken[arg1].field_512
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer of tokens failed'
    lockedToken[arg1].field_1024 = 1
    if lockedToken[arg1].field_512 > tokenBalanceBy[stor7[arg1].field_0][msg.sender]:
        revert with 0, 'SafeMath: subtraction overflow'
    tokenBalanceBy[stor7[arg1].field_0][msg.sender] -= lockedToken[arg1].field_512
    idx = 0
    while idx < depositsByWithdrawal[stor7[arg1].field_256].field_0:
        require idx < depositsByWithdrawal[stor7[arg1].field_256].field_0
        if depositsByWithdrawal[stor7[arg1].field_256][idx].field_0 != arg1:
            mem[0] = lockedToken[arg1].field_256
            mem[32] = 6
            idx = idx + 1
            continue 
        s = idx
        while s < depositsByWithdrawal[stor7[arg1].field_256].field_0 - 1:
            require s + 1 < depositsByWithdrawal[stor7[arg1].field_256].field_0
            require s < depositsByWithdrawal[stor7[arg1].field_256].field_0
            depositsByWithdrawal[stor7[arg1].field_256][s].field_0 = depositsByWithdrawal[stor7[arg1].field_256][s].field_256
            mem[0] = lockedToken[arg1].field_256
            mem[32] = 6
            s = s + 1
            continue 
        require depositsByWithdrawal[stor7[arg1].field_256].field_0
        depositsByWithdrawal[stor7[arg1].field_256][depositsByWithdrawal[stor7[arg1].field_256].field_0].field_0 = 0
        depositsByWithdrawal[stor7[arg1].field_256].field_0--
        emit LogWithdrawal(msg.sender, lockedToken[arg1].field_512);
    emit LogWithdrawal(msg.sender, lockedToken[arg1].field_512);
}

function claimFee(address arg1) payable {
    require calldata.size - 4 >= 32
    if stor11[address(arg1)][msg.sender]:
        revert with 0, 'Already claimed'
    if not tokenFees[address(arg1)]:
        revert with 0, 'All distributed'
    require ext_code.size(stakingPoolAddress)
    staticcall stakingPoolAddress.0x87cad0bf with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_code.size(vestTokenAddress)
    staticcall vestTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args stakingPoolAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if sub_0776a890[address(arg1)] + tokenFees[address(arg1)] < tokenFees[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not ext_call.return_data[0]:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        stor11[address(arg1)][msg.sender] = 1
        require ext_code.size(arg1)
        if 0 / ext_call.return_data[0] <= tokenFees[address(arg1)]:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 / ext_call.return_data[0] > tokenFees[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            tokenFees[address(arg1)] -= 0 / ext_call.return_data[0]
            if (0 / ext_call.return_data[0]) + sub_0776a890[address(arg1)] < sub_0776a890[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            sub_0776a890[address(arg1)] += 0 / ext_call.return_data[0]
        else:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, tokenFees[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if tokenFees[address(arg1)] > tokenFees[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            tokenFees[address(arg1)] = 0
            if tokenFees[address(arg1)] + sub_0776a890[address(arg1)] < sub_0776a890[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            sub_0776a890[address(arg1)] += tokenFees[address(arg1)]
    else:
        if (sub_0776a890[address(arg1)] * ext_call.return_data[0]) + (tokenFees[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] != sub_0776a890[address(arg1)] + tokenFees[address(arg1)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero'
        stor11[address(arg1)][msg.sender] = 1
        require ext_code.size(arg1)
        if (sub_0776a890[address(arg1)] * ext_call.return_data[0]) + (tokenFees[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] <= tokenFees[address(arg1)]:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (sub_0776a890[address(arg1)] * ext_call.return_data[0]) + (tokenFees[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if (sub_0776a890[address(arg1)] * ext_call.return_data[0]) + (tokenFees[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0] > tokenFees[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            tokenFees[address(arg1)] -= (sub_0776a890[address(arg1)] * ext_call.return_data[0]) + (tokenFees[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0]
            if ((sub_0776a890[address(arg1)] * ext_call.return_data[0]) + (tokenFees[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0]) + sub_0776a890[address(arg1)] < sub_0776a890[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            sub_0776a890[address(arg1)] += (sub_0776a890[address(arg1)] * ext_call.return_data[0]) + (tokenFees[address(arg1)] * ext_call.return_data[0]) / ext_call.return_data[0]
        else:
            call arg1.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, tokenFees[address(arg1)]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if tokenFees[address(arg1)] > tokenFees[address(arg1)]:
                revert with 0, 'SafeMath: subtraction overflow'
            tokenFees[address(arg1)] = 0
            if tokenFees[address(arg1)] + sub_0776a890[address(arg1)] < sub_0776a890[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            sub_0776a890[address(arg1)] += tokenFees[address(arg1)]
}

function lockTokens(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg3 <= 0:
        revert with 0, 'token amount is Zero'
    if arg4 >= 10^10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0xfe456e74657220616e20756e69782074696d657374616d7020696e207365636f6e64732c206e6f74206d696c697365636f6e64,
                    mem[215 len 13]
    if arg4 < block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x73456e74657220616e20756e69782074696d657374616d7020696e20746865206675747572,
                    mem[201 len 27]
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Approve tokens failed'
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Transfer of tokens failed'
    require ext_code.size(stakingPoolAddress)
    staticcall stakingPoolAddress.0x87cad0bf with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if ext_call.return_data[0] <= minStakeAmount:
        if not arg3:
            if tokenFees[address(arg1)] < tokenFees[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 + tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            tokenBalanceBy[address(arg1)][address(arg2)] += arg3
            depositId++
            lockedToken[stor4 + 1].field_0 = arg1
            lockedToken[stor4 + 1].field_256 = arg2
            lockedToken[stor4 + 1].field_512 = arg3
            lockedToken[stor4 + 1].field_768 = arg4
            lockedToken[stor4 + 1].field_1024 = 0
            allDepositIds.length++
            allDepositIds[allDepositIds.length].field_0 = depositId + 1
            depositsByWithdrawal[address(arg2)].field_0++
            depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
            emit 0xcf32db67: address(arg1), address(arg2), arg3, arg4, depositId + 1
        else:
            if sub_07663f28 * arg3 / arg3 != sub_07663f28:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (sub_07663f28 * arg3 / 10000) + tokenFees[address(arg1)] < tokenFees[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            tokenFees[address(arg1)] += sub_07663f28 * arg3 / 10000
            if sub_07663f28 * arg3 / 10000 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 - (sub_07663f28 * arg3 / 10000) + tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            tokenBalanceBy[address(arg1)][address(arg2)] = arg3 - (sub_07663f28 * arg3 / 10000) + tokenBalanceBy[address(arg1)][address(arg2)]
            depositId++
            lockedToken[stor4 + 1].field_0 = arg1
            lockedToken[stor4 + 1].field_256 = arg2
            lockedToken[stor4 + 1].field_512 = arg3 - (sub_07663f28 * arg3 / 10000)
            lockedToken[stor4 + 1].field_768 = arg4
            lockedToken[stor4 + 1].field_1024 = 0
            allDepositIds.length++
            allDepositIds[allDepositIds.length].field_0 = depositId + 1
            depositsByWithdrawal[address(arg2)].field_0++
            depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
            emit 0xcf32db67: address(arg1), address(arg2), arg3 - (sub_07663f28 * arg3 / 10000), arg4, depositId + 1
    else:
        if not arg3:
            if tokenFees[address(arg1)] < tokenFees[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            if 0 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 + tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            tokenBalanceBy[address(arg1)][address(arg2)] += arg3
            depositId++
            lockedToken[stor4 + 1].field_0 = arg1
            lockedToken[stor4 + 1].field_256 = arg2
            lockedToken[stor4 + 1].field_512 = arg3
            lockedToken[stor4 + 1].field_768 = arg4
            lockedToken[stor4 + 1].field_1024 = 0
            allDepositIds.length++
            allDepositIds[allDepositIds.length].field_0 = depositId + 1
            depositsByWithdrawal[address(arg2)].field_0++
            depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
            emit 0xcf32db67: address(arg1), address(arg2), arg3, arg4, depositId + 1
        else:
            if sub_c7bb27c2 * arg3 / arg3 != sub_c7bb27c2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (sub_c7bb27c2 * arg3 / 10000) + tokenFees[address(arg1)] < tokenFees[address(arg1)]:
                revert with 0, 'SafeMath: addition overflow'
            tokenFees[address(arg1)] += sub_c7bb27c2 * arg3 / 10000
            if sub_c7bb27c2 * arg3 / 10000 > arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg3 - (sub_c7bb27c2 * arg3 / 10000) + tokenBalanceBy[address(arg1)][address(arg2)] < tokenBalanceBy[address(arg1)][address(arg2)]:
                revert with 0, 'SafeMath: addition overflow'
            tokenBalanceBy[address(arg1)][address(arg2)] = arg3 - (sub_c7bb27c2 * arg3 / 10000) + tokenBalanceBy[address(arg1)][address(arg2)]
            depositId++
            lockedToken[stor4 + 1].field_0 = arg1
            lockedToken[stor4 + 1].field_256 = arg2
            lockedToken[stor4 + 1].field_512 = arg3 - (sub_c7bb27c2 * arg3 / 10000)
            lockedToken[stor4 + 1].field_768 = arg4
            lockedToken[stor4 + 1].field_1024 = 0
            allDepositIds.length++
            allDepositIds[allDepositIds.length].field_0 = depositId + 1
            depositsByWithdrawal[address(arg2)].field_0++
            depositsByWithdrawal[address(arg2)][depositsByWithdrawal[address(arg2)].field_0].field_0 = depositId + 1
            emit 0xcf32db67: address(arg1), address(arg2), arg3 - (sub_c7bb27c2 * arg3 / 10000), arg4, depositId + 1
    return (depositId + 1)
}



}
