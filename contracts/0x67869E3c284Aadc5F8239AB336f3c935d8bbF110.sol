contract main {




// =====================  Runtime code  =====================


#
#  - exit()
#
address shareAddress;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
uint8 stor4; offset 160
uint128 stor4; offset 160
address operatorAddress;
address sub_64658d00Address;
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
    if 1 > rewardPerShare.length:
        revert with 0, 'SafeMath: subtraction overflow'
    require rewardPerShare.length - 1 < rewardPerShare.length
    return rewardPerShare[rewardPerShare.length].field_0
}

function operator() payable {
    return operatorAddress
}

function sub_5ae58478(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardPerShare.length
    return rewardPerShare[arg1].field_0, rewardPerShare[arg1].field_256, rewardPerShare[arg1].field_512
}

function treasury() payable {
    return treasuryAddress
}

function sub_64658d00(?) payable {
    return sub_64658d00Address
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function getLastSnapshotIndexOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return members[address(arg1)].field_0
}

function share() payable {
    return shareAddress
}

function _fallback() payable {
    revert
}

function latestSnapshotIndex() payable {
    if 1 > rewardPerShare.length:
        revert with 0, 'SafeMath: subtraction overflow'
    return (rewardPerShare.length - 1)
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

function sub_7c73c957(?) payable {
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x7c73c957 with:
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

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x65426f617264726f6f6d3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[201 len 27]
    operatorAddress = arg1
}

function canClaimReward(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if members[address(arg1)].field_512 + rewardLockupEpochs < members[address(arg1)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return members[address(arg1)].field_512 + rewardLockupEpochs <= ext_call.return_data[0]
}

function canWithdraw(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if members[address(arg1)].field_512 + withdrawLockupEpochs < members[address(arg1)].field_512:
        revert with 0, 'SafeMath: addition overflow'
    return members[address(arg1)].field_512 + withdrawLockupEpochs <= ext_call.return_data[0]
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor4.field_160):
        revert with 0, 'Boardroom: already initialized'
    sub_64658d00Address = arg1
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

function setLockUp(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x65426f617264726f6f6d3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[201 len 27]
    if arg1 < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x705f77697468647261774c6f636b757045706f6368733a206f7574206f662072616e67,
                    mem[199 len 29]
    if arg1 > 56:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x705f77697468647261774c6f636b757045706f6368733a206f7574206f662072616e67,
                    mem[199 len 29]
    withdrawLockupEpochs = arg1
    rewardLockupEpochs = arg2
}

function earned(address arg1) payable {
    require calldata.size - 4 >= 32
    if 1 > rewardPerShare.length:
        revert with 0, 'SafeMath: subtraction overflow'
    require rewardPerShare.length - 1 < rewardPerShare.length
    require members[address(arg1)].field_0 < rewardPerShare.length
    if rewardPerShare[stor7[address(arg1)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(arg1)]:
        if members[address(arg1)].field_256 < 0:
            revert with 0, 'SafeMath: addition overflow'
        return members[address(arg1)].field_256
    require balanceOf[address(arg1)]
    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)]) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)]) / balanceOf[address(arg1)] != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(arg1)].field_0].field_512:
        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)]) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)]) / 10^18) + members[address(arg1)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)]) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)]) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(arg1)]) - (rewardPerShare[stor7[address(arg1)].field_0].field_512 * balanceOf[address(arg1)]) / 10^18) + members[address(arg1)].field_256)
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x65426f617264726f6f6d3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[201 len 27]
    if arg1 == sub_64658d00Address:
        revert with 0, 'Subzero'
    if arg1 == shareAddress:
        revert with 0, 'AShare'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
    else:
        mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[292]:
                revert with 0, 
                            32,
                            42,
                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function allocateSeigniorage(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor3[block.number][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x65426f617264726f6f6d3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[201 len 27]
    if arg1 <= 0:
        revert with 0, 'Boardroom: Cannot allocate 0'
    if totalSupply <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x74426f617264726f6f6d3a2043616e6e6f7420616c6c6f63617465207768656e20746f74616c537570706c7920697320,
                    mem[212 len 16]
    if 1 > rewardPerShare.length:
        revert with 0, 'SafeMath: subtraction overflow'
    require rewardPerShare.length - 1 < rewardPerShare.length
    if not arg1:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerShare[rewardPerShare.length].field_0 + (0 / totalSupply) < rewardPerShare[rewardPerShare.length].field_0:
            revert with 0, 'SafeMath: addition overflow'
        rewardPerShare.length++
        rewardPerShare[rewardPerShare.length].field_0 = block.number
        rewardPerShare[rewardPerShare.length].field_256 = arg1
        rewardPerShare[rewardPerShare.length].field_512 = rewardPerShare[rewardPerShare.length].field_0 + (0 / totalSupply)
    else:
        require arg1
        if 10^18 * arg1 / arg1 != 10^18:
            revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if rewardPerShare[rewardPerShare.length].field_0 + (10^18 * arg1 / totalSupply) < rewardPerShare[rewardPerShare.length].field_0:
            revert with 0, 'SafeMath: addition overflow'
        rewardPerShare.length++
        rewardPerShare[rewardPerShare.length].field_0 = block.number
        rewardPerShare[rewardPerShare.length].field_256 = arg1
        rewardPerShare[rewardPerShare.length].field_512 = rewardPerShare[rewardPerShare.length].field_0 + (10^18 * arg1 / totalSupply)
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[782 len 26]
    if ext_code.size(sub_64658d00Address) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[676 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
    mem[800 len 4] = 0
    mem[772 len 0] = 0
    call sub_64658d00Address with:
         gas gas_remaining wei
        args Mask(224, 32, arg1) << 480, mem[772 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[708 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size > 0:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size > 0:
            require return_data.size >= 32
            if not mem[708]:
                revert with 0, 
                            32,
                            42,
                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 787 len 22]
    emit RewardAdded(arg1, msg.sender);
    stor3[block.number][tx.origin] = 1
    stor3[block.number][address(msg.sender)] = 1
}

function stake(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor3[block.number][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if not msg.sender:
        if arg1 <= 0:
            revert with 0, 'Boardroom: Cannot stake 0'
        if totalSupply + arg1 < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += arg1
        if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += arg1
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[398 len 26]
        if ext_code.size(shareAddress) <= 0:
            revert with 0, 'Address: call to non-contract'
        mem[292 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
        mem[416 len 4] = 0
        mem[388 len 0] = 0
        call shareAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[388 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with unknown_0x23b872dd(?????), msg.sender, address(this.address), arg1
            if not unknown_0x23b872dd(?????), Mask(224, 32, msg.sender) >> 32:
                revert with 0, 
                            32,
                            42,
                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[402 len 14],
                            0,
                            mem[420 len 4]
        else:
            mem[324 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[324]:
                    revert with 0, 
                                32,
                                42,
                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 403 len 22]
    else:
        if 1 > rewardPerShare.length:
            revert with 0, 'SafeMath: subtraction overflow'
        require rewardPerShare.length - 1 < rewardPerShare.length
        require members[address(msg.sender)].field_0 < rewardPerShare.length
        if rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(msg.sender)]:
            if members[address(msg.sender)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            members[address(msg.sender)].field_0 = rewardPerShare.length - 1
            if arg1 <= 0:
                revert with 0, 'Boardroom: Cannot stake 0'
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
            if ext_code.size(shareAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[868 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[992 len 4] = 0
            mem[964 len 0] = 0
        else:
            require balanceOf[address(msg.sender)]
            if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            members[address(msg.sender)].field_0 = rewardPerShare.length - 1
            members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
            if arg1 <= 0:
                revert with 0, 'Boardroom: Cannot stake 0'
            if totalSupply + arg1 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            totalSupply += arg1
            if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] += arg1
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[974 len 26]
            if ext_code.size(shareAddress) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[868 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg1) >> 32
            mem[992 len 4] = 0
        call shareAddress with:
             gas gas_remaining wei
            args Mask(224, 32, arg1) << 480, mem[964 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
        else:
            mem[900 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size > 0:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size > 0:
                require return_data.size >= 32
                if not mem[900]:
                    revert with 0, 
                                32,
                                42,
                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 979 len 22]
    require ext_code.size(treasuryAddress)
    staticcall treasuryAddress.0x900cf0cf with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    members[address(msg.sender)].field_512 = ext_call.return_data[0]
    emit Staked(arg1, msg.sender);
    stor3[block.number][tx.origin] = 1
    stor3[block.number][address(msg.sender)] = 1
}

function claimReward() payable {
    if not msg.sender:
        if members[address(msg.sender)].field_256 > 0:
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if members[address(msg.sender)].field_512 + rewardLockupEpochs < members[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x77426f617264726f6f6d3a207374696c6c20696e20726577617264206c6f636b75,
                            mem[197 len 31]
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            members[address(msg.sender)].field_512 = ext_call.return_data[0]
            members[address(msg.sender)].field_256 = 0
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
            if ext_code.size(sub_64658d00Address) <= 0:
                revert with 0, 'Address: call to non-contract'
            mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_288
            mem[324 len 0] = 0
            call sub_64658d00Address with:
               funct uint32(msg.sender)
                 gas gas_remaining wei
                args members[address(msg.sender)].field_256, mem[324 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256
                if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                    revert with 0, 32, 42, 0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
            else:
                mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size > 0:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size > 0:
                    require return_data.size >= 32
                    if not mem[292]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 371 len 22]
            emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
    else:
        if 1 > rewardPerShare.length:
            revert with 0, 'SafeMath: subtraction overflow'
        require rewardPerShare.length - 1 < rewardPerShare.length
        require members[address(msg.sender)].field_0 < rewardPerShare.length
        if rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(msg.sender)]:
            if members[address(msg.sender)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            members[address(msg.sender)].field_0 = rewardPerShare.length - 1
            if members[address(msg.sender)].field_256 > 0:
                require ext_code.size(treasuryAddress)
                staticcall treasuryAddress.0x900cf0cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if members[address(msg.sender)].field_512 + rewardLockupEpochs < members[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x77426f617264726f6f6d3a207374696c6c20696e20726577617264206c6f636b75, mem[773 len 31]
                require ext_code.size(treasuryAddress)
                staticcall treasuryAddress.0x900cf0cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                members[address(msg.sender)].field_512 = ext_call.return_data[0]
                members[address(msg.sender)].field_256 = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[942 len 26]
                if ext_code.size(sub_64658d00Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[836 len 64] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_288
                call sub_64658d00Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args members[address(msg.sender)].field_256, mem[900 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                else:
                    mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[868]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 947 len 22]
                emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
        else:
            require balanceOf[address(msg.sender)]
            if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            members[address(msg.sender)].field_0 = rewardPerShare.length - 1
            members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
            if members[address(msg.sender)].field_256 > 0:
                require ext_code.size(treasuryAddress)
                staticcall treasuryAddress.0x900cf0cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if members[address(msg.sender)].field_512 + rewardLockupEpochs < members[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                    revert with 0, 32, 33, 0x77426f617264726f6f6d3a207374696c6c20696e20726577617264206c6f636b75, mem[773 len 31]
                require ext_code.size(treasuryAddress)
                staticcall treasuryAddress.0x900cf0cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                members[address(msg.sender)].field_512 = ext_call.return_data[0]
                members[address(msg.sender)].field_256 = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[942 len 26]
                if ext_code.size(sub_64658d00Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[836 len 64] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_288
                mem[900 len 0] = 0
                call sub_64658d00Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args members[address(msg.sender)].field_256, mem[900 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with 0, 'SafeERC20: low-level call failed'
                else:
                    mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[868]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 947 len 22]
                emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor3[block.number][tx.origin]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if stor3[block.number][address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x64436f6e747261637447756172643a206f6e6520626c6f636b2c206f6e652066756e6374696f,
                    mem[202 len 26]
    if balanceOf[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x6c426f617264726f6f6d3a20546865206d656d62657220646f6573206e6f742065786973,
                    mem[200 len 28]
    if not msg.sender:
        if arg1 <= 0:
            revert with 0, 'Boardroom: Cannot withdraw 0'
        require ext_code.size(treasuryAddress)
        staticcall treasuryAddress.0x900cf0cf with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if members[address(msg.sender)].field_512 + withdrawLockupEpochs < members[address(msg.sender)].field_512:
            revert with 0, 'SafeMath: addition overflow'
        if members[address(msg.sender)].field_512 + withdrawLockupEpochs > ext_call.return_data[0]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0x72426f617264726f6f6d3a207374696c6c20696e207769746864726177206c6f636b75,
                        mem[199 len 29]
        if not msg.sender:
            if members[address(msg.sender)].field_256 <= 0:
                if balanceOf[address(msg.sender)] < arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                54,
                                0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                mem[218 len 10]
                if arg1 > totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                totalSupply -= arg1
                if arg1 > balanceOf[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                balanceOf[address(msg.sender)] -= arg1
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(shareAddress) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                mem[324 len 0] = 0
                call shareAddress with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args Mask(224, 32, arg1) << 224, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, arg1
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size > 0:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                emit Withdrawn(arg1, msg.sender);
            else:
                require ext_code.size(treasuryAddress)
                staticcall treasuryAddress.0x900cf0cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if members[address(msg.sender)].field_512 + rewardLockupEpochs < members[address(msg.sender)].field_512:
                    revert with 0, 'SafeMath: addition overflow'
                if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x77426f617264726f6f6d3a207374696c6c20696e20726577617264206c6f636b75,
                                mem[197 len 31]
                require ext_code.size(treasuryAddress)
                staticcall treasuryAddress.0x900cf0cf with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                members[address(msg.sender)].field_512 = ext_call.return_data[0]
                members[address(msg.sender)].field_256 = 0
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
                if ext_code.size(sub_64658d00Address) <= 0:
                    revert with 0, 'Address: call to non-contract'
                mem[260 len 64] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_288
                call sub_64658d00Address with:
                   funct uint32(msg.sender)
                     gas gas_remaining wei
                    args members[address(msg.sender)].field_256, mem[324 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        revert with unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256
                    if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                        revert with 0, 32, 42, 0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
                    emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                    if balanceOf[address(msg.sender)] < arg1:
                        revert with 0, 
                                    32,
                                    54,
                                    0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                    mem[382 len 10]
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(msg.sender)] -= arg1
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[530 len 26]
                    if ext_code.size(shareAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[424 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    mem[488 len 0] = 0
                    call shareAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[488 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256
                        if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                            revert with 0, 32, 42, 0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[534 len 22]
                    else:
                        mem[456 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[456]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                    emit Withdrawn(arg1, msg.sender);
                else:
                    mem[292 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size > 0:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size <= 0:
                        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[ceil32(return_data.size) + 383 len 10]
                        if arg1 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg1
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if ext_code.size(shareAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 517 len 4] = 0
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                            emit Withdrawn(arg1, msg.sender);
                        else:
                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            emit Withdrawn(address arg1, uint256 arg2):
                                           arg1,
                                           mem[(2 * ceil32(return_data.size)) + 458 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                           msg.sender,
                    else:
                        require return_data.size >= 32
                        if not mem[292]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[ceil32(return_data.size) + 371 len 22]
                        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[ceil32(return_data.size) + 383 len 10]
                        if arg1 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg1
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 531 len 26]
                        if ext_code.size(shareAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 425 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 489 len 0] = 0
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 489 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_256
                            if not unknown_0xa9059cbb(?????), Mask(224, 32, msg.sender) >> 32:
                                revert with 0, 
                                            32,
                                            42,
                                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 535 len 22]
                        else:
                            mem[ceil32(return_data.size) + 457 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 457]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 536 len 22]
                        emit Withdrawn(arg1, msg.sender);
        else:
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            require rewardPerShare.length - 1 < rewardPerShare.length
            require members[address(msg.sender)].field_0 < rewardPerShare.length
            if rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not balanceOf[address(msg.sender)]:
                if members[address(msg.sender)].field_256 < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > rewardPerShare.length:
                    revert with 0, 'SafeMath: subtraction overflow'
                members[address(msg.sender)].field_0 = rewardPerShare.length - 1
                if members[address(msg.sender)].field_256 <= 0:
                    if balanceOf[address(msg.sender)] < arg1:
                        revert with 0, 
                                    32,
                                    54,
                                    0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                    mem[794 len 10]
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(msg.sender)] -= arg1
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[942 len 26]
                    if ext_code.size(shareAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    mem[900 len 0] = 0
                    call shareAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[900 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[868]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 947 len 22]
                else:
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if members[address(msg.sender)].field_512 + rewardLockupEpochs < members[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x77426f617264726f6f6d3a207374696c6c20696e20726577617264206c6f636b75, mem[773 len 31]
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    members[address(msg.sender)].field_512 = ext_call.return_data[0]
                    members[address(msg.sender)].field_256 = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[942 len 26]
                    if ext_code.size(sub_64658d00Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_288
                    mem[900 len 0] = 0
                    call sub_64658d00Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args members[address(msg.sender)].field_256, mem[900 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[958 len 10]
                        if arg1 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg1
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1106 len 26]
                        if ext_code.size(shareAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[1000 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args arg1, mem[936 len 28], mem[1064 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[1032 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[1032]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1111 len 22]
                    else:
                        mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[868]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 947 len 22]
                        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[ceil32(return_data.size) + 959 len 10]
                        if arg1 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg1
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 1107 len 26]
                        if ext_code.size(shareAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 1001 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args arg1, mem[ceil32(return_data.size) + 937 len 28], mem[ceil32(return_data.size) + 1065 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 1033]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 1112 len 22]
            else:
                require balanceOf[address(msg.sender)]
                if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                    revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if 1 > rewardPerShare.length:
                    revert with 0, 'SafeMath: subtraction overflow'
                members[address(msg.sender)].field_0 = rewardPerShare.length - 1
                members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
                if members[address(msg.sender)].field_256 <= 0:
                    if balanceOf[address(msg.sender)] < arg1:
                        revert with 0, 
                                    32,
                                    54,
                                    0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                    mem[794 len 10]
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(msg.sender)] -= arg1
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[942 len 26]
                    if ext_code.size(shareAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    mem[900 len 0] = 0
                    call shareAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[900 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[868]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 947 len 22]
                else:
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if members[address(msg.sender)].field_512 + rewardLockupEpochs < members[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x77426f617264726f6f6d3a207374696c6c20696e20726577617264206c6f636b75, mem[773 len 31]
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    members[address(msg.sender)].field_512 = ext_call.return_data[0]
                    members[address(msg.sender)].field_256 = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[942 len 26]
                    if ext_code.size(sub_64658d00Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_288
                    mem[900 len 0] = 0
                    call sub_64658d00Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args members[address(msg.sender)].field_256, mem[900 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[958 len 10]
                        if arg1 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg1
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1106 len 26]
                        if ext_code.size(shareAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[1000 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args arg1, mem[936 len 28], mem[1064 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[1032 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[1032]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1111 len 22]
                    else:
                        mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size <= 0:
                            emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                            if balanceOf[address(msg.sender)] < arg1:
                                revert with 0, 
                                            32,
                                            54,
                                            0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 959 len 10]
                            if arg1 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg1
                            if arg1 > balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[address(msg.sender)] -= arg1
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 1107 len 26]
                            if ext_code.size(shareAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 1001 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 937 len 28], mem[ceil32(return_data.size) + 1065 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 
                                                'SafeERC20: low-level call failed',
                                                mem[(2 * ceil32(return_data.size)) + 1102 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 1033]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1112 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                        else:
                            require return_data.size >= 32
                            if not mem[868]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 947 len 22]
                            emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                            if balanceOf[address(msg.sender)] < arg1:
                                revert with 0, 
                                            32,
                                            54,
                                            0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 959 len 10]
                            if arg1 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg1
                            if arg1 > balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[address(msg.sender)] -= arg1
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 1107 len 26]
                            if ext_code.size(shareAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 1001 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[ceil32(return_data.size) + 937 len 28], mem[ceil32(return_data.size) + 1065 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 1033]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1112 len 22]
            emit Withdrawn(arg1, msg.sender);
    else:
        if 1 > rewardPerShare.length:
            revert with 0, 'SafeMath: subtraction overflow'
        require rewardPerShare.length - 1 < rewardPerShare.length
        require members[address(msg.sender)].field_0 < rewardPerShare.length
        if rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not balanceOf[address(msg.sender)]:
            if members[address(msg.sender)].field_256 < 0:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            members[address(msg.sender)].field_0 = rewardPerShare.length - 1
            if arg1 <= 0:
                revert with 0, 'Boardroom: Cannot withdraw 0'
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if members[address(msg.sender)].field_512 + withdrawLockupEpochs < members[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if members[address(msg.sender)].field_512 + withdrawLockupEpochs > ext_call.return_data[0]:
                revert with 0, 32, 35, 0x72426f617264726f6f6d3a207374696c6c20696e207769746864726177206c6f636b75, mem[775 len 29]
            if not msg.sender:
                if members[address(msg.sender)].field_256 <= 0:
                    if balanceOf[address(msg.sender)] < arg1:
                        revert with 0, 
                                    32,
                                    54,
                                    0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                    mem[794 len 10]
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(msg.sender)] -= arg1
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[942 len 26]
                    if ext_code.size(shareAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    mem[900 len 0] = 0
                    call shareAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[900 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[868]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 947 len 22]
                else:
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if members[address(msg.sender)].field_512 + rewardLockupEpochs < members[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x77426f617264726f6f6d3a207374696c6c20696e20726577617264206c6f636b75, mem[773 len 31]
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    members[address(msg.sender)].field_512 = ext_call.return_data[0]
                    members[address(msg.sender)].field_256 = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[942 len 26]
                    if ext_code.size(sub_64658d00Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_288
                    mem[900 len 0] = 0
                    call sub_64658d00Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args members[address(msg.sender)].field_256, mem[900 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[958 len 10]
                        if arg1 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg1
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1106 len 26]
                        if ext_code.size(shareAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[1000 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args arg1, mem[936 len 28], mem[1064 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[1032 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[1032]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1111 len 22]
                    else:
                        mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[868]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 947 len 22]
                        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[ceil32(return_data.size) + 959 len 10]
                        if arg1 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg1
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 1107 len 26]
                        if ext_code.size(shareAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 1001 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args arg1, mem[ceil32(return_data.size) + 937 len 28], mem[ceil32(return_data.size) + 1065 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 1102 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 1033]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 1112 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            else:
                if 1 > rewardPerShare.length:
                    revert with 0, 'SafeMath: subtraction overflow'
                require rewardPerShare.length - 1 < rewardPerShare.length
                require members[address(msg.sender)].field_0 < rewardPerShare.length
                if rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if members[address(msg.sender)].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > rewardPerShare.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    members[address(msg.sender)].field_0 = rewardPerShare.length - 1
                else:
                    require balanceOf[address(msg.sender)]
                    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1349 len 31]
                    if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > rewardPerShare.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    members[address(msg.sender)].field_0 = rewardPerShare.length - 1
                    members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
                if members[address(msg.sender)].field_256 <= 0:
                    if balanceOf[address(msg.sender)] < arg1:
                        revert with 0, 
                                    32,
                                    54,
                                    0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                    mem[1370 len 10]
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(msg.sender)] -= arg1
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1518 len 26]
                    if ext_code.size(shareAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[1412 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    call shareAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[1476 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[1444 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[1444]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1523 len 22]
                else:
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if members[address(msg.sender)].field_512 + rewardLockupEpochs < members[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x77426f617264726f6f6d3a207374696c6c20696e20726577617264206c6f636b75, mem[1349 len 31]
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    members[address(msg.sender)].field_512 = ext_call.return_data[0]
                    members[address(msg.sender)].field_256 = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1518 len 26]
                    if ext_code.size(sub_64658d00Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[1412 len 64] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_288
                    mem[1476 len 0] = 0
                    call sub_64658d00Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args members[address(msg.sender)].field_256, mem[1476 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[1534 len 10]
                        if arg1 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg1
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1682 len 26]
                        if ext_code.size(shareAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[1576 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args arg1, mem[1512 len 28], mem[1640 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[1608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[1608]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1687 len 22]
                    else:
                        mem[1444 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[1444]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 1523 len 22]
                        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[ceil32(return_data.size) + 1535 len 10]
                        if arg1 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg1
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 1683 len 26]
                        if ext_code.size(shareAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 1577 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args arg1, mem[ceil32(return_data.size) + 1513 len 28], mem[ceil32(return_data.size) + 1641 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[ceil32(return_data.size) + 1609 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 
                                            'SafeERC20: low-level call failed',
                                            mem[(2 * ceil32(return_data.size)) + 1678 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 1609]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 1688 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
            emit Withdrawn(arg1, msg.sender);
        else:
            require balanceOf[address(msg.sender)]
            if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if 1 > rewardPerShare.length:
                revert with 0, 'SafeMath: subtraction overflow'
            members[address(msg.sender)].field_0 = rewardPerShare.length - 1
            members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
            if arg1 <= 0:
                revert with 0, 'Boardroom: Cannot withdraw 0'
            require ext_code.size(treasuryAddress)
            staticcall treasuryAddress.0x900cf0cf with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if members[address(msg.sender)].field_512 + withdrawLockupEpochs < members[address(msg.sender)].field_512:
                revert with 0, 'SafeMath: addition overflow'
            if members[address(msg.sender)].field_512 + withdrawLockupEpochs > ext_call.return_data[0]:
                revert with 0, 32, 35, 0x72426f617264726f6f6d3a207374696c6c20696e207769746864726177206c6f636b75, mem[775 len 29]
            if not msg.sender:
                if members[address(msg.sender)].field_256 <= 0:
                    if balanceOf[address(msg.sender)] < arg1:
                        revert with 0, 
                                    32,
                                    54,
                                    0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                    mem[794 len 10]
                    if arg1 > totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    totalSupply -= arg1
                    if arg1 > balanceOf[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    balanceOf[address(msg.sender)] -= arg1
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[942 len 26]
                    if ext_code.size(shareAddress) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                    call shareAddress with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args Mask(224, 32, arg1) << 224, mem[900 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                    else:
                        mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[868]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 947 len 22]
                else:
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if members[address(msg.sender)].field_512 + rewardLockupEpochs < members[address(msg.sender)].field_512:
                        revert with 0, 'SafeMath: addition overflow'
                    if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                        revert with 0, 32, 33, 0x77426f617264726f6f6d3a207374696c6c20696e20726577617264206c6f636b75, mem[773 len 31]
                    require ext_code.size(treasuryAddress)
                    staticcall treasuryAddress.0x900cf0cf with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    members[address(msg.sender)].field_512 = ext_call.return_data[0]
                    members[address(msg.sender)].field_256 = 0
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[942 len 26]
                    if ext_code.size(sub_64658d00Address) <= 0:
                        revert with 0, 'Address: call to non-contract'
                    mem[836 len 64] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_288
                    call sub_64658d00Address with:
                       funct uint32(msg.sender)
                         gas gas_remaining wei
                        args members[address(msg.sender)].field_256, mem[900 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[958 len 10]
                        if arg1 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg1
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1106 len 26]
                        if ext_code.size(shareAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[1000 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[1064 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[1032 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[1032]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1111 len 22]
                    else:
                        mem[868 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size > 0:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size > 0:
                            require return_data.size >= 32
                            if not mem[868]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 947 len 22]
                        emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[ceil32(return_data.size) + 959 len 10]
                        if arg1 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg1
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 
                                        32,
                                        38,
                                        0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                        mem[ceil32(return_data.size) + 1107 len 26]
                        if ext_code.size(shareAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[ceil32(return_data.size) + 1001 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        mem[ceil32(return_data.size) + 1065 len 0] = 0
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 1065 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[ceil32(return_data.size) + 1033 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[ceil32(return_data.size) + 1033]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[(2 * ceil32(return_data.size)) + 1112 len 22]
                emit Withdrawn(arg1, msg.sender);
            else:
                if 1 > rewardPerShare.length:
                    revert with 0, 'SafeMath: subtraction overflow'
                require rewardPerShare.length - 1 < rewardPerShare.length
                require members[address(msg.sender)].field_0 < rewardPerShare.length
                if rewardPerShare[stor7[address(msg.sender)].field_0].field_512 > rewardPerShare[rewardPerShare.length].field_0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not balanceOf[address(msg.sender)]:
                    if members[address(msg.sender)].field_256 < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > rewardPerShare.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    members[address(msg.sender)].field_0 = rewardPerShare.length - 1
                    if members[address(msg.sender)].field_256 <= 0:
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[1370 len 10]
                        if arg1 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg1
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1518 len 26]
                        if ext_code.size(shareAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[1412 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[1476 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[1444 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[1444]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1523 len 22]
                        emit Withdrawn(arg1, msg.sender);
                    else:
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if members[address(msg.sender)].field_512 + rewardLockupEpochs < members[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x77426f617264726f6f6d3a207374696c6c20696e20726577617264206c6f636b75, mem[1349 len 31]
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        members[address(msg.sender)].field_512 = ext_call.return_data[0]
                        members[address(msg.sender)].field_256 = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1518 len 26]
                        if ext_code.size(sub_64658d00Address) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[1412 len 64] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_288
                        call sub_64658d00Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args members[address(msg.sender)].field_256, mem[1476 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                            if balanceOf[address(msg.sender)] < arg1:
                                revert with 0, 
                                            32,
                                            54,
                                            0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[1534 len 10]
                            if arg1 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg1
                            if arg1 > balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[address(msg.sender)] -= arg1
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1682 len 26]
                            if ext_code.size(shareAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[1576 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                            mem[1640 len 0] = 0
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 224, mem[1640 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[1608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[1608]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 1687 len 22]
                            emit Withdrawn(arg1, msg.sender);
                        else:
                            mem[1444 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[1444]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1523 len 22]
                            emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                            if balanceOf[address(msg.sender)] < arg1:
                                revert with 0, 
                                            32,
                                            54,
                                            0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[ceil32(return_data.size) + 1535 len 10]
                            if arg1 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg1
                            if arg1 > balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[address(msg.sender)] -= arg1
                            if eth.balance(this.address) < 0:
                                revert with 0, 
                                            32,
                                            38,
                                            0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                            mem[ceil32(return_data.size) + 1683 len 26]
                            if ext_code.size(shareAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[ceil32(return_data.size) + 1577 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                            mem[ceil32(return_data.size) + 1669 len 4] = 0
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args Mask(224, 32, arg1) << 224, mem[ceil32(return_data.size) + 1641 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                emit Withdrawn(arg1, msg.sender);
                            else:
                                mem[ceil32(return_data.size) + 1609 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[ceil32(return_data.size) + 1609]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[(2 * ceil32(return_data.size)) + 1688 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                                emit Withdrawn(address arg1, uint256 arg2):
                                               arg1,
                                               mem[(2 * ceil32(return_data.size)) + 1610 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))],
                                               msg.sender,
                else:
                    require balanceOf[address(msg.sender)]
                    if (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / balanceOf[address(msg.sender)] != rewardPerShare[rewardPerShare.length].field_0 - rewardPerShare[stor7[address(msg.sender)].field_0].field_512:
                        revert with 0, 32, 33, 0x30536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[1349 len 31]
                    if ((rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18) + members[address(msg.sender)].field_256 < (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18:
                        revert with 0, 'SafeMath: addition overflow'
                    if 1 > rewardPerShare.length:
                        revert with 0, 'SafeMath: subtraction overflow'
                    members[address(msg.sender)].field_0 = rewardPerShare.length - 1
                    members[address(msg.sender)].field_256 += (rewardPerShare[rewardPerShare.length].field_0 * balanceOf[address(msg.sender)]) - (rewardPerShare[stor7[address(msg.sender)].field_0].field_512 * balanceOf[address(msg.sender)]) / 10^18
                    if members[address(msg.sender)].field_256 <= 0:
                        if balanceOf[address(msg.sender)] < arg1:
                            revert with 0, 
                                        32,
                                        54,
                                        0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                        mem[1370 len 10]
                        if arg1 > totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        totalSupply -= arg1
                        if arg1 > balanceOf[address(msg.sender)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        balanceOf[address(msg.sender)] -= arg1
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1518 len 26]
                        if ext_code.size(shareAddress) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[1412 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, arg1) >> 32
                        mem[1476 len 0] = 0
                        call shareAddress with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args Mask(224, 32, arg1) << 224, mem[1476 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                        else:
                            mem[1444 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size > 0:
                                require return_data.size >= 32
                                if not mem[1444]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1523 len 22]
                    else:
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if members[address(msg.sender)].field_512 + rewardLockupEpochs < members[address(msg.sender)].field_512:
                            revert with 0, 'SafeMath: addition overflow'
                        if members[address(msg.sender)].field_512 + rewardLockupEpochs > ext_call.return_data[0]:
                            revert with 0, 32, 33, 0x77426f617264726f6f6d3a207374696c6c20696e20726577617264206c6f636b75, mem[1349 len 31]
                        require ext_code.size(treasuryAddress)
                        staticcall treasuryAddress.0x900cf0cf with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        members[address(msg.sender)].field_512 = ext_call.return_data[0]
                        members[address(msg.sender)].field_256 = 0
                        if eth.balance(this.address) < 0:
                            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1518 len 26]
                        if ext_code.size(sub_64658d00Address) <= 0:
                            revert with 0, 'Address: call to non-contract'
                        mem[1412 len 64] = unknown_0xa9059cbb(?????), msg.sender, members[address(msg.sender)].field_288
                        mem[1476 len 0] = 0
                        call sub_64658d00Address with:
                           funct uint32(msg.sender)
                             gas gas_remaining wei
                            args members[address(msg.sender)].field_256, mem[1476 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                            if balanceOf[address(msg.sender)] < arg1:
                                revert with 0, 
                                            32,
                                            54,
                                            0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                            mem[1534 len 10]
                            if arg1 > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            totalSupply -= arg1
                            if arg1 > balanceOf[address(msg.sender)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            balanceOf[address(msg.sender)] -= arg1
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[1682 len 26]
                            if ext_code.size(shareAddress) <= 0:
                                revert with 0, 'Address: call to non-contract'
                            mem[1576 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                            call shareAddress with:
                               funct uint32(msg.sender)
                                 gas gas_remaining wei
                                args arg1, mem[1512 len 28], mem[1640 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                            else:
                                mem[1608 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size > 0:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size > 0:
                                    require return_data.size >= 32
                                    if not mem[1608]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 1687 len 22]
                        else:
                            mem[1444 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                if return_data.size > 0:
                                    revert with ext_call.return_data[0 len return_data.size]
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size <= 0:
                                emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                                if balanceOf[address(msg.sender)] < arg1:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                                mem[ceil32(return_data.size) + 1535 len 10]
                                if arg1 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg1
                                if arg1 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[address(msg.sender)] -= arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 1683 len 26]
                                if ext_code.size(shareAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 1577 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call shareAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 1513 len 28], mem[ceil32(return_data.size) + 1641 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                else:
                                    mem[ceil32(return_data.size) + 1609 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 
                                                    'SafeERC20: low-level call failed',
                                                    mem[(2 * ceil32(return_data.size)) + 1678 len (2 * ceil32(return_data.size)) - (2 * ceil32(return_data.size))]
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 1609]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 1688 len (2 * ceil32(return_data.size)) + (-2 * ceil32(return_data.size)) + 22]
                            else:
                                require return_data.size >= 32
                                if not mem[1444]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 1523 len 22]
                                emit RewardPaid(members[address(msg.sender)].field_256, msg.sender);
                                if balanceOf[address(msg.sender)] < arg1:
                                    revert with 0, 
                                                32,
                                                54,
                                                0x6e426f617264726f6f6d3a20776974686472617720726571756573742067726561746572207468616e207374616b656420616d6f756e,
                                                mem[ceil32(return_data.size) + 1535 len 10]
                                if arg1 > totalSupply:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                totalSupply -= arg1
                                if arg1 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                balanceOf[address(msg.sender)] -= arg1
                                if eth.balance(this.address) < 0:
                                    revert with 0, 
                                                32,
                                                38,
                                                0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                                                mem[ceil32(return_data.size) + 1683 len 26]
                                if ext_code.size(shareAddress) <= 0:
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 1577 len 64] = 0, msg.sender, Mask(224, 32, arg1) >> 32
                                call shareAddress with:
                                   funct uint32(msg.sender)
                                     gas gas_remaining wei
                                    args arg1, mem[ceil32(return_data.size) + 1513 len 28], mem[ceil32(return_data.size) + 1641 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                else:
                                    mem[ceil32(return_data.size) + 1609 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size > 0:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size > 0:
                                        require return_data.size >= 32
                                        if not mem[ceil32(return_data.size) + 1609]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0x705361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[(2 * ceil32(return_data.size)) + 1688 len 22]
                    emit Withdrawn(arg1, msg.sender);
    stor3[block.number][tx.origin] = 1
    stor3[block.number][address(msg.sender)] = 1
}



}
