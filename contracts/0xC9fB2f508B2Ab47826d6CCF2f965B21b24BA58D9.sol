contract main {




// =====================  Runtime code  =====================


uint256 stor0;
address adminAddress;
address pendingAdminAddress;
address implementationAddress;
address pendingImplementationAddress;
address stor5;
mapping of address stor6;
mapping of uint256 rewardSpeeds;
mapping of uint256 sub_f495c9c9;
mapping of uint256 sub_1130a36c;
uint256 totalSupplies;
mapping of uint256 stor11;
mapping of uint256 stor12;
uint256 stor13;

function sub_1130a36c(?) {
    require calldata.size - 4 >= 32
    return sub_1130a36c[arg1]
}

function rewardSpeeds(uint256 arg1) {
    require calldata.size - 4 >= 32
    return rewardSpeeds[arg1]
}

function pendingAdmin() {
    return pendingAdminAddress
}

function pendingImplementation() {
    return pendingImplementationAddress
}

function implementation() {
    return implementationAddress
}

function totalSupplies() {
    return totalSupplies
}

function sub_f495c9c9(?) {
    require calldata.size - 4 >= 64
    return sub_f495c9c9[arg1][arg2]
}

function admin() {
    return adminAddress
}

function _fallback() payable {
  stop
}

function sub_9c41f6ca(?) {
    require calldata.size - 4 >= 32
    if adminAddress != msg.sender:
        revert with 0, 'admin only'
    stor5 = arg1
}

function setRewardTokenAddress(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'admin only'
    if not arg1:
        revert with 0, 'Cannot set AVAX address'
    stor6[arg1] = arg2
}

function getClaimableRewards(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 > 2:
        revert with 0, 'Invalid reward token'
    if stor12[msg.sender][arg1] > stor11[arg1]:
        revert with 0, 'SafeMath: subtraction underflow'
    if not stor11[arg1] - stor12[msg.sender][arg1]:
        return 0
    if (stor11[arg1] * sub_1130a36c[msg.sender]) - (stor12[msg.sender][arg1] * sub_1130a36c[msg.sender]) / stor11[arg1] - stor12[msg.sender][arg1] != sub_1130a36c[msg.sender]:
        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    return ((stor11[arg1] * sub_1130a36c[msg.sender]) - (stor12[msg.sender][arg1] * sub_1130a36c[msg.sender]))
}

function becomeImplementation(address arg1) {
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

function deposit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    require ext_code.size(stor5)
    staticcall stor5.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    call stor5.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor5)
    staticcall stor5.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction underflow'
    revert with 0, 'Zero deposit'
}

function setRewardSpeed(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if adminAddress != msg.sender:
        revert with 0, 'admin only'
    mem[64] = 160
    mem[96] = 31
    mem[128] = 'SafeMath: subtraction underflow'
    if stor13 > block.timestamp:
        revert with 0, 'SafeMath: subtraction underflow'
    stor13 = block.timestamp
    if block.timestamp - stor13:
        if totalSupplies:
            idx = 0
            while idx < 2:
                mem[0] = idx
                mem[32] = 7
                if rewardSpeeds[idx]:
                    mem[0] = idx
                    mem[32] = 7
                    if not rewardSpeeds[idx]:
                        _79 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_79] = 26
                        mem[_79 + 32] = 'SafeMath: division by zero'
                        if not totalSupplies:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _79 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _106 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_106] = 26
                        mem[_106 + 32] = 'SafeMath: division by zero'
                        if (0 / totalSupplies / 10^18) + stor11[idx] < stor11[idx]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = idx
                        mem[32] = 11
                        stor11[idx] += 0 / totalSupplies / 10^18
                    else:
                        if (block.timestamp * rewardSpeeds[idx]) - (stor13 * rewardSpeeds[idx]) / rewardSpeeds[idx] != block.timestamp - stor13:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.timestamp * rewardSpeeds[idx]) - (stor13 * rewardSpeeds[idx]):
                            _85 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_85] = 26
                            mem[_85 + 32] = 'SafeMath: division by zero'
                            if not totalSupplies:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _85 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _114 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_114] = 26
                            mem[_114 + 32] = 'SafeMath: division by zero'
                            if (0 / totalSupplies / 10^18) + stor11[idx] < stor11[idx]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 11
                            stor11[idx] += 0 / totalSupplies / 10^18
                        else:
                            if (10^18 * block.timestamp * rewardSpeeds[idx]) - (10^18 * stor13 * rewardSpeeds[idx]) / (block.timestamp * rewardSpeeds[idx]) - (stor13 * rewardSpeeds[idx]) != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _92 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_92] = 26
                            mem[_92 + 32] = 'SafeMath: division by zero'
                            if not totalSupplies:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _92 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _118 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_118] = 26
                            mem[_118 + 32] = 'SafeMath: division by zero'
                            if ((10^18 * block.timestamp * rewardSpeeds[idx]) - (10^18 * stor13 * rewardSpeeds[idx]) / totalSupplies / 10^18) + stor11[idx] < stor11[idx]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 11
                            stor11[idx] += (10^18 * block.timestamp * rewardSpeeds[idx]) - (10^18 * stor13 * rewardSpeeds[idx]) / totalSupplies / 10^18
                idx = idx + 1
                continue 
    rewardSpeeds[arg1] = arg2
}

function redeem(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[32] = 9
    if arg1 > sub_1130a36c[msg.sender]:
        revert with 0, 'Too large withdrawal'
    mem[64] = 160
    mem[96] = 31
    mem[128] = 'SafeMath: subtraction underflow'
    if stor13 > block.timestamp:
        revert with 0, 'SafeMath: subtraction underflow'
    stor13 = block.timestamp
    if block.timestamp - stor13:
        if totalSupplies:
            idx = 0
            while idx < 2:
                mem[0] = idx
                mem[32] = 7
                if rewardSpeeds[idx]:
                    mem[0] = idx
                    mem[32] = 7
                    if not rewardSpeeds[idx]:
                        _151 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_151] = 26
                        mem[_151 + 32] = 'SafeMath: division by zero'
                        if not totalSupplies:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _151 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _185 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_185] = 26
                        mem[_185 + 32] = 'SafeMath: division by zero'
                        if (0 / totalSupplies / 10^18) + stor11[idx] < stor11[idx]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = idx
                        mem[32] = 11
                        stor11[idx] += 0 / totalSupplies / 10^18
                    else:
                        if (block.timestamp * rewardSpeeds[idx]) - (stor13 * rewardSpeeds[idx]) / rewardSpeeds[idx] != block.timestamp - stor13:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.timestamp * rewardSpeeds[idx]) - (stor13 * rewardSpeeds[idx]):
                            _158 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_158] = 26
                            mem[_158 + 32] = 'SafeMath: division by zero'
                            if not totalSupplies:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _158 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _193 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_193] = 26
                            mem[_193 + 32] = 'SafeMath: division by zero'
                            if (0 / totalSupplies / 10^18) + stor11[idx] < stor11[idx]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 11
                            stor11[idx] += 0 / totalSupplies / 10^18
                        else:
                            if (10^18 * block.timestamp * rewardSpeeds[idx]) - (10^18 * stor13 * rewardSpeeds[idx]) / (block.timestamp * rewardSpeeds[idx]) - (stor13 * rewardSpeeds[idx]) != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _170 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_170] = 26
                            mem[_170 + 32] = 'SafeMath: division by zero'
                            if not totalSupplies:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _170 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _197 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_197] = 26
                            mem[_197 + 32] = 'SafeMath: division by zero'
                            if ((10^18 * block.timestamp * rewardSpeeds[idx]) - (10^18 * stor13 * rewardSpeeds[idx]) / totalSupplies / 10^18) + stor11[idx] < stor11[idx]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 11
                            stor11[idx] += (10^18 * block.timestamp * rewardSpeeds[idx]) - (10^18 * stor13 * rewardSpeeds[idx]) / totalSupplies / 10^18
                idx = idx + 1
                continue 
    if arg1 > sub_1130a36c[msg.sender]:
        revert with 0, 'SafeMath: subtraction underflow'
    sub_1130a36c[msg.sender] -= arg1
    if arg1 > totalSupplies:
        revert with 0, 'SafeMath: subtraction underflow'
    totalSupplies -= arg1
    require ext_code.size(stor5)
    call stor5.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor0 = 1
}

function claimRewards() {
    if stor0 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 2
    mem[64] = 160
    mem[96] = 31
    mem[128] = 'SafeMath: subtraction underflow'
    if stor13 > block.timestamp:
        revert with 0, 'SafeMath: subtraction underflow'
    stor13 = block.timestamp
    if not block.timestamp - stor13:
        idx = 0
        while idx < 2:
            mem[0] = idx
            mem[32] = 11
            _140 = mem[64]
            mem[64] = mem[64] + 64
            mem[_140] = 31
            mem[_140 + 32] = 'SafeMath: subtraction underflow'
            if stor12[address(msg.sender)][idx] > stor11[idx]:
                _148 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 31
                idx = 0
                while idx < 31:
                    mem[idx + _148 + 68] = mem[idx + _140 + 32]
                    idx = idx + 32
                    continue 
                mem[_148 + 68] = mem[_148 + 69 len 31]
                revert with memory
                  from mem[64]
                   len _148 + -mem[64] + 100
            if not stor11[idx] - stor12[address(msg.sender)][idx]:
                if sub_f495c9c9[address(msg.sender)][idx] < sub_f495c9c9[address(msg.sender)][idx]:
                    revert with 0, 'SafeMath: addition overflow'
            else:
                if (stor11[idx] * sub_1130a36c[address(msg.sender)]) - (stor12[address(msg.sender)][idx] * sub_1130a36c[address(msg.sender)]) / stor11[idx] - stor12[address(msg.sender)][idx] != sub_1130a36c[address(msg.sender)]:
                    revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if (stor11[idx] * sub_1130a36c[address(msg.sender)]) - (stor12[address(msg.sender)][idx] * sub_1130a36c[address(msg.sender)]) + sub_f495c9c9[address(msg.sender)][idx] < sub_f495c9c9[address(msg.sender)][idx]:
                    revert with 0, 'SafeMath: addition overflow'
                sub_f495c9c9[address(msg.sender)][idx] = (stor11[idx] * sub_1130a36c[address(msg.sender)]) - (stor12[address(msg.sender)][idx] * sub_1130a36c[address(msg.sender)]) + sub_f495c9c9[address(msg.sender)][idx]
            mem[0] = idx
            mem[32] = sha3(address(msg.sender), 12)
            stor12[address(msg.sender)][idx] = stor11[idx]
            idx = idx + 1
            continue 
        s = 0
        while s < 2:
            if not s:
                if sub_f495c9c9[msg.sender][s] < sub_f495c9c9[address(msg.sender)][0]:
                    revert with 0, 'Not enough accrued rewards'
                mem[0] = 0
                mem[32] = sha3(address(msg.sender), 8)
                _381 = mem[64]
                mem[64] = mem[64] + 64
                mem[_381] = 31
                mem[_381 + 32] = 'SafeMath: subtraction underflow'
                if sub_f495c9c9[msg.sender][s] <= sub_f495c9c9[address(msg.sender)][0]:
                    mem[0] = 0
                    mem[32] = sha3(address(msg.sender), 8)
                    sub_f495c9c9[address(msg.sender)][0] -= sub_f495c9c9[msg.sender][s]
                    call msg.sender with:
                       value sub_f495c9c9[msg.sender][s] wei
                         gas 2300 * is_zero(value) wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    s = s + 1
                    continue 
                _393 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 31
                idx = 0
                while idx < 31:
                    mem[idx + _393 + 68] = mem[idx + _381 + 32]
                    idx = idx + 32
                    continue 
                mem[_393 + 68] = mem[_393 + 69 len 31]
                revert with memory
                  from mem[64]
                   len _393 + -mem[64] + 100
            if sub_f495c9c9[msg.sender][s] < sub_f495c9c9[address(msg.sender)][s]:
                revert with 0, 'Not enough accrued rewards'
            mem[0] = s
            mem[32] = sha3(address(msg.sender), 8)
            _388 = mem[64]
            mem[64] = mem[64] + 64
            mem[_388] = 31
            mem[_388 + 32] = 'SafeMath: subtraction underflow'
            if sub_f495c9c9[msg.sender][s] > sub_f495c9c9[address(msg.sender)][s]:
                _406 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 31
                s = 0
                while s < 31:
                    mem[s + _406 + 68] = mem[s + _388 + 32]
                    s = s + 32
                    continue 
                mem[_406 + 68] = mem[_406 + 69 len 31]
                revert with memory
                  from mem[64]
                   len _406 + -mem[64] + 100
            mem[0] = s
            mem[32] = sha3(address(msg.sender), 8)
            sub_f495c9c9[address(msg.sender)][s] -= sub_f495c9c9[msg.sender][s]
            mem[mem[64] + 4] = msg.sender
            mem[mem[64] + 36] = sub_f495c9c9[msg.sender][s]
            require ext_code.size(stor6[s])
            call stor6[s].transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, sub_f495c9c9[msg.sender][s]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = s + 1
            continue 
    else:
        if not totalSupplies:
            idx = 0
            while idx < 2:
                mem[0] = idx
                mem[32] = 11
                _142 = mem[64]
                mem[64] = mem[64] + 64
                mem[_142] = 31
                mem[_142 + 32] = 'SafeMath: subtraction underflow'
                if stor12[address(msg.sender)][idx] > stor11[idx]:
                    _156 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 31
                    idx = 0
                    while idx < 31:
                        mem[idx + _156 + 68] = mem[idx + _142 + 32]
                        idx = idx + 32
                        continue 
                    mem[_156 + 68] = mem[_156 + 69 len 31]
                    revert with memory
                      from mem[64]
                       len _156 + -mem[64] + 100
                if not stor11[idx] - stor12[address(msg.sender)][idx]:
                    if sub_f495c9c9[address(msg.sender)][idx] < sub_f495c9c9[address(msg.sender)][idx]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (stor11[idx] * sub_1130a36c[address(msg.sender)]) - (stor12[address(msg.sender)][idx] * sub_1130a36c[address(msg.sender)]) / stor11[idx] - stor12[address(msg.sender)][idx] != sub_1130a36c[address(msg.sender)]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (stor11[idx] * sub_1130a36c[address(msg.sender)]) - (stor12[address(msg.sender)][idx] * sub_1130a36c[address(msg.sender)]) + sub_f495c9c9[address(msg.sender)][idx] < sub_f495c9c9[address(msg.sender)][idx]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f495c9c9[address(msg.sender)][idx] = (stor11[idx] * sub_1130a36c[address(msg.sender)]) - (stor12[address(msg.sender)][idx] * sub_1130a36c[address(msg.sender)]) + sub_f495c9c9[address(msg.sender)][idx]
                mem[0] = idx
                mem[32] = sha3(address(msg.sender), 12)
                stor12[address(msg.sender)][idx] = stor11[idx]
                idx = idx + 1
                continue 
            s = 0
            while s < 2:
                if not s:
                    if sub_f495c9c9[msg.sender][s] < sub_f495c9c9[address(msg.sender)][0]:
                        revert with 0, 'Not enough accrued rewards'
                    mem[0] = 0
                    mem[32] = sha3(address(msg.sender), 8)
                    _387 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_387] = 31
                    mem[_387 + 32] = 'SafeMath: subtraction underflow'
                    if sub_f495c9c9[msg.sender][s] <= sub_f495c9c9[address(msg.sender)][0]:
                        mem[0] = 0
                        mem[32] = sha3(address(msg.sender), 8)
                        sub_f495c9c9[address(msg.sender)][0] -= sub_f495c9c9[msg.sender][s]
                        call msg.sender with:
                           value sub_f495c9c9[msg.sender][s] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
                    _403 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 31
                    idx = 0
                    while idx < 31:
                        mem[idx + _403 + 68] = mem[idx + _387 + 32]
                        idx = idx + 32
                        continue 
                    mem[_403 + 68] = mem[_403 + 69 len 31]
                    revert with memory
                      from mem[64]
                       len _403 + -mem[64] + 100
                if sub_f495c9c9[msg.sender][s] < sub_f495c9c9[address(msg.sender)][s]:
                    revert with 0, 'Not enough accrued rewards'
                mem[0] = s
                mem[32] = sha3(address(msg.sender), 8)
                _392 = mem[64]
                mem[64] = mem[64] + 64
                mem[_392] = 31
                mem[_392 + 32] = 'SafeMath: subtraction underflow'
                if sub_f495c9c9[msg.sender][s] > sub_f495c9c9[address(msg.sender)][s]:
                    _411 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 31
                    s = 0
                    while s < 31:
                        mem[s + _411 + 68] = mem[s + _392 + 32]
                        s = s + 32
                        continue 
                    mem[_411 + 68] = mem[_411 + 69 len 31]
                    revert with memory
                      from mem[64]
                       len _411 + -mem[64] + 100
                mem[0] = s
                mem[32] = sha3(address(msg.sender), 8)
                sub_f495c9c9[address(msg.sender)][s] -= sub_f495c9c9[msg.sender][s]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = sub_f495c9c9[msg.sender][s]
                require ext_code.size(stor6[s])
                call stor6[s].transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_f495c9c9[msg.sender][s]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = s + 1
                continue 
        else:
            idx = 0
            while idx < 2:
                mem[0] = idx
                mem[32] = 7
                if rewardSpeeds[idx]:
                    mem[0] = idx
                    mem[32] = 7
                    if not rewardSpeeds[idx]:
                        _204 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_204] = 26
                        mem[_204 + 32] = 'SafeMath: division by zero'
                        if not totalSupplies:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _204 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        _284 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_284] = 26
                        mem[_284 + 32] = 'SafeMath: division by zero'
                        if (0 / totalSupplies / 10^18) + stor11[idx] < stor11[idx]:
                            revert with 0, 'SafeMath: addition overflow'
                        mem[0] = idx
                        mem[32] = 11
                        stor11[idx] += 0 / totalSupplies / 10^18
                    else:
                        if (block.timestamp * rewardSpeeds[idx]) - (stor13 * rewardSpeeds[idx]) / rewardSpeeds[idx] != block.timestamp - stor13:
                            revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not (block.timestamp * rewardSpeeds[idx]) - (stor13 * rewardSpeeds[idx]):
                            _225 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_225] = 26
                            mem[_225 + 32] = 'SafeMath: division by zero'
                            if not totalSupplies:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _225 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _304 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_304] = 26
                            mem[_304 + 32] = 'SafeMath: division by zero'
                            if (0 / totalSupplies / 10^18) + stor11[idx] < stor11[idx]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 11
                            stor11[idx] += 0 / totalSupplies / 10^18
                        else:
                            if (10^18 * block.timestamp * rewardSpeeds[idx]) - (10^18 * stor13 * rewardSpeeds[idx]) / (block.timestamp * rewardSpeeds[idx]) - (stor13 * rewardSpeeds[idx]) != 10^18:
                                revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _254 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_254] = 26
                            mem[_254 + 32] = 'SafeMath: division by zero'
                            if not totalSupplies:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _254 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            _313 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_313] = 26
                            mem[_313 + 32] = 'SafeMath: division by zero'
                            if ((10^18 * block.timestamp * rewardSpeeds[idx]) - (10^18 * stor13 * rewardSpeeds[idx]) / totalSupplies / 10^18) + stor11[idx] < stor11[idx]:
                                revert with 0, 'SafeMath: addition overflow'
                            mem[0] = idx
                            mem[32] = 11
                            stor11[idx] += (10^18 * block.timestamp * rewardSpeeds[idx]) - (10^18 * stor13 * rewardSpeeds[idx]) / totalSupplies / 10^18
                idx = idx + 1
                continue 
            idx = 0
            while idx < 2:
                mem[0] = idx
                mem[32] = 11
                _341 = mem[64]
                mem[64] = mem[64] + 64
                mem[_341] = 31
                mem[_341 + 32] = 'SafeMath: subtraction underflow'
                if stor12[address(msg.sender)][idx] > stor11[idx]:
                    _367 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 31
                    idx = 0
                    while idx < 31:
                        mem[idx + _367 + 68] = mem[idx + _341 + 32]
                        idx = idx + 32
                        continue 
                    mem[_367 + 68] = mem[_367 + 69 len 31]
                    revert with memory
                      from mem[64]
                       len _367 + -mem[64] + 100
                if not stor11[idx] - stor12[address(msg.sender)][idx]:
                    if sub_f495c9c9[address(msg.sender)][idx] < sub_f495c9c9[address(msg.sender)][idx]:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if (stor11[idx] * sub_1130a36c[address(msg.sender)]) - (stor12[address(msg.sender)][idx] * sub_1130a36c[address(msg.sender)]) / stor11[idx] - stor12[address(msg.sender)][idx] != sub_1130a36c[address(msg.sender)]:
                        revert with 0, 32, 33, 0x6e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if (stor11[idx] * sub_1130a36c[address(msg.sender)]) - (stor12[address(msg.sender)][idx] * sub_1130a36c[address(msg.sender)]) + sub_f495c9c9[address(msg.sender)][idx] < sub_f495c9c9[address(msg.sender)][idx]:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_f495c9c9[address(msg.sender)][idx] = (stor11[idx] * sub_1130a36c[address(msg.sender)]) - (stor12[address(msg.sender)][idx] * sub_1130a36c[address(msg.sender)]) + sub_f495c9c9[address(msg.sender)][idx]
                mem[0] = idx
                mem[32] = sha3(address(msg.sender), 12)
                stor12[address(msg.sender)][idx] = stor11[idx]
                idx = idx + 1
                continue 
            s = 0
            while s < 2:
                if not s:
                    if sub_f495c9c9[msg.sender][s] < sub_f495c9c9[address(msg.sender)][0]:
                        revert with 0, 'Not enough accrued rewards'
                    mem[0] = 0
                    mem[32] = sha3(address(msg.sender), 8)
                    _511 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_511] = 31
                    mem[_511 + 32] = 'SafeMath: subtraction underflow'
                    if sub_f495c9c9[msg.sender][s] <= sub_f495c9c9[address(msg.sender)][0]:
                        mem[0] = 0
                        mem[32] = sha3(address(msg.sender), 8)
                        sub_f495c9c9[address(msg.sender)][0] -= sub_f495c9c9[msg.sender][s]
                        call msg.sender with:
                           value sub_f495c9c9[msg.sender][s] wei
                             gas 2300 * is_zero(value) wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        s = s + 1
                        continue 
                    _513 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 31
                    idx = 0
                    while idx < 31:
                        mem[idx + _513 + 68] = mem[idx + _511 + 32]
                        idx = idx + 32
                        continue 
                    mem[_513 + 68] = mem[_513 + 69 len 31]
                    revert with memory
                      from mem[64]
                       len _513 + -mem[64] + 100
                if sub_f495c9c9[msg.sender][s] < sub_f495c9c9[address(msg.sender)][s]:
                    revert with 0, 'Not enough accrued rewards'
                mem[0] = s
                mem[32] = sha3(address(msg.sender), 8)
                _512 = mem[64]
                mem[64] = mem[64] + 64
                mem[_512] = 31
                mem[_512 + 32] = 'SafeMath: subtraction underflow'
                if sub_f495c9c9[msg.sender][s] > sub_f495c9c9[address(msg.sender)][s]:
                    _516 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 31
                    s = 0
                    while s < 31:
                        mem[s + _516 + 68] = mem[s + _512 + 32]
                        s = s + 32
                        continue 
                    mem[_516 + 68] = mem[_516 + 69 len 31]
                    revert with memory
                      from mem[64]
                       len _516 + -mem[64] + 100
                mem[0] = s
                mem[32] = sha3(address(msg.sender), 8)
                sub_f495c9c9[address(msg.sender)][s] -= sub_f495c9c9[msg.sender][s]
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = sub_f495c9c9[msg.sender][s]
                require ext_code.size(stor6[s])
                call stor6[s].transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, sub_f495c9c9[msg.sender][s]
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                s = s + 1
                continue 
    stor0 = 1
}



}
