contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of struct rewards;
mapping of uint256 lastClaimed;
mapping of uint8 stor3;
uint256 sub_62de8253;
address votingEscrowAddress;

function lastClaimed(address arg1) payable {
    require calldata.size - 4 >= 32
    return lastClaimed[arg1]
}

function votingEscrow() payable {
    return votingEscrowAddress
}

function isClaimed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor3[arg1][arg2])
}

function sub_62de8253(?) payable {
    return sub_62de8253
}

function rewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return address(rewards[arg1].field_0), rewards[arg1].field_256, rewards[arg1].field_512
}

function isManager(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert
}

function setManager(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender]:
        revert with 0, '!manager'
    stor0[address(arg1)] = uint8(arg2)
}

function sub_a2c95141(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    mem[0] = arg2
    mem[32] = 2
    idx = stor[sha3(mem[0 len 64])]
    while idx < sub_62de8253:
        _28 = mem[64]
        mem[64] = mem[64] + 96
        mem[_28] = 0
        mem[_28 + 32] = 0
        mem[_28 + 64] = 0
        mem[0] = idx
        mem[32] = 1
        _30 = mem[64]
        mem[64] = mem[64] + 96
        mem[_30] = address(rewards[idx].field_0)
        mem[_30 + 32] = rewards[idx].field_256
        mem[_30 + 64] = rewards[idx].field_512
        if arg1 != address(rewards[idx].field_0):
            idx = idx + 1
            continue 
        mem[0] = idx
        mem[32] = sha3(address(arg2), 3)
        if stor3[address(arg2)][idx]:
            idx = idx + 1
            continue 
        require ext_code.size(votingEscrowAddress)
        staticcall votingEscrowAddress.totalSupplyAt(uint256 arg1) with:
                gas gas_remaining wei
               args rewards[idx].field_256
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[mem[64] + 4] = arg2
        mem[mem[64] + 36] = rewards[idx].field_256
        require ext_code.size(votingEscrowAddress)
        staticcall votingEscrowAddress.balanceOfAt(address arg1, uint256 arg2) with:
                gas gas_remaining wei
               args address(arg2), rewards[idx].field_256
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if rewards[idx].field_512 * ext_call.return_data[0] / ext_call.return_data[0] != rewards[idx].field_512:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        idx = idx + 1
        continue 
    return 0
}

function sub_1739faa2(?) payable {
    require calldata.size - 4 >= 96
    if not stor0[msg.sender]:
        revert with 0, '!manager'
    mem[128] = arg3
    mem[160] = arg2
    address(rewards[stor4].field_0) = arg1
    rewards[stor4].field_256 = arg3
    rewards[stor4].field_512 = arg2
    sub_62de8253++
    mem[228] = msg.sender
    mem[260] = this.address
    mem[292] = arg2
    mem[192] = 100
    mem[228 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[224 len 4] = unknown_0x23b872dd(?????)
    mem[324] = 32
    mem[356] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[388 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[512 len 4] = 0
    mem[484 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[484 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg1:
                revert with memory
                  from 128
                   len arg1
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1:
            require arg1 >= 32
            if not arg3:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[498 len 14],
                            0,
                            mem[516 len 4]
    else:
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
}

function addReward(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0[msg.sender]:
        revert with 0, '!manager'
    mem[128] = block.number
    mem[160] = arg2
    address(rewards[stor4].field_0) = arg1
    rewards[stor4].field_256 = block.number
    rewards[stor4].field_512 = arg2
    sub_62de8253++
    mem[228] = msg.sender
    mem[260] = this.address
    mem[292] = arg2
    mem[192] = 100
    mem[228 len 28] = Mask(224, 32, msg.sender) >> 32
    mem[224 len 4] = unknown_0x23b872dd(?????)
    mem[324] = 32
    mem[356] = 'SafeERC20: low-level call failed'
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[494 len 26]
    if not ext_code.size(arg1):
        revert with 0, 'Address: call to non-contract'
    mem[388 len 96] = unknown_0x23b872dd(?????), msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
    mem[512 len 4] = 0
    mem[484 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 480, mem[484 len 4]
    if not return_data.size:
        if not ext_call.success:
            if arg1:
                revert with memory
                  from 128
                   len arg1
            revert with 0, 'SafeERC20: low-level call failed'
        if arg1:
            require arg1 >= 32
            if not block.number:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[498 len 14],
                            0,
                            mem[516 len 4]
    else:
        mem[420 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[420]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 499 len 22]
}

function claimRewards(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 2
    if lastClaimed[msg.sender] >= sub_62de8253:
        revert with 0, 'No rewards to claim'
    idx = stor[sha3(mem[0 len 64])]
    while idx < sub_62de8253:
        _32 = mem[64]
        mem[64] = mem[64] + 96
        mem[_32] = 0
        mem[_32 + 32] = 0
        mem[_32 + 64] = 0
        mem[0] = idx
        mem[32] = 1
        _34 = mem[64]
        mem[64] = mem[64] + 96
        mem[_34] = address(rewards[idx].field_0)
        mem[_34 + 32] = rewards[idx].field_256
        mem[_34 + 64] = rewards[idx].field_512
        if arg1 == address(rewards[idx].field_0):
            mem[0] = idx
            mem[32] = sha3(msg.sender, 3)
            if not stor3[msg.sender][idx]:
                require ext_code.size(votingEscrowAddress)
                staticcall votingEscrowAddress.totalSupplyAt(uint256 arg1) with:
                        gas gas_remaining wei
                       args rewards[idx].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[mem[64] + 4] = msg.sender
                mem[mem[64] + 36] = rewards[idx].field_256
                require ext_code.size(votingEscrowAddress)
                staticcall votingEscrowAddress.balanceOfAt(address arg1, uint256 arg2) with:
                        gas gas_remaining wei
                       args msg.sender, rewards[idx].field_256
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if rewards[idx].field_512 * ext_call.return_data[0] / ext_call.return_data[0] != rewards[idx].field_512:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                mem[0] = idx
                mem[32] = sha3(msg.sender, 3)
                stor3[msg.sender][idx] = 1
        idx = idx + 1
        continue 
    revert with 0, '!rewards'
}

function sub_ff2ddc22(?) payable {
    require calldata.size - 4 >= 64
    if arg2 >= sub_62de8253:
        revert with 0, 'Wrong index'
    if stor3[msg.sender][arg2]:
        revert with 0, 'Reward is already claimed'
    require ext_code.size(votingEscrowAddress)
    staticcall votingEscrowAddress.totalSupplyAt(uint256 arg1) with:
            gas gas_remaining wei
           args rewards[arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(votingEscrowAddress)
    staticcall votingEscrowAddress.balanceOfAt(address arg1, uint256 arg2) with:
            gas gas_remaining wei
           args msg.sender, rewards[arg2].field_256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        stor3[msg.sender][arg2] = 1
        if not 0 / ext_call.return_data[0]:
            revert with 0, '!rewards'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, 0 / ext_call.return_data[0]) >> 32
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, 0 / ext_call.return_data[0]) << 224, mem[516 len 4]
    else:
        if rewards[arg2].field_512 * ext_call.return_data[0] / ext_call.return_data[0] != rewards[arg2].field_512:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        stor3[msg.sender][arg2] = 1
        if not rewards[arg2].field_512 * ext_call.return_data[0] / ext_call.return_data[0]:
            revert with 0, '!rewards'
        if eth.balance(this.address) < 0:
            revert with 0, 32, 38, 0xfe416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[558 len 26]
        if not ext_code.size(arg1):
            revert with 0, 'Address: call to non-contract'
        mem[452 len 64] = unknown_0xa9059cbb(?????), msg.sender, Mask(224, 32, rewards[arg2].field_512 * ext_call.return_data[0] / ext_call.return_data[0]) >> 32
        mem[516 len 0] = 0
        call arg1 with:
           funct uint32(msg.sender)
             gas gas_remaining wei
            args Mask(224, 32, rewards[arg2].field_512 * ext_call.return_data[0] / ext_call.return_data[0]) << 224, mem[516 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with 0, 'SafeERC20: low-level call failed'
    else:
        mem[484 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            if not mem[484]:
                revert with 0, 
                            32,
                            42,
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 563 len 22]
    mem[0] = msg.sender
    mem[32] = 2
    idx = stor[sha3(mem[0 len 64])]
    while idx < sub_62de8253:
        mem[0] = idx
        mem[32] = sha3(address(msg.sender), 3)
        if stor3[address(msg.sender)][idx]:
            idx = idx + 1
            continue 
        lastClaimed[address(msg.sender)] = idx
}



}
