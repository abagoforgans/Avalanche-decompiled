contract main {




// =====================  Runtime code  =====================


const name = '', 0

const decimals = 18

const isPendleToken = 1

const symbol = '', 0

const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


address governanceAddress;
address pendingGovernanceAddress;
uint256 totalSupply;
uint256 emissionRateMultiplierNumerator;
uint256 terminalInflationRateNumerator;
uint8 stor6; offset 160
uint128 stor6; offset 168
uint128 stor6; offset 160
address liquidityIncentivesRecipientAddress;
uint256 pendingEmissionRateMultiplierNumerator;
uint256 pendingTerminalInflationRateNumerator;
uint8 stor9; offset 160
uint128 stor9; offset 160
address pendingLiquidityIncentivesRecipientAddress;
uint256 configChangesInitiated;
uint256 startTime;
uint256 sub_32c9c834;
uint256 sub_0d7a1c62;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function sub_0d7a1c62(?) payable {
    return sub_0d7a1c62
}

function totalSupply() payable {
    return totalSupply
}

function pendingTerminalInflationRateNumerator() payable {
    return pendingTerminalInflationRateNumerator
}

function emissionRateMultiplierNumerator() payable {
    return emissionRateMultiplierNumerator
}

function pendingLiquidityIncentivesRecipient() payable {
    return pendingLiquidityIncentivesRecipientAddress
}

function sub_32c9c834(?) payable {
    return sub_32c9c834
}

function pendingIsBurningAllowed() payable {
    return bool(uint8(stor9.field_160))
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[arg1]
}

function governance() payable {
    return governanceAddress
}

function numCheckpoints(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return numCheckpoints[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function startTime() payable {
    return startTime
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function terminalInflationRateNumerator() payable {
    return terminalInflationRateNumerator
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function pendingEmissionRateMultiplierNumerator() payable {
    return pendingEmissionRateMultiplierNumerator
}

function isBurningAllowed() payable {
    return bool(uint8(stor6.field_160))
}

function configChangesInitiated() payable {
    return configChangesInitiated
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function pendingGovernance() payable {
    return pendingGovernanceAddress
}

function liquidityIncentivesRecipient() payable {
    return liquidityIncentivesRecipientAddress
}

function _fallback() payable {
    revert
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if numCheckpoints[address(arg1)]:
        return checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
    else:
        return 0
}

function claimGovernance() payable {
    if pendingGovernanceAddress != msg.sender:
        revert with 0, 'WRONG_GOVERNANCE'
    emit GovernanceClaimed(pendingGovernanceAddress, governanceAddress);
    governanceAddress = pendingGovernanceAddress
    pendingGovernanceAddress = 0
}

function transferGovernance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0, 'ONLY_GOVERNANCE'
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    pendingGovernanceAddress = arg1
    emit TransferGovernancePending(arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'OWNER_ZERO_ADDR'
    if not arg1:
        revert with 0, 'SPENDER_ZERO_ADDR'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawEther(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if governanceAddress != msg.sender:
        revert with 0, 'ONLY_GOVERNANCE'
    call arg2 with:
       value arg1 wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'WITHDRAW_FAILED'
    emit EtherWithdraw(arg1, arg2);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 'NEGATIVE_ALLOWANCE'
    if not msg.sender:
        revert with 0, 'OWNER_ZERO_ADDR'
    if not arg1:
        revert with 0, 'SPENDER_ZERO_ADDR'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 + allowance[msg.sender][address(arg1)] < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0, 'OWNER_ZERO_ADDR'
    if not arg1:
        revert with 0, 'SPENDER_ZERO_ADDR'
    allowance[address(msg.sender)][address(arg1)] = arg2 + allowance[msg.sender][address(arg1)]
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not uint8(stor6.field_160):
        revert with 0, 'BURNING_NOT_ALLOWED'
    if not msg.sender:
        revert with 0, 'BURN_FROM_ZERO_ADDRESS'
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'BURN_EXCEED_BALANCE'
    if arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg1
    if arg1 > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function initiateConfigChanges(uint256 arg1, uint256 arg2, address arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg3 == arg3
    require arg4 == arg4
    if governanceAddress != msg.sender:
        revert with 0, 'ONLY_GOVERNANCE'
    if not arg3:
        revert with 0, 'ZERO_ADDRESS'
    pendingEmissionRateMultiplierNumerator = arg1
    pendingTerminalInflationRateNumerator = arg2
    pendingLiquidityIncentivesRecipientAddress = arg3
    Mask(96, 0, stor9.field_160) = Mask(96, 0, arg4)
    emit PendingConfigChanges(arg1, arg2, address(arg3), arg4);
    configChangesInitiated = block.timestamp
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= block.number:
        revert with 0, 'NOT_YET_DETERMINED'
    if not numCheckpoints[address(arg1)]:
        return 0
    if arg2 >= checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0:
        return checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        mem[0] = uint32(numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1)
        mem[32] = sha3(address(arg1), 17)
        _31 = mem[64]
        mem[64] = mem[64] + 64
        mem[_31] = checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0
        mem[_31 + 32] = checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 == checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            return checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_256
        if arg2 <= checkpoints[address(arg1)][stor18[address(arg1)] + -(uint32(stor18[address(arg1)] + -idx - 1) / 2) - 1 << 224].field_0:
            idx = idx
            continue 
        idx = numCheckpoints[address(arg1)] + -(uint32(numCheckpoints[address(arg1)] + -idx - 1) / 2) - 1
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function withdrawToken(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    if governanceAddress != msg.sender:
        revert with 0, 'ONLY_GOVERNANCE'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit TokenWithdraw(address(arg1), arg2, arg3);
}

function claimLiquidityEmissions() payable {
    if liquidityIncentivesRecipientAddress != msg.sender:
        revert with 0, 'NOT_INCENTIVES_RECIPIENT'
    if (block.timestamp - startTime / 168 * 24 * 3600) + 1 <= sub_0d7a1c62:
        return 0
    idx = sub_0d7a1c62 + 1
    s = 0
    while idx <= (block.timestamp - startTime / 168 * 24 * 3600) + 1:
        if idx > 259:
            if not totalSupply:
                sub_32c9c834 = 0
            else:
                if terminalInflationRateNumerator * totalSupply / totalSupply != terminalInflationRateNumerator:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                sub_32c9c834 = terminalInflationRateNumerator * totalSupply / 10^12
        else:
            if not sub_32c9c834:
                sub_32c9c834 = 0
            else:
                if emissionRateMultiplierNumerator * sub_32c9c834 / sub_32c9c834 != emissionRateMultiplierNumerator:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                sub_32c9c834 = emissionRateMultiplierNumerator * sub_32c9c834 / 10^12
        if not liquidityIncentivesRecipientAddress:
            revert with 0, 'MINT_TO_ZERO_ADDR'
        if sub_32c9c834 + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += sub_32c9c834
        if sub_32c9c834 + balanceOf[address(stor6.field_0)] < balanceOf[address(stor6.field_0)]:
            revert with 0, 'SafeMath: addition overflow'
        mem[0] = liquidityIncentivesRecipientAddress
        mem[32] = 15
        balanceOf[address(stor6.field_0)] += sub_32c9c834
        mem[96] = sub_32c9c834
        emit Transfer(sub_32c9c834, 0, liquidityIncentivesRecipientAddress);
        if sub_32c9c834 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = sub_32c9c834 + s
        continue 
    sub_0d7a1c62 = (block.timestamp - startTime / 168 * 24 * 3600) + 1
    return s
}

function applyConfigChanges() payable {
    if not configChangesInitiated:
        revert with 0, 'UNINITIATED_CONFIG_CHANGES'
    if block.timestamp <= configChangesInitiated + (168 * 24 * 3600):
        revert with 0, 'TIMELOCK_IS_NOT_OVER'
    if (block.timestamp - startTime / 168 * 24 * 3600) + 1 > sub_0d7a1c62:
        idx = sub_0d7a1c62 + 1
        s = 0
        while idx <= (block.timestamp - startTime / 168 * 24 * 3600) + 1:
            if idx > 259:
                if not totalSupply:
                    sub_32c9c834 = 0
                else:
                    if terminalInflationRateNumerator * totalSupply / totalSupply != terminalInflationRateNumerator:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    sub_32c9c834 = terminalInflationRateNumerator * totalSupply / 10^12
            else:
                if not sub_32c9c834:
                    sub_32c9c834 = 0
                else:
                    if emissionRateMultiplierNumerator * sub_32c9c834 / sub_32c9c834 != emissionRateMultiplierNumerator:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    sub_32c9c834 = emissionRateMultiplierNumerator * sub_32c9c834 / 10^12
            if not liquidityIncentivesRecipientAddress:
                revert with 0, 'MINT_TO_ZERO_ADDR'
            if sub_32c9c834 + totalSupply < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += sub_32c9c834
            if sub_32c9c834 + balanceOf[address(stor6.field_0)] < balanceOf[address(stor6.field_0)]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = liquidityIncentivesRecipientAddress
            mem[32] = 15
            balanceOf[address(stor6.field_0)] += sub_32c9c834
            mem[96] = sub_32c9c834
            emit Transfer(sub_32c9c834, 0, liquidityIncentivesRecipientAddress);
            if sub_32c9c834 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            idx = idx + 1
            s = sub_32c9c834 + s
            continue 
        sub_0d7a1c62 = (block.timestamp - startTime / 168 * 24 * 3600) + 1
    emissionRateMultiplierNumerator = pendingEmissionRateMultiplierNumerator
    terminalInflationRateNumerator = pendingTerminalInflationRateNumerator
    liquidityIncentivesRecipientAddress = pendingLiquidityIncentivesRecipientAddress
    Mask(96, 0, stor6.field_160) = Mask(96, 0, bool(uint8(stor9.field_160)))
    Mask(88, 0, stor6.field_168) = 0
    configChangesInitiated = 0
    emit ConfigsChanged(pendingEmissionRateMultiplierNumerator, pendingTerminalInflationRateNumerator, pendingLiquidityIncentivesRecipientAddress, bool(0 or uint8(bool(uint8(stor9.field_160)))));
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'SENDER_ZERO_ADDR'
    if not arg1:
        revert with 0, 'RECEIVER_ZERO_ADDR'
    if this.address == arg1:
        revert with 0, 'SEND_TO_TOKEN_CONTRACT'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'TRANSFER_EXCEED_BALANCE'
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    if delegates[address(msg.sender)] != delegates[arg1]:
        if arg2 > 0:
            if delegates[address(msg.sender)]:
                if numCheckpoints[stor16[address(msg.sender)]]:
                    if arg2 > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2
                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                    else:
                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= arg2
                        else:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - arg2, delegates[address(msg.sender)]);
                else:
                    if arg2 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2
                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                    else:
                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -arg2
                        else:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -arg2
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                    emit DelegateVotesChanged(0, -arg2, delegates[address(msg.sender)]);
            if delegates[arg1]:
                if numCheckpoints[stor16[arg1]]:
                    if arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 < checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[stor16[arg1]] <= 0:
                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                    else:
                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256
                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, arg2 + checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256, delegates[arg1]);
                else:
                    if arg2 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[stor16[arg1]] <= 0:
                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                        checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                        numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                    else:
                        if checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[arg1]][stor18[stor16[arg1]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_0 = uint32(block.number)
                            checkpoints[stor16[arg1]][stor18[stor16[arg1]]].field_256 = arg2
                            numCheckpoints[stor16[arg1]] = uint32(numCheckpoints[stor16[arg1]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[arg1]);
    return 1
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if delegates[address(msg.sender)]:
                if numCheckpoints[stor16[address(msg.sender)]]:
                    if balanceOf[address(msg.sender)] > checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                    else:
                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                        else:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                else:
                    if balanceOf[address(msg.sender)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[stor16[address(msg.sender)]] <= 0:
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                    else:
                        if checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                        else:
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(msg.sender)]][stor18[stor16[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            numCheckpoints[stor16[address(msg.sender)]] = uint32(numCheckpoints[stor16[address(msg.sender)]] + 1)
                    emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
            if arg1:
                if numCheckpoints[address(arg1)]:
                    if balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                        else:
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(msg.sender)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                else:
                    if balanceOf[address(msg.sender)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                        else:
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0, 'SENDER_ZERO_ADDR'
    if not arg2:
        revert with 0, 'RECEIVER_ZERO_ADDR'
    if this.address == arg2:
        revert with 0, 'SEND_TO_TOKEN_CONTRACT'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'TRANSFER_EXCEED_BALANCE'
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit Transfer(arg3, arg1, arg2);
    if delegates[address(arg1)] == delegates[arg2]:
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 'TRANSFER_EXCEED_ALLOWANCE'
    else:
        if arg3 > 0:
            if delegates[address(arg1)]:
                if numCheckpoints[stor16[address(arg1)]]:
                    if arg3 > checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg3
                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 -= arg3
                        else:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg3
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256, checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 - arg3, delegates[address(arg1)]);
                else:
                    if arg3 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[stor16[address(arg1)]] <= 0:
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg3
                        numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                    else:
                        if checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]] - 1 << 224].field_256 = -arg3
                        else:
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(arg1)]][stor18[stor16[address(arg1)]]].field_256 = -arg3
                            numCheckpoints[stor16[address(arg1)]] = uint32(numCheckpoints[stor16[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, -arg3, delegates[address(arg1)]);
            if delegates[arg2]:
                if numCheckpoints[stor16[arg2]]:
                    if arg3 + checkpoints[stor16[arg2]][stor18[stor16[arg2]] - 1 << 224].field_256 < checkpoints[stor16[arg2]][stor18[stor16[arg2]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[stor16[arg2]] <= 0:
                        checkpoints[stor16[arg2]][stor18[stor16[arg2]]].field_0 = uint32(block.number)
                        checkpoints[stor16[arg2]][stor18[stor16[arg2]]].field_256 = arg3 + checkpoints[stor16[arg2]][stor18[stor16[arg2]] - 1 << 224].field_256
                        numCheckpoints[stor16[arg2]] = uint32(numCheckpoints[stor16[arg2]] + 1)
                    else:
                        if checkpoints[stor16[arg2]][stor18[stor16[arg2]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[arg2]][stor18[stor16[arg2]] - 1 << 224].field_256 += arg3
                        else:
                            checkpoints[stor16[arg2]][stor18[stor16[arg2]]].field_0 = uint32(block.number)
                            checkpoints[stor16[arg2]][stor18[stor16[arg2]]].field_256 = arg3 + checkpoints[stor16[arg2]][stor18[stor16[arg2]] - 1 << 224].field_256
                            numCheckpoints[stor16[arg2]] = uint32(numCheckpoints[stor16[arg2]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor16[arg2]][stor18[stor16[arg2]] - 1 << 224].field_256, arg3 + checkpoints[stor16[arg2]][stor18[stor16[arg2]] - 1 << 224].field_256, delegates[arg2]);
                else:
                    if arg3 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[stor16[arg2]] <= 0:
                        checkpoints[stor16[arg2]][stor18[stor16[arg2]]].field_0 = uint32(block.number)
                        checkpoints[stor16[arg2]][stor18[stor16[arg2]]].field_256 = arg3
                        numCheckpoints[stor16[arg2]] = uint32(numCheckpoints[stor16[arg2]] + 1)
                    else:
                        if checkpoints[stor16[arg2]][stor18[stor16[arg2]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[arg2]][stor18[stor16[arg2]] - 1 << 224].field_256 = arg3
                        else:
                            checkpoints[stor16[arg2]][stor18[stor16[arg2]]].field_0 = uint32(block.number)
                            checkpoints[stor16[arg2]][stor18[stor16[arg2]]].field_256 = arg3
                            numCheckpoints[stor16[arg2]] = uint32(numCheckpoints[stor16[arg2]] + 1)
                    emit DelegateVotesChanged(0, arg3, delegates[arg2]);
            if arg3 > allowance[address(arg1)][msg.sender]:
                revert with 0, 'TRANSFER_EXCEED_ALLOWANCE'
    if not arg1:
        revert with 0, 'OWNER_ZERO_ADDR'
    if not msg.sender:
        revert with 0, 'SPENDER_ZERO_ADDR'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 == arg4
    signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, 0xff2cde021cdee1d25b48654d14cc97c50a36ce29f880cb7d517933c7a82da0cf, chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'INVALID_SIGNATURE'
    nonces[address(signer)]++
    if arg2 != nonces[address(signer)]:
        revert with 0, 'INVALID_NONCE'
    if block.timestamp > arg3:
        revert with 0, 'SIGNATURE_EXPIRED'
    delegates[address(signer)] = arg1
    emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
    if delegates[address(signer)] != arg1:
        if balanceOf[address(signer)] > 0:
            if delegates[address(signer)]:
                if numCheckpoints[stor16[address(signer)]]:
                    if balanceOf[address(signer)] > checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[stor16[address(signer)]] <= 0:
                        checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_256 = checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                        numCheckpoints[stor16[address(signer)]] = uint32(numCheckpoints[stor16[address(signer)]] + 1)
                    else:
                        if checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                        else:
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_256 = checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            numCheckpoints[stor16[address(signer)]] = uint32(numCheckpoints[stor16[address(signer)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256, checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                else:
                    if balanceOf[address(signer)] > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[stor16[address(signer)]] <= 0:
                        checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_0 = uint32(block.number)
                        checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_256 = -balanceOf[address(signer)]
                        numCheckpoints[stor16[address(signer)]] = uint32(numCheckpoints[stor16[address(signer)]] + 1)
                    else:
                        if checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                        else:
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor16[address(signer)]][stor18[stor16[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            numCheckpoints[stor16[address(signer)]] = uint32(numCheckpoints[stor16[address(signer)]] + 1)
                    emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
            if arg1:
                if numCheckpoints[address(arg1)]:
                    if balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 < checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                        else:
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, balanceOf[address(signer)] + checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256, arg1);
                else:
                    if balanceOf[address(signer)] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if block.number >= 4294967296:
                        revert with 0, 'BLOCK_NUM_EXCEED_32_BITS', 0
                    if numCheckpoints[address(arg1)] <= 0:
                        checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                        checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    else:
                        if checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                            checkpoints[address(arg1)][stor18[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                        else:
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor18[address(arg1)]].field_256 = balanceOf[address(signer)]
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
}



}
