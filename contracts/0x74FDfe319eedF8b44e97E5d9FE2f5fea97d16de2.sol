contract main {




// =====================  Runtime code  =====================


#
#  - governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3)
#  - allocateSeigniorage(uint256 arg1)
#  - stake(uint256 arg1)
#
address shareAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
uint8 stor4; offset 160
address operatorAddress;
uint256 stor4;
address sub_e3a66121Address;
address treasuryAddress;
mapping of struct members;
array of struct rewardPerShare;
uint256 withdrawLockupEpochs;
uint256 rewardLockupEpochs;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020068;
array of uint256 stor110349606679412691172957834289542550319383271247755660854362242977991410020069;

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
        revert with 0, 17
    if rewardPerShare.length - 1 >= rewardPerShare.length:
        revert with 0, 50
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

function share() payable {
    return shareAddress
}

function sub_c58e3843(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardPerShare.length
    return rewardPerShare[arg1].field_0, rewardPerShare[arg1].field_256, rewardPerShare[arg1].field_512
}

function sub_e3a66121(?) payable {
    return sub_e3a66121Address
}

function _fallback() payable {
    revert
}

function latestSnapshotIndex() payable {
    if rewardPerShare.length < 1:
        revert with 0, 17
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
    return ext_call.return_data[0]
}

function sub_c1c17184(?) payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0xc1c17184 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function nextEpochPoint() payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0xc5967c26 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    if members[address(arg1)].field_512 > !rewardLockupEpochs:
        revert with 0, 17
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
    if members[address(arg1)].field_512 > !withdrawLockupEpochs:
        revert with 0, 17
    return members[address(arg1)].field_512 + withdrawLockupEpochs <= ext_call.return_data[0]
}

function setLockUp(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
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
    sub_e3a66121Address = arg1
    shareAddress = arg2
    treasuryAddress = arg3
    rewardPerShare.length++
    rewardPerShare[rewardPerShare.length].field_0 = block.number
    storF3F7[stor8.length] = 0
    storF3F7[stor8.length] = 0
    withdrawLockupEpochs = 4
    rewardLockupEpochs = 1
    uint256(stor4.field_0) = msg.sender or Mask(88, 168, uint256(stor4.field_0)) or 0x10000000000000000000000000000000000000000
    emit Initialized(block.number, msg.sender);
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if rewardPerShare.length < 1:
        revert with 0, 17
    if rewardPerShare.length - 1 >= rewardPerShare.length:
        revert with 0, 50
    if members[address(arg1)].field_0 >= rewardPerShare.length:
        revert with 0, 50
    if rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[stor7[address(arg1)].field_0].field_512:
        revert with 0, 17
    if balanceOf[address(arg1)] and rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(arg1)].field_0].field_512 > -1 / balanceOf[address(arg1)]:
        revert with 0, 17
    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)]) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)]) / 10^18 > !members[address(arg1)].field_256:
        revert with 0, 17
    return (((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)]) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)]) / 10^18) + members[address(arg1)].field_256)
}

function claimReward() payable {
    if not msg.sender:
        if members[msg.sender].field_256:
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if members[msg.sender].field_512 > !rewardLockupEpochs:
                revert with 0, 17
            if members[msg.sender].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                revert with 0, 'Boardroom: still in reward lockup'
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            members[msg.sender].field_512 = ext_call.return_data[0]
            members[msg.sender].field_256 = 0
            mem[(2 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 164] = members[msg.sender].field_256
            mem[(2 * ceil32(return_data.size)) + 96] = 68
            mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 196] = 32
            mem[(2 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(sub_e3a66121Address):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0
            mem[(2 * ceil32(return_data.size)) + 328] = 0
            call sub_e3a66121Address with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) << 288)
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
            emit RewardPaid(members[msg.sender].field_256, msg.sender);
    else:
        mem[160] = members[address(msg.sender)].field_512
        mem[192] = 0
        mem[224] = 0
        mem[256] = 0
        if rewardPerShare.length < 1:
            revert with 0, 17
        if rewardPerShare.length - 1 >= rewardPerShare.length:
            revert with 0, 50
        mem[288] = rewardPerShare[rewardPerShare.length].field_0
        mem[320] = rewardPerShare[rewardPerShare.length].field_0
        mem[352] = rewardPerShare[rewardPerShare.length].field_0
        mem[384] = 0
        mem[416] = 0
        mem[448] = 0
        if members[address(msg.sender)].field_0 >= rewardPerShare.length:
            revert with 0, 50
        mem[480] = rewardPerShare[stor7[address(msg.sender)].field_0].field_0
        mem[512] = rewardPerShare[stor7[address(msg.sender)].field_0].field_256
        mem[544] = rewardPerShare[stor7[address(msg.sender)].field_0].field_512
        if rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
            revert with 0, 17
        if balanceOf[address(msg.sender)] and rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > -1 / balanceOf[address(msg.sender)]:
            revert with 0, 17
        if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18 > !members[address(msg.sender)].field_256:
            revert with 0, 17
        mem[128] = ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256
        if rewardPerShare.length < 1:
            revert with 0, 17
        members[address(msg.sender)].field_0 = rewardPerShare.length - 1
        members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
        if members[msg.sender].field_256:
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[576] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if members[msg.sender].field_512 > !rewardLockupEpochs:
                revert with 0, 17
            if members[msg.sender].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                revert with 0, 'Boardroom: still in reward lockup'
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            members[msg.sender].field_512 = ext_call.return_data[0]
            members[msg.sender].field_256 = 0
            mem[(2 * ceil32(return_data.size)) + 612] = msg.sender
            mem[(2 * ceil32(return_data.size)) + 644] = members[msg.sender].field_256
            mem[(2 * ceil32(return_data.size)) + 576] = 68
            mem[(2 * ceil32(return_data.size)) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(2 * ceil32(return_data.size)) + 608 len 4] = unknown_0xa9059cbb(?????)
            mem[(2 * ceil32(return_data.size)) + 676] = 32
            mem[(2 * ceil32(return_data.size)) + 708] = 'SafeERC20: low-level call failed'
            if not ext_code.size(sub_e3a66121Address):
                revert with 0, 'Address: call to non-contract'
            mem[(2 * ceil32(return_data.size)) + 740 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0
            mem[(2 * ceil32(return_data.size)) + 808] = 0
            call sub_e3a66121Address with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if rewardPerShare.length - 1:
                        revert with memory
                          from 128
                           len rewardPerShare.length - 1
                    revert with 0, 'SafeERC20: low-level call failed'
                if rewardPerShare.length - 1:
                    require rewardPerShare.length - 1 >= 32
                    require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                    if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(2 * ceil32(return_data.size)) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(2 * ceil32(return_data.size)) + 772] == bool(mem[(2 * ceil32(return_data.size)) + 772])
                    if not mem[(2 * ceil32(return_data.size)) + 772]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit RewardPaid(members[msg.sender].field_256, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ContractGuard: one block, one function'
    if stor3[block.number][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ContractGuard: one block, one function'
    if balanceOf[msg.sender] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Boardroom: The member does not exist'
    if not msg.sender:
        if arg1 <= 0:
            revert with 0, 'Boardroom: Cannot withdraw 0'
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if members[msg.sender].field_512 > !withdrawLockupEpochs:
            revert with 0, 17
        if members[msg.sender].field_512 + withdrawLockupEpochs > ext_call.return_data[0]:
            revert with 0, 'Boardroom: still in withdraw lockup'
        if not msg.sender:
            if not members[msg.sender].field_256:
                if balanceOf[msg.sender] < arg1:
                    revert with 0, 'Boardroom: withdraw request greater than staked amount'
                if totalSupply < arg1:
                    revert with 0, 17
                totalSupply -= arg1
                if balanceOf[msg.sender] < arg1:
                    revert with 0, 17
                balanceOf[msg.sender] -= arg1
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = arg1
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(shareAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
                mem[ceil32(return_data.size) + 328] = 0
                call shareAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
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
                emit Withdrawn(arg1, msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][msg.sender] = 1
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if members[msg.sender].field_512 > !rewardLockupEpochs:
                revert with 0, 17
            if members[msg.sender].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                revert with 0, 'Boardroom: still in reward lockup'
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            members[msg.sender].field_512 = ext_call.return_data[0]
            members[msg.sender].field_256 = 0
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 164] = members[msg.sender].field_256
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(sub_e3a66121Address):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call sub_e3a66121Address with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) << 288)
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
                emit RewardPaid(members[msg.sender].field_256, msg.sender);
                if balanceOf[msg.sender] < arg1:
                    revert with 0, 'Boardroom: withdraw request greater than staked amount'
                if totalSupply < arg1:
                    revert with 0, 17
                totalSupply -= arg1
                if balanceOf[msg.sender] < arg1:
                    revert with 0, 17
                balanceOf[msg.sender] -= arg1
                mem[(4 * ceil32(return_data.size)) + 296] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 328] = arg1
                mem[(4 * ceil32(return_data.size)) + 260] = 68
                mem[(4 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 360] = 32
                mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if not ext_code.size(shareAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, msg.sender, arg1, 0
                mem[(4 * ceil32(return_data.size)) + 492] = 0
                call shareAddress with:
                   funct Mask(32, 224, 0, msg.sender, arg1, 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, arg1, 0) << 288)
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
                    mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                        if not mem[(4 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawn(arg1, msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][msg.sender] = 1
            mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit RewardPaid(members[msg.sender].field_256, msg.sender);
            if balanceOf[msg.sender] < arg1:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < arg1:
                revert with 0, 17
            totalSupply -= arg1
            if balanceOf[msg.sender] < arg1:
                revert with 0, 17
            balanceOf[msg.sender] -= arg1
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = msg.sender
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = arg1
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if not ext_code.size(shareAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, msg.sender, arg1, 0
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            call shareAddress with:
               funct Mask(32, 224, 0, msg.sender, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, arg1, 0) << 288)
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
                emit Withdrawn(arg1, msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][msg.sender] = 1
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 430] = 32
                mem[(8 * ceil32(return_data.size)) + 462] = 32
                mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 426
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if not return_data.size:
                emit Withdrawn(arg1, msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][msg.sender] = 1
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
            if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                emit Withdrawn(arg1, msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][msg.sender] = 1
            mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 430] = 32
            mem[(8 * ceil32(return_data.size)) + 462] = 42
            mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
            mem[(8 * ceil32(return_data.size)) + 526] = 'ot succeed'
            revert with memory
              from (8 * ceil32(return_data.size)) + 426
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[ceil32(return_data.size) + 160] = members[address(msg.sender)].field_512
        mem[ceil32(return_data.size) + 192] = 0
        mem[ceil32(return_data.size) + 224] = 0
        mem[ceil32(return_data.size) + 256] = 0
        if rewardPerShare.length < 1:
            revert with 0, 17
        if rewardPerShare.length - 1 >= rewardPerShare.length:
            revert with 0, 50
        mem[ceil32(return_data.size) + 288] = rewardPerShare[rewardPerShare.length].field_0
        mem[ceil32(return_data.size) + 320] = rewardPerShare[rewardPerShare.length].field_0
        mem[ceil32(return_data.size) + 352] = rewardPerShare[rewardPerShare.length].field_0
        mem[ceil32(return_data.size) + 384] = 0
        mem[ceil32(return_data.size) + 416] = 0
        mem[ceil32(return_data.size) + 448] = 0
        if members[address(msg.sender)].field_0 >= rewardPerShare.length:
            revert with 0, 50
        mem[ceil32(return_data.size) + 480] = rewardPerShare[stor7[address(msg.sender)].field_0].field_0
        mem[ceil32(return_data.size) + 512] = rewardPerShare[stor7[address(msg.sender)].field_0].field_256
        mem[ceil32(return_data.size) + 544] = rewardPerShare[stor7[address(msg.sender)].field_0].field_512
        if rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
            revert with 0, 17
        if balanceOf[address(msg.sender)] and rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > -1 / balanceOf[address(msg.sender)]:
            revert with 0, 17
        if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18 > !members[address(msg.sender)].field_256:
            revert with 0, 17
        mem[ceil32(return_data.size) + 128] = ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256
        if rewardPerShare.length < 1:
            revert with 0, 17
        mem[ceil32(return_data.size) + 96] = rewardPerShare.length - 1
        members[address(msg.sender)].field_0 = rewardPerShare.length - 1
        members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
        if not members[msg.sender].field_256:
            if balanceOf[msg.sender] < arg1:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < arg1:
                revert with 0, 17
            totalSupply -= arg1
            if balanceOf[msg.sender] < arg1:
                revert with 0, 17
            balanceOf[msg.sender] -= arg1
            mem[ceil32(return_data.size) + 612] = msg.sender
            mem[ceil32(return_data.size) + 644] = arg1
            mem[ceil32(return_data.size) + 576] = 68
            mem[ceil32(return_data.size) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 608 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 676] = 32
            mem[ceil32(return_data.size) + 708] = 'SafeERC20: low-level call failed'
            if not ext_code.size(shareAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 740 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
            mem[ceil32(return_data.size) + 808] = 0
            call shareAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
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
                mem[ceil32(return_data.size) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 772] == bool(mem[ceil32(return_data.size) + 772])
                    if not mem[ceil32(return_data.size) + 772]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(arg1, msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if members[msg.sender].field_512 > !rewardLockupEpochs:
            revert with 0, 17
        if members[msg.sender].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
            revert with 0, 'Boardroom: still in reward lockup'
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        members[msg.sender].field_512 = ext_call.return_data[0]
        members[msg.sender].field_256 = 0
        mem[(4 * ceil32(return_data.size)) + 612] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 644] = members[msg.sender].field_256
        mem[(4 * ceil32(return_data.size)) + 576] = 68
        mem[(4 * ceil32(return_data.size)) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 608 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 676] = 32
        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeERC20: low-level call failed'
        if not ext_code.size(sub_e3a66121Address):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 740 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0
        mem[(4 * ceil32(return_data.size)) + 808] = 0
        call sub_e3a66121Address with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) << 288)
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
            emit RewardPaid(members[msg.sender].field_256, msg.sender);
            if balanceOf[msg.sender] < arg1:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < arg1:
                revert with 0, 17
            totalSupply -= arg1
            if balanceOf[msg.sender] < arg1:
                revert with 0, 17
            balanceOf[msg.sender] -= arg1
            mem[(4 * ceil32(return_data.size)) + 776] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 808] = arg1
            mem[(4 * ceil32(return_data.size)) + 740] = 68
            mem[(4 * ceil32(return_data.size)) + 772 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 840] = 32
            mem[(4 * ceil32(return_data.size)) + 872] = 'SafeERC20: low-level call failed'
            if not ext_code.size(shareAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 904 len 96] = 0, msg.sender, arg1, 0
            mem[(4 * ceil32(return_data.size)) + 972] = 0
            call shareAddress with:
               funct Mask(32, 224, 0, msg.sender, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, arg1, 0) << 288)
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
                mem[(4 * ceil32(return_data.size)) + 936 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 936] == bool(mem[(4 * ceil32(return_data.size)) + 936])
                    if not mem[(4 * ceil32(return_data.size)) + 936]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(arg1, msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        mem[(4 * ceil32(return_data.size)) + 740] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 772] == bool(mem[(4 * ceil32(return_data.size)) + 772])
            if not mem[(4 * ceil32(return_data.size)) + 772]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RewardPaid(members[msg.sender].field_256, msg.sender);
        if balanceOf[msg.sender] < arg1:
            revert with 0, 'Boardroom: withdraw request greater than staked amount'
        if totalSupply < arg1:
            revert with 0, 17
        totalSupply -= arg1
        if balanceOf[msg.sender] < arg1:
            revert with 0, 17
        balanceOf[msg.sender] -= arg1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = msg.sender
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = arg1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 741] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 773 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 841] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 873] = 'SafeERC20: low-level call failed'
        if not ext_code.size(shareAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 96] = 0, msg.sender, arg1, 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 973] = 0
        call shareAddress with:
           funct Mask(32, 224, 0, msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, arg1, 0) << 288)
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
            emit Withdrawn(arg1, msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = return_data.size
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 906] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 910] = 32
            mem[(8 * ceil32(return_data.size)) + 942] = 32
            mem[(8 * ceil32(return_data.size)) + 974] = 'SafeERC20: low-level call failed'
            revert with memory
              from (8 * ceil32(return_data.size)) + 906
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            emit Withdrawn(arg1, msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        require return_data.size >= 32
        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937])
        if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937]:
            emit Withdrawn(arg1, msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        mem[(8 * ceil32(return_data.size)) + 906] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 910] = 32
        mem[(8 * ceil32(return_data.size)) + 942] = 42
        mem[(8 * ceil32(return_data.size)) + 974] = 'SafeERC20: ERC20 operation did n'
        mem[(8 * ceil32(return_data.size)) + 1006] = 'ot succeed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 906
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[160] = members[address(msg.sender)].field_512
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    if rewardPerShare.length < 1:
        revert with 0, 17
    if rewardPerShare.length - 1 >= rewardPerShare.length:
        revert with 0, 50
    mem[288] = rewardPerShare[rewardPerShare.length].field_0
    mem[320] = rewardPerShare[rewardPerShare.length].field_0
    mem[352] = rewardPerShare[rewardPerShare.length].field_0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    if members[address(msg.sender)].field_0 >= rewardPerShare.length:
        revert with 0, 50
    mem[480] = rewardPerShare[stor7[address(msg.sender)].field_0].field_0
    mem[512] = rewardPerShare[stor7[address(msg.sender)].field_0].field_256
    mem[544] = rewardPerShare[stor7[address(msg.sender)].field_0].field_512
    if rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
        revert with 0, 17
    if balanceOf[address(msg.sender)] and rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > -1 / balanceOf[address(msg.sender)]:
        revert with 0, 17
    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18 > !members[address(msg.sender)].field_256:
        revert with 0, 17
    mem[128] = ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256
    if rewardPerShare.length < 1:
        revert with 0, 17
    members[address(msg.sender)].field_0 = rewardPerShare.length - 1
    members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
    if arg1 <= 0:
        revert with 0, 'Boardroom: Cannot withdraw 0'
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    mem[576] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if members[msg.sender].field_512 > !withdrawLockupEpochs:
        revert with 0, 17
    if members[msg.sender].field_512 + withdrawLockupEpochs > ext_call.return_data[0]:
        revert with 0, 'Boardroom: still in withdraw lockup'
    if not msg.sender:
        if not members[msg.sender].field_256:
            if balanceOf[msg.sender] < arg1:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < arg1:
                revert with 0, 17
            totalSupply -= arg1
            if balanceOf[msg.sender] < arg1:
                revert with 0, 17
            balanceOf[msg.sender] -= arg1
            mem[ceil32(return_data.size) + 612] = msg.sender
            mem[ceil32(return_data.size) + 644] = arg1
            mem[ceil32(return_data.size) + 576] = 68
            mem[ceil32(return_data.size) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 608 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 676] = 32
            mem[ceil32(return_data.size) + 708] = 'SafeERC20: low-level call failed'
            if not ext_code.size(shareAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 740 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
            mem[ceil32(return_data.size) + 808] = 0
            call shareAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if rewardPerShare.length - 1:
                        revert with memory
                          from 128
                           len rewardPerShare.length - 1
                    revert with 0, 'SafeERC20: low-level call failed'
                if rewardPerShare.length - 1:
                    require rewardPerShare.length - 1 >= 32
                    require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                    if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 772] == bool(mem[ceil32(return_data.size) + 772])
                    if not mem[ceil32(return_data.size) + 772]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(arg1, msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if members[msg.sender].field_512 > !rewardLockupEpochs:
            revert with 0, 17
        if members[msg.sender].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
            revert with 0, 'Boardroom: still in reward lockup'
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        members[msg.sender].field_512 = ext_call.return_data[0]
        members[msg.sender].field_256 = 0
        mem[(4 * ceil32(return_data.size)) + 612] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 644] = members[msg.sender].field_256
        mem[(4 * ceil32(return_data.size)) + 576] = 68
        mem[(4 * ceil32(return_data.size)) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 608 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 676] = 32
        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeERC20: low-level call failed'
        if not ext_code.size(sub_e3a66121Address):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 740 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0
        mem[(4 * ceil32(return_data.size)) + 808] = 0
        call sub_e3a66121Address with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if rewardPerShare.length - 1:
                    revert with memory
                      from 128
                       len rewardPerShare.length - 1
                revert with 0, 'SafeERC20: low-level call failed'
            if rewardPerShare.length - 1:
                require rewardPerShare.length - 1 >= 32
                require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit RewardPaid(members[msg.sender].field_256, msg.sender);
            if balanceOf[msg.sender] < arg1:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < arg1:
                revert with 0, 17
            totalSupply -= arg1
            if balanceOf[msg.sender] < arg1:
                revert with 0, 17
            balanceOf[msg.sender] -= arg1
            mem[(4 * ceil32(return_data.size)) + 776] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 808] = arg1
            mem[(4 * ceil32(return_data.size)) + 740] = 68
            mem[(4 * ceil32(return_data.size)) + 772 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 840] = 32
            mem[(4 * ceil32(return_data.size)) + 872] = 'SafeERC20: low-level call failed'
            if not ext_code.size(shareAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 904 len 96] = 0, msg.sender, arg1, 0
            mem[(4 * ceil32(return_data.size)) + 972] = 0
            call shareAddress with:
               funct Mask(32, 224, 0, msg.sender, arg1, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, arg1, 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if rewardPerShare.length - 1:
                        revert with memory
                          from 128
                           len rewardPerShare.length - 1
                    revert with 0, 'SafeERC20: low-level call failed'
                if rewardPerShare.length - 1:
                    require rewardPerShare.length - 1 >= 32
                    require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                    if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 936 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 936] == bool(mem[(4 * ceil32(return_data.size)) + 936])
                    if not mem[(4 * ceil32(return_data.size)) + 936]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(arg1, msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        mem[(4 * ceil32(return_data.size)) + 740] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 772] == bool(mem[(4 * ceil32(return_data.size)) + 772])
            if not mem[(4 * ceil32(return_data.size)) + 772]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RewardPaid(members[msg.sender].field_256, msg.sender);
        if balanceOf[msg.sender] < arg1:
            revert with 0, 'Boardroom: withdraw request greater than staked amount'
        if totalSupply < arg1:
            revert with 0, 17
        totalSupply -= arg1
        if balanceOf[msg.sender] < arg1:
            revert with 0, 17
        balanceOf[msg.sender] -= arg1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = msg.sender
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = arg1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 741] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 773 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 841] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 873] = 'SafeERC20: low-level call failed'
        if not ext_code.size(shareAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 96] = 0, msg.sender, arg1, 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 973] = 0
        call shareAddress with:
           funct Mask(32, 224, 0, msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, arg1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if rewardPerShare.length - 1:
                    revert with memory
                      from 128
                       len rewardPerShare.length - 1
                revert with 0, 'SafeERC20: low-level call failed'
            if rewardPerShare.length - 1:
                require rewardPerShare.length - 1 >= 32
                require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(arg1, msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = return_data.size
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 906] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 910] = 32
            mem[(8 * ceil32(return_data.size)) + 942] = 32
            mem[(8 * ceil32(return_data.size)) + 974] = 'SafeERC20: low-level call failed'
            revert with memory
              from (8 * ceil32(return_data.size)) + 906
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            emit Withdrawn(arg1, msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        require return_data.size >= 32
        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937])
        if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937]:
            emit Withdrawn(arg1, msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        mem[(8 * ceil32(return_data.size)) + 906] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 910] = 32
        mem[(8 * ceil32(return_data.size)) + 942] = 42
        mem[(8 * ceil32(return_data.size)) + 974] = 'SafeERC20: ERC20 operation did n'
        mem[(8 * ceil32(return_data.size)) + 1006] = 'ot succeed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 906
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[ceil32(return_data.size) + 640] = members[address(msg.sender)].field_512
    mem[ceil32(return_data.size) + 672] = 0
    mem[ceil32(return_data.size) + 704] = 0
    mem[ceil32(return_data.size) + 736] = 0
    if rewardPerShare.length < 1:
        revert with 0, 17
    if rewardPerShare.length - 1 >= rewardPerShare.length:
        revert with 0, 50
    mem[ceil32(return_data.size) + 768] = rewardPerShare[rewardPerShare.length].field_0
    mem[ceil32(return_data.size) + 800] = rewardPerShare[rewardPerShare.length].field_0
    mem[ceil32(return_data.size) + 832] = rewardPerShare[rewardPerShare.length].field_0
    mem[ceil32(return_data.size) + 864] = 0
    mem[ceil32(return_data.size) + 896] = 0
    mem[ceil32(return_data.size) + 928] = 0
    if members[address(msg.sender)].field_0 >= rewardPerShare.length:
        revert with 0, 50
    mem[ceil32(return_data.size) + 960] = rewardPerShare[stor7[address(msg.sender)].field_0].field_0
    mem[ceil32(return_data.size) + 992] = rewardPerShare[stor7[address(msg.sender)].field_0].field_256
    mem[ceil32(return_data.size) + 1024] = rewardPerShare[stor7[address(msg.sender)].field_0].field_512
    if rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
        revert with 0, 17
    if balanceOf[address(msg.sender)] and rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > -1 / balanceOf[address(msg.sender)]:
        revert with 0, 17
    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18 > !members[address(msg.sender)].field_256:
        revert with 0, 17
    mem[ceil32(return_data.size) + 608] = ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256
    if rewardPerShare.length < 1:
        revert with 0, 17
    mem[ceil32(return_data.size) + 576] = rewardPerShare.length - 1
    members[address(msg.sender)].field_0 = rewardPerShare.length - 1
    members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
    if not members[msg.sender].field_256:
        if balanceOf[msg.sender] < arg1:
            revert with 0, 'Boardroom: withdraw request greater than staked amount'
        if totalSupply < arg1:
            revert with 0, 17
        totalSupply -= arg1
        if balanceOf[msg.sender] < arg1:
            revert with 0, 17
        balanceOf[msg.sender] -= arg1
        mem[ceil32(return_data.size) + 1092] = msg.sender
        mem[ceil32(return_data.size) + 1124] = arg1
        mem[ceil32(return_data.size) + 1056] = 68
        mem[ceil32(return_data.size) + 1092 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 1088 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 1156] = 32
        mem[ceil32(return_data.size) + 1188] = 'SafeERC20: low-level call failed'
        if not ext_code.size(shareAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 1220 len 96] = unknown_0xa9059cbb(?????), msg.sender, arg1, 0
        mem[ceil32(return_data.size) + 1288] = 0
        call shareAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, arg1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if rewardPerShare.length - 1:
                    revert with memory
                      from 128
                       len rewardPerShare.length - 1
                revert with 0, 'SafeERC20: low-level call failed'
            if rewardPerShare.length - 1:
                require rewardPerShare.length - 1 >= 32
                require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 1252 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 1252] == bool(mem[ceil32(return_data.size) + 1252])
                if not mem[ceil32(return_data.size) + 1252]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawn(arg1, msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][msg.sender] = 1
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 1056] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if members[msg.sender].field_512 > !rewardLockupEpochs:
        revert with 0, 17
    if members[msg.sender].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
        revert with 0, 'Boardroom: still in reward lockup'
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    members[msg.sender].field_512 = ext_call.return_data[0]
    members[msg.sender].field_256 = 0
    mem[(4 * ceil32(return_data.size)) + 1092] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 1124] = members[msg.sender].field_256
    mem[(4 * ceil32(return_data.size)) + 1056] = 68
    mem[(4 * ceil32(return_data.size)) + 1092 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 1088 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 1156] = 32
    mem[(4 * ceil32(return_data.size)) + 1188] = 'SafeERC20: low-level call failed'
    if not ext_code.size(sub_e3a66121Address):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 1220 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0
    mem[(4 * ceil32(return_data.size)) + 1288] = 0
    call sub_e3a66121Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if rewardPerShare.length - 1:
                revert with memory
                  from 128
                   len rewardPerShare.length - 1
            revert with 0, 'SafeERC20: low-level call failed'
        if rewardPerShare.length - 1:
            require rewardPerShare.length - 1 >= 32
            require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
            if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RewardPaid(members[msg.sender].field_256, msg.sender);
        if balanceOf[msg.sender] < arg1:
            revert with 0, 'Boardroom: withdraw request greater than staked amount'
        if totalSupply < arg1:
            revert with 0, 17
        totalSupply -= arg1
        if balanceOf[msg.sender] < arg1:
            revert with 0, 17
        balanceOf[msg.sender] -= arg1
        mem[(4 * ceil32(return_data.size)) + 1256] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 1288] = arg1
        mem[(4 * ceil32(return_data.size)) + 1220] = 68
        mem[(4 * ceil32(return_data.size)) + 1252 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 1320] = 32
        mem[(4 * ceil32(return_data.size)) + 1352] = 'SafeERC20: low-level call failed'
        if not ext_code.size(shareAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 1384 len 96] = 0, msg.sender, arg1, 0
        mem[(4 * ceil32(return_data.size)) + 1452] = 0
        call shareAddress with:
           funct Mask(32, 224, 0, msg.sender, arg1, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, arg1, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if rewardPerShare.length - 1:
                    revert with memory
                      from 128
                       len rewardPerShare.length - 1
                revert with 0, 'SafeERC20: low-level call failed'
            if rewardPerShare.length - 1:
                require rewardPerShare.length - 1 >= 32
                require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 1416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 1416] == bool(mem[(4 * ceil32(return_data.size)) + 1416])
                if not mem[(4 * ceil32(return_data.size)) + 1416]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawn(arg1, msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][msg.sender] = 1
    mem[(4 * ceil32(return_data.size)) + 1220] = return_data.size
    mem[(4 * ceil32(return_data.size)) + 1252 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[(4 * ceil32(return_data.size)) + 1252] == bool(mem[(4 * ceil32(return_data.size)) + 1252])
        if not mem[(4 * ceil32(return_data.size)) + 1252]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit RewardPaid(members[msg.sender].field_256, msg.sender);
    if balanceOf[msg.sender] < arg1:
        revert with 0, 'Boardroom: withdraw request greater than staked amount'
    if totalSupply < arg1:
        revert with 0, 17
    totalSupply -= arg1
    if balanceOf[msg.sender] < arg1:
        revert with 0, 17
    balanceOf[msg.sender] -= arg1
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1257] = msg.sender
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1289] = arg1
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1221] = 68
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1253 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1321] = 32
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1353] = 'SafeERC20: low-level call failed'
    if not ext_code.size(shareAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1385 len 96] = 0, msg.sender, arg1, 0
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1453] = 0
    call shareAddress with:
       funct Mask(32, 224, 0, msg.sender, arg1, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, arg1, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if rewardPerShare.length - 1:
                revert with memory
                  from 128
                   len rewardPerShare.length - 1
            revert with 0, 'SafeERC20: low-level call failed'
        if rewardPerShare.length - 1:
            require rewardPerShare.length - 1 >= 32
            require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
            if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawn(arg1, msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][msg.sender] = 1
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1385] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1417 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 1386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 1390] = 32
        mem[(8 * ceil32(return_data.size)) + 1422] = 32
        mem[(8 * ceil32(return_data.size)) + 1454] = 'SafeERC20: low-level call failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 1386
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        emit Withdrawn(arg1, msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][msg.sender] = 1
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1417] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1417])
    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1417]:
        emit Withdrawn(arg1, msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][msg.sender] = 1
    mem[(8 * ceil32(return_data.size)) + 1386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 1390] = 32
    mem[(8 * ceil32(return_data.size)) + 1422] = 42
    mem[(8 * ceil32(return_data.size)) + 1454] = 'SafeERC20: ERC20 operation did n'
    mem[(8 * ceil32(return_data.size)) + 1486] = 'ot succeed'
    revert with memory
      from (8 * ceil32(return_data.size)) + 1386
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}

function exit() payable {
    if stor3[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ContractGuard: one block, one function'
    if stor3[block.number][msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ContractGuard: one block, one function'
    if balanceOf[msg.sender] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Boardroom: The member does not exist'
    if not msg.sender:
        if balanceOf[msg.sender] <= 0:
            revert with 0, 'Boardroom: Cannot withdraw 0'
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if members[msg.sender].field_512 > !withdrawLockupEpochs:
            revert with 0, 17
        if members[msg.sender].field_512 + withdrawLockupEpochs > ext_call.return_data[0]:
            revert with 0, 'Boardroom: still in withdraw lockup'
        if not msg.sender:
            if not members[msg.sender].field_256:
                if balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'Boardroom: withdraw request greater than staked amount'
                if totalSupply < balanceOf[msg.sender]:
                    revert with 0, 17
                totalSupply -= balanceOf[msg.sender]
                if balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 17
                balanceOf[msg.sender] = 0
                mem[ceil32(return_data.size) + 132] = msg.sender
                mem[ceil32(return_data.size) + 164] = balanceOf[msg.sender]
                mem[ceil32(return_data.size) + 96] = 68
                mem[ceil32(return_data.size) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
                mem[ceil32(return_data.size) + 128 len 4] = unknown_0xa9059cbb(?????)
                mem[ceil32(return_data.size) + 196] = 32
                mem[ceil32(return_data.size) + 228] = 'SafeERC20: low-level call failed'
                if not ext_code.size(shareAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[ceil32(return_data.size) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender], 0
                mem[ceil32(return_data.size) + 328] = 0
                call shareAddress with:
                   funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender], 0) << 288)
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
                emit Withdrawn(balanceOf[msg.sender], msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][msg.sender] = 1
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if members[msg.sender].field_512 > !rewardLockupEpochs:
                revert with 0, 17
            if members[msg.sender].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                revert with 0, 'Boardroom: still in reward lockup'
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            members[msg.sender].field_512 = ext_call.return_data[0]
            members[msg.sender].field_256 = 0
            mem[(4 * ceil32(return_data.size)) + 132] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 164] = members[msg.sender].field_256
            mem[(4 * ceil32(return_data.size)) + 96] = 68
            mem[(4 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[(4 * ceil32(return_data.size)) + 128 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 196] = 32
            mem[(4 * ceil32(return_data.size)) + 228] = 'SafeERC20: low-level call failed'
            if not ext_code.size(sub_e3a66121Address):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 260 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0
            mem[(4 * ceil32(return_data.size)) + 328] = 0
            call sub_e3a66121Address with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) << 288)
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
                emit RewardPaid(members[msg.sender].field_256, msg.sender);
                if balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 'Boardroom: withdraw request greater than staked amount'
                if totalSupply < balanceOf[msg.sender]:
                    revert with 0, 17
                totalSupply -= balanceOf[msg.sender]
                if balanceOf[msg.sender] < balanceOf[msg.sender]:
                    revert with 0, 17
                balanceOf[msg.sender] = 0
                mem[(4 * ceil32(return_data.size)) + 296] = msg.sender
                mem[(4 * ceil32(return_data.size)) + 328] = balanceOf[msg.sender]
                mem[(4 * ceil32(return_data.size)) + 260] = 68
                mem[(4 * ceil32(return_data.size)) + 292 len 4] = unknown_0xa9059cbb(?????)
                mem[(4 * ceil32(return_data.size)) + 360] = 32
                mem[(4 * ceil32(return_data.size)) + 392] = 'SafeERC20: low-level call failed'
                if not ext_code.size(shareAddress):
                    revert with 0, 'Address: call to non-contract'
                mem[(4 * ceil32(return_data.size)) + 424 len 96] = 0, msg.sender, balanceOf[msg.sender], 0
                mem[(4 * ceil32(return_data.size)) + 492] = 0
                call shareAddress with:
                   funct Mask(32, 224, 0, msg.sender, balanceOf[msg.sender], 0) >> 224
                     gas gas_remaining wei
                    args (Mask(512, -288, 0, msg.sender, balanceOf[msg.sender], 0) << 288)
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
                    mem[(4 * ceil32(return_data.size)) + 456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        require mem[(4 * ceil32(return_data.size)) + 456] == bool(mem[(4 * ceil32(return_data.size)) + 456])
                        if not mem[(4 * ceil32(return_data.size)) + 456]:
                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                emit Withdrawn(balanceOf[msg.sender], msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][msg.sender] = 1
            mem[(4 * ceil32(return_data.size)) + 260] = return_data.size
            mem[(4 * ceil32(return_data.size)) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 292] == bool(mem[(4 * ceil32(return_data.size)) + 292])
                if not mem[(4 * ceil32(return_data.size)) + 292]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit RewardPaid(members[msg.sender].field_256, msg.sender);
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < balanceOf[msg.sender]:
                revert with 0, 17
            totalSupply -= balanceOf[msg.sender]
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 17
            balanceOf[msg.sender] = 0
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 297] = msg.sender
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 329] = balanceOf[msg.sender]
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 261] = 68
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 293 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 361] = 32
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 393] = 'SafeERC20: low-level call failed'
            if not ext_code.size(shareAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425 len 96] = 0, msg.sender, balanceOf[msg.sender], 0
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 493] = 0
            call shareAddress with:
               funct Mask(32, 224, 0, msg.sender, balanceOf[msg.sender], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, balanceOf[msg.sender], 0) << 288)
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
                emit Withdrawn(balanceOf[msg.sender], msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][msg.sender] = 1
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 425] = return_data.size
            mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[(8 * ceil32(return_data.size)) + 430] = 32
                mem[(8 * ceil32(return_data.size)) + 462] = 32
                mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: low-level call failed'
                revert with memory
                  from (8 * ceil32(return_data.size)) + 426
                   len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
            if not return_data.size:
                emit Withdrawn(balanceOf[msg.sender], msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][msg.sender] = 1
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457])
            if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 457]:
                emit Withdrawn(balanceOf[msg.sender], msg.sender);
                stor3[block.number][tx.origin] = 1
                stor3[block.number][msg.sender] = 1
            mem[(8 * ceil32(return_data.size)) + 426] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 430] = 32
            mem[(8 * ceil32(return_data.size)) + 462] = 42
            mem[(8 * ceil32(return_data.size)) + 494] = 'SafeERC20: ERC20 operation did n'
            mem[(8 * ceil32(return_data.size)) + 526] = 'ot succeed'
            revert with memory
              from (8 * ceil32(return_data.size)) + 426
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
        mem[ceil32(return_data.size) + 160] = members[address(msg.sender)].field_512
        mem[ceil32(return_data.size) + 192] = 0
        mem[ceil32(return_data.size) + 224] = 0
        mem[ceil32(return_data.size) + 256] = 0
        if rewardPerShare.length < 1:
            revert with 0, 17
        if rewardPerShare.length - 1 >= rewardPerShare.length:
            revert with 0, 50
        mem[ceil32(return_data.size) + 288] = rewardPerShare[rewardPerShare.length].field_0
        mem[ceil32(return_data.size) + 320] = rewardPerShare[rewardPerShare.length].field_0
        mem[ceil32(return_data.size) + 352] = rewardPerShare[rewardPerShare.length].field_0
        mem[ceil32(return_data.size) + 384] = 0
        mem[ceil32(return_data.size) + 416] = 0
        mem[ceil32(return_data.size) + 448] = 0
        if members[address(msg.sender)].field_0 >= rewardPerShare.length:
            revert with 0, 50
        mem[ceil32(return_data.size) + 480] = rewardPerShare[stor7[address(msg.sender)].field_0].field_0
        mem[ceil32(return_data.size) + 512] = rewardPerShare[stor7[address(msg.sender)].field_0].field_256
        mem[ceil32(return_data.size) + 544] = rewardPerShare[stor7[address(msg.sender)].field_0].field_512
        if rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
            revert with 0, 17
        if balanceOf[address(msg.sender)] and rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > -1 / balanceOf[address(msg.sender)]:
            revert with 0, 17
        if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18 > !members[address(msg.sender)].field_256:
            revert with 0, 17
        mem[ceil32(return_data.size) + 128] = ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256
        if rewardPerShare.length < 1:
            revert with 0, 17
        mem[ceil32(return_data.size) + 96] = rewardPerShare.length - 1
        members[address(msg.sender)].field_0 = rewardPerShare.length - 1
        members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
        if not members[msg.sender].field_256:
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < balanceOf[msg.sender]:
                revert with 0, 17
            totalSupply -= balanceOf[msg.sender]
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 17
            balanceOf[msg.sender] = 0
            mem[ceil32(return_data.size) + 612] = msg.sender
            mem[ceil32(return_data.size) + 644] = balanceOf[msg.sender]
            mem[ceil32(return_data.size) + 576] = 68
            mem[ceil32(return_data.size) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 608 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 676] = 32
            mem[ceil32(return_data.size) + 708] = 'SafeERC20: low-level call failed'
            if not ext_code.size(shareAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 740 len 96] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender], 0
            mem[ceil32(return_data.size) + 808] = 0
            call shareAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender], 0) << 288)
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
                mem[ceil32(return_data.size) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 772] == bool(mem[ceil32(return_data.size) + 772])
                    if not mem[ceil32(return_data.size) + 772]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(balanceOf[msg.sender], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if members[msg.sender].field_512 > !rewardLockupEpochs:
            revert with 0, 17
        if members[msg.sender].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
            revert with 0, 'Boardroom: still in reward lockup'
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        members[msg.sender].field_512 = ext_call.return_data[0]
        members[msg.sender].field_256 = 0
        mem[(4 * ceil32(return_data.size)) + 612] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 644] = members[msg.sender].field_256
        mem[(4 * ceil32(return_data.size)) + 576] = 68
        mem[(4 * ceil32(return_data.size)) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 608 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 676] = 32
        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeERC20: low-level call failed'
        if not ext_code.size(sub_e3a66121Address):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 740 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0
        mem[(4 * ceil32(return_data.size)) + 808] = 0
        call sub_e3a66121Address with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) << 288)
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
            emit RewardPaid(members[msg.sender].field_256, msg.sender);
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < balanceOf[msg.sender]:
                revert with 0, 17
            totalSupply -= balanceOf[msg.sender]
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 17
            balanceOf[msg.sender] = 0
            mem[(4 * ceil32(return_data.size)) + 776] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 808] = balanceOf[msg.sender]
            mem[(4 * ceil32(return_data.size)) + 740] = 68
            mem[(4 * ceil32(return_data.size)) + 772 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 840] = 32
            mem[(4 * ceil32(return_data.size)) + 872] = 'SafeERC20: low-level call failed'
            if not ext_code.size(shareAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 904 len 96] = 0, msg.sender, balanceOf[msg.sender], 0
            mem[(4 * ceil32(return_data.size)) + 972] = 0
            call shareAddress with:
               funct Mask(32, 224, 0, msg.sender, balanceOf[msg.sender], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, balanceOf[msg.sender], 0) << 288)
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
                mem[(4 * ceil32(return_data.size)) + 936 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 936] == bool(mem[(4 * ceil32(return_data.size)) + 936])
                    if not mem[(4 * ceil32(return_data.size)) + 936]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(balanceOf[msg.sender], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        mem[(4 * ceil32(return_data.size)) + 740] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 772] == bool(mem[(4 * ceil32(return_data.size)) + 772])
            if not mem[(4 * ceil32(return_data.size)) + 772]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RewardPaid(members[msg.sender].field_256, msg.sender);
        if balanceOf[msg.sender] < balanceOf[msg.sender]:
            revert with 0, 'Boardroom: withdraw request greater than staked amount'
        if totalSupply < balanceOf[msg.sender]:
            revert with 0, 17
        totalSupply -= balanceOf[msg.sender]
        if balanceOf[msg.sender] < balanceOf[msg.sender]:
            revert with 0, 17
        balanceOf[msg.sender] = 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = msg.sender
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = balanceOf[msg.sender]
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 741] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 773 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 841] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 873] = 'SafeERC20: low-level call failed'
        if not ext_code.size(shareAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 96] = 0, msg.sender, balanceOf[msg.sender], 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 973] = 0
        call shareAddress with:
           funct Mask(32, 224, 0, msg.sender, balanceOf[msg.sender], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, balanceOf[msg.sender], 0) << 288)
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
            emit Withdrawn(balanceOf[msg.sender], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = return_data.size
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 906] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 910] = 32
            mem[(8 * ceil32(return_data.size)) + 942] = 32
            mem[(8 * ceil32(return_data.size)) + 974] = 'SafeERC20: low-level call failed'
            revert with memory
              from (8 * ceil32(return_data.size)) + 906
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            emit Withdrawn(balanceOf[msg.sender], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        require return_data.size >= 32
        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937])
        if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937]:
            emit Withdrawn(balanceOf[msg.sender], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        mem[(8 * ceil32(return_data.size)) + 906] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 910] = 32
        mem[(8 * ceil32(return_data.size)) + 942] = 42
        mem[(8 * ceil32(return_data.size)) + 974] = 'SafeERC20: ERC20 operation did n'
        mem[(8 * ceil32(return_data.size)) + 1006] = 'ot succeed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 906
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[160] = members[address(msg.sender)].field_512
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    if rewardPerShare.length < 1:
        revert with 0, 17
    if rewardPerShare.length - 1 >= rewardPerShare.length:
        revert with 0, 50
    mem[288] = rewardPerShare[rewardPerShare.length].field_0
    mem[320] = rewardPerShare[rewardPerShare.length].field_0
    mem[352] = rewardPerShare[rewardPerShare.length].field_0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    if members[address(msg.sender)].field_0 >= rewardPerShare.length:
        revert with 0, 50
    mem[480] = rewardPerShare[stor7[address(msg.sender)].field_0].field_0
    mem[512] = rewardPerShare[stor7[address(msg.sender)].field_0].field_256
    mem[544] = rewardPerShare[stor7[address(msg.sender)].field_0].field_512
    if rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
        revert with 0, 17
    if balanceOf[address(msg.sender)] and rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > -1 / balanceOf[address(msg.sender)]:
        revert with 0, 17
    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18 > !members[address(msg.sender)].field_256:
        revert with 0, 17
    mem[128] = ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256
    if rewardPerShare.length < 1:
        revert with 0, 17
    members[address(msg.sender)].field_0 = rewardPerShare.length - 1
    members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
    if balanceOf[msg.sender] <= 0:
        revert with 0, 'Boardroom: Cannot withdraw 0'
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    mem[576] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if members[msg.sender].field_512 > !withdrawLockupEpochs:
        revert with 0, 17
    if members[msg.sender].field_512 + withdrawLockupEpochs > ext_call.return_data[0]:
        revert with 0, 'Boardroom: still in withdraw lockup'
    if not msg.sender:
        if not members[msg.sender].field_256:
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < balanceOf[msg.sender]:
                revert with 0, 17
            totalSupply -= balanceOf[msg.sender]
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 17
            balanceOf[msg.sender] = 0
            mem[ceil32(return_data.size) + 612] = msg.sender
            mem[ceil32(return_data.size) + 644] = balanceOf[msg.sender]
            mem[ceil32(return_data.size) + 576] = 68
            mem[ceil32(return_data.size) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
            mem[ceil32(return_data.size) + 608 len 4] = unknown_0xa9059cbb(?????)
            mem[ceil32(return_data.size) + 676] = 32
            mem[ceil32(return_data.size) + 708] = 'SafeERC20: low-level call failed'
            if not ext_code.size(shareAddress):
                revert with 0, 'Address: call to non-contract'
            mem[ceil32(return_data.size) + 740 len 96] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender], 0
            mem[ceil32(return_data.size) + 808] = 0
            call shareAddress with:
               funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if rewardPerShare.length - 1:
                        revert with memory
                          from 128
                           len rewardPerShare.length - 1
                    revert with 0, 'SafeERC20: low-level call failed'
                if rewardPerShare.length - 1:
                    require rewardPerShare.length - 1 >= 32
                    require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                    if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[ceil32(return_data.size) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[ceil32(return_data.size) + 772] == bool(mem[ceil32(return_data.size) + 772])
                    if not mem[ceil32(return_data.size) + 772]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(balanceOf[msg.sender], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[ceil32(return_data.size) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if members[msg.sender].field_512 > !rewardLockupEpochs:
            revert with 0, 17
        if members[msg.sender].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
            revert with 0, 'Boardroom: still in reward lockup'
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        mem[(2 * ceil32(return_data.size)) + 576] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        members[msg.sender].field_512 = ext_call.return_data[0]
        members[msg.sender].field_256 = 0
        mem[(4 * ceil32(return_data.size)) + 612] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 644] = members[msg.sender].field_256
        mem[(4 * ceil32(return_data.size)) + 576] = 68
        mem[(4 * ceil32(return_data.size)) + 612 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[(4 * ceil32(return_data.size)) + 608 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 676] = 32
        mem[(4 * ceil32(return_data.size)) + 708] = 'SafeERC20: low-level call failed'
        if not ext_code.size(sub_e3a66121Address):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 740 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0
        mem[(4 * ceil32(return_data.size)) + 808] = 0
        call sub_e3a66121Address with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if rewardPerShare.length - 1:
                    revert with memory
                      from 128
                       len rewardPerShare.length - 1
                revert with 0, 'SafeERC20: low-level call failed'
            if rewardPerShare.length - 1:
                require rewardPerShare.length - 1 >= 32
                require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit RewardPaid(members[msg.sender].field_256, msg.sender);
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'Boardroom: withdraw request greater than staked amount'
            if totalSupply < balanceOf[msg.sender]:
                revert with 0, 17
            totalSupply -= balanceOf[msg.sender]
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 17
            balanceOf[msg.sender] = 0
            mem[(4 * ceil32(return_data.size)) + 776] = msg.sender
            mem[(4 * ceil32(return_data.size)) + 808] = balanceOf[msg.sender]
            mem[(4 * ceil32(return_data.size)) + 740] = 68
            mem[(4 * ceil32(return_data.size)) + 772 len 4] = unknown_0xa9059cbb(?????)
            mem[(4 * ceil32(return_data.size)) + 840] = 32
            mem[(4 * ceil32(return_data.size)) + 872] = 'SafeERC20: low-level call failed'
            if not ext_code.size(shareAddress):
                revert with 0, 'Address: call to non-contract'
            mem[(4 * ceil32(return_data.size)) + 904 len 96] = 0, msg.sender, balanceOf[msg.sender], 0
            mem[(4 * ceil32(return_data.size)) + 972] = 0
            call shareAddress with:
               funct Mask(32, 224, 0, msg.sender, balanceOf[msg.sender], 0) >> 224
                 gas gas_remaining wei
                args (Mask(512, -288, 0, msg.sender, balanceOf[msg.sender], 0) << 288)
            if not return_data.size:
                if not ext_call.success:
                    if rewardPerShare.length - 1:
                        revert with memory
                          from 128
                           len rewardPerShare.length - 1
                    revert with 0, 'SafeERC20: low-level call failed'
                if rewardPerShare.length - 1:
                    require rewardPerShare.length - 1 >= 32
                    require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                    if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            else:
                mem[(4 * ceil32(return_data.size)) + 936 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    require mem[(4 * ceil32(return_data.size)) + 936] == bool(mem[(4 * ceil32(return_data.size)) + 936])
                    if not mem[(4 * ceil32(return_data.size)) + 936]:
                        revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(balanceOf[msg.sender], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        mem[(4 * ceil32(return_data.size)) + 740] = return_data.size
        mem[(4 * ceil32(return_data.size)) + 772 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[(4 * ceil32(return_data.size)) + 772] == bool(mem[(4 * ceil32(return_data.size)) + 772])
            if not mem[(4 * ceil32(return_data.size)) + 772]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RewardPaid(members[msg.sender].field_256, msg.sender);
        if balanceOf[msg.sender] < balanceOf[msg.sender]:
            revert with 0, 'Boardroom: withdraw request greater than staked amount'
        if totalSupply < balanceOf[msg.sender]:
            revert with 0, 17
        totalSupply -= balanceOf[msg.sender]
        if balanceOf[msg.sender] < balanceOf[msg.sender]:
            revert with 0, 17
        balanceOf[msg.sender] = 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 777] = msg.sender
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 809] = balanceOf[msg.sender]
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 741] = 68
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 773 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 841] = 32
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 873] = 'SafeERC20: low-level call failed'
        if not ext_code.size(shareAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905 len 96] = 0, msg.sender, balanceOf[msg.sender], 0
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 973] = 0
        call shareAddress with:
           funct Mask(32, 224, 0, msg.sender, balanceOf[msg.sender], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, balanceOf[msg.sender], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if rewardPerShare.length - 1:
                    revert with memory
                      from 128
                       len rewardPerShare.length - 1
                revert with 0, 'SafeERC20: low-level call failed'
            if rewardPerShare.length - 1:
                require rewardPerShare.length - 1 >= 32
                require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
            emit Withdrawn(balanceOf[msg.sender], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 905] = return_data.size
        mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(8 * ceil32(return_data.size)) + 906] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[(8 * ceil32(return_data.size)) + 910] = 32
            mem[(8 * ceil32(return_data.size)) + 942] = 32
            mem[(8 * ceil32(return_data.size)) + 974] = 'SafeERC20: low-level call failed'
            revert with memory
              from (8 * ceil32(return_data.size)) + 906
               len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
        if not return_data.size:
            emit Withdrawn(balanceOf[msg.sender], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        require return_data.size >= 32
        require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937])
        if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 937]:
            emit Withdrawn(balanceOf[msg.sender], msg.sender);
            stor3[block.number][tx.origin] = 1
            stor3[block.number][msg.sender] = 1
        mem[(8 * ceil32(return_data.size)) + 906] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 910] = 32
        mem[(8 * ceil32(return_data.size)) + 942] = 42
        mem[(8 * ceil32(return_data.size)) + 974] = 'SafeERC20: ERC20 operation did n'
        mem[(8 * ceil32(return_data.size)) + 1006] = 'ot succeed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 906
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
    mem[ceil32(return_data.size) + 640] = members[address(msg.sender)].field_512
    mem[ceil32(return_data.size) + 672] = 0
    mem[ceil32(return_data.size) + 704] = 0
    mem[ceil32(return_data.size) + 736] = 0
    if rewardPerShare.length < 1:
        revert with 0, 17
    if rewardPerShare.length - 1 >= rewardPerShare.length:
        revert with 0, 50
    mem[ceil32(return_data.size) + 768] = rewardPerShare[rewardPerShare.length].field_0
    mem[ceil32(return_data.size) + 800] = rewardPerShare[rewardPerShare.length].field_0
    mem[ceil32(return_data.size) + 832] = rewardPerShare[rewardPerShare.length].field_0
    mem[ceil32(return_data.size) + 864] = 0
    mem[ceil32(return_data.size) + 896] = 0
    mem[ceil32(return_data.size) + 928] = 0
    if members[address(msg.sender)].field_0 >= rewardPerShare.length:
        revert with 0, 50
    mem[ceil32(return_data.size) + 960] = rewardPerShare[stor7[address(msg.sender)].field_0].field_0
    mem[ceil32(return_data.size) + 992] = rewardPerShare[stor7[address(msg.sender)].field_0].field_256
    mem[ceil32(return_data.size) + 1024] = rewardPerShare[stor7[address(msg.sender)].field_0].field_512
    if rewardPerShare[rewardPerShare.length].field_0 < rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
        revert with 0, 17
    if balanceOf[address(msg.sender)] and rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > -1 / balanceOf[address(msg.sender)]:
        revert with 0, 17
    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18 > !members[address(msg.sender)].field_256:
        revert with 0, 17
    mem[ceil32(return_data.size) + 608] = ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256
    if rewardPerShare.length < 1:
        revert with 0, 17
    mem[ceil32(return_data.size) + 576] = rewardPerShare.length - 1
    members[address(msg.sender)].field_0 = rewardPerShare.length - 1
    members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
    if not members[msg.sender].field_256:
        if balanceOf[msg.sender] < balanceOf[msg.sender]:
            revert with 0, 'Boardroom: withdraw request greater than staked amount'
        if totalSupply < balanceOf[msg.sender]:
            revert with 0, 17
        totalSupply -= balanceOf[msg.sender]
        if balanceOf[msg.sender] < balanceOf[msg.sender]:
            revert with 0, 17
        balanceOf[msg.sender] = 0
        mem[ceil32(return_data.size) + 1092] = msg.sender
        mem[ceil32(return_data.size) + 1124] = balanceOf[msg.sender]
        mem[ceil32(return_data.size) + 1056] = 68
        mem[ceil32(return_data.size) + 1092 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(return_data.size) + 1088 len 4] = unknown_0xa9059cbb(?????)
        mem[ceil32(return_data.size) + 1156] = 32
        mem[ceil32(return_data.size) + 1188] = 'SafeERC20: low-level call failed'
        if not ext_code.size(shareAddress):
            revert with 0, 'Address: call to non-contract'
        mem[ceil32(return_data.size) + 1220 len 96] = unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender], 0
        mem[ceil32(return_data.size) + 1288] = 0
        call shareAddress with:
           funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, balanceOf[msg.sender], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if rewardPerShare.length - 1:
                    revert with memory
                      from 128
                       len rewardPerShare.length - 1
                revert with 0, 'SafeERC20: low-level call failed'
            if rewardPerShare.length - 1:
                require rewardPerShare.length - 1 >= 32
                require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[ceil32(return_data.size) + 1252 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[ceil32(return_data.size) + 1252] == bool(mem[ceil32(return_data.size) + 1252])
                if not mem[ceil32(return_data.size) + 1252]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawn(balanceOf[msg.sender], msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][msg.sender] = 1
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 1056] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if members[msg.sender].field_512 > !rewardLockupEpochs:
        revert with 0, 17
    if members[msg.sender].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
        revert with 0, 'Boardroom: still in reward lockup'
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    mem[(2 * ceil32(return_data.size)) + 1056] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    members[msg.sender].field_512 = ext_call.return_data[0]
    members[msg.sender].field_256 = 0
    mem[(4 * ceil32(return_data.size)) + 1092] = msg.sender
    mem[(4 * ceil32(return_data.size)) + 1124] = members[msg.sender].field_256
    mem[(4 * ceil32(return_data.size)) + 1056] = 68
    mem[(4 * ceil32(return_data.size)) + 1092 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[(4 * ceil32(return_data.size)) + 1088 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + 1156] = 32
    mem[(4 * ceil32(return_data.size)) + 1188] = 'SafeERC20: low-level call failed'
    if not ext_code.size(sub_e3a66121Address):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + 1220 len 96] = unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0
    mem[(4 * ceil32(return_data.size)) + 1288] = 0
    call sub_e3a66121Address with:
       funct Mask(32, 224, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, unknown_0xa9059cbb(?????), msg.sender, members[msg.sender].field_256, 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if rewardPerShare.length - 1:
                revert with memory
                  from 128
                   len rewardPerShare.length - 1
            revert with 0, 'SafeERC20: low-level call failed'
        if rewardPerShare.length - 1:
            require rewardPerShare.length - 1 >= 32
            require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
            if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit RewardPaid(members[msg.sender].field_256, msg.sender);
        if balanceOf[msg.sender] < balanceOf[msg.sender]:
            revert with 0, 'Boardroom: withdraw request greater than staked amount'
        if totalSupply < balanceOf[msg.sender]:
            revert with 0, 17
        totalSupply -= balanceOf[msg.sender]
        if balanceOf[msg.sender] < balanceOf[msg.sender]:
            revert with 0, 17
        balanceOf[msg.sender] = 0
        mem[(4 * ceil32(return_data.size)) + 1256] = msg.sender
        mem[(4 * ceil32(return_data.size)) + 1288] = balanceOf[msg.sender]
        mem[(4 * ceil32(return_data.size)) + 1220] = 68
        mem[(4 * ceil32(return_data.size)) + 1252 len 4] = unknown_0xa9059cbb(?????)
        mem[(4 * ceil32(return_data.size)) + 1320] = 32
        mem[(4 * ceil32(return_data.size)) + 1352] = 'SafeERC20: low-level call failed'
        if not ext_code.size(shareAddress):
            revert with 0, 'Address: call to non-contract'
        mem[(4 * ceil32(return_data.size)) + 1384 len 96] = 0, msg.sender, balanceOf[msg.sender], 0
        mem[(4 * ceil32(return_data.size)) + 1452] = 0
        call shareAddress with:
           funct Mask(32, 224, 0, msg.sender, balanceOf[msg.sender], 0) >> 224
             gas gas_remaining wei
            args (Mask(512, -288, 0, msg.sender, balanceOf[msg.sender], 0) << 288)
        if not return_data.size:
            if not ext_call.success:
                if rewardPerShare.length - 1:
                    revert with memory
                      from 128
                       len rewardPerShare.length - 1
                revert with 0, 'SafeERC20: low-level call failed'
            if rewardPerShare.length - 1:
                require rewardPerShare.length - 1 >= 32
                require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
                if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        else:
            mem[(4 * ceil32(return_data.size)) + 1416 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                require mem[(4 * ceil32(return_data.size)) + 1416] == bool(mem[(4 * ceil32(return_data.size)) + 1416])
                if not mem[(4 * ceil32(return_data.size)) + 1416]:
                    revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawn(balanceOf[msg.sender], msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][msg.sender] = 1
    mem[(4 * ceil32(return_data.size)) + 1220] = return_data.size
    mem[(4 * ceil32(return_data.size)) + 1252 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        revert with 0, 'SafeERC20: low-level call failed'
    if return_data.size:
        require return_data.size >= 32
        require mem[(4 * ceil32(return_data.size)) + 1252] == bool(mem[(4 * ceil32(return_data.size)) + 1252])
        if not mem[(4 * ceil32(return_data.size)) + 1252]:
            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    emit RewardPaid(members[msg.sender].field_256, msg.sender);
    if balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 0, 'Boardroom: withdraw request greater than staked amount'
    if totalSupply < balanceOf[msg.sender]:
        revert with 0, 17
    totalSupply -= balanceOf[msg.sender]
    if balanceOf[msg.sender] < balanceOf[msg.sender]:
        revert with 0, 17
    balanceOf[msg.sender] = 0
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1257] = msg.sender
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1289] = balanceOf[msg.sender]
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1221] = 68
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1253 len 4] = unknown_0xa9059cbb(?????)
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1321] = 32
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1353] = 'SafeERC20: low-level call failed'
    if not ext_code.size(shareAddress):
        revert with 0, 'Address: call to non-contract'
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1385 len 96] = 0, msg.sender, balanceOf[msg.sender], 0
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1453] = 0
    call shareAddress with:
       funct Mask(32, 224, 0, msg.sender, balanceOf[msg.sender], 0) >> 224
         gas gas_remaining wei
        args (Mask(512, -288, 0, msg.sender, balanceOf[msg.sender], 0) << 288)
    if not return_data.size:
        if not ext_call.success:
            if rewardPerShare.length - 1:
                revert with memory
                  from 128
                   len rewardPerShare.length - 1
            revert with 0, 'SafeERC20: low-level call failed'
        if rewardPerShare.length - 1:
            require rewardPerShare.length - 1 >= 32
            require ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 == bool(((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256)
            if not ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
        emit Withdrawn(balanceOf[msg.sender], msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][msg.sender] = 1
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1385] = return_data.size
    mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1417 len return_data.size] = ext_call.return_data[0 len return_data.size]
    if not ext_call.success:
        if return_data.size:
            revert with ext_call.return_data[0 len return_data.size]
        mem[(8 * ceil32(return_data.size)) + 1386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(8 * ceil32(return_data.size)) + 1390] = 32
        mem[(8 * ceil32(return_data.size)) + 1422] = 32
        mem[(8 * ceil32(return_data.size)) + 1454] = 'SafeERC20: low-level call failed'
        revert with memory
          from (8 * ceil32(return_data.size)) + 1386
           len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 100
    if not return_data.size:
        emit Withdrawn(balanceOf[msg.sender], msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][msg.sender] = 1
    require return_data.size >= 32
    require mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1417] == bool(mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1417])
    if mem[(4 * ceil32(return_data.size)) + ceil32(return_data.size) + 1417]:
        emit Withdrawn(balanceOf[msg.sender], msg.sender);
        stor3[block.number][tx.origin] = 1
        stor3[block.number][msg.sender] = 1
    mem[(8 * ceil32(return_data.size)) + 1386] = 0x8c379a000000000000000000000000000000000000000000000000000000000
    mem[(8 * ceil32(return_data.size)) + 1390] = 32
    mem[(8 * ceil32(return_data.size)) + 1422] = 42
    mem[(8 * ceil32(return_data.size)) + 1454] = 'SafeERC20: ERC20 operation did n'
    mem[(8 * ceil32(return_data.size)) + 1486] = 'ot succeed'
    revert with memory
      from (8 * ceil32(return_data.size)) + 1386
       len (12 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 132
}



}
