contract main {




// =====================  Runtime code  =====================


const releasePeriodLength = (730 * 3600)


uint256 stor0;
address adminAddress;
address pendingAdminAddress;
address implementationAddress;
address pendingImplementationAddress;
address dataAdminAddress;
address qiContractAddress;
mapping of uint256 releasePeriods;
mapping of uint256 initialReleasePercentages;
uint256 vestingScheduleEpoch;
mapping of uint256 purchasedTokens;
mapping of uint256 claimedTokens;
mapping of uint256 completedPurchaseRounds;

function dataAdmin() payable {
    return dataAdminAddress
}

function initialReleasePercentages(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return initialReleasePercentages[arg1][arg2]
}

function completedPurchaseRounds(address arg1) payable {
    require calldata.size - 4 >= 32
    return completedPurchaseRounds[arg1]
}

function pendingAdmin() payable {
    return pendingAdminAddress
}

function pendingImplementation() payable {
    return pendingImplementationAddress
}

function implementation() payable {
    return implementationAddress
}

function qiContractAddress() payable {
    return qiContractAddress
}

function vestingScheduleEpoch() payable {
    return vestingScheduleEpoch
}

function releasePeriods(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return releasePeriods[arg1][arg2]
}

function purchasedTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return purchasedTokens[arg1][arg2]
}

function claimedTokens(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return claimedTokens[arg1][arg2]
}

function getRoundClaimedTokenAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return claimedTokens[msg.sender][arg1]
}

function admin() payable {
    return adminAddress
}

function _fallback() payable {
    revert
}

function setDataAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin only'
    dataAdminAddress = arg1
}

function setQiContractAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin only'
    qiContractAddress = arg1
}

function withdrawQi(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin only'
    require ext_code.size(qiContractAddress)
    call qiContractAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getClaimedTokenAmount() payable {
    idx = 0
    s = 0
    while idx < completedPurchaseRounds[msg.sender]:
        _10 = sha3(idx, sha3(msg.sender, 11))
        if claimedTokens[msg.sender][idx] + s < s:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = msg.sender
        mem[32] = 12
        idx = idx + 1
        s = claimedTokens[msg.sender][idx] + s
        continue 
    return (stor[_10] * completedPurchaseRounds[msg.sender])
}

function becomeImplementation(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.0xf851a440 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0xfe4f6e6c792070726f78792061646d696e2063616e206368616e67652074686520696d706c656d656e746174696f,
                    mem[210 len 18]
    require ext_code.size(arg1)
    call arg1.acceptPendingImplementation() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function resetPurchasedTokensByUser(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if adminAddress != msg.sender:
        if not dataAdminAddress:
            revert with 0, 'admin only'
        if dataAdminAddress != msg.sender:
            revert with 0, 'admin only'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        s = 0
        while s < completedPurchaseRounds[mem[(32 * idx) + 140 len 20]]:
            initialReleasePercentages[address(mem[(32 * idx) + 128])][s] = 0
            releasePeriods[address(mem[(32 * idx) + 128])][s] = 0
            purchasedTokens[address(mem[(32 * idx) + 128])][s] = 0
            claimedTokens[address(mem[(32 * idx) + 128])][s] = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 12
            s = s + 1
            continue 
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 12
        completedPurchaseRounds[address(mem[(32 * idx) + 128])] = 0
        idx = idx + 1
        continue 
}

function getRoundClaimableTokenAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= completedPurchaseRounds[address(msg.sender)]:
        revert with 0, 'Invalid round'
    if not completedPurchaseRounds[address(msg.sender)]:
        return 0
    if not initialReleasePercentages[address(msg.sender)][arg1]:
        if vestingScheduleEpoch > block.timestamp:
            revert with 0, 'SafeMath: subtraction underflow'
        if 1 > releasePeriods[address(msg.sender)][arg1]:
            revert with 0, 'SafeMath: subtraction underflow'
        if 0 > purchasedTokens[address(msg.sender)][arg1]:
            revert with 0, 'SafeMath: subtraction underflow'
        if not releasePeriods[address(msg.sender)][arg1] - 1:
            revert with 0, 'SafeMath: division by zero'
        if (block.timestamp - vestingScheduleEpoch / 730 * 3600) + 1 < block.timestamp - vestingScheduleEpoch / 730 * 3600:
            revert with 0, 'SafeMath: addition overflow'
        if (block.timestamp - vestingScheduleEpoch / 730 * 3600) + 1 < releasePeriods[address(msg.sender)][arg1]:
            if not purchasedTokens[address(msg.sender)][arg1] / releasePeriods[address(msg.sender)][arg1] - 1:
                if 0 <= purchasedTokens[address(msg.sender)][arg1]:
                    if claimedTokens[address(msg.sender)][arg1] > 0:
                        revert with 0, 'SafeMath: subtraction underflow'
                    return -claimedTokens[address(msg.sender)][arg1]
            else:
                if block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][arg1] / releasePeriods[address(msg.sender)][arg1] - 1 / purchasedTokens[address(msg.sender)][arg1] / releasePeriods[address(msg.sender)][arg1] - 1 != block.timestamp - vestingScheduleEpoch / 730 * 3600:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][arg1] / releasePeriods[address(msg.sender)][arg1] - 1 < block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][arg1] / releasePeriods[address(msg.sender)][arg1] - 1:
                    revert with 0, 'SafeMath: addition overflow'
                if block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][arg1] / releasePeriods[address(msg.sender)][arg1] - 1 <= purchasedTokens[address(msg.sender)][arg1]:
                    if claimedTokens[address(msg.sender)][arg1] > block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][arg1] / releasePeriods[address(msg.sender)][arg1] - 1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    return ((block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][arg1] / releasePeriods[address(msg.sender)][arg1] - 1) - claimedTokens[address(msg.sender)][arg1])
    else:
        if purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / initialReleasePercentages[address(msg.sender)][arg1] != purchasedTokens[address(msg.sender)][arg1]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if vestingScheduleEpoch > block.timestamp:
            revert with 0, 'SafeMath: subtraction underflow'
        if 1 > releasePeriods[address(msg.sender)][arg1]:
            revert with 0, 'SafeMath: subtraction underflow'
        if purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18 > purchasedTokens[address(msg.sender)][arg1]:
            revert with 0, 'SafeMath: subtraction underflow'
        if not releasePeriods[address(msg.sender)][arg1] - 1:
            revert with 0, 'SafeMath: division by zero'
        if (block.timestamp - vestingScheduleEpoch / 730 * 3600) + 1 < block.timestamp - vestingScheduleEpoch / 730 * 3600:
            revert with 0, 'SafeMath: addition overflow'
        if (block.timestamp - vestingScheduleEpoch / 730 * 3600) + 1 < releasePeriods[address(msg.sender)][arg1]:
            if not purchasedTokens[address(msg.sender)][arg1] - (purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18) / releasePeriods[address(msg.sender)][arg1] - 1:
                if purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18 <= purchasedTokens[address(msg.sender)][arg1]:
                    if claimedTokens[address(msg.sender)][arg1] > purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18:
                        revert with 0, 'SafeMath: subtraction underflow'
                    return ((purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18) - claimedTokens[address(msg.sender)][arg1])
            else:
                if block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][arg1] - (purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18) / releasePeriods[address(msg.sender)][arg1] - 1 / purchasedTokens[address(msg.sender)][arg1] - (purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18) / releasePeriods[address(msg.sender)][arg1] - 1 != block.timestamp - vestingScheduleEpoch / 730 * 3600:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if (purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][arg1] - (purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18) / releasePeriods[address(msg.sender)][arg1] - 1) < block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][arg1] - (purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18) / releasePeriods[address(msg.sender)][arg1] - 1:
                    revert with 0, 'SafeMath: addition overflow'
                if (purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][arg1] - (purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18) / releasePeriods[address(msg.sender)][arg1] - 1) <= purchasedTokens[address(msg.sender)][arg1]:
                    if claimedTokens[address(msg.sender)][arg1] > (purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][arg1] - (purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18) / releasePeriods[address(msg.sender)][arg1] - 1):
                        revert with 0, 'SafeMath: subtraction underflow'
                    return ((purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][arg1] - (purchasedTokens[address(msg.sender)][arg1] * initialReleasePercentages[address(msg.sender)][arg1] / 100 * 10^18) / releasePeriods[address(msg.sender)][arg1] - 1) - claimedTokens[address(msg.sender)][arg1])
    if claimedTokens[address(msg.sender)][arg1] > purchasedTokens[address(msg.sender)][arg1]:
        revert with 0, 'SafeMath: subtraction underflow'
    return (purchasedTokens[address(msg.sender)][arg1] - claimedTokens[address(msg.sender)][arg1])
}

function setPurchasedTokensByUser(address[] arg1, uint256[] arg2, uint256[] arg3, uint256[] arg4, uint256[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = arg3.length
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192] = arg4.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224] = arg5.length
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + (32 * arg5.length) + 256] = 0
    if msg.sender == adminAddress:
        require arg1.length == arg2.length
        require arg1.length == arg3.length
        require arg1.length == arg4.length
        require arg1.length == arg5.length
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _230 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] > 100:
                revert with 0, 'Invalid percentage'
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 160] != completedPurchaseRounds[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'Invalid round number'
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                require idx < mem[(32 * arg1.length) + 128]
                initialReleasePercentages[address(mem[(32 * idx) + 128])][mem[(32 * idx) + (32 * arg1.length) + 160]] = 0
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                require idx < mem[(32 * arg1.length) + 128]
                releasePeriods[address(mem[(32 * idx) + 128])][mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                require idx < mem[(32 * arg1.length) + 128]
                purchasedTokens[address(mem[(32 * idx) + 128])][mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                require idx < mem[(32 * arg1.length) + 128]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 12
                completedPurchaseRounds[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + 1
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                _335 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _344 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                    _360 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_360] = 26
                    mem[_360 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[32] = sha3(address(_230), 11)
                    claimedTokens[address(_230)][mem[(32 * idx) + (32 * arg1.length) + 160]] = 0
                else:
                    if 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != 10^18:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                        _367 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_367] = 26
                        mem[_367 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[32] = sha3(address(_230), 11)
                        claimedTokens[address(_230)][mem[(32 * idx) + (32 * arg1.length) + 160]] = 0
                    else:
                        if 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _373 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_373] = 26
                        mem[_373 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[32] = sha3(address(_230), 11)
                        claimedTokens[address(_230)][mem[(32 * idx) + (32 * arg1.length) + 160]] = 10^18 * _335 * _344 / 100 * 10^18
            else:
                if 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != 10^18:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < mem[(32 * arg1.length) + 128]
                initialReleasePercentages[address(mem[(32 * idx) + 128])][mem[(32 * idx) + (32 * arg1.length) + 160]] = 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                require idx < mem[(32 * arg1.length) + 128]
                releasePeriods[address(mem[(32 * idx) + 128])][mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                require idx < mem[(32 * arg1.length) + 128]
                purchasedTokens[address(mem[(32 * idx) + 128])][mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                require idx < mem[(32 * arg1.length) + 128]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 12
                completedPurchaseRounds[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + 1
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                _342 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _348 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                    _366 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_366] = 26
                    mem[_366 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[32] = sha3(address(_230), 11)
                    claimedTokens[address(_230)][mem[(32 * idx) + (32 * arg1.length) + 160]] = 0
                else:
                    if 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != 10^18:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                        _372 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_372] = 26
                        mem[_372 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[32] = sha3(address(_230), 11)
                        claimedTokens[address(_230)][mem[(32 * idx) + (32 * arg1.length) + 160]] = 0
                    else:
                        if 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _376 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_376] = 26
                        mem[_376 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[32] = sha3(address(_230), 11)
                        claimedTokens[address(_230)][mem[(32 * idx) + (32 * arg1.length) + 160]] = 10^18 * _342 * _348 / 100 * 10^18
            idx = idx + 1
            continue 
    else:
        if not dataAdminAddress:
            revert with 0, 'admin only'
        if dataAdminAddress != msg.sender:
            revert with 0, 'admin only'
        require arg1.length == arg2.length
        require arg1.length == arg3.length
        require arg1.length == arg4.length
        require arg1.length == arg5.length
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _232 = mem[(32 * idx) + 128]
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] > 100:
                revert with 0, 'Invalid percentage'
            require idx < mem[(32 * arg1.length) + 128]
            if mem[(32 * idx) + (32 * arg1.length) + 160] != completedPurchaseRounds[mem[(32 * idx) + 140 len 20]]:
                revert with 0, 'Invalid round number'
            require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
            if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                require idx < mem[(32 * arg1.length) + 128]
                initialReleasePercentages[address(mem[(32 * idx) + 128])][mem[(32 * idx) + (32 * arg1.length) + 160]] = 0
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                require idx < mem[(32 * arg1.length) + 128]
                releasePeriods[address(mem[(32 * idx) + 128])][mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                require idx < mem[(32 * arg1.length) + 128]
                purchasedTokens[address(mem[(32 * idx) + 128])][mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                require idx < mem[(32 * arg1.length) + 128]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 12
                completedPurchaseRounds[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + 1
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                _340 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _347 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                    _363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_363] = 26
                    mem[_363 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[32] = sha3(address(_232), 11)
                    claimedTokens[address(_232)][mem[(32 * idx) + (32 * arg1.length) + 160]] = 0
                else:
                    if 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != 10^18:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                        _371 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_371] = 26
                        mem[_371 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[32] = sha3(address(_232), 11)
                        claimedTokens[address(_232)][mem[(32 * idx) + (32 * arg1.length) + 160]] = 0
                    else:
                        if 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _375 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_375] = 26
                        mem[_375 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[32] = sha3(address(_232), 11)
                        claimedTokens[address(_232)][mem[(32 * idx) + (32 * arg1.length) + 160]] = 10^18 * _340 * _347 / 100 * 10^18
            else:
                if 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != 10^18:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                require idx < mem[(32 * arg1.length) + 128]
                initialReleasePercentages[address(mem[(32 * idx) + 128])][mem[(32 * idx) + (32 * arg1.length) + 160]] = 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192]
                require idx < mem[(32 * arg1.length) + 128]
                releasePeriods[address(mem[(32 * idx) + 128])][mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                require idx < mem[(32 * arg1.length) + 128]
                purchasedTokens[address(mem[(32 * idx) + 128])][mem[(32 * idx) + (32 * arg1.length) + 160]] = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                require idx < mem[(32 * arg1.length) + 128]
                mem[0] = mem[(32 * idx) + 140 len 20]
                mem[32] = 12
                completedPurchaseRounds[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 160] + 1
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 224]
                _345 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]
                require idx < mem[(32 * arg1.length) + (32 * arg2.length) + 160]
                _349 = mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]
                if not mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                    _370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_370] = 26
                    mem[_370 + 32] = 'SafeMath: division by zero'
                    require idx < mem[(32 * arg1.length) + 128]
                    mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
                    mem[32] = sha3(address(_232), 11)
                    claimedTokens[address(_232)][mem[(32 * idx) + (32 * arg1.length) + 160]] = 0
                else:
                    if 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != 10^18:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192]:
                        _374 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_374] = 26
                        mem[_374 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[32] = sha3(address(_232), 11)
                        claimedTokens[address(_232)][mem[(32 * idx) + (32 * arg1.length) + 160]] = 0
                    else:
                        if 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256] * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] / 10^18 * mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + 192] != mem[(32 * idx) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * arg4.length) + 256]:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _377 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_377] = 26
                        mem[_377 + 32] = 'SafeMath: division by zero'
                        require idx < mem[(32 * arg1.length) + 128]
                        mem[0] = mem[(32 * idx) + (32 * arg1.length) + 160]
                        mem[32] = sha3(address(_232), 11)
                        claimedTokens[address(_232)][mem[(32 * idx) + (32 * arg1.length) + 160]] = 10^18 * _345 * _349 / 100 * 10^18
            idx = idx + 1
            continue 
}

function getClaimableTokenAmount() payable {
    mem[64] = 96
    if completedPurchaseRounds[address(msg.sender)]:
        mem[0] = msg.sender
        mem[32] = 12
        idx = 0
        while idx < completedPurchaseRounds[address(msg.sender)]:
            if idx >= completedPurchaseRounds[address(msg.sender)]:
                revert with 0, 'Invalid round'
            if not completedPurchaseRounds[address(msg.sender)]:
                mem[0] = msg.sender
                mem[32] = 12
                idx = idx + 1
                continue 
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 8)
            if not initialReleasePercentages[address(msg.sender)][idx]:
                _328 = mem[64]
                mem[64] = mem[64] + 64
                mem[_328] = 26
                mem[_328 + 32] = 'SafeMath: division by zero'
                _330 = mem[64]
                mem[64] = mem[64] + 64
                mem[_330] = 31
                mem[_330 + 32] = 'SafeMath: subtraction underflow'
                if vestingScheduleEpoch > block.timestamp:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 31
                    mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                    idx = 32
                    while idx < 31:
                        mem[idx + mem[64] + 68] = mem[idx + _330 + 32]
                        mem[0] = msg.sender
                        mem[32] = 12
                        idx = idx + 32
                        continue 
                else:
                    _344 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_344] = 26
                    mem[_344 + 32] = 'SafeMath: division by zero'
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 7)
                    _360 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_360] = 31
                    mem[_360 + 32] = 'SafeMath: subtraction underflow'
                    if 1 > releasePeriods[address(msg.sender)][idx]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 31
                        mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                        idx = 32
                        while idx < 31:
                            mem[idx + mem[64] + 68] = mem[idx + _360 + 32]
                            mem[0] = msg.sender
                            mem[32] = 12
                            idx = idx + 32
                            continue 
                    else:
                        mem[0] = idx
                        mem[32] = sha3(address(msg.sender), 10)
                        _378 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_378] = 31
                        mem[_378 + 32] = 'SafeMath: subtraction underflow'
                        if 0 > purchasedTokens[address(msg.sender)][idx]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 31
                            mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                            idx = 32
                            while idx < 31:
                                mem[idx + mem[64] + 68] = mem[idx + _378 + 32]
                                mem[0] = msg.sender
                                mem[32] = 12
                                idx = idx + 32
                                continue 
                        else:
                            _402 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_402] = 26
                            mem[_402 + 32] = 'SafeMath: division by zero'
                            if not releasePeriods[address(msg.sender)][idx] - 1:
                                _412 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _412 + 68] = mem[idx + _402 + 32]
                                    mem[0] = msg.sender
                                    mem[32] = 12
                                    idx = idx + 32
                                    continue 
                                mem[_412 + 68] = mem[_412 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _412 + -mem[64] + 100
                            if (block.timestamp - vestingScheduleEpoch / 730 * 3600) + 1 < block.timestamp - vestingScheduleEpoch / 730 * 3600:
                                revert with 0, 'SafeMath: addition overflow'
                            if (block.timestamp - vestingScheduleEpoch / 730 * 3600) + 1 >= releasePeriods[address(msg.sender)][idx]:
                                mem[0] = idx
                                mem[32] = sha3(address(msg.sender), 11)
                                _444 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_444] = 31
                                mem[_444 + 32] = 'SafeMath: subtraction underflow'
                                if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx]:
                                    if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 12
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 31
                                mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                idx = 32
                                while idx < 31:
                                    mem[idx + mem[64] + 68] = mem[idx + _444 + 32]
                                    mem[0] = msg.sender
                                    mem[32] = 12
                                    idx = idx + 32
                                    continue 
                            else:
                                if not purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1:
                                    mem[0] = idx
                                    mem[32] = sha3(address(msg.sender), 11)
                                    if 0 <= purchasedTokens[address(msg.sender)][idx]:
                                        _496 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_496] = 31
                                        mem[_496 + 32] = 'SafeMath: subtraction underflow'
                                        if claimedTokens[address(msg.sender)][idx] <= 0:
                                            if -claimedTokens[address(msg.sender)][idx] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 31
                                        mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                        idx = 32
                                        while idx < 31:
                                            mem[idx + mem[64] + 68] = mem[idx + _496 + 32]
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _511 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_511] = 31
                                        mem[_511 + 32] = 'SafeMath: subtraction underflow'
                                        if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx]:
                                            if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 31
                                        mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                        idx = 32
                                        while idx < 31:
                                            mem[idx + mem[64] + 68] = mem[idx + _511 + 32]
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 32
                                            continue 
                                else:
                                    if block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1 / purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1 != block.timestamp - vestingScheduleEpoch / 730 * 3600:
                                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1 < block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = idx
                                    mem[32] = sha3(address(msg.sender), 11)
                                    if block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1 <= purchasedTokens[address(msg.sender)][idx]:
                                        _508 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_508] = 31
                                        mem[_508 + 32] = 'SafeMath: subtraction underflow'
                                        if claimedTokens[address(msg.sender)][idx] <= block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1:
                                            if (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1) - claimedTokens[address(msg.sender)][idx] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 31
                                        mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                        idx = 32
                                        while idx < 31:
                                            mem[idx + mem[64] + 68] = mem[idx + _508 + 32]
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _520 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_520] = 31
                                        mem[_520 + 32] = 'SafeMath: subtraction underflow'
                                        if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx]:
                                            if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 31
                                        mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                        idx = 32
                                        while idx < 31:
                                            mem[idx + mem[64] + 68] = mem[idx + _520 + 32]
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 32
                                            continue 
            else:
                if purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / initialReleasePercentages[address(msg.sender)][idx] != purchasedTokens[address(msg.sender)][idx]:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _329 = mem[64]
                mem[64] = mem[64] + 64
                mem[_329] = 26
                mem[_329 + 32] = 'SafeMath: division by zero'
                _331 = mem[64]
                mem[64] = mem[64] + 64
                mem[_331] = 31
                mem[_331 + 32] = 'SafeMath: subtraction underflow'
                if vestingScheduleEpoch > block.timestamp:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 31
                    mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                    idx = 32
                    while idx < 31:
                        mem[idx + mem[64] + 68] = mem[idx + _331 + 32]
                        mem[0] = msg.sender
                        mem[32] = 12
                        idx = idx + 32
                        continue 
                else:
                    _347 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_347] = 26
                    mem[_347 + 32] = 'SafeMath: division by zero'
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 7)
                    _361 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_361] = 31
                    mem[_361 + 32] = 'SafeMath: subtraction underflow'
                    if 1 > releasePeriods[address(msg.sender)][idx]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 31
                        mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                        idx = 32
                        while idx < 31:
                            mem[idx + mem[64] + 68] = mem[idx + _361 + 32]
                            mem[0] = msg.sender
                            mem[32] = 12
                            idx = idx + 32
                            continue 
                    else:
                        mem[0] = idx
                        mem[32] = sha3(address(msg.sender), 10)
                        _381 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_381] = 31
                        mem[_381 + 32] = 'SafeMath: subtraction underflow'
                        if purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18 > purchasedTokens[address(msg.sender)][idx]:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 31
                            mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                            idx = 32
                            while idx < 31:
                                mem[idx + mem[64] + 68] = mem[idx + _381 + 32]
                                mem[0] = msg.sender
                                mem[32] = 12
                                idx = idx + 32
                                continue 
                        else:
                            _405 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_405] = 26
                            mem[_405 + 32] = 'SafeMath: division by zero'
                            if not releasePeriods[address(msg.sender)][idx] - 1:
                                _416 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _416 + 68] = mem[idx + _405 + 32]
                                    mem[0] = msg.sender
                                    mem[32] = 12
                                    idx = idx + 32
                                    continue 
                                mem[_416 + 68] = mem[_416 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _416 + -mem[64] + 100
                            if (block.timestamp - vestingScheduleEpoch / 730 * 3600) + 1 < block.timestamp - vestingScheduleEpoch / 730 * 3600:
                                revert with 0, 'SafeMath: addition overflow'
                            if (block.timestamp - vestingScheduleEpoch / 730 * 3600) + 1 >= releasePeriods[address(msg.sender)][idx]:
                                mem[0] = idx
                                mem[32] = sha3(address(msg.sender), 11)
                                _445 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_445] = 31
                                mem[_445 + 32] = 'SafeMath: subtraction underflow'
                                if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx]:
                                    if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = msg.sender
                                    mem[32] = 12
                                    idx = idx + 1
                                    continue 
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 31
                                mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                idx = 32
                                while idx < 31:
                                    mem[idx + mem[64] + 68] = mem[idx + _445 + 32]
                                    mem[0] = msg.sender
                                    mem[32] = 12
                                    idx = idx + 32
                                    continue 
                            else:
                                if not purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1:
                                    if purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18 < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = idx
                                    mem[32] = sha3(address(msg.sender), 11)
                                    if purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18 <= purchasedTokens[address(msg.sender)][idx]:
                                        _504 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_504] = 31
                                        mem[_504 + 32] = 'SafeMath: subtraction underflow'
                                        if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18:
                                            if (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) - claimedTokens[address(msg.sender)][idx] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 31
                                        mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                        idx = 32
                                        while idx < 31:
                                            mem[idx + mem[64] + 68] = mem[idx + _504 + 32]
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _517 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_517] = 31
                                        mem[_517 + 32] = 'SafeMath: subtraction underflow'
                                        if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx]:
                                            if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 31
                                        mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                        idx = 32
                                        while idx < 31:
                                            mem[idx + mem[64] + 68] = mem[idx + _517 + 32]
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 32
                                            continue 
                                else:
                                    if block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1 / purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1 != block.timestamp - vestingScheduleEpoch / 730 * 3600:
                                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1) < block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1:
                                        revert with 0, 'SafeMath: addition overflow'
                                    mem[0] = idx
                                    mem[32] = sha3(address(msg.sender), 11)
                                    if (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1) <= purchasedTokens[address(msg.sender)][idx]:
                                        _514 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_514] = 31
                                        mem[_514 + 32] = 'SafeMath: subtraction underflow'
                                        if claimedTokens[address(msg.sender)][idx] <= (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1):
                                            if (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1) - claimedTokens[address(msg.sender)][idx] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 31
                                        mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                        idx = 32
                                        while idx < 31:
                                            mem[idx + mem[64] + 68] = mem[idx + _514 + 32]
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 32
                                            continue 
                                    else:
                                        _524 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_524] = 31
                                        mem[_524 + 32] = 'SafeMath: subtraction underflow'
                                        if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx]:
                                            if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 1
                                            continue 
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 31
                                        mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                        idx = 32
                                        while idx < 31:
                                            mem[idx + mem[64] + 68] = mem[idx + _524 + 32]
                                            mem[0] = msg.sender
                                            mem[32] = 12
                                            idx = idx + 32
                                            continue 
            revert with 0, 'SafeMath: subtraction underflow'
        return 0
    else:
        return 0
}

function claim() payable {
    mem[64] = 96
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[0] = msg.sender
    mem[32] = 12
    idx = 0
    while idx < completedPurchaseRounds[msg.sender]:
        if idx >= completedPurchaseRounds[address(msg.sender)]:
            revert with 0, 'Invalid round'
        if not completedPurchaseRounds[address(msg.sender)]:
            if claimedTokens[msg.sender][idx] < claimedTokens[msg.sender][idx]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = msg.sender
            mem[32] = 12
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 8)
        if not initialReleasePercentages[address(msg.sender)][idx]:
            _393 = mem[64]
            mem[64] = mem[64] + 64
            mem[_393] = 26
            mem[_393 + 32] = 'SafeMath: division by zero'
            _401 = mem[64]
            mem[64] = mem[64] + 64
            mem[_401] = 31
            mem[_401 + 32] = 'SafeMath: subtraction underflow'
            if vestingScheduleEpoch > block.timestamp:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 31
                mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                idx = 32
                while idx < 31:
                    mem[idx + mem[64] + 68] = mem[idx + _401 + 32]
                    mem[0] = msg.sender
                    mem[32] = 12
                    idx = idx + 32
                    continue 
            else:
                _415 = mem[64]
                mem[64] = mem[64] + 64
                mem[_415] = 26
                mem[_415 + 32] = 'SafeMath: division by zero'
                mem[0] = idx
                mem[32] = sha3(address(msg.sender), 7)
                _431 = mem[64]
                mem[64] = mem[64] + 64
                mem[_431] = 31
                mem[_431 + 32] = 'SafeMath: subtraction underflow'
                if 1 > releasePeriods[address(msg.sender)][idx]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 31
                    mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                    idx = 32
                    while idx < 31:
                        mem[idx + mem[64] + 68] = mem[idx + _431 + 32]
                        mem[0] = msg.sender
                        mem[32] = 12
                        idx = idx + 32
                        continue 
                else:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 10)
                    _449 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_449] = 31
                    mem[_449 + 32] = 'SafeMath: subtraction underflow'
                    if 0 > purchasedTokens[address(msg.sender)][idx]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 31
                        mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                        idx = 32
                        while idx < 31:
                            mem[idx + mem[64] + 68] = mem[idx + _449 + 32]
                            mem[0] = msg.sender
                            mem[32] = 12
                            idx = idx + 32
                            continue 
                    else:
                        _473 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_473] = 26
                        mem[_473 + 32] = 'SafeMath: division by zero'
                        if not releasePeriods[address(msg.sender)][idx] - 1:
                            _483 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _483 + 68] = mem[idx + _473 + 32]
                                mem[0] = msg.sender
                                mem[32] = 12
                                idx = idx + 32
                                continue 
                            mem[_483 + 68] = mem[_483 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _483 + -mem[64] + 100
                        if (block.timestamp - vestingScheduleEpoch / 730 * 3600) + 1 < block.timestamp - vestingScheduleEpoch / 730 * 3600:
                            revert with 0, 'SafeMath: addition overflow'
                        if (block.timestamp - vestingScheduleEpoch / 730 * 3600) + 1 >= releasePeriods[address(msg.sender)][idx]:
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 11)
                            _515 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_515] = 31
                            mem[_515 + 32] = 'SafeMath: subtraction underflow'
                            if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx]:
                                if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx] < claimedTokens[msg.sender][idx]:
                                    revert with 0, 'SafeMath: addition overflow'
                                claimedTokens[msg.sender][idx] = purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx]
                                mem[0] = msg.sender
                                mem[32] = 12
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 31
                            mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                            idx = 32
                            while idx < 31:
                                mem[idx + mem[64] + 68] = mem[idx + _515 + 32]
                                mem[0] = msg.sender
                                mem[32] = 12
                                idx = idx + 32
                                continue 
                        else:
                            if not purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1:
                                mem[0] = idx
                                mem[32] = sha3(address(msg.sender), 11)
                                if 0 <= purchasedTokens[address(msg.sender)][idx]:
                                    _567 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_567] = 31
                                    mem[_567 + 32] = 'SafeMath: subtraction underflow'
                                    if claimedTokens[address(msg.sender)][idx] <= 0:
                                        if -claimedTokens[address(msg.sender)][idx] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if -claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx] < claimedTokens[msg.sender][idx]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        claimedTokens[msg.sender][idx] -= claimedTokens[address(msg.sender)][idx]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 31
                                    mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                    idx = 32
                                    while idx < 31:
                                        mem[idx + mem[64] + 68] = mem[idx + _567 + 32]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 32
                                        continue 
                                else:
                                    _582 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_582] = 31
                                    mem[_582 + 32] = 'SafeMath: subtraction underflow'
                                    if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx]:
                                        if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx] < claimedTokens[msg.sender][idx]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        claimedTokens[msg.sender][idx] = purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 31
                                    mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                    idx = 32
                                    while idx < 31:
                                        mem[idx + mem[64] + 68] = mem[idx + _582 + 32]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 32
                                        continue 
                            else:
                                if block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1 / purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1 != block.timestamp - vestingScheduleEpoch / 730 * 3600:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1 < block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = idx
                                mem[32] = sha3(address(msg.sender), 11)
                                if block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1 <= purchasedTokens[address(msg.sender)][idx]:
                                    _579 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_579] = 31
                                    mem[_579 + 32] = 'SafeMath: subtraction underflow'
                                    if claimedTokens[address(msg.sender)][idx] <= block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1:
                                        if (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1) - claimedTokens[address(msg.sender)][idx] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1) - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx] < claimedTokens[msg.sender][idx]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        claimedTokens[msg.sender][idx] = (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] / releasePeriods[address(msg.sender)][idx] - 1) - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 31
                                    mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                    idx = 32
                                    while idx < 31:
                                        mem[idx + mem[64] + 68] = mem[idx + _579 + 32]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 32
                                        continue 
                                else:
                                    _591 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_591] = 31
                                    mem[_591 + 32] = 'SafeMath: subtraction underflow'
                                    if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx]:
                                        if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx] < claimedTokens[msg.sender][idx]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        claimedTokens[msg.sender][idx] = purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 31
                                    mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                    idx = 32
                                    while idx < 31:
                                        mem[idx + mem[64] + 68] = mem[idx + _591 + 32]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 32
                                        continue 
        else:
            if purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / initialReleasePercentages[address(msg.sender)][idx] != purchasedTokens[address(msg.sender)][idx]:
                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _396 = mem[64]
            mem[64] = mem[64] + 64
            mem[_396] = 26
            mem[_396 + 32] = 'SafeMath: division by zero'
            _402 = mem[64]
            mem[64] = mem[64] + 64
            mem[_402] = 31
            mem[_402 + 32] = 'SafeMath: subtraction underflow'
            if vestingScheduleEpoch > block.timestamp:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 31
                mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                idx = 32
                while idx < 31:
                    mem[idx + mem[64] + 68] = mem[idx + _402 + 32]
                    mem[0] = msg.sender
                    mem[32] = 12
                    idx = idx + 32
                    continue 
            else:
                _418 = mem[64]
                mem[64] = mem[64] + 64
                mem[_418] = 26
                mem[_418 + 32] = 'SafeMath: division by zero'
                mem[0] = idx
                mem[32] = sha3(address(msg.sender), 7)
                _432 = mem[64]
                mem[64] = mem[64] + 64
                mem[_432] = 31
                mem[_432 + 32] = 'SafeMath: subtraction underflow'
                if 1 > releasePeriods[address(msg.sender)][idx]:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 31
                    mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                    idx = 32
                    while idx < 31:
                        mem[idx + mem[64] + 68] = mem[idx + _432 + 32]
                        mem[0] = msg.sender
                        mem[32] = 12
                        idx = idx + 32
                        continue 
                else:
                    mem[0] = idx
                    mem[32] = sha3(address(msg.sender), 10)
                    _452 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_452] = 31
                    mem[_452 + 32] = 'SafeMath: subtraction underflow'
                    if purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18 > purchasedTokens[address(msg.sender)][idx]:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 31
                        mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                        idx = 32
                        while idx < 31:
                            mem[idx + mem[64] + 68] = mem[idx + _452 + 32]
                            mem[0] = msg.sender
                            mem[32] = 12
                            idx = idx + 32
                            continue 
                    else:
                        _476 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_476] = 26
                        mem[_476 + 32] = 'SafeMath: division by zero'
                        if not releasePeriods[address(msg.sender)][idx] - 1:
                            _487 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _487 + 68] = mem[idx + _476 + 32]
                                mem[0] = msg.sender
                                mem[32] = 12
                                idx = idx + 32
                                continue 
                            mem[_487 + 68] = mem[_487 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _487 + -mem[64] + 100
                        if (block.timestamp - vestingScheduleEpoch / 730 * 3600) + 1 < block.timestamp - vestingScheduleEpoch / 730 * 3600:
                            revert with 0, 'SafeMath: addition overflow'
                        if (block.timestamp - vestingScheduleEpoch / 730 * 3600) + 1 >= releasePeriods[address(msg.sender)][idx]:
                            mem[0] = idx
                            mem[32] = sha3(address(msg.sender), 11)
                            _516 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_516] = 31
                            mem[_516 + 32] = 'SafeMath: subtraction underflow'
                            if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx]:
                                if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx] < claimedTokens[msg.sender][idx]:
                                    revert with 0, 'SafeMath: addition overflow'
                                claimedTokens[msg.sender][idx] = purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx]
                                mem[0] = msg.sender
                                mem[32] = 12
                                idx = idx + 1
                                continue 
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 31
                            mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                            idx = 32
                            while idx < 31:
                                mem[idx + mem[64] + 68] = mem[idx + _516 + 32]
                                mem[0] = msg.sender
                                mem[32] = 12
                                idx = idx + 32
                                continue 
                        else:
                            if not purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1:
                                if purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18 < 0:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = idx
                                mem[32] = sha3(address(msg.sender), 11)
                                if purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18 <= purchasedTokens[address(msg.sender)][idx]:
                                    _575 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_575] = 31
                                    mem[_575 + 32] = 'SafeMath: subtraction underflow'
                                    if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18:
                                        if (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) - claimedTokens[address(msg.sender)][idx] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx] < claimedTokens[msg.sender][idx]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        claimedTokens[msg.sender][idx] = (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 31
                                    mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                    idx = 32
                                    while idx < 31:
                                        mem[idx + mem[64] + 68] = mem[idx + _575 + 32]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 32
                                        continue 
                                else:
                                    _588 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_588] = 31
                                    mem[_588 + 32] = 'SafeMath: subtraction underflow'
                                    if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx]:
                                        if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx] < claimedTokens[msg.sender][idx]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        claimedTokens[msg.sender][idx] = purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 31
                                    mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                    idx = 32
                                    while idx < 31:
                                        mem[idx + mem[64] + 68] = mem[idx + _588 + 32]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 32
                                        continue 
                            else:
                                if block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1 / purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1 != block.timestamp - vestingScheduleEpoch / 730 * 3600:
                                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1) < block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1:
                                    revert with 0, 'SafeMath: addition overflow'
                                mem[0] = idx
                                mem[32] = sha3(address(msg.sender), 11)
                                if (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1) <= purchasedTokens[address(msg.sender)][idx]:
                                    _585 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_585] = 31
                                    mem[_585 + 32] = 'SafeMath: subtraction underflow'
                                    if claimedTokens[address(msg.sender)][idx] <= (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1):
                                        if (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1) - claimedTokens[address(msg.sender)][idx] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1) - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx] < claimedTokens[msg.sender][idx]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        claimedTokens[msg.sender][idx] = (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) + (block.timestamp - vestingScheduleEpoch / 730 * 3600 * purchasedTokens[address(msg.sender)][idx] - (purchasedTokens[address(msg.sender)][idx] * initialReleasePercentages[address(msg.sender)][idx] / 100 * 10^18) / releasePeriods[address(msg.sender)][idx] - 1) - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 31
                                    mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                    idx = 32
                                    while idx < 31:
                                        mem[idx + mem[64] + 68] = mem[idx + _585 + 32]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 32
                                        continue 
                                else:
                                    _597 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_597] = 31
                                    mem[_597 + 32] = 'SafeMath: subtraction underflow'
                                    if claimedTokens[address(msg.sender)][idx] <= purchasedTokens[address(msg.sender)][idx]:
                                        if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx] < claimedTokens[msg.sender][idx]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        claimedTokens[msg.sender][idx] = purchasedTokens[address(msg.sender)][idx] - claimedTokens[address(msg.sender)][idx] + claimedTokens[msg.sender][idx]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 1
                                        continue 
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 31
                                    mem[mem[64] + 68] = 'SafeMath: subtraction underflow'
                                    idx = 32
                                    while idx < 31:
                                        mem[idx + mem[64] + 68] = mem[idx + _597 + 32]
                                        mem[0] = msg.sender
                                        mem[32] = 12
                                        idx = idx + 32
                                        continue 
        revert with 0, 'SafeMath: subtraction underflow'
    revert with 0, 'No available tokens to claim'
}



}
