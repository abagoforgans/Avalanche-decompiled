contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1)
#  - governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3)
#  - allocateSeigniorage(uint256 arg1)
#  - stake(uint256 arg1)
#
address shareAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
uint8 stor4; offset 160
uint128 stor4; offset 160
address operatorAddress;
address creamAddress;
address treasuryAddress;
mapping of struct members;
array of struct rewardPerShare;
uint256 withdrawLockupEpochs;
uint256 rewardLockupEpochs;

function rewardLockupEpochs() payable {
    return rewardLockupEpochs
}

function members(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return members[arg1].field_0, members[arg1].field_256, members[arg1].field_512
}

function initialized() payable {
    return bool(uint8(stor4.field_160))
}

function totalSupply() payable {
    return totalSupply
}

function withdrawLockupEpochs() payable {
    return withdrawLockupEpochs
}

function rewardPerShare() payable {
    if rewardPerShare.length < 1:
        revert with 'NH{q', 17
    if rewardPerShare.length - 1 >= rewardPerShare.length:
        revert with 'NH{q', 50
    return rewardPerShare[rewardPerShare.length].field_0
}

function operator() payable {
    return operatorAddress
}

function treasury() payable {
    return treasuryAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function getLastSnapshotIndexOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return members[address(arg1)].field_0
}

function cream() payable {
    return creamAddress
}

function share() payable {
    return shareAddress
}

function sub_c58e3843(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require arg1 < rewardPerShare.length
    return rewardPerShare[arg1].field_0, rewardPerShare[arg1].field_256, rewardPerShare[arg1].field_512
}

function _fallback() payable {
    revert
}

function latestSnapshotIndex() payable {
    if rewardPerShare.length < 1:
        revert with 'NH{q', 17
    return (rewardPerShare.length - 1)
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Boardroom: caller is not the operator'
    operatorAddress = arg1
}

function epoch() payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_ccd5edc1(?) payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0xccd5edc1 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function nextEpochPoint() payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0xc5967c26 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function canClaimReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if members[address(arg1)].field_512 > -rewardLockupEpochs - 1:
        revert with 'NH{q', 17
    return members[address(arg1)].field_512 + rewardLockupEpochs <= ext_call.return_data[0]
}

function canWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if members[address(arg1)].field_512 > -withdrawLockupEpochs - 1:
        revert with 'NH{q', 17
    return members[address(arg1)].field_512 + withdrawLockupEpochs <= ext_call.return_data[0]
}

function setLockUp(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Boardroom: caller is not the operator'
    if arg1 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_withdrawLockupEpochs: out of range'
    if arg1 > 56:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_withdrawLockupEpochs: out of range'
    withdrawLockupEpochs = arg1
    rewardLockupEpochs = arg2
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if uint8(stor4.field_160):
        revert with 0, 'Boardroom: already initialized'
    creamAddress = arg1
    shareAddress = arg2
    treasuryAddress = arg3
    rewardPerShare.length++
    rewardPerShare[rewardPerShare.length].field_0 = block.number
    rewardPerShare[rewardPerShare.length].field_256 = 0
    rewardPerShare[rewardPerShare.length].field_512 = 0
    withdrawLockupEpochs = 6
    rewardLockupEpochs = 3
    Mask(96, 0, stor4.field_160) = 1
    operatorAddress = msg.sender
    emit Initialized(block.number, msg.sender);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if rewardPerShare.length < 1:
        revert with 'NH{q', 17
    if rewardPerShare.length - 1 >= rewardPerShare.length:
        revert with 'NH{q', 50
    if members[address(arg1)].field_0 >= rewardPerShare.length:
        revert with 'NH{q', 50
    if rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[stor7[address(arg1)].field_0].field_512:
        revert with 'NH{q', 17
    if balanceOf[address(arg1)] and rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(arg1)].field_0].field_512 > -1 / balanceOf[address(arg1)]:
        revert with 'NH{q', 17
    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)]) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)]) / 10^18 > -members[address(arg1)].field_256 - 1:
        revert with 'NH{q', 17
    return (((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)]) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)]) / 10^18) + members[address(arg1)].field_256)
}

function claimReward() payable {
    if not msg.sender:
        if members[address(msg.sender)].field_256 > 0:
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if members[address(msg.sender)].field_512 > -rewardLockupEpochs - 1:
                revert with 'NH{q', 17
            if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                revert with 0, 'Boardroom: still in reward lockup'
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            members[address(msg.sender)].field_512 = ext_call.return_data[0]
            mem[0] = msg.sender
            mem[32] = 7
            members[address(msg.sender)].field_256 = 0
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = members[address(msg.sender)].field_256
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            mem[(2 * ceil32(return_data.size)) + 260] = ext_code.size(creamAddress)
            mem[(2 * ceil32(return_data.size)) + 292 len ext_code.size(creamAddress)] = ext_code.copy(creamAddress, 0 len ext_code.size(creamAddress))
            if ext_code.size(creamAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0
            mem[(2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 360] = 0
            call creamAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = (2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 293
                mem[(2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 324] == bool(mem[(2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 324])
                    if not mem[(2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 324]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
    else:
        mem[160] = members[address(msg.sender)].field_512
        mem[192] = 0
        mem[224] = 0
        mem[256] = 0
        if rewardPerShare.length < 1:
            revert with 'NH{q', 17
        if rewardPerShare.length - 1 >= rewardPerShare.length:
            revert with 'NH{q', 50
        mem[288] = rewardPerShare[rewardPerShare.length].field_0
        mem[320] = rewardPerShare[rewardPerShare.length].field_0
        mem[352] = rewardPerShare[rewardPerShare.length].field_0
        mem[384] = 0
        mem[416] = 0
        mem[448] = 0
        if members[address(msg.sender)].field_0 >= rewardPerShare.length:
            revert with 'NH{q', 50
        mem[480] = rewardPerShare[stor7[address(msg.sender)].field_0].field_0
        mem[512] = rewardPerShare[stor7[address(msg.sender)].field_0].field_256
        mem[544] = rewardPerShare[stor7[address(msg.sender)].field_0].field_512
        if rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] and rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > -1 / balanceOf[address(msg.sender)]:
            revert with 'NH{q', 17
        if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18 > -members[address(msg.sender)].field_256 - 1:
            revert with 'NH{q', 17
        mem[128] = ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256
        if rewardPerShare.length < 1:
            revert with 'NH{q', 17
        mem[96] = rewardPerShare.length - 1
        members[address(msg.sender)].field_0 = rewardPerShare.length - 1
        members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
        if members[address(msg.sender)].field_256 > 0:
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[576] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if members[address(msg.sender)].field_512 > -rewardLockupEpochs - 1:
                revert with 'NH{q', 17
            if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                revert with 0, 'Boardroom: still in reward lockup'
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            members[address(msg.sender)].field_512 = ext_call.return_data[0]
            mem[0] = msg.sender
            mem[32] = 7
            members[address(msg.sender)].field_256 = 0
            mem[(2 * ceil32(return_data.size)) + 612] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 644] = members[address(msg.sender)].field_256
            mem[(2 * ceil32(return_data.size)) + 576] = 68
            mem[(2 * ceil32(return_data.size)) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 608 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 676] = 32
            mem[(2 * ceil32(return_data.size)) + 708] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            mem[(2 * ceil32(return_data.size)) + 740] = ext_code.size(creamAddress)
            mem[(2 * ceil32(return_data.size)) + 772 len ext_code.size(creamAddress)] = ext_code.copy(creamAddress, 0 len ext_code.size(creamAddress))
            if ext_code.size(creamAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 772 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0
            mem[(2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 840] = 0
            call creamAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if rewardPerShare.length - 1 > 0:
                        revert with memory
                          from 128
                           len rewardPerShare.length - 1
                    revert with 0, 'SafeERC20: low-level call failed'
                if rewardPerShare.length - 1 > 0:
                    require rewardPerShare.length - 1 >= 32
                    require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                    if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = (2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 773
                mem[(2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804] == bool(mem[(2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804])
                    if not mem[(2 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
}

function exit() payable {
    if stor3[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ContractGuard: one block, one function'
    if stor3[block.number][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ContractGuard: one block, one function'
    if balanceOf[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Boardroom: The member does not exist'
    if not msg.sender:
        if balanceOf[address(msg.sender)] <= 0:
            revert with 0, 'Boardroom: Cannot withdraw 0'
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if members[address(msg.sender)].field_512 > -withdrawLockupEpochs - 1:
            revert with 'NH{q', 17
        if members[address(msg.sender)].field_512 + withdrawLockupEpochs > ext_call.return_data[0]:
            revert with 0, 'Boardroom: still in withdraw lockup'
        if not msg.sender:
            if members[address(msg.sender)].field_256 <= 0:
                if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'Boardroom: withdraw request greater than staked amount'
                if totalSupply < balanceOf[address(msg.sender)]:
                    revert with 'NH{q', 17
                totalSupply -= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 2
                balanceOf[address(msg.sender)] = 0
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = balanceOf[address(msg.sender)]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                mem[ceil32(return_data.size) + 260] = ext_code.size(shareAddress)
                mem[ceil32(return_data.size) + 292 len ext_code.size(shareAddress)] = ext_code.copy(shareAddress, 0 len ext_code.size(shareAddress))
                if ext_code.size(shareAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)], 0
                mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 360] = 0
                call shareAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = ceil32(return_data.size) + ext_code.size(shareAddress) + ceil32(return_data.size) + 293
                    mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 324] == bool(mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 324])
                        if not mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 324]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][address(msg.sender)] = 1
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            if members[address(msg.sender)].field_512 > -rewardLockupEpochs - 1:
                revert with 'NH{q', 17
            if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                revert with 0, 'Boardroom: still in reward lockup'
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[0]
            members[address(msg.sender)].field_512 = ext_call.return_data[0]
            mem[0] = msg.sender
            mem[32] = 7
            members[address(msg.sender)].field_256 = 0
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 164] = members[address(msg.sender)].field_256
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            mem[(4 * ceil32(return_data.size)) + 260] = ext_code.size(creamAddress)
            mem[(4 * ceil32(return_data.size)) + 292 len ext_code.size(creamAddress)] = ext_code.copy(creamAddress, 0 len ext_code.size(creamAddress))
            if ext_code.size(creamAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 292 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 360] = 0
            call creamAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 0, 'Boardroom: withdraw request greater than staked amount'
                if totalSupply < balanceOf[address(msg.sender)]:
                    revert with 'NH{q', 17
                totalSupply -= balanceOf[address(msg.sender)]
                if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 2
                balanceOf[address(msg.sender)] = 0
                mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 328] = msg.sender
                mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 360] = balanceOf[address(msg.sender)]
                mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 292] = 68
                mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 324 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 392] = 32
                mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 424] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 'Address: insufficient balance for call'
                mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 456] = ext_code.size(shareAddress)
                mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 488 len ext_code.size(shareAddress)] = ext_code.copy(shareAddress, 0 len ext_code.size(shareAddress))
                if ext_code.size(shareAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 488 len 96] = 0, msg.sender, balanceOf[address(msg.sender)], 0
                mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 556] = 0
                call shareAddress with:
                   funct Mask(32, 224, 0, msg.sender, balanceOf[address(msg.sender)], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, balanceOf[address(msg.sender)], 0) << 288)
                if not return_data.size:
                    if not ext_call.success:
                        if ext_call.return_data[0] > 0:
                            revert with memory
                              from 128
                               len ext_call.return_data[0]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if ext_call.return_data[0] > 0:
                        require ext_call.return_data[0] >= 32
                        require mem[128] == bool(mem[128])
                        if not mem[128]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                else:
                    mem[64] = (4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + ceil32(return_data.size) + 489
                    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 520 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 520] == bool(mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 520])
                        if not mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 520]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][address(msg.sender)] = 1
            mem[64] = (4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 293
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 292] = return_data.size
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 324] == bool(mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 324])
                if not mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 324]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < balanceOf[address(msg.sender)]:
                revert with 'NH{q', 17
            totalSupply -= balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 2
            balanceOf[address(msg.sender)] = 0
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 329] = msg.sender
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 361] = balanceOf[address(msg.sender)]
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 293] = 68
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 325 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 393] = 32
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 425] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 457] = ext_code.size(shareAddress)
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 489 len ext_code.size(shareAddress)] = ext_code.copy(shareAddress, 0 len ext_code.size(shareAddress))
            if ext_code.size(shareAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 489 len 96] = 0, msg.sender, balanceOf[address(msg.sender)], 0
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 557] = 0
            call shareAddress with:
               funct Mask(32, 224, 0, msg.sender, balanceOf[address(msg.sender)], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, balanceOf[address(msg.sender)], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][address(msg.sender)] = 1
            mem[64] = (8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 490
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 489] = return_data.size
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 521 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 494] = 32
                mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 526] = 32
                mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 558] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 490
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if return_data.size <= 0:
                emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][address(msg.sender)] = 1
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 521] == bool(mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 521])
            if mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 521]:
                emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][address(msg.sender)] = 1
            mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 490] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 494] = 32
            mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 526] = 42
            mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 558] = 'SafeERC20: ERC20 operation did n'
            mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 590] = 'ot succeed'
            revert with memory
              from (8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 490
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[ceil32(return_data.size) + 160] = members[address(msg.sender)].field_512
        mem[ceil32(return_data.size) + 192] = 0
        mem[ceil32(return_data.size) + 224] = 0
        mem[ceil32(return_data.size) + 256] = 0
        if rewardPerShare.length < 1:
            revert with 'NH{q', 17
        if rewardPerShare.length - 1 >= rewardPerShare.length:
            revert with 'NH{q', 50
        mem[ceil32(return_data.size) + 288] = rewardPerShare[rewardPerShare.length].field_0
        mem[ceil32(return_data.size) + 320] = rewardPerShare[rewardPerShare.length].field_0
        mem[ceil32(return_data.size) + 352] = rewardPerShare[rewardPerShare.length].field_0
        mem[ceil32(return_data.size) + 384] = 0
        mem[ceil32(return_data.size) + 416] = 0
        mem[ceil32(return_data.size) + 448] = 0
        if members[address(msg.sender)].field_0 >= rewardPerShare.length:
            revert with 'NH{q', 50
        mem[ceil32(return_data.size) + 480] = rewardPerShare[stor7[address(msg.sender)].field_0].field_0
        mem[ceil32(return_data.size) + 512] = rewardPerShare[stor7[address(msg.sender)].field_0].field_256
        mem[ceil32(return_data.size) + 544] = rewardPerShare[stor7[address(msg.sender)].field_0].field_512
        if rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
            revert with 'NH{q', 17
        if balanceOf[address(msg.sender)] and rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > -1 / balanceOf[address(msg.sender)]:
            revert with 'NH{q', 17
        if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18 > -members[address(msg.sender)].field_256 - 1:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 128] = ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256
        if rewardPerShare.length < 1:
            revert with 'NH{q', 17
        mem[ceil32(return_data.size) + 96] = rewardPerShare.length - 1
        members[address(msg.sender)].field_0 = rewardPerShare.length - 1
        members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
        if members[address(msg.sender)].field_256 <= 0:
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < balanceOf[address(msg.sender)]:
                revert with 'NH{q', 17
            totalSupply -= balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 2
            balanceOf[address(msg.sender)] = 0
            mem[ceil32(return_data.size) + 612] = msg.sender
            mem[ceil32(return_data.size) + 644] = balanceOf[address(msg.sender)]
            mem[ceil32(return_data.size) + 576] = 68
            mem[ceil32(return_data.size) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 608 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 676] = 32
            mem[ceil32(return_data.size) + 708] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            mem[ceil32(return_data.size) + 740] = ext_code.size(shareAddress)
            mem[ceil32(return_data.size) + 772 len ext_code.size(shareAddress)] = ext_code.copy(shareAddress, 0 len ext_code.size(shareAddress))
            if ext_code.size(shareAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 772 len 96] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)], 0
            mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 840] = 0
            call shareAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = ceil32(return_data.size) + ext_code.size(shareAddress) + ceil32(return_data.size) + 773
                mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 804] == bool(mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 804])
                    if not mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 804]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][address(msg.sender)] = 1
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if members[address(msg.sender)].field_512 > -rewardLockupEpochs - 1:
            revert with 'NH{q', 17
        if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
            revert with 0, 'Boardroom: still in reward lockup'
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        members[address(msg.sender)].field_512 = ext_call.return_data[0]
        mem[0] = msg.sender
        mem[32] = 7
        members[address(msg.sender)].field_256 = 0
        mem[(4 * ceil32(return_data.size)) + 612] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 644] = members[address(msg.sender)].field_256
        mem[(4 * ceil32(return_data.size)) + 576] = 68
        mem[(4 * ceil32(return_data.size)) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 608 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 676] = 32
        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        mem[(4 * ceil32(return_data.size)) + 740] = ext_code.size(creamAddress)
        mem[(4 * ceil32(return_data.size)) + 772 len ext_code.size(creamAddress)] = ext_code.copy(creamAddress, 0 len ext_code.size(creamAddress))
        if ext_code.size(creamAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 772 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 840] = 0
        call creamAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < balanceOf[address(msg.sender)]:
                revert with 'NH{q', 17
            totalSupply -= balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 2
            balanceOf[address(msg.sender)] = 0
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 808] = msg.sender
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 840] = balanceOf[address(msg.sender)]
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 772] = 68
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 872] = 32
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 904] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 936] = ext_code.size(shareAddress)
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 968 len ext_code.size(shareAddress)] = ext_code.copy(shareAddress, 0 len ext_code.size(shareAddress))
            if ext_code.size(shareAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 968 len 96] = 0, msg.sender, balanceOf[address(msg.sender)], 0
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1036] = 0
            call shareAddress with:
               funct Mask(32, 224, 0, msg.sender, balanceOf[address(msg.sender)], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, balanceOf[address(msg.sender)], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if ext_call.return_data[0] > 0:
                        revert with memory
                          from 128
                           len ext_call.return_data[0]
                    revert with 0, 'SafeERC20: low-level call failed'
                if ext_call.return_data[0] > 0:
                    require ext_call.return_data[0] >= 32
                    require mem[128] == bool(mem[128])
                    if not mem[128]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = (4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + ceil32(return_data.size) + 969
                mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1000 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1000] == bool(mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1000])
                    if not mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1000]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][address(msg.sender)] = 1
        mem[64] = (4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 773
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 772] = return_data.size
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804] == bool(mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804])
            if not mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'Boardroom: withdraw request greater than staked amount'
        if totalSupply < balanceOf[address(msg.sender)]:
            revert with 'NH{q', 17
        totalSupply -= balanceOf[address(msg.sender)]
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 2
        balanceOf[address(msg.sender)] = 0
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 809] = msg.sender
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 841] = balanceOf[address(msg.sender)]
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 773] = 68
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 805 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 873] = 32
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 905] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 937] = ext_code.size(shareAddress)
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 969 len ext_code.size(shareAddress)] = ext_code.copy(shareAddress, 0 len ext_code.size(shareAddress))
        if ext_code.size(shareAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 969 len 96] = 0, msg.sender, balanceOf[address(msg.sender)], 0
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1037] = 0
        call shareAddress with:
           funct Mask(32, 224, 0, msg.sender, balanceOf[address(msg.sender)], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, balanceOf[address(msg.sender)], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if ext_call.return_data[0] > 0:
                    revert with memory
                      from 128
                       len ext_call.return_data[0]
                revert with 0, 'SafeERC20: low-level call failed'
            if ext_call.return_data[0] > 0:
                require ext_call.return_data[0] >= 32
                require mem[128] == bool(mem[128])
                if not mem[128]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][address(msg.sender)] = 1
        mem[64] = (8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 970
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 969] = return_data.size
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1001 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 970] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 974] = 32
            mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1006] = 32
            mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1038] = 'SafeERC20: low-level call failed'
            revert with memory
              from (8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 970
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
            emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][address(msg.sender)] = 1
        require return_data.size >= 32
        require mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1001] == bool(mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1001])
        if mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1001]:
            emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][address(msg.sender)] = 1
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 970] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 974] = 32
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1006] = 42
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1038] = 'SafeERC20: ERC20 operation did n'
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1070] = 'ot succeed'
        revert with memory
          from (8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 970
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[160] = members[address(msg.sender)].field_512
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    if rewardPerShare.length < 1:
        revert with 'NH{q', 17
    if rewardPerShare.length - 1 >= rewardPerShare.length:
        revert with 'NH{q', 50
    mem[288] = rewardPerShare[rewardPerShare.length].field_0
    mem[320] = rewardPerShare[rewardPerShare.length].field_0
    mem[352] = rewardPerShare[rewardPerShare.length].field_0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    if members[address(msg.sender)].field_0 >= rewardPerShare.length:
        revert with 'NH{q', 50
    mem[480] = rewardPerShare[stor7[address(msg.sender)].field_0].field_0
    mem[512] = rewardPerShare[stor7[address(msg.sender)].field_0].field_256
    mem[544] = rewardPerShare[stor7[address(msg.sender)].field_0].field_512
    if rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
        revert with 'NH{q', 17
    if balanceOf[address(msg.sender)] and rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > -1 / balanceOf[address(msg.sender)]:
        revert with 'NH{q', 17
    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18 > -members[address(msg.sender)].field_256 - 1:
        revert with 'NH{q', 17
    mem[128] = ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256
    if rewardPerShare.length < 1:
        revert with 'NH{q', 17
    mem[96] = rewardPerShare.length - 1
    members[address(msg.sender)].field_0 = rewardPerShare.length - 1
    members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
    if balanceOf[address(msg.sender)] <= 0:
        revert with 0, 'Boardroom: Cannot withdraw 0'
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    mem[576] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if members[address(msg.sender)].field_512 > -withdrawLockupEpochs - 1:
        revert with 'NH{q', 17
    if members[address(msg.sender)].field_512 + withdrawLockupEpochs > ext_call.return_data[0]:
        revert with 0, 'Boardroom: still in withdraw lockup'
    if not msg.sender:
        if members[address(msg.sender)].field_256 <= 0:
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < balanceOf[address(msg.sender)]:
                revert with 'NH{q', 17
            totalSupply -= balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 2
            balanceOf[address(msg.sender)] = 0
            mem[ceil32(return_data.size) + 612] = msg.sender
            mem[ceil32(return_data.size) + 644] = balanceOf[address(msg.sender)]
            mem[ceil32(return_data.size) + 576] = 68
            mem[ceil32(return_data.size) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 608 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 676] = 32
            mem[ceil32(return_data.size) + 708] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            mem[ceil32(return_data.size) + 740] = ext_code.size(shareAddress)
            mem[ceil32(return_data.size) + 772 len ext_code.size(shareAddress)] = ext_code.copy(shareAddress, 0 len ext_code.size(shareAddress))
            if ext_code.size(shareAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 772 len 96] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)], 0
            mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 840] = 0
            call shareAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if rewardPerShare.length - 1 > 0:
                        revert with memory
                          from 128
                           len rewardPerShare.length - 1
                    revert with 0, 'SafeERC20: low-level call failed'
                if rewardPerShare.length - 1 > 0:
                    require rewardPerShare.length - 1 >= 32
                    require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                    if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = ceil32(return_data.size) + ext_code.size(shareAddress) + ceil32(return_data.size) + 773
                mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 804] == bool(mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 804])
                    if not mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 804]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][address(msg.sender)] = 1
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        if members[address(msg.sender)].field_512 > -rewardLockupEpochs - 1:
            revert with 'NH{q', 17
        if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
            revert with 0, 'Boardroom: still in reward lockup'
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[0]
        members[address(msg.sender)].field_512 = ext_call.return_data[0]
        mem[0] = msg.sender
        mem[32] = 7
        members[address(msg.sender)].field_256 = 0
        mem[(4 * ceil32(return_data.size)) + 612] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 644] = members[address(msg.sender)].field_256
        mem[(4 * ceil32(return_data.size)) + 576] = 68
        mem[(4 * ceil32(return_data.size)) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 608 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 676] = 32
        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        mem[(4 * ceil32(return_data.size)) + 740] = ext_code.size(creamAddress)
        mem[(4 * ceil32(return_data.size)) + 772 len ext_code.size(creamAddress)] = ext_code.copy(creamAddress, 0 len ext_code.size(creamAddress))
        if ext_code.size(creamAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 772 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 840] = 0
        call creamAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if rewardPerShare.length - 1 > 0:
                    revert with memory
                      from 128
                       len rewardPerShare.length - 1
                revert with 0, 'SafeERC20: low-level call failed'
            if rewardPerShare.length - 1 > 0:
                require rewardPerShare.length - 1 >= 32
                require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < balanceOf[address(msg.sender)]:
                revert with 'NH{q', 17
            totalSupply -= balanceOf[address(msg.sender)]
            if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
                revert with 'NH{q', 17
            mem[0] = msg.sender
            mem[32] = 2
            balanceOf[address(msg.sender)] = 0
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 808] = msg.sender
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 840] = balanceOf[address(msg.sender)]
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 772] = 68
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 872] = 32
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 904] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 'Address: insufficient balance for call'
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 936] = ext_code.size(shareAddress)
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 968 len ext_code.size(shareAddress)] = ext_code.copy(shareAddress, 0 len ext_code.size(shareAddress))
            if ext_code.size(shareAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 968 len 96] = 0, msg.sender, balanceOf[address(msg.sender)], 0
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1036] = 0
            call shareAddress with:
               funct Mask(32, 224, 0, msg.sender, balanceOf[address(msg.sender)], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, balanceOf[address(msg.sender)], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if rewardPerShare.length - 1 > 0:
                        revert with memory
                          from 128
                           len rewardPerShare.length - 1
                    revert with 0, 'SafeERC20: low-level call failed'
                if rewardPerShare.length - 1 > 0:
                    require rewardPerShare.length - 1 >= 32
                    require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                    if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[64] = (4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + ceil32(return_data.size) + 969
                mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1000 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1000] == bool(mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1000])
                    if not mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1000]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][address(msg.sender)] = 1
        mem[64] = (4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 773
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 772] = return_data.size
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804] == bool(mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804])
            if not mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 804]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'Boardroom: withdraw request greater than staked amount'
        if totalSupply < balanceOf[address(msg.sender)]:
            revert with 'NH{q', 17
        totalSupply -= balanceOf[address(msg.sender)]
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 2
        balanceOf[address(msg.sender)] = 0
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 809] = msg.sender
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 841] = balanceOf[address(msg.sender)]
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 773] = 68
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 805 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 873] = 32
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 905] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 937] = ext_code.size(shareAddress)
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 969 len ext_code.size(shareAddress)] = ext_code.copy(shareAddress, 0 len ext_code.size(shareAddress))
        if ext_code.size(shareAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 969 len 96] = 0, msg.sender, balanceOf[address(msg.sender)], 0
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1037] = 0
        call shareAddress with:
           funct Mask(32, 224, 0, msg.sender, balanceOf[address(msg.sender)], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, balanceOf[address(msg.sender)], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if rewardPerShare.length - 1 > 0:
                    revert with memory
                      from 128
                       len rewardPerShare.length - 1
                revert with 0, 'SafeERC20: low-level call failed'
            if rewardPerShare.length - 1 > 0:
                require rewardPerShare.length - 1 >= 32
                require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][address(msg.sender)] = 1
        mem[64] = (8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 970
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 969] = return_data.size
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1001 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 970] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 974] = 32
            mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1006] = 32
            mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1038] = 'SafeERC20: low-level call failed'
            revert with memory
              from (8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 970
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if return_data.size <= 0:
            emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][address(msg.sender)] = 1
        require return_data.size >= 32
        require mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1001] == bool(mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1001])
        if mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1001]:
            emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][address(msg.sender)] = 1
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 970] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 974] = 32
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1006] = 42
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1038] = 'SafeERC20: ERC20 operation did n'
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1070] = 'ot succeed'
        revert with memory
          from (8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 970
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[ceil32(return_data.size) + 640] = members[address(msg.sender)].field_512
    mem[ceil32(return_data.size) + 672] = 0
    mem[ceil32(return_data.size) + 704] = 0
    mem[ceil32(return_data.size) + 736] = 0
    if rewardPerShare.length < 1:
        revert with 'NH{q', 17
    if rewardPerShare.length - 1 >= rewardPerShare.length:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 768] = rewardPerShare[rewardPerShare.length].field_0
    mem[ceil32(return_data.size) + 800] = rewardPerShare[rewardPerShare.length].field_0
    mem[ceil32(return_data.size) + 832] = rewardPerShare[rewardPerShare.length].field_0
    mem[ceil32(return_data.size) + 864] = 0
    mem[ceil32(return_data.size) + 896] = 0
    mem[ceil32(return_data.size) + 928] = 0
    if members[address(msg.sender)].field_0 >= rewardPerShare.length:
        revert with 'NH{q', 50
    mem[ceil32(return_data.size) + 960] = rewardPerShare[stor7[address(msg.sender)].field_0].field_0
    mem[ceil32(return_data.size) + 992] = rewardPerShare[stor7[address(msg.sender)].field_0].field_256
    mem[ceil32(return_data.size) + 1024] = rewardPerShare[stor7[address(msg.sender)].field_0].field_512
    if rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
        revert with 'NH{q', 17
    if balanceOf[address(msg.sender)] and rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > -1 / balanceOf[address(msg.sender)]:
        revert with 'NH{q', 17
    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18 > -members[address(msg.sender)].field_256 - 1:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 608] = ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256
    if rewardPerShare.length < 1:
        revert with 'NH{q', 17
    mem[ceil32(return_data.size) + 576] = rewardPerShare.length - 1
    members[address(msg.sender)].field_0 = rewardPerShare.length - 1
    members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
    if members[address(msg.sender)].field_256 <= 0:
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'Boardroom: withdraw request greater than staked amount'
        if totalSupply < balanceOf[address(msg.sender)]:
            revert with 'NH{q', 17
        totalSupply -= balanceOf[address(msg.sender)]
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 2
        balanceOf[address(msg.sender)] = 0
        mem[ceil32(return_data.size) + 1092] = msg.sender
        mem[ceil32(return_data.size) + 1124] = balanceOf[address(msg.sender)]
        mem[ceil32(return_data.size) + 1056] = 68
        mem[ceil32(return_data.size) + 1092 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 1088 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 1156] = 32
        mem[ceil32(return_data.size) + 1188] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        mem[ceil32(return_data.size) + 1220] = ext_code.size(shareAddress)
        mem[ceil32(return_data.size) + 1252 len ext_code.size(shareAddress)] = ext_code.copy(shareAddress, 0 len ext_code.size(shareAddress))
        if ext_code.size(shareAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 1252 len 96] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)], 0
        mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 1320] = 0
        call shareAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, balanceOf[address(msg.sender)], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if rewardPerShare.length - 1 > 0:
                    revert with memory
                      from 128
                       len rewardPerShare.length - 1
                revert with 0, 'SafeERC20: low-level call failed'
            if rewardPerShare.length - 1 > 0:
                require rewardPerShare.length - 1 >= 32
                require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = ceil32(return_data.size) + ext_code.size(shareAddress) + ceil32(return_data.size) + 1253
            mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 1284 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 1284] == bool(mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 1284])
                if not mem[ceil32(return_data.size) + ext_code.size(shareAddress) + 1284]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][address(msg.sender)] = 1
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 1056] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if members[address(msg.sender)].field_512 > -rewardLockupEpochs - 1:
        revert with 'NH{q', 17
    if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
        revert with 0, 'Boardroom: still in reward lockup'
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    members[address(msg.sender)].field_512 = ext_call.return_data[0]
    mem[0] = msg.sender
    mem[32] = 7
    members[address(msg.sender)].field_256 = 0
    mem[(4 * ceil32(return_data.size)) + 1092] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 1124] = members[address(msg.sender)].field_256
    mem[(4 * ceil32(return_data.size)) + 1056] = 68
    mem[(4 * ceil32(return_data.size)) + 1092 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 1088 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 1156] = 32
    mem[(4 * ceil32(return_data.size)) + 1188] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    mem[(4 * ceil32(return_data.size)) + 1220] = ext_code.size(creamAddress)
    mem[(4 * ceil32(return_data.size)) + 1252 len ext_code.size(creamAddress)] = ext_code.copy(creamAddress, 0 len ext_code.size(creamAddress))
    if ext_code.size(creamAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1252 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1320] = 0
    call creamAddress with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if rewardPerShare.length - 1 > 0:
                revert with memory
                  from 128
                   len rewardPerShare.length - 1
            revert with 0, 'SafeERC20: low-level call failed'
        if rewardPerShare.length - 1 > 0:
            require rewardPerShare.length - 1 >= 32
            require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
            if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'Boardroom: withdraw request greater than staked amount'
        if totalSupply < balanceOf[address(msg.sender)]:
            revert with 'NH{q', 17
        totalSupply -= balanceOf[address(msg.sender)]
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 'NH{q', 17
        mem[0] = msg.sender
        mem[32] = 2
        balanceOf[address(msg.sender)] = 0
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1288] = msg.sender
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1320] = balanceOf[address(msg.sender)]
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1252] = 68
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1284 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1352] = 32
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1384] = 'SafeERC20: low-level call failed'
        if eth.balance(this.address) < 0:
            revert with 0, 'Address: insufficient balance for call'
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1416] = ext_code.size(shareAddress)
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1448 len ext_code.size(shareAddress)] = ext_code.copy(shareAddress, 0 len ext_code.size(shareAddress))
        if ext_code.size(shareAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1448 len 96] = 0, msg.sender, balanceOf[address(msg.sender)], 0
        mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1516] = 0
        call shareAddress with:
           funct Mask(32, 224, 0, msg.sender, balanceOf[address(msg.sender)], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, balanceOf[address(msg.sender)], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if rewardPerShare.length - 1 > 0:
                    revert with memory
                      from 128
                       len rewardPerShare.length - 1
                revert with 0, 'SafeERC20: low-level call failed'
            if rewardPerShare.length - 1 > 0:
                require rewardPerShare.length - 1 >= 32
                require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[64] = (4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + ceil32(return_data.size) + 1449
            mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1480 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1480] == bool(mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1480])
                if not mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1480]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][address(msg.sender)] = 1
    mem[64] = (4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 1253
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1252] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1284 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size > 0:
        require return_data.size >= 32
        require mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1284] == bool(mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1284])
        if not mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + 1284]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 0, 'Boardroom: withdraw request greater than staked amount'
    if totalSupply < balanceOf[address(msg.sender)]:
        revert with 'NH{q', 17
    totalSupply -= balanceOf[address(msg.sender)]
    if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
        revert with 'NH{q', 17
    mem[0] = msg.sender
    mem[32] = 2
    balanceOf[address(msg.sender)] = 0
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 1289] = msg.sender
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 1321] = balanceOf[address(msg.sender)]
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 1253] = 68
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 1285 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 1353] = 32
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 1385] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 'Address: insufficient balance for call'
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 1417] = ext_code.size(shareAddress)
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + 1449 len ext_code.size(shareAddress)] = ext_code.copy(shareAddress, 0 len ext_code.size(shareAddress))
    if ext_code.size(shareAddress) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1449 len 96] = 0, msg.sender, balanceOf[address(msg.sender)], 0
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1517] = 0
    call shareAddress with:
       funct Mask(32, 224, 0, msg.sender, balanceOf[address(msg.sender)], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, balanceOf[address(msg.sender)], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if rewardPerShare.length - 1 > 0:
                revert with memory
                  from 128
                   len rewardPerShare.length - 1
            revert with 0, 'SafeERC20: low-level call failed'
        if rewardPerShare.length - 1 > 0:
            require rewardPerShare.length - 1 >= 32
            require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
            if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][address(msg.sender)] = 1
    mem[64] = (8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1450
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1449] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1481 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size > 0:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1450] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1454] = 32
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1486] = 32
        mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1518] = 'SafeERC20: low-level call failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1450
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if return_data.size <= 0:
        emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][address(msg.sender)] = 1
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1481] == bool(mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1481])
    if mem[(4 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ceil32(return_data.size) + ext_code.size(shareAddress) + 1481]:
        emit Withdrawn(balanceOf[address(msg.sender)], msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][address(msg.sender)] = 1
    mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1450] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1454] = 32
    mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1486] = 42
    mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1518] = 'SafeERC20: ERC20 operation did n'
    mem[(8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1550] = 'ot succeed'
    revert with memory
      from (8 * ceil32(return_data.size)) + ext_code.size(creamAddress) + ext_code.size(shareAddress) + 1450
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
