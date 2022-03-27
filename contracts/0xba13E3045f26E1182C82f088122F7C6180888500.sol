contract main {




// =====================  Runtime code  =====================


const cycleBalance = ext_call.return_data[0]

const CYCLE = 0x2e95d5493dc74483e2d449ab9241acb9227c89f5


uint8 stor0; offset 160
address owner;
uint256 stor1;
array of struct rewards;
array of uint256 stor29102676481673041902632991033461445430619272659676223336789171408008386403023;

function paused() payable {
    return bool(stor0)
}

function owner() payable {
    return owner
}

function getTotalRewards() payable {
    return rewards.length
}

function rewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewards.length
    return address(rewards[arg1].field_0), rewards[arg1].field_256
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function togglePause() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if stor0:
        stor0 = 0
        emit Unpaused(msg.sender);
    else:
        stor0 = 1
        emit Paused(msg.sender);
}

function getRewardWeight(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < rewards.length:
        mem[0] = 2
        if address(rewards[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < rewards.length
        return rewards[idx].field_256
    return 0
}

function getTotalWeight() payable {
    idx = 0
    s = 0
    while idx < rewards.length:
        mem[0] = 2
        if rewards[idx].field_256 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = rewards[idx].field_256 + s
        continue 
    return (stor[(2 * stor2.length) + _8 + 1] * rewards.length)
}

function updateRewardWeight(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < rewards.length:
        mem[0] = 2
        if address(rewards[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < rewards.length
        rewards[idx].field_256 = arg2
        emit RewardWeightUpdated(address(arg1), arg2);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getRewardIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < rewards.length:
        mem[0] = 2
        if address(rewards[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        return idx
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                59,
                0x735374616b696e6752657761726420636f6e747261637420646f6573206e6f7420657869737420696e207265776172647320636f6c6c656374696f,
                mem[223 len 5]
}

function addRewardData(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < rewards.length:
        mem[0] = 2
        if address(rewards[idx].field_0) == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        51,
                        0x644469737472696275746f723a2052657761726420636f6e74726163742068617320616c7265616479206265656e2061646465,
                        mem[215 len 13]
        idx = idx + 1
        continue 
    rewards.length++
    address(rewards[rewards.length].field_0) = arg1
    stor4057[stor2.length] = 10
    emit RewardContractAdded(arg1);
}

function deleteRewardData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= rewards.length:
        revert with 0, 'Distributor: Index out of bounds'
    idx = arg1
    while idx < rewards.length - 1:
        require idx + 1 < rewards.length
        require idx < rewards.length
        mem[0] = 2
        address(rewards[idx].field_0) = address(rewards[idx + 1].field_0)
        rewards[idx].field_256 = rewards[idx + 1].field_256
        idx = idx + 1
        continue 
    require rewards.length
    address(rewards[rewards.length - 1].field_0) = 0
    rewards[rewards.length - 1].field_256 = 0
    rewards.length--
    emit RewardContractDeleted(address(rewards[arg1].field_0));
}

function distribute() payable {
    mem[64] = 96
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    mem[100] = this.address
    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
    staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x724469737472696275746f723a204e6f204359434c4520746f20646973747269627574,
                    mem[199 len 29]
    mem[96] = ext_call.return_data[0]
    emit 0xb21a8947: ext_call.return_data[0]
    idx = 0
    s = 0
    while idx < rewards.length:
        mem[0] = 2
        if rewards[idx].field_256 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = rewards[idx].field_256 + s
        continue 
    idx = 0
    while idx < rewards.length:
        if idx != rewards.length - 1:
            require idx < rewards.length
            if not ext_call.return_data[0]:
                if stor[(2 * stor2.length) + _16 + 1] * rewards.length <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor[(2 * stor2.length) + _16 + 1] * rewards.length
                require idx < rewards.length
                mem[0] = 2
                _217 = mem[64]
                mem[mem[64] + 36] = address(rewards[idx].field_0)
                mem[mem[64] + 68] = 0 / stor[(2 * stor2.length) + _16 + 1] * rewards.length
                _218 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_218 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_218 + 36 len 28]
                mem[64] = _217 + 164
                mem[_217 + 100] = 32
                mem[_217 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_217 + 270 len 26]
                if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                    revert with 0, 'Address: call to non-contract'
                _240 = mem[_218]
                t = _218 + 32
                u = _217 + 164
                s = mem[_218]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_217 + floor32(mem[_218]) + 164] = mem[_218 + -(mem[_218] % 32) + floor32(mem[_218]) + 64 len mem[_218] % 32] or Mask(8 * -(mem[_218] % 32) + 32, -(8 * -(mem[_218] % 32) + 32) + 256, mem[_217 + floor32(mem[_218]) + 164])
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[_217 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_217 + 168 len _240 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_217 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_217 + 168] = 32
                        mem[_217 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _217 + 232] = mem[idx + _217 + 132]
                            idx = idx + 32
                            continue 
                        revert with memory
                          from mem[64]
                           len _217 + -mem[64] + 264
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_217 + 274 len 22]
                    require idx < rewards.length
                    mem[0] = 2
                    mem[_217 + 164] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
                    mem[_217 + 168] = 0 / stor[(2 * stor2.length) + _16 + 1] * rewards.length
                else:
                    mem[64] = _217 + ceil32(return_data.size) + 165
                    mem[_217 + 164] = return_data.size
                    mem[_217 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_217 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_217 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _217 + ceil32(return_data.size) + 233] = mem[idx + _217 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_217 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_217 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_217 + ceil32(return_data.size) + 275 len 22]
                    require idx < rewards.length
                    mem[0] = 2
                    mem[_217 + ceil32(return_data.size) + 165] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
                    mem[_217 + ceil32(return_data.size) + 169] = 0 / stor[(2 * stor2.length) + _16 + 1] * rewards.length
                require ext_code.size(address(rewards[idx].field_0))
                call address(rewards[idx].field_0).notifyRewardAmount(uint256 rg1) with:
                     gas gas_remaining wei
                    args (0 / stor[(2 * stor2.length) + _16 + 1] * rewards.length)
            else:
                if rewards[idx].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != rewards[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor[(2 * stor2.length) + _16 + 1] * rewards.length <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor[(2 * stor2.length) + _16 + 1] * rewards.length
                require idx < rewards.length
                mem[0] = 2
                _222 = mem[64]
                mem[mem[64] + 36] = address(rewards[idx].field_0)
                mem[mem[64] + 68] = rewards[idx].field_256 * ext_call.return_data[0] / stor[(2 * stor2.length) + _16 + 1] * rewards.length
                _223 = mem[64]
                mem[mem[64]] = 68
                mem[64] = mem[64] + 100
                mem[_223 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_223 + 36 len 28]
                mem[64] = _222 + 164
                mem[_222 + 100] = 32
                mem[_222 + 132] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_222 + 270 len 26]
                if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                    revert with 0, 'Address: call to non-contract'
                _244 = mem[_223]
                t = _223 + 32
                u = _222 + 164
                s = mem[_223]
                while s >= 32:
                    mem[u] = mem[t]
                    t = t + 32
                    u = u + 32
                    s = s - 32
                    continue 
                mem[_222 + floor32(mem[_223]) + 164] = mem[_223 + -(mem[_223] % 32) + floor32(mem[_223]) + 64 len mem[_223] % 32] or Mask(8 * -(mem[_223] % 32) + 32, -(8 * -(mem[_223] % 32) + 32) + 256, mem[_222 + floor32(mem[_223]) + 164])
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[_222 + 164 len 4] with:
                     gas gas_remaining wei
                    args mem[_222 + 168 len _244 - 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        mem[_222 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_222 + 168] = 32
                        mem[_222 + 200] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _222 + 232] = mem[idx + _222 + 132]
                            idx = idx + 32
                            continue 
                        revert with memory
                          from mem[64]
                           len _222 + -mem[64] + 264
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_222 + 274 len 22]
                    require idx < rewards.length
                    mem[0] = 2
                    mem[_222 + 164] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
                    mem[_222 + 168] = rewards[idx].field_256 * ext_call.return_data[0] / stor[(2 * stor2.length) + _16 + 1] * rewards.length
                else:
                    mem[64] = _222 + ceil32(return_data.size) + 165
                    mem[_222 + 164] = return_data.size
                    mem[_222 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_222 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_222 + ceil32(return_data.size) + 169] = 32
                        idx = 0
                        while idx < 32:
                            mem[idx + _222 + ceil32(return_data.size) + 233] = mem[idx + _222 + 132]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 32, mem[_222 + ceil32(return_data.size) + 233]
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_222 + 196]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_222 + ceil32(return_data.size) + 275 len 22]
                    require idx < rewards.length
                    mem[0] = 2
                    mem[_222 + ceil32(return_data.size) + 165] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
                    mem[_222 + ceil32(return_data.size) + 169] = rewards[idx].field_256 * ext_call.return_data[0] / stor[(2 * stor2.length) + _16 + 1] * rewards.length
                require ext_code.size(address(rewards[idx].field_0))
                call address(rewards[idx].field_0).notifyRewardAmount(uint256 rg1) with:
                     gas gas_remaining wei
                    args (rewards[idx].field_256 * ext_call.return_data[0] / stor[(2 * stor2.length) + _16 + 1] * rewards.length)
        else:
            mem[mem[64] + 4] = this.address
            require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
            staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.0x70a08231 with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < rewards.length
            mem[0] = 2
            _208 = mem[64]
            mem[mem[64] + 36] = address(rewards[idx].field_0)
            mem[mem[64] + 68] = ext_call.return_data[0]
            _209 = mem[64]
            mem[mem[64]] = 68
            mem[64] = mem[64] + 100
            mem[_209 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_209 + 36 len 28]
            mem[64] = _208 + 164
            mem[_208 + 100] = 32
            mem[_208 + 132] = 'SafeERC20: low-level call failed'
            if eth.balance(this.address) < 0:
                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_208 + 270 len 26]
            if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                revert with 0, 'Address: call to non-contract'
            _227 = mem[_209]
            t = _209 + 32
            u = _208 + 164
            s = mem[_209]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[_208 + floor32(mem[_209]) + 164] = mem[_209 + -(mem[_209] % 32) + floor32(mem[_209]) + 64 len mem[_209] % 32] or Mask(8 * -(mem[_209] % 32) + 32, -(8 * -(mem[_209] % 32) + 32) + 256, mem[_208 + floor32(mem[_209]) + 164])
            call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[_208 + 164 len 4] with:
                 gas gas_remaining wei
                args mem[_208 + 168 len _227 - 4]
            if not return_data.size:
                if not ext_call.success:
                    if mem[96]:
                        revert with memory
                          from 128
                           len mem[96]
                    mem[_208 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_208 + 168] = 32
                    mem[_208 + 200] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _208 + 232] = mem[idx + _208 + 132]
                        idx = idx + 32
                        continue 
                    revert with memory
                      from mem[64]
                       len _208 + -mem[64] + 264
                if mem[96]:
                    require mem[96] >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_208 + 274 len 22]
                require idx < rewards.length
                mem[0] = 2
                mem[_208 + 164] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
                mem[_208 + 168] = ext_call.return_data[0]
            else:
                mem[64] = _208 + ceil32(return_data.size) + 165
                mem[_208 + 164] = return_data.size
                mem[_208 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_208 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[_208 + ceil32(return_data.size) + 169] = 32
                    idx = 0
                    while idx < 32:
                        mem[idx + _208 + ceil32(return_data.size) + 233] = mem[idx + _208 + 132]
                        idx = idx + 32
                        continue 
                    revert with 0, 32, 32, mem[_208 + ceil32(return_data.size) + 233]
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[_208 + 196]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x655361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[_208 + ceil32(return_data.size) + 275 len 22]
                require idx < rewards.length
                mem[0] = 2
                mem[_208 + ceil32(return_data.size) + 165] = 0x3c6b16ab00000000000000000000000000000000000000000000000000000000
                mem[_208 + ceil32(return_data.size) + 169] = ext_call.return_data[0]
            require ext_code.size(address(rewards[idx].field_0))
            call address(rewards[idx].field_0).notifyRewardAmount(uint256 rg1) with:
                 gas gas_remaining wei
                args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
    stor1 = 1
}



}
