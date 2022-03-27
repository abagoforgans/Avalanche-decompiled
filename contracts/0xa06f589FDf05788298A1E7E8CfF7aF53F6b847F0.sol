contract main {




// =====================  Runtime code  =====================


const cycleBalance = ext_call.return_data[0]

const Factory = 0xefa94de7a4656d787667c749f7e1223d71e9fd88

const WAVAX = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7

const CYCLE = 0x2e95d5493dc74483e2d449ab9241acb9227c89f5


uint8 stor0; offset 160
address owner;
uint256 stor1;
uint32 stor2;
address stor2;
uint256 stor2;
uint256 stor3;
array of struct rewardWeight;
array of uint256 stor62514009886607029107290561805838585334079798074568712924583230797734656856476;

function paused() payable {
    return bool(stor0)
}

function getVaultRewardsCount() payable {
    return rewardWeight.length
}

function owner() payable {
    return owner
}

function getRewardWeight(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < rewardWeight.length:
        mem[0] = 4
        if address(rewardWeight[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < rewardWeight.length
        return rewardWeight[idx].field_256
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                59,
                0x535374616b696e6752657761726420636f6e747261637420646f6573206e6f7420657869737420696e207265776172647320636f6c6c656374696f,
                mem[223 len 5]
}

function rewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < rewardWeight.length
    return address(rewardWeight[arg1].field_0), rewardWeight[arg1].field_256
}

function _fallback() payable {
    revert
}

function sub_2d3434aa(?) payable {
    return address(stor2), stor3
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_2c2eebea(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    stor3 = arg1
    emit 0x5bf81f1c: arg1
}

function sub_7b5362ad(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    address(stor2) = arg1
    emit 0x547a8a8e: arg1
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

function getTotalWeight() payable {
    idx = 0
    s = stor3
    while idx < rewardWeight.length:
        mem[0] = 4
        if rewardWeight[idx].field_256 + s < s:
            revert with 0, 'SafeMath: addition overflow'
        idx = idx + 1
        s = rewardWeight[idx].field_256 + s
        continue 
    return (stor3 + (stor[(2 * stor4.length) + _8 + 1] * rewardWeight.length))
}

function updateRewardWeight(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < rewardWeight.length:
        mem[0] = 4
        if address(rewardWeight[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        require idx < rewardWeight.length
        rewardWeight[idx].field_256 = arg2
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
                    0x414f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getRewardIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    idx = 0
    while idx < rewardWeight.length:
        mem[0] = 4
        if address(rewardWeight[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        return idx
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                32,
                59,
                0x535374616b696e6752657761726420636f6e747261637420646f6573206e6f7420657869737420696e207265776172647320636f6c6c656374696f,
                mem[223 len 5]
}

function addRewardData(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    idx = 0
    while idx < rewardWeight.length:
        mem[0] = 4
        if address(rewardWeight[idx].field_0) == arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        51,
                        0x644469737472696275746f723a2052657761726420636f6e74726163742068617320616c7265616479206265656e2061646465,
                        mem[215 len 13]
        idx = idx + 1
        continue 
    rewardWeight.length++
    address(rewardWeight[rewardWeight.length].field_0) = arg1
    stor8A35[stor4.length] = 10
    emit RewardContractAdded(arg1);
}

function deleteRewardData(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 >= rewardWeight.length:
        revert with 0, 'Distributor: Index out of bounds'
    idx = arg1
    while idx < rewardWeight.length - 1:
        require idx + 1 < rewardWeight.length
        require idx < rewardWeight.length
        mem[0] = 4
        address(rewardWeight[idx].field_0) = address(rewardWeight[idx + 1].field_0)
        rewardWeight[idx].field_256 = rewardWeight[idx + 1].field_256
        idx = idx + 1
        continue 
    require rewardWeight.length
    address(rewardWeight[rewardWeight.length - 1].field_0) = 0
    rewardWeight[rewardWeight.length - 1].field_256 = 0
    rewardWeight.length--
    emit RewardContractDeleted(address(rewardWeight[arg1].field_0));
}

function getVaultTVL(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(arg1)
    staticcall arg1.stakingToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).balanceLPinSystem() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getAVAXquoteForLPamount(uint256 rg1) with:
            gas gas_remaining wei
           args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getCoreRewardsTVL() payable {
    require ext_code.size(address(stor2))
    staticcall address(stor2).stakingToken() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor2))
    staticcall address(stor2).totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(sha3(0, 17269419903419772280, sha3(3356823607820371075, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
    staticcall address(sha3(0, 17269419903419772280, sha3(3356823607820371075, 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7), 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if not ext_call.return_data[50 len 14]:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if not 0 / ext_call.return_data[0]:
            return 0
        if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
        return (2 * 0 / ext_call.return_data[0])
    if ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != ext_call.return_data[0]:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if not ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
        return 0
    if 2 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != 2:
        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[386 len 31]
    return (2 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0])
}

function distribute() payable {
    if stor0:
        revert with 0, 'Pausable: paused'
    if stor1 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor1 = 2
    if ext_code.size(msg.sender):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x654469737472696275746f7256323a2043616c6c6572206973206e6f7420616e20454f,
                    mem[199 len 29]
    mem[100] = this.address
    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
    staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0xfe4469737472696275746f7256323a204e6f204359434c4520746f20646973747269627574,
                    mem[201 len 27]
    emit CycleDistributedTotal(ext_call.return_data[0]);
    require rewardWeight.length <= test266151307()
    mem[96] = rewardWeight.length
    mem[64] = (32 * rewardWeight.length) + 128
    if not rewardWeight.length:
        idx = 0
        while idx < rewardWeight.length:
            require ext_code.size(address(rewardWeight[idx].field_0))
            staticcall address(rewardWeight[idx].field_0).stakingToken() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceLPinSystem() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAVAXquoteForLPamount(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < rewardWeight.length
            mem[0] = 4
            if not ext_call.return_data[0]:
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = 0
            else:
                if rewardWeight[idx].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != rewardWeight[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if rewardWeight[idx].field_256 * ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = rewardWeight[idx].field_256 * ext_call.return_data[0]
            require idx < rewardWeight.length
            mem[0] = 4
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = address(rewardWeight[idx].field_0)
            idx = idx + 1
            continue 
        require ext_code.size(address(stor2))
        staticcall address(stor2).stakingToken() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor2))
        staticcall address(stor2).totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _1602 = mem[64]
        mem[mem[64] + 32] = 0x2e95d5493dc74483e2d449ab9241acb9227c89f5000000000000000000000000
        mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
        _1603 = mem[64]
        mem[mem[64]] = 40
        mem[64] = mem[64] + 72
        _1605 = sha3(mem[_1603 + 32 len mem[_1603]])
        mem[_1602 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[_1602 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
        mem[_1602 + 125] = _1605
        mem[_1602 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
        mem[_1602 + 72] = 85
        mem[64] = _1602 + 189
        require ext_code.size(address(sha3(0, 17269419903419772280, _1605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
        staticcall address(sha3(0, 17269419903419772280, _1605, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                gas gas_remaining wei
        mem[_1602 + 189 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[50 len 14]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                if 0 < mem[96]:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if ext_call.return_data[0]:
                        if mem[mem[128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[128] + 32]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1602 + 290 len 31]
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1602 + 225] = address(stor2)
                mem[_1602 + 257] = ext_call.return_data[0]
                mem[_1602 + 189] = 68
                mem[_1602 + 225 len 28] = Mask(224, 0, stor2)
                mem[_1602 + 221 len 4] = transfer(address rg1, uint256 rg2)
                mem[_1602 + 289] = 32
                mem[_1602 + 321] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1602 + 459 len 26]
                if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                    revert with 0, 'Address: call to non-contract'
                mem[_1602 + 353 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                mem[_1602 + 445 len 4] = 0
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_1602 + 417 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1602 + 463 len 22]
                else:
                    mem[_1602 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_1602 + 385]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1602 + ceil32(return_data.size) + 464 len 22]
            else:
                if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1602 + 290 len 31]
                if not 2 * 0 / ext_call.return_data[0]:
                    if 0 < mem[96]:
                        require 0 < mem[96]
                        require 0 < mem[96]
                        if ext_call.return_data[0]:
                            if mem[mem[128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1602 + 290 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                    staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1602 + 225] = address(stor2)
                    mem[_1602 + 257] = ext_call.return_data[0]
                    mem[_1602 + 189] = 68
                    mem[_1602 + 225 len 28] = Mask(224, 0, stor2)
                    mem[_1602 + 221 len 4] = transfer(address rg1, uint256 rg2)
                    mem[_1602 + 289] = 32
                    mem[_1602 + 321] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1602 + 459 len 26]
                    if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                        revert with 0, 'Address: call to non-contract'
                    mem[_1602 + 353 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    mem[_1602 + 445 len 4] = 0
                    mem[_1602 + 417 len 0] = 0
                    call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_1602 + 417 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1602 + 463 len 22]
                    else:
                        mem[_1602 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1602 + 385]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1602 + ceil32(return_data.size) + 464 len 22]
                else:
                    if stor3 * 2 * 0 / ext_call.return_data[0] / 2 * 0 / ext_call.return_data[0] != stor3:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1602 + 290 len 31]
                    if stor3 * 2 * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _3067 = mem[96]
                    idx = 0
                    while idx < _3067:
                        require idx < mem[96]
                        _3097 = mem[mem[(32 * idx) + 128]]
                        require idx < mem[96]
                        _3104 = mem[mem[(32 * idx) + 128] + 32]
                        if not ext_call.return_data[0]:
                            if stor3 * 2 * 0 / ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor3 * 2 * 0 / ext_call.return_data[0]
                            _3242 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = 0 / stor3 * 2 * 0 / ext_call.return_data[0]
                            _3243 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3243 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3243 + 36 len 28]
                            mem[64] = _3242 + 164
                            mem[_3242 + 100] = 32
                            mem[_3242 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3242 + 270 len 26]
                            if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                                revert with 0, 'Address: call to non-contract'
                            _3381 = mem[_3243]
                            t = _3243 + 32
                            u = _3242 + 164
                            s = mem[_3243]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_3242 + floor32(mem[_3243]) + 164] = mem[_3243 + -(mem[_3243] % 32) + floor32(mem[_3243]) + 64 len mem[_3243] % 32] or Mask(8 * -(mem[_3243] % 32) + 32, -(8 * -(mem[_3243] % 32) + 32) + 256, mem[_3242 + floor32(mem[_3243]) + 164])
                            call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[_3242 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_3242 + 168 len _3381 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_3242 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3242 + 168] = 32
                                    mem[_3242 + 200] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _3242 + 232] = mem[idx + _3242 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with memory
                                      from mem[64]
                                       len _3242 + -mem[64] + 264
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_3242 + 274 len 22]
                                require ext_code.size(address(_3097))
                                call address(_3097).notifyRewardAmount(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (0 / stor3 * 2 * 0 / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3242 + 164] = address(_3097)
                                mem[_3242 + 196] = 0 / stor3 * 2 * 0 / ext_call.return_data[0]
                            else:
                                mem[64] = _3242 + ceil32(return_data.size) + 165
                                mem[_3242 + 164] = return_data.size
                                mem[_3242 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3242 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3242 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _3242 + ceil32(return_data.size) + 233] = mem[idx + _3242 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_3242 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_3242 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_3242 + ceil32(return_data.size) + 275 len 22]
                                require ext_code.size(address(_3097))
                                call address(_3097).notifyRewardAmount(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (0 / stor3 * 2 * 0 / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3242 + ceil32(return_data.size) + 165] = address(_3097)
                                mem[_3242 + ceil32(return_data.size) + 197] = 0 / stor3 * 2 * 0 / ext_call.return_data[0]
                            emit CycleDistributed(address(_3097), 0 / stor3 * 2 * 0 / ext_call.return_data[0]);
                        else:
                            if mem[mem[(32 * idx) + 128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[(32 * idx) + 128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if stor3 * 2 * 0 / ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor3 * 2 * 0 / ext_call.return_data[0]
                            _3301 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = _3104 * ext_call.return_data[0] / stor3 * 2 * 0 / ext_call.return_data[0]
                            _3302 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3302 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3302 + 36 len 28]
                            mem[64] = _3301 + 164
                            mem[_3301 + 100] = 32
                            mem[_3301 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3301 + 270 len 26]
                            if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                                revert with 0, 'Address: call to non-contract'
                            _3414 = mem[_3302]
                            t = _3302 + 32
                            u = _3301 + 164
                            s = mem[_3302]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[_3301 + floor32(mem[_3302]) + 164] = mem[_3302 + -(mem[_3302] % 32) + floor32(mem[_3302]) + 64 len mem[_3302] % 32] or Mask(8 * -(mem[_3302] % 32) + 32, -(8 * -(mem[_3302] % 32) + 32) + 256, mem[_3301 + floor32(mem[_3302]) + 164])
                            call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[_3301 + 164 len 4] with:
                                 gas gas_remaining wei
                                args mem[_3301 + 168 len _3414 - 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    mem[_3301 + 164] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3301 + 168] = 32
                                    mem[_3301 + 200] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _3301 + 232] = mem[idx + _3301 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with memory
                                      from mem[64]
                                       len _3301 + -mem[64] + 264
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_3301 + 274 len 22]
                                require ext_code.size(address(_3097))
                                call address(_3097).notifyRewardAmount(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (_3104 * ext_call.return_data[0] / stor3 * 2 * 0 / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3301 + 164] = address(_3097)
                                mem[_3301 + 196] = _3104 * ext_call.return_data[0] / stor3 * 2 * 0 / ext_call.return_data[0]
                            else:
                                mem[64] = _3301 + ceil32(return_data.size) + 165
                                mem[_3301 + 164] = return_data.size
                                mem[_3301 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[_3301 + ceil32(return_data.size) + 165] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[_3301 + ceil32(return_data.size) + 169] = 32
                                    idx = 0
                                    while idx < 32:
                                        mem[idx + _3301 + ceil32(return_data.size) + 233] = mem[idx + _3301 + 132]
                                        idx = idx + 32
                                        continue 
                                    revert with 0, 32, 32, mem[_3301 + ceil32(return_data.size) + 233]
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_3301 + 196]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[_3301 + ceil32(return_data.size) + 275 len 22]
                                require ext_code.size(address(_3097))
                                call address(_3097).notifyRewardAmount(uint256 rg1) with:
                                     gas gas_remaining wei
                                    args (_3104 * ext_call.return_data[0] / stor3 * 2 * 0 / ext_call.return_data[0])
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[_3301 + ceil32(return_data.size) + 165] = address(_3097)
                                mem[_3301 + ceil32(return_data.size) + 197] = _3104 * ext_call.return_data[0] / stor3 * 2 * 0 / ext_call.return_data[0]
                            emit CycleDistributed(address(_3097), _3104 * ext_call.return_data[0] / stor3 * 2 * 0 / ext_call.return_data[0]);
                        idx = idx + 1
                        continue 
                    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                    staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _3157 = mem[64]
                    mem[mem[64] + 36] = address(stor2)
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _3158 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_3157 + 100] = 32
                    mem[_3157 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3157 + 270 len 26]
                    if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                        revert with 0, 'Address: call to non-contract'
                    _3298 = mem[_3158]
                    mem[_3157 + 164 len floor32(mem[_3158])] = mem[_3158 + 32 len floor32(mem[_3158])]
                    mem[_3157 + floor32(mem[_3158]) + -(mem[_3158] % 32) + 196 len mem[_3158] % 32] = mem[_3158 + -(mem[_3158] % 32) + floor32(mem[_3158]) + 64 len mem[_3158] % 32]
                    call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[_3157 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_3157 + 168 len _3298 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_3157 + 274 len 22]
                    else:
                        mem[_3157 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_3157 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_3157 + ceil32(return_data.size) + 275 len 22]
        else:
            if ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1602 + 290 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                if 0 < mem[96]:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if ext_call.return_data[0]:
                        if mem[mem[128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[128] + 32]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1602 + 290 len 31]
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_1602 + 225] = address(stor2)
                mem[_1602 + 257] = ext_call.return_data[0]
                mem[_1602 + 189] = 68
                mem[_1602 + 225 len 28] = Mask(224, 0, stor2)
                mem[_1602 + 221 len 4] = transfer(address rg1, uint256 rg2)
                mem[_1602 + 289] = 32
                mem[_1602 + 321] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1602 + 459 len 26]
                if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                    revert with 0, 'Address: call to non-contract'
                mem[_1602 + 353 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                mem[_1602 + 445 len 4] = 0
                mem[_1602 + 417 len 0] = 0
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5 with:
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_1602 + 417 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1602 + 463 len 22]
                else:
                    mem[_1602 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_1602 + 385]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_1602 + ceil32(return_data.size) + 464 len 22]
            else:
                if 2 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1602 + 290 len 31]
                if not 2 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                    if 0 < mem[96]:
                        require 0 < mem[96]
                        require 0 < mem[96]
                        if ext_call.return_data[0]:
                            if mem[mem[128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1602 + 290 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                    staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_1602 + 225] = address(stor2)
                    mem[_1602 + 257] = ext_call.return_data[0]
                    mem[_1602 + 189] = 68
                    mem[_1602 + 225 len 28] = Mask(224, 0, stor2)
                    mem[_1602 + 221 len 4] = transfer(address rg1, uint256 rg2)
                    mem[_1602 + 289] = 32
                    mem[_1602 + 321] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_1602 + 459 len 26]
                    if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                        revert with 0, 'Address: call to non-contract'
                    mem[_1602 + 353 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    mem[_1602 + 445 len 4] = 0
                    call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5 with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_1602 + 417 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1602 + 463 len 22]
                    else:
                        mem[_1602 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_1602 + 385]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_1602 + ceil32(return_data.size) + 464 len 22]
                else:
                    if stor3 * 2 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != stor3:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_1602 + 290 len 31]
                    if stor3 * 2 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _3066 = mem[96]
                    idx = 0
                    while idx < _3066:
                        require idx < mem[96]
                        _3090 = mem[mem[(32 * idx) + 128]]
                        require idx < mem[96]
                        _3102 = mem[mem[(32 * idx) + 128] + 32]
                        if not ext_call.return_data[0]:
                            if stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            _3235 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = 0 / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            _3236 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3236 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3236 + 36 len 28]
                            mem[64] = _3235 + 164
                            mem[_3235 + 100] = 32
                            mem[_3235 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3235 + 270 len 26]
                            if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                                revert with 0, 'Address: call to non-contract'
                            _3377 = mem[_3236]
                            t = _3236 + 32
                            u = mem[64]
                            s = mem[_3236]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_3236])] = mem[_3236 + floor32(mem[_3236]) + -(mem[_3236] % 32) + 64 len mem[_3236] % 32] or Mask(8 * -(mem[_3236] % 32) + 32, -(8 * -(mem[_3236] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3236])])
                            call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3377 + _3235 + -mem[64] + 160]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    _4513 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_3235 + 100]
                                    _4515 = mem[_3235 + 100]
                                    idx = 0
                                    while idx < _4515:
                                        mem[idx + _4513 + 68] = mem[idx + _3235 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _4515 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _4515 + _4513 + -mem[64] + 68
                                    mem[floor32(_4515) + _4513 + 68] = mem[floor32(_4515) + _4513 + -(_4515 % 32) + 100 len _4515 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_4515) + _4513 + -mem[64] + 100
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _4447 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_4447] = return_data.size
                                mem[_4447 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4517 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_3235 + 100]
                                    _4519 = mem[_3235 + 100]
                                    idx = 0
                                    while idx < _4519:
                                        mem[idx + _4517 + 68] = mem[idx + _3235 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _4519 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _4519 + _4517 + -mem[64] + 68
                                    mem[floor32(_4519) + _4517 + 68] = mem[floor32(_4519) + _4517 + -(_4519 % 32) + 100 len _4519 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_4519) + _4517 + -mem[64] + 100
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_4447 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            require ext_code.size(address(_3090))
                            call address(_3090).notifyRewardAmount(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3090)
                            mem[mem[64] + 32] = 0 / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            emit CycleDistributed(address(_3090), 0 / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]);
                        else:
                            if mem[mem[(32 * idx) + 128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[(32 * idx) + 128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            _3294 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = _3102 * ext_call.return_data[0] / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            _3295 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_3295 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_3295 + 36 len 28]
                            mem[64] = _3294 + 164
                            mem[_3294 + 100] = 32
                            mem[_3294 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3294 + 270 len 26]
                            if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                                revert with 0, 'Address: call to non-contract'
                            _3398 = mem[_3295]
                            t = _3295 + 32
                            u = mem[64]
                            s = mem[_3295]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_3295])] = mem[_3295 + floor32(mem[_3295]) + -(mem[_3295] % 32) + 64 len mem[_3295] % 32] or Mask(8 * -(mem[_3295] % 32) + 32, -(8 * -(mem[_3295] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_3295])])
                            call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _3398 + _3294 + -mem[64] + 160]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    _4505 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_3294 + 100]
                                    _4507 = mem[_3294 + 100]
                                    idx = 0
                                    while idx < _4507:
                                        mem[idx + _4505 + 68] = mem[idx + _3294 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _4507 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _4507 + _4505 + -mem[64] + 68
                                    mem[floor32(_4507) + _4505 + 68] = mem[floor32(_4507) + _4505 + -(_4507 % 32) + 100 len _4507 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_4507) + _4505 + -mem[64] + 100
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _4446 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_4446] = return_data.size
                                mem[_4446 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _4509 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_3294 + 100]
                                    _4511 = mem[_3294 + 100]
                                    idx = 0
                                    while idx < _4511:
                                        mem[idx + _4509 + 68] = mem[idx + _3294 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _4511 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _4511 + _4509 + -mem[64] + 68
                                    mem[floor32(_4511) + _4509 + 68] = mem[floor32(_4511) + _4509 + -(_4511 % 32) + 100 len _4511 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_4511) + _4509 + -mem[64] + 100
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_4446 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            require ext_code.size(address(_3090))
                            call address(_3090).notifyRewardAmount(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (_3102 * ext_call.return_data[0] / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_3090)
                            mem[mem[64] + 32] = _3102 * ext_call.return_data[0] / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            emit CycleDistributed(address(_3090), _3102 * ext_call.return_data[0] / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]);
                        idx = idx + 1
                        continue 
                    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                    staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _3152 = mem[64]
                    mem[mem[64] + 36] = address(stor2)
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _3153 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_3152 + 100] = 32
                    mem[_3152 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_3152 + 270 len 26]
                    if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                        revert with 0, 'Address: call to non-contract'
                    _3291 = mem[_3153]
                    mem[_3152 + 164 len floor32(mem[_3153])] = mem[_3153 + 32 len floor32(mem[_3153])]
                    mem[_3152 + floor32(mem[_3153]) + -(mem[_3153] % 32) + 196 len mem[_3153] % 32] = mem[_3153 + -(mem[_3153] % 32) + floor32(mem[_3153]) + 64 len mem[_3153] % 32]
                    call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[_3152 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_3152 + 168 len _3291 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_3152 + 274 len 22]
                    else:
                        mem[_3152 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_3152 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_3152 + ceil32(return_data.size) + 275 len 22]
    else:
        mem[64] = (32 * rewardWeight.length) + 192
        mem[(32 * rewardWeight.length) + 128] = 0
        mem[(32 * rewardWeight.length) + 160] = 0
        mem[var21001] = (32 * rewardWeight.length) + 128
        s = var21001
        idx = var21002
        while idx - 1:
            mem[64] = mem[64] + 64
            mem[(32 * rewardWeight.length) + 128] = 0
            mem[(32 * rewardWeight.length) + 160] = 0
            mem[s + 32] = (32 * rewardWeight.length) + 128
            s = s + 32
            idx = idx - 1
            continue 
        idx = 0
        while idx < rewardWeight.length:
            require ext_code.size(address(rewardWeight[idx].field_0))
            staticcall address(rewardWeight[idx].field_0).stakingToken() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).balanceLPinSystem() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[mem[64] + 4] = ext_call.return_data[0]
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getAVAXquoteForLPamount(uint256 rg1) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0]
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < rewardWeight.length
            mem[0] = 4
            if not ext_call.return_data[0]:
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = 0
            else:
                if rewardWeight[idx].field_256 * ext_call.return_data[0] / ext_call.return_data[0] != rewardWeight[idx].field_256:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if rewardWeight[idx].field_256 * ext_call.return_data[0] < 0:
                    revert with 0, 'SafeMath: addition overflow'
                require idx < mem[96]
                mem[mem[(32 * idx) + 128] + 32] = rewardWeight[idx].field_256 * ext_call.return_data[0]
            require idx < rewardWeight.length
            mem[0] = 4
            require idx < mem[96]
            mem[mem[(32 * idx) + 128]] = address(rewardWeight[idx].field_0)
            idx = idx + 1
            continue 
        require ext_code.size(address(stor2))
        staticcall address(stor2).stakingToken() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(stor2))
        staticcall address(stor2).totalSupply() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _4771 = mem[64]
        mem[mem[64] + 32] = 0x2e95d5493dc74483e2d449ab9241acb9227c89f5000000000000000000000000
        mem[mem[64] + 52] = 0xb31f66aa3c1e785363f0875a1b74e27b85fd66c7000000000000000000000000
        _4772 = mem[64]
        mem[mem[64]] = 40
        mem[64] = mem[64] + 72
        _4774 = sha3(mem[_4772 + 32 len mem[_4772]])
        mem[_4771 + 104] = 0xff00000000000000000000000000000000000000000000000000000000000000
        mem[_4771 + 105] = 0xefa94de7a4656d787667c749f7e1223d71e9fd88000000000000000000000000
        mem[_4771 + 125] = _4774
        mem[_4771 + 157] = 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545
        mem[_4771 + 72] = 85
        mem[64] = _4771 + 189
        require ext_code.size(address(sha3(0, 17269419903419772280, _4774, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)))
        staticcall address(sha3(0, 17269419903419772280, _4774, 0x40231f6b438bce0797c9ada29b718a87ea0a5cea3fe9a771abdd76bd41a3e545)).getReserves() with:
                gas gas_remaining wei
        mem[_4771 + 189 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        if not ext_call.return_data[50 len 14]:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not 0 / ext_call.return_data[0]:
                if 0 < mem[96]:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if ext_call.return_data[0]:
                        if mem[mem[128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[128] + 32]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4771 + 290 len 31]
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_4771 + 225] = address(stor2)
                mem[_4771 + 257] = ext_call.return_data[0]
                mem[_4771 + 189] = 68
                mem[_4771 + 225 len 28] = Mask(224, 0, stor2)
                mem[_4771 + 221 len 4] = transfer(address rg1, uint256 rg2)
                mem[_4771 + 289] = 32
                mem[_4771 + 321] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4771 + 459 len 26]
                if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                    revert with 0, 'Address: call to non-contract'
                mem[_4771 + 353 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                mem[_4771 + 445 len 4] = 0
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_4771 + 417 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4771 + 463 len 22]
                else:
                    mem[_4771 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_4771 + 385]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4771 + ceil32(return_data.size) + 464 len 22]
            else:
                if 2 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4771 + 290 len 31]
                if not 2 * 0 / ext_call.return_data[0]:
                    if 0 < mem[96]:
                        require 0 < mem[96]
                        require 0 < mem[96]
                        if ext_call.return_data[0]:
                            if mem[mem[128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4771 + 290 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                    staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4771 + 225] = address(stor2)
                    mem[_4771 + 257] = ext_call.return_data[0]
                    mem[_4771 + 189] = 68
                    mem[_4771 + 225 len 28] = Mask(224, 0, stor2)
                    mem[_4771 + 221 len 4] = transfer(address rg1, uint256 rg2)
                    mem[_4771 + 289] = 32
                    mem[_4771 + 321] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4771 + 459 len 26]
                    if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4771 + 353 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    mem[_4771 + 445 len 4] = 0
                    call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5 with:
                       funct uint32(stor2)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_4771 + 417 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4771 + 463 len 22]
                    else:
                        mem[_4771 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_4771 + 385]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4771 + ceil32(return_data.size) + 464 len 22]
                else:
                    if stor3 * 2 * 0 / ext_call.return_data[0] / 2 * 0 / ext_call.return_data[0] != stor3:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4771 + 290 len 31]
                    if stor3 * 2 * 0 / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _5502 = mem[96]
                    idx = 0
                    while idx < _5502:
                        require idx < mem[96]
                        _5567 = mem[mem[(32 * idx) + 128]]
                        require idx < mem[96]
                        _5586 = mem[mem[(32 * idx) + 128] + 32]
                        if not ext_call.return_data[0]:
                            if stor3 * 2 * 0 / ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor3 * 2 * 0 / ext_call.return_data[0]
                            _5710 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = 0 / stor3 * 2 * 0 / ext_call.return_data[0]
                            _5711 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5711 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5711 + 36 len 28]
                            mem[64] = _5710 + 164
                            mem[_5710 + 100] = 32
                            mem[_5710 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5710 + 270 len 26]
                            if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                                revert with 0, 'Address: call to non-contract'
                            _5838 = mem[_5711]
                            t = _5711 + 32
                            u = mem[64]
                            s = mem[_5711]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_5711])] = mem[_5711 + floor32(mem[_5711]) + -(mem[_5711] % 32) + 64 len mem[_5711] % 32] or Mask(8 * -(mem[_5711] % 32) + 32, -(8 * -(mem[_5711] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5711])])
                            call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5838 + _5710 + -mem[64] + 160]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    _6247 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5710 + 100]
                                    _6249 = mem[_5710 + 100]
                                    idx = 0
                                    while idx < _6249:
                                        mem[idx + _6247 + 68] = mem[idx + _5710 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6249 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6249 + _6247 + -mem[64] + 68
                                    mem[floor32(_6249) + _6247 + 68] = mem[floor32(_6249) + _6247 + -(_6249 % 32) + 100 len _6249 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6249) + _6247 + -mem[64] + 100
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _6178 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6178] = return_data.size
                                mem[_6178 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6251 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5710 + 100]
                                    _6253 = mem[_5710 + 100]
                                    idx = 0
                                    while idx < _6253:
                                        mem[idx + _6251 + 68] = mem[idx + _5710 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6253 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6253 + _6251 + -mem[64] + 68
                                    mem[floor32(_6253) + _6251 + 68] = mem[floor32(_6253) + _6251 + -(_6253 % 32) + 100 len _6253 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6253) + _6251 + -mem[64] + 100
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_6178 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            require ext_code.size(address(_5567))
                            call address(_5567).notifyRewardAmount(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / stor3 * 2 * 0 / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_5567)
                            mem[mem[64] + 32] = 0 / stor3 * 2 * 0 / ext_call.return_data[0]
                            emit CycleDistributed(address(_5567), 0 / stor3 * 2 * 0 / ext_call.return_data[0]);
                        else:
                            if mem[mem[(32 * idx) + 128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[(32 * idx) + 128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if stor3 * 2 * 0 / ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor3 * 2 * 0 / ext_call.return_data[0]
                            _5762 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = _5586 * ext_call.return_data[0] / stor3 * 2 * 0 / ext_call.return_data[0]
                            _5763 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5763 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5763 + 36 len 28]
                            mem[64] = _5762 + 164
                            mem[_5762 + 100] = 32
                            mem[_5762 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5762 + 270 len 26]
                            if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                                revert with 0, 'Address: call to non-contract'
                            _5870 = mem[_5763]
                            t = _5763 + 32
                            u = mem[64]
                            s = mem[_5763]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_5763])] = mem[_5763 + floor32(mem[_5763]) + -(mem[_5763] % 32) + 64 len mem[_5763] % 32] or Mask(8 * -(mem[_5763] % 32) + 32, -(8 * -(mem[_5763] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5763])])
                            call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5870 + _5762 + -mem[64] + 160]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    _6239 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5762 + 100]
                                    _6241 = mem[_5762 + 100]
                                    idx = 0
                                    while idx < _6241:
                                        mem[idx + _6239 + 68] = mem[idx + _5762 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6241 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6241 + _6239 + -mem[64] + 68
                                    mem[floor32(_6241) + _6239 + 68] = mem[floor32(_6241) + _6239 + -(_6241 % 32) + 100 len _6241 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6241) + _6239 + -mem[64] + 100
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _6177 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6177] = return_data.size
                                mem[_6177 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6243 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5762 + 100]
                                    _6245 = mem[_5762 + 100]
                                    idx = 0
                                    while idx < _6245:
                                        mem[idx + _6243 + 68] = mem[idx + _5762 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6245 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6245 + _6243 + -mem[64] + 68
                                    mem[floor32(_6245) + _6243 + 68] = mem[floor32(_6245) + _6243 + -(_6245 % 32) + 100 len _6245 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6245) + _6243 + -mem[64] + 100
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_6177 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            require ext_code.size(address(_5567))
                            call address(_5567).notifyRewardAmount(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (_5586 * ext_call.return_data[0] / stor3 * 2 * 0 / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_5567)
                            mem[mem[64] + 32] = _5586 * ext_call.return_data[0] / stor3 * 2 * 0 / ext_call.return_data[0]
                            emit CycleDistributed(address(_5567), _5586 * ext_call.return_data[0] / stor3 * 2 * 0 / ext_call.return_data[0]);
                        idx = idx + 1
                        continue 
                    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                    staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _5636 = mem[64]
                    mem[mem[64] + 36] = address(stor2)
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _5637 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_5636 + 100] = 32
                    mem[_5636 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5636 + 270 len 26]
                    if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                        revert with 0, 'Address: call to non-contract'
                    _5759 = mem[_5637]
                    mem[_5636 + 164 len floor32(mem[_5637])] = mem[_5637 + 32 len floor32(mem[_5637])]
                    mem[_5636 + floor32(mem[_5637]) + -(mem[_5637] % 32) + 196 len mem[_5637] % 32] = mem[_5637 + -(mem[_5637] % 32) + floor32(mem[_5637]) + 64 len mem[_5637] % 32]
                    call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[_5636 + 164 len 4] with:
                         gas gas_remaining wei
                        args mem[_5636 + 168 len _5759 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5636 + 274 len 22]
                    else:
                        mem[_5636 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_5636 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5636 + ceil32(return_data.size) + 275 len 22]
        else:
            if ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[50 len 14] != ext_call.return_data[0]:
                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4771 + 290 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if not ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                if 0 < mem[96]:
                    require 0 < mem[96]
                    require 0 < mem[96]
                    if ext_call.return_data[0]:
                        if mem[mem[128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[128] + 32]:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4771 + 290 len 31]
                    revert with 0, 'SafeMath: division by zero'
                require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_4771 + 225] = address(stor2)
                mem[_4771 + 257] = ext_call.return_data[0]
                mem[_4771 + 189] = 68
                mem[_4771 + 225 len 28] = Mask(224, 0, stor2)
                mem[_4771 + 221 len 4] = transfer(address rg1, uint256 rg2)
                mem[_4771 + 289] = 32
                mem[_4771 + 321] = 'SafeERC20: low-level call failed'
                if eth.balance(this.address) < 0:
                    revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4771 + 459 len 26]
                if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                    revert with 0, 'Address: call to non-contract'
                mem[_4771 + 353 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                mem[_4771 + 445 len 4] = 0
                call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5 with:
                   funct uint32(stor2)
                     gas gas_remaining wei
                    args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_4771 + 417 len 4]
                if not return_data.size:
                    if not ext_call.success:
                        if mem[96]:
                            revert with memory
                              from 128
                               len mem[96]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if mem[96]:
                        require mem[96] >= 32
                        if not mem[128]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4771 + 463 len 22]
                else:
                    mem[_4771 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    if not ext_call.success:
                        if return_data.size:
                            revert with ext_call.return_data[0 len return_data.size]
                        revert with 0, 'SafeERC20: low-level call failed'
                    if return_data.size:
                        require return_data.size >= 32
                        if not mem[_4771 + 385]:
                            revert with 0, 
                                        32,
                                        42,
                                        0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                        mem[_4771 + ceil32(return_data.size) + 464 len 22]
            else:
                if 2 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] / ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != 2:
                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4771 + 290 len 31]
                if not 2 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0]:
                    if 0 < mem[96]:
                        require 0 < mem[96]
                        require 0 < mem[96]
                        if ext_call.return_data[0]:
                            if mem[mem[128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4771 + 290 len 31]
                        revert with 0, 'SafeMath: division by zero'
                    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                    staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[_4771 + 225] = address(stor2)
                    mem[_4771 + 257] = ext_call.return_data[0]
                    mem[_4771 + 189] = 68
                    mem[_4771 + 225 len 28] = Mask(224, 0, stor2)
                    mem[_4771 + 221 len 4] = transfer(address rg1, uint256 rg2)
                    mem[_4771 + 289] = 32
                    mem[_4771 + 321] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_4771 + 459 len 26]
                    if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                        revert with 0, 'Address: call to non-contract'
                    mem[_4771 + 353 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
                    mem[_4771 + 445 len 4] = 0
                    mem[_4771 + 417 len 0] = 0
                    call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5 with:
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[_4771 + 417 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4771 + 463 len 22]
                    else:
                        mem[_4771 + 385 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_4771 + 385]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_4771 + ceil32(return_data.size) + 464 len 22]
                else:
                    if stor3 * 2 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] / 2 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] != stor3:
                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[_4771 + 290 len 31]
                    if stor3 * 2 * ext_call.return_data[0] * ext_call.return_data[50 len 14] / ext_call.return_data[0] < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    _5501 = mem[96]
                    idx = 0
                    while idx < _5501:
                        require idx < mem[96]
                        _5560 = mem[mem[(32 * idx) + 128]]
                        require idx < mem[96]
                        _5584 = mem[mem[(32 * idx) + 128] + 32]
                        if not ext_call.return_data[0]:
                            if stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            _5703 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = 0 / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            _5704 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5704 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5704 + 36 len 28]
                            mem[64] = _5703 + 164
                            mem[_5703 + 100] = 32
                            mem[_5703 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5703 + 270 len 26]
                            if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                                revert with 0, 'Address: call to non-contract'
                            _5834 = mem[_5704]
                            t = _5704 + 32
                            u = mem[64]
                            s = mem[_5704]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_5704])] = mem[_5704 + floor32(mem[_5704]) + -(mem[_5704] % 32) + 64 len mem[_5704] % 32] or Mask(8 * -(mem[_5704] % 32) + 32, -(8 * -(mem[_5704] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5704])])
                            call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5834 + _5703 + -mem[64] + 160]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    _6223 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5703 + 100]
                                    _6225 = mem[_5703 + 100]
                                    idx = 0
                                    while idx < _6225:
                                        mem[idx + _6223 + 68] = mem[idx + _5703 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6225 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6225 + _6223 + -mem[64] + 68
                                    mem[floor32(_6225) + _6223 + 68] = mem[floor32(_6225) + _6223 + -(_6225 % 32) + 100 len _6225 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6225) + _6223 + -mem[64] + 100
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _6167 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6167] = return_data.size
                                mem[_6167 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6227 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5703 + 100]
                                    _6229 = mem[_5703 + 100]
                                    idx = 0
                                    while idx < _6229:
                                        mem[idx + _6227 + 68] = mem[idx + _5703 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6229 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6229 + _6227 + -mem[64] + 68
                                    mem[floor32(_6229) + _6227 + 68] = mem[floor32(_6229) + _6227 + -(_6229 % 32) + 100 len _6229 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6229) + _6227 + -mem[64] + 100
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_6167 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            require ext_code.size(address(_5560))
                            call address(_5560).notifyRewardAmount(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (0 / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_5560)
                            mem[mem[64] + 32] = 0 / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            emit CycleDistributed(address(_5560), 0 / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]);
                        else:
                            if mem[mem[(32 * idx) + 128] + 32] * ext_call.return_data[0] / ext_call.return_data[0] != mem[mem[(32 * idx) + 128] + 32]:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            _5755 = mem[64]
                            mem[mem[64] + 36] = mem[mem[(32 * idx) + 128] + 12 len 20]
                            mem[mem[64] + 68] = _5584 * ext_call.return_data[0] / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            _5756 = mem[64]
                            mem[mem[64]] = 68
                            mem[64] = mem[64] + 100
                            mem[_5756 + 32] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000 or mem[_5756 + 36 len 28]
                            mem[64] = _5755 + 164
                            mem[_5755 + 100] = 32
                            mem[_5755 + 132] = 'SafeERC20: low-level call failed'
                            if eth.balance(this.address) < 0:
                                revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5755 + 270 len 26]
                            if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                                revert with 0, 'Address: call to non-contract'
                            _5854 = mem[_5756]
                            t = _5756 + 32
                            u = mem[64]
                            s = mem[_5756]
                            while s >= 32:
                                mem[u] = mem[t]
                                t = t + 32
                                u = u + 32
                                s = s - 32
                                continue 
                            mem[mem[64] + floor32(mem[_5756])] = mem[_5756 + floor32(mem[_5756]) + -(mem[_5756] % 32) + 64 len mem[_5756] % 32] or Mask(8 * -(mem[_5756] % 32) + 32, -(8 * -(mem[_5756] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_5756])])
                            call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _5854 + _5755 + -mem[64] + 160]
                            if not return_data.size:
                                if not ext_call.success:
                                    if mem[96]:
                                        revert with memory
                                          from 128
                                           len mem[96]
                                    _6215 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5755 + 100]
                                    _6217 = mem[_5755 + 100]
                                    idx = 0
                                    while idx < _6217:
                                        mem[idx + _6215 + 68] = mem[idx + _5755 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6217 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6217 + _6215 + -mem[64] + 68
                                    mem[floor32(_6217) + _6215 + 68] = mem[floor32(_6217) + _6215 + -(_6217 % 32) + 100 len _6217 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6217) + _6215 + -mem[64] + 100
                                if mem[96]:
                                    require mem[96] >= 32
                                    if not mem[128]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            else:
                                _6166 = mem[64]
                                mem[64] = mem[64] + ceil32(return_data.size) + 1
                                mem[_6166] = return_data.size
                                mem[_6166 + 32 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    if return_data.size:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6219 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = mem[_5755 + 100]
                                    _6221 = mem[_5755 + 100]
                                    idx = 0
                                    while idx < _6221:
                                        mem[idx + _6219 + 68] = mem[idx + _5755 + 132]
                                        idx = idx + 32
                                        continue 
                                    if not _6221 % 32:
                                        revert with memory
                                          from mem[64]
                                           len _6221 + _6219 + -mem[64] + 68
                                    mem[floor32(_6221) + _6219 + 68] = mem[floor32(_6221) + _6219 + -(_6221 % 32) + 100 len _6221 % 32]
                                    revert with memory
                                      from mem[64]
                                       len floor32(_6221) + _6219 + -mem[64] + 100
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[_6166 + 32]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[mem[64] + 110 len 22]
                            require ext_code.size(address(_5560))
                            call address(_5560).notifyRewardAmount(uint256 rg1) with:
                                 gas gas_remaining wei
                                args (_5584 * ext_call.return_data[0] / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0])
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[mem[64]] = address(_5560)
                            mem[mem[64] + 32] = _5584 * ext_call.return_data[0] / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]
                            emit CycleDistributed(address(_5560), _5584 * ext_call.return_data[0] / stor3 * 2 * ext_call.return_data[0] * Mask(112, 0, ext_call.return_data[32]) / ext_call.return_data[0]);
                        idx = idx + 1
                        continue 
                    require ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5)
                    staticcall 0x2e95d5493dc74483e2d449ab9241acb9227c89f5.balanceOf(address rg1) with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    _5631 = mem[64]
                    mem[mem[64] + 36] = address(stor2)
                    mem[mem[64] + 68] = ext_call.return_data[0]
                    _5632 = mem[64]
                    mem[mem[64]] = 68
                    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
                    mem[64] = mem[64] + 164
                    mem[_5631 + 100] = 32
                    mem[_5631 + 132] = 'SafeERC20: low-level call failed'
                    if eth.balance(this.address) < 0:
                        revert with 0, 32, 38, 0x6e416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[_5631 + 270 len 26]
                    if not ext_code.size(0x2e95d5493dc74483e2d449ab9241acb9227c89f5):
                        revert with 0, 'Address: call to non-contract'
                    _5752 = mem[_5632]
                    mem[_5631 + 164 len floor32(mem[_5632])] = mem[_5632 + 32 len floor32(mem[_5632])]
                    mem[_5631 + floor32(mem[_5632]) + -(mem[_5632] % 32) + 196 len mem[_5632] % 32] = mem[_5632 + floor32(mem[_5632]) + -(mem[_5632] % 32) + 64 len mem[_5632] % 32]
                    call 0x2e95d5493dc74483e2d449ab9241acb9227c89f5 with:
                         gas gas_remaining wei
                        args mem[_5631 + 168 len _5752 - 4]
                    if not return_data.size:
                        if not ext_call.success:
                            if mem[96]:
                                revert with memory
                                  from 128
                                   len mem[96]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if mem[96]:
                            require mem[96] >= 32
                            if not mem[128]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5631 + 274 len 22]
                    else:
                        mem[_5631 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            if return_data.size:
                                revert with ext_call.return_data[0 len return_data.size]
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[_5631 + 196]:
                                revert with 0, 
                                            32,
                                            42,
                                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[_5631 + ceil32(return_data.size) + 275 len 22]
    require ext_code.size(address(stor2))
    call address(stor2).notifyRewardAmount(uint256 rg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit CycleDistributed(address(stor2), ext_call.return_data[0]);
    stor1 = 1
}



}
