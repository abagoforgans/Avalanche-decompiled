contract main {




// =====================  Runtime code  =====================


#
#  - cashoutReward(uint256 arg1)
#  - createNodeWithTokens(string arg1)
#  - sub_9ceb5c48(?)
#
const decimals = 18


array of struct nodeNumberOf;
array of struct epochs;
uint256 nodePrice;
uint256 rewardPerNode;
uint256 epochDuration;
uint256 sub_ddf0185f;
uint8 stor6;
uint8 stor6; offset 8
uint8 stor6; offset 16
uint256 sub_72333db7;
uint256 totalNodesCreated;
uint256 totalRewardStaked;
address uniswapV2RouterAddress;
address uniswapV2PairAddress;
address distributionPoolAddress;
uint256 rewardsFee;
uint256 liquidityPoolFee;
uint256 cashoutFee;
address MIMAddress; offset 16
uint256 stor16; offset 8
address liquidityManagerAddress;
address paymentSplitterAddress;
address owner;
mapping of uint8 stor20;
mapping of uint8 stor21;
mapping of uint256 sub_f6f27ba4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor26;
array of struct stor27;
uint256 storA6EE;

function sub_02612634(?) payable {
    return bool(uint8(stor6.field_8))
}

function uniswapV2Router() payable {
    return uniswapV2RouterAddress
}

function totalSupply() payable {
    return totalSupply
}

function rewardsFee() payable {
    return rewardsFee
}

function liquidityManager() payable {
    return liquidityManagerAddress
}

function uniswapV2Pair() payable {
    return uniswapV2PairAddress
}

function epochDuration() payable {
    return epochDuration
}

function liquidityPoolFee() payable {
    return liquidityPoolFee
}

function paused() payable {
    return bool(uint8(stor6.field_0))
}

function rewardPerNode() payable {
    return rewardPerNode
}

function cashoutFee() payable {
    return cashoutFee
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function sub_72333db7(?) payable {
    return sub_72333db7
}

function totalRewardStaked() payable {
    return totalRewardStaked
}

function owner() payable {
    return owner
}

function _init() payable {
    return bool(uint8(stor6.field_16))
}

function totalNodesCreated() payable {
    return totalNodesCreated
}

function distributionPool() payable {
    return distributionPoolAddress
}

function epochs(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return epochs[arg1].field_0, epochs[arg1].field_256
}

function MIM() payable {
    return MIMAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function sub_ddf0185f(?) payable {
    return sub_ddf0185f
}

function paymentSplitter() payable {
    return paymentSplitterAddress
}

function nodePrice() payable {
    return nodePrice
}

function sub_f6f27ba4(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f6f27ba4[arg1]
}

function getNodeNumberOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nodeNumberOf[address(arg1)].field_0
}

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[arg1])
}

function _fallback() payable {
    revert
}

function sub_eec5938f(?) payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor6.field_8) = 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_b686378f(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_ddf0185f = arg1
}

function sub_2d7d3b11(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    epochDuration = arg1
}

function changeNodePrice(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    nodePrice = arg1
}

function updateRewardsFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardsFee = arg1
}

function updateCashoutFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    cashoutFee = arg1
}

function changeRewardPerNode(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    rewardPerNode = arg1
}

function updateLiquiditFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityPoolFee = arg1
}

function sub_1674d941(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    MIMAddress = address(arg1)
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor6.field_0) = uint8(arg1)
}

function changeSwapLiquify(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor16 = Mask(248, 0, arg1)
}

function setPaymentSplitter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    paymentSplitterAddress = arg1
}

function updateRewardsWallet(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    distributionPoolAddress = arg1
}

function sub_e106ba03(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    liquidityManagerAddress = address(arg1)
}

function blacklistMalicious(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor21[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: TraderJoe pair cannot be removed from automatedMarketMakerPairs'
    if arg2 == bool(stor20[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'TKN: Automated market maker pair is already set to that value'
    stor20[address(arg1)] = uint8(arg2)
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function getRewardAmountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    idx = 0
    while idx < nodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        s = stor[(4 * idx) + sha3(mem[0]) + 2]
        t = 0
        u = 0
        while s <= sub_72333db7:
            mem[0] = s
            mem[32] = 1
            if block.number <= epochs[s].field_256:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t
                u = u
                continue 
            mem[0] = s
            mem[32] = 1
            if u > !epochs[s].field_0:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = s
            u = u + epochs[s].field_0
            continue 
        if 0 > !u:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    return 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor21[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor21[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if uint8(stor6.field_0):
        revert with 0, 'token transfers are paused'
    if 1 == bool(uint8(stor6.field_8)):
        if uniswapV2PairAddress == msg.sender:
            stor21[address(arg1)] = 1
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function updateUniswapV2Router(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TKN: The router already has that address'
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, MIMAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
}

function cashoutAll() payable {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT: creation from the zero address'
    if stor21[address(msg.sender)]:
        revert with 0, 'MANIA CSHT: Blacklisted address'
    if distributionPoolAddress == msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'MANIA CSHT: rewardsPool cannot cashout rewards'
    mem[0] = msg.sender
    idx = 0
    while idx < nodeNumberOf[address(msg.sender)].field_0:
        mem[0] = sha3(address(msg.sender), 0)
        s = stor[(4 * idx) + sha3(mem[0]) + 2]
        t = 0
        u = 0
        while s <= sub_72333db7:
            mem[0] = s
            mem[32] = 1
            if block.number <= epochs[s].field_256:
                if s == -1:
                    revert with 0, 17
                s = s + 1
                t = t
                u = u
                continue 
            mem[0] = s
            mem[32] = 1
            if u > !epochs[s].field_0:
                revert with 0, 17
            if s == -1:
                revert with 0, 17
            s = s + 1
            t = s
            u = u + epochs[s].field_0
            continue 
        if 0 > !u:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                'MANIA CSHT: You don't have enough reward to cash out'
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if stor21[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if stor21[address(arg2)]:
        revert with 0, 'Blacklisted address'
    if uint8(stor6.field_0):
        revert with 0, 'token transfers are paused'
    if 1 == bool(uint8(stor6.field_8)):
        if uniswapV2PairAddress == arg1:
            stor21[address(arg2)] = 1
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function name() payable {
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor26.length):
                if 31 < uint255(stor26.length) * 0.5:
                    mem[128] = uint256(stor26.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor26.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor26.length), data=mem[128 len ceil32(uint255(stor26.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor26.length.field_8)
        else:
            if bool(stor26.length) == stor26.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor26.length.field_1 % 128:
                if 31 < stor26.length.field_1 % 128:
                    mem[128] = uint256(stor26.field_0)
                    idx = 128
                    s = 0
                    while stor26.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor26.length), data=mem[128 len ceil32(uint255(stor26.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor26.length.field_8)
        mem[ceil32(uint255(stor26.length) * 0.5) + 192 len ceil32(uint255(stor26.length) * 0.5)] = mem[128 len ceil32(uint255(stor26.length) * 0.5)]
        if ceil32(uint255(stor26.length) * 0.5) > uint255(stor26.length) * 0.5:
            mem[(uint255(stor26.length) * 0.5) + ceil32(uint255(stor26.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor26.length), data=mem[128 len ceil32(uint255(stor26.length) * 0.5)], mem[(2 * ceil32(uint255(stor26.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor26.length) * 0.5)]), 
    if bool(stor26.length) == stor26.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor26.length):
            if 31 < uint255(stor26.length) * 0.5:
                mem[128] = uint256(stor26.field_0)
                idx = 128
                s = 0
                while (uint255(stor26.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor26.length.field_8)
    else:
        if bool(stor26.length) == stor26.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor26.length.field_1 % 128:
            if 31 < stor26.length.field_1 % 128:
                mem[128] = uint256(stor26.field_0)
                idx = 128
                s = 0
                while stor26.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor26.length.field_8)
    mem[ceil32(stor26.length.field_1 % 128) + 192 len ceil32(stor26.length.field_1 % 128)] = mem[128 len ceil32(stor26.length.field_1 % 128)]
    if ceil32(stor26.length.field_1 % 128) > stor26.length.field_1 % 128:
        mem[stor26.length.field_1 % 128 + ceil32(stor26.length.field_1 % 128) + 192] = 0
    return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1 % 128)], mem[(2 * ceil32(stor26.length.field_1 % 128)) + 192 len 2 * ceil32(stor26.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor27.length):
        if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor27.length):
            if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor27.length):
                if 31 < uint255(stor27.length) * 0.5:
                    mem[128] = uint256(stor27.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor27.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor27[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor27.length), data=mem[128 len ceil32(uint255(stor27.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor27.length.field_8)
        else:
            if bool(stor27.length) == stor27.length.field_1 % 128 < 32:
                revert with 0, 34
            if stor27.length.field_1 % 128:
                if 31 < stor27.length.field_1 % 128:
                    mem[128] = uint256(stor27.field_0)
                    idx = 128
                    s = 0
                    while stor27.length.field_1 % 128 + 96 > idx:
                        mem[idx + 32] = stor27[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor27.length), data=mem[128 len ceil32(uint255(stor27.length) * 0.5)])
                mem[128] = 256 * Mask(248, 0, stor27.length.field_8)
        mem[ceil32(uint255(stor27.length) * 0.5) + 192 len ceil32(uint255(stor27.length) * 0.5)] = mem[128 len ceil32(uint255(stor27.length) * 0.5)]
        if ceil32(uint255(stor27.length) * 0.5) > uint255(stor27.length) * 0.5:
            mem[(uint255(stor27.length) * 0.5) + ceil32(uint255(stor27.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor27.length), data=mem[128 len ceil32(uint255(stor27.length) * 0.5)], mem[(2 * ceil32(uint255(stor27.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor27.length) * 0.5)]), 
    if bool(stor27.length) == stor27.length.field_1 % 128 < 32:
        revert with 0, 34
    if bool(stor27.length):
        if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor27.length):
            if 31 < uint255(stor27.length) * 0.5:
                mem[128] = uint256(stor27.field_0)
                idx = 128
                s = 0
                while (uint255(stor27.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor27[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor27.length % 128, data=mem[128 len ceil32(stor27.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor27.length.field_8)
    else:
        if bool(stor27.length) == stor27.length.field_1 % 128 < 32:
            revert with 0, 34
        if stor27.length.field_1 % 128:
            if 31 < stor27.length.field_1 % 128:
                mem[128] = uint256(stor27.field_0)
                idx = 128
                s = 0
                while stor27.length.field_1 % 128 + 96 > idx:
                    mem[idx + 32] = stor27[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor27.length % 128, data=mem[128 len ceil32(stor27.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor27.length.field_8)
    mem[ceil32(stor27.length.field_1 % 128) + 192 len ceil32(stor27.length.field_1 % 128)] = mem[128 len ceil32(stor27.length.field_1 % 128)]
    if ceil32(stor27.length.field_1 % 128) > stor27.length.field_1 % 128:
        mem[stor27.length.field_1 % 128 + ceil32(stor27.length.field_1 % 128) + 192] = 0
    return Array(len=stor27.length % 128, data=mem[128 len ceil32(stor27.length.field_1 % 128)], mem[(2 * ceil32(stor27.length.field_1 % 128)) + 192 len 2 * ceil32(stor27.length.field_1 % 128)]), 
}

function init() payable {
    require not uint8(stor6.field_16)
    uint8(stor6.field_16) = 1
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length) * 0.5 < 32:
            revert with 0, 34
        uint8(stor26.length) = 18
        Mask(176, 0, stor26.length.field_8) = 0
        Mask(72, 0, stor26.length.field_184) = Mask(72, 0, 'Snowflake')
        idx = 0
        while (uint255(stor26.length) * 0.5) + 31 / 32 > idx:
            stor26[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor26.length) == stor26.length.field_1 % 128 < 32:
            revert with 0, 34
        uint8(stor26.length) = 18
        Mask(176, 0, stor26.length.field_8) = 0
        Mask(72, 0, stor26.length.field_184) = Mask(72, 0, 'Snowflake')
        idx = 0
        while stor26.length.field_1 % 128 + 31 / 32 > idx:
            stor26[idx].field_0 = 0
            idx = idx + 1
            continue 
    if bool(stor27.length):
        if bool(stor27.length) == uint255(stor27.length) * 0.5 < 32:
            revert with 0, 34
        uint8(stor27.length) = 8
        Mask(216, 0, stor27.length.field_8) = 0
        uint32(stor27.length.field_224) = 1397641047
        idx = 0
        while (uint255(stor27.length) * 0.5) + 31 / 32 > idx:
            stor27[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if bool(stor27.length) == stor27.length.field_1 % 128 < 32:
            revert with 0, 34
        uint8(stor27.length) = 8
        Mask(216, 0, stor27.length.field_8) = 0
        uint32(stor27.length.field_224) = 1397641047
        idx = 0
        while stor27.length.field_1 % 128 + 31 / 32 > idx:
            stor27[idx].field_0 = 0
            idx = idx + 1
            continue 
    owner = 0xb23b6201d1799b0e8e209a402daaefac78c356dc
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0xb23b6201 
    nodePrice = 10 * 10^18
    rewardPerNode = 10^18
    epochDuration = 12 * 3600
    if block.number > -43201:
        revert with 0, 17
    storA6EE = block.number + (12 * 3600)
    epochs[0].field_0 = rewardPerNode
    liquidityPoolFee = 80
    rewardsFee = 0
    cashoutFee = 10
    sub_ddf0185f = 100
    MIMAddress = 0x130966628846bfd36ff31a822705796e8cb8c18d
    require ext_code.size(0x60ae616a2155ee3d9a68541ba4544862310933d4)
    staticcall 0x60ae616a2155ee3d9a68541ba4544862310933d4.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args this.address, MIMAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2RouterAddress = 0x60ae616a2155ee3d9a68541ba4544862310933d4
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    if 1 == bool(stor20[ext_call.return_data[12 len 20]]):
        revert with 0, 'TKN: Automated market maker pair is already set to that value'
    stor20[address(ext_call.return_data[0])] = 1
    emit SetAutomatedMarketMakerPair(ext_call.return_data[12 len 20], 1);
    balanceOf[stor19] = 5000000 * 10^18
    totalSupply = 5000000 * 10^18
    emit Transfer(5000000 * 10^18, 0, owner);
    uint8(stor6.field_8) = 1
    if not this.address:
        revert with 0, 'ERC20: approve from the zero address'
    if not uniswapV2RouterAddress:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(this.address)][stor10] = 253
    emit Approval(253, this.address, uniswapV2RouterAddress);
    require ext_code.size(MIMAddress)
    call MIMAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args uniswapV2RouterAddress, 253
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getNodesNames(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 0
    mem[64] = (32 * nodeNumberOf[address(arg1)].field_0) + 128
    mem[96] = nodeNumberOf[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < nodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _51 = mem[64]
        mem[64] = mem[64] + 128
        if bool(nodeNumberOf[address(arg1)][idx].field_0):
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _57 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_57] = uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5
            if bool(nodeNumberOf[address(arg1)][idx].field_0):
                if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, nodeNumberOf[address(arg1)][idx].field_0):
                    if 31 >= uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                        mem[_57 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                        mem[_57 + 32] = nodeNumberOf[address(arg1)][idx].field_0
                        t = _57 + 32
                        u = sha3(mem[0])
                        while _57 + (uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = epochs[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_51] = _57
                mem[_51 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_51 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_51 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not nodeNumberOf[address(arg1)][idx].field_1 % 128:
                mem[_51] = _57
                mem[_51 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_51 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_51 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= nodeNumberOf[address(arg1)][idx].field_1 % 128:
                mem[_57 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                mem[_51] = _57
                mem[_51 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_51 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_51 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_57 + 32] = nodeNumberOf[address(arg1)][idx].field_0
            t = _57 + 32
            u = sha3(mem[0])
            while _57 + nodeNumberOf[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = epochs[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_51] = _57
            mem[_51 + 32] = nodeNumberOf[address(arg1)][u].field_256
            mem[_51 + 64] = nodeNumberOf[address(arg1)][u].field_512
            mem[_51 + 96] = nodeNumberOf[address(arg1)][u].field_768
            mem[t] = _51
            t = t + 32
            u = u + 1
            continue 
        if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        _62 = mem[64]
        mem[64] = mem[64] + ceil32(nodeNumberOf[address(arg1)][idx].field_1 % 128) + 32
        mem[_62] = nodeNumberOf[address(arg1)][idx].field_1 % 128
        if bool(nodeNumberOf[address(arg1)][idx].field_0):
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, nodeNumberOf[address(arg1)][idx].field_0):
                mem[_51] = _62
                mem[_51 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_51 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_51 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                mem[_62 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                mem[_51] = _62
                mem[_51 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_51 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_51 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _51
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_62 + 32] = nodeNumberOf[address(arg1)][idx].field_0
            t = _62 + 32
            u = sha3(mem[0])
            while _62 + (uint255(nodeNumberOf[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = epochs[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_51] = _62
            mem[_51 + 32] = nodeNumberOf[address(arg1)][u].field_256
            mem[_51 + 64] = nodeNumberOf[address(arg1)][u].field_512
            mem[_51 + 96] = nodeNumberOf[address(arg1)][u].field_768
            mem[t] = _51
            t = t + 32
            u = u + 1
            continue 
        if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        if nodeNumberOf[address(arg1)][idx].field_1 % 128:
            if 31 >= nodeNumberOf[address(arg1)][idx].field_1 % 128:
                mem[_62 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                mem[_62 + 32] = nodeNumberOf[address(arg1)][idx].field_0
                t = _62 + 32
                u = sha3(mem[0])
                while _62 + nodeNumberOf[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = epochs[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_51] = _62
        mem[_51 + 32] = nodeNumberOf[address(arg1)][idx].field_256
        mem[_51 + 64] = nodeNumberOf[address(arg1)][idx].field_512
        mem[_51 + 96] = nodeNumberOf[address(arg1)][idx].field_768
        mem[s] = _51
        s = s + 32
        idx = idx + 1
        continue 
    _48 = mem[96]
    _49 = mem[64]
    mem[64] = mem[64] + 128
    mem[_49] = 96
    mem[_49 + 32] = 0
    mem[_49 + 64] = 0
    mem[_49 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _54 = mem[mem[128]]
    _55 = mem[64]
    mem[64] = mem[64] + 64
    mem[_55] = 1
    mem[_55 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _54
    t = _49
    while idx < _48:
        if idx >= mem[96]:
            revert with 0, 50
        _95 = mem[(32 * idx) + 128]
        _96 = mem[mem[(32 * idx) + 128]]
        _97 = mem[64]
        _99 = mem[s]
        t = 0
        while t < _99:
            mem[t + _97 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_99) <= _99:
            _126 = mem[_55]
            s = 0
            while s < _126:
                mem[s + _97 + _99 + 32] = mem[s + _55 + 32]
                s = s + 32
                continue 
            if ceil32(_126) <= _126:
                _150 = mem[_96]
                s = 0
                while s < _150:
                    mem[s + _97 + _99 + _126 + 32] = mem[s + _96 + 32]
                    s = s + 32
                    continue 
                if ceil32(_150) <= _150:
                    _170 = mem[64]
                    mem[mem[64]] = _150 + _97 + _99 + _126 - mem[64]
                    mem[64] = _150 + _97 + _99 + _126 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _170
                    t = _95
                    continue 
                mem[_150 + _97 + _99 + _126 + 32] = 0
                _171 = mem[64]
                mem[mem[64]] = _150 + _97 + _99 + _126 - mem[64]
                mem[64] = _150 + _97 + _99 + _126 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _171
                t = _95
                continue 
            mem[_126 + _97 + _99 + 32] = 0
            _151 = mem[_96]
            s = 0
            while s < _151:
                mem[s + _97 + _99 + _126 + 32] = mem[s + _96 + 32]
                s = s + 32
                continue 
            if ceil32(_151) <= _151:
                _172 = mem[64]
                mem[mem[64]] = _151 + _97 + _99 + _126 - mem[64]
                mem[64] = _151 + _97 + _99 + _126 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _172
                t = _95
                continue 
            mem[_151 + _97 + _99 + _126 + 32] = 0
            _173 = mem[64]
            mem[mem[64]] = _151 + _97 + _99 + _126 - mem[64]
            mem[64] = _151 + _97 + _99 + _126 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _173
            t = _95
            continue 
        mem[_99 + _97 + 32] = 0
        _127 = mem[_55]
        s = 0
        while s < _127:
            mem[s + _97 + _99 + 32] = mem[s + _55 + 32]
            s = s + 32
            continue 
        if ceil32(_127) <= _127:
            _152 = mem[_96]
            s = 0
            while s < _152:
                mem[s + _97 + _99 + _127 + 32] = mem[s + _96 + 32]
                s = s + 32
                continue 
            if ceil32(_152) <= _152:
                _174 = mem[64]
                mem[mem[64]] = _152 + _97 + _99 + _127 - mem[64]
                mem[64] = _152 + _97 + _99 + _127 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _174
                t = _95
                continue 
            mem[_152 + _97 + _99 + _127 + 32] = 0
            _175 = mem[64]
            mem[mem[64]] = _152 + _97 + _99 + _127 - mem[64]
            mem[64] = _152 + _97 + _99 + _127 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _175
            t = _95
            continue 
        mem[_127 + _97 + _99 + 32] = 0
        _153 = mem[_96]
        s = 0
        while s < _153:
            mem[s + _97 + _99 + _127 + 32] = mem[s + _96 + 32]
            s = s + 32
            continue 
        if ceil32(_153) <= _153:
            _176 = mem[64]
            mem[mem[64]] = _153 + _97 + _99 + _127 - mem[64]
            mem[64] = _153 + _97 + _99 + _127 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _176
            t = _95
            continue 
        mem[_153 + _97 + _99 + _127 + 32] = 0
        _177 = mem[64]
        mem[mem[64]] = _153 + _97 + _99 + _127 - mem[64]
        mem[64] = _153 + _97 + _99 + _127 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _177
        t = _95
        continue 
    mem[mem[64]] = 32
    _98 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_98)] = mem[s + 32 len ceil32(_98)]
    if ceil32(_98) > _98:
        mem[_98 + mem[64] + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_98) + 32]
}

function sub_0097b0fa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 0
    mem[64] = (32 * nodeNumberOf[address(arg1)].field_0) + 128
    mem[96] = nodeNumberOf[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < nodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _53 = mem[64]
        mem[64] = mem[64] + 128
        if bool(nodeNumberOf[address(arg1)][idx].field_0):
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_58] = uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5
            if bool(nodeNumberOf[address(arg1)][idx].field_0):
                if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, nodeNumberOf[address(arg1)][idx].field_0):
                    if 31 >= uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                        mem[_58 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                        mem[_58 + 32] = nodeNumberOf[address(arg1)][idx].field_0
                        t = _58 + 32
                        u = sha3(mem[0])
                        while _58 + (uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = epochs[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_53] = _58
                mem[_53 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_53 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_53 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not nodeNumberOf[address(arg1)][idx].field_1 % 128:
                mem[_53] = _58
                mem[_53 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_53 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_53 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= nodeNumberOf[address(arg1)][idx].field_1 % 128:
                mem[_58 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                mem[_53] = _58
                mem[_53 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_53 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_53 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_58 + 32] = nodeNumberOf[address(arg1)][idx].field_0
            t = _58 + 32
            u = sha3(mem[0])
            while _58 + nodeNumberOf[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = epochs[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_53] = _58
            mem[_53 + 32] = nodeNumberOf[address(arg1)][u].field_256
            mem[_53 + 64] = nodeNumberOf[address(arg1)][u].field_512
            mem[_53 + 96] = nodeNumberOf[address(arg1)][u].field_768
            mem[t] = _53
            t = t + 32
            u = u + 1
            continue 
        if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(nodeNumberOf[address(arg1)][idx].field_1 % 128) + 32
        mem[_60] = nodeNumberOf[address(arg1)][idx].field_1 % 128
        if bool(nodeNumberOf[address(arg1)][idx].field_0):
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, nodeNumberOf[address(arg1)][idx].field_0):
                mem[_53] = _60
                mem[_53 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_53 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_53 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                mem[_60 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                mem[_53] = _60
                mem[_53 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_53 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_53 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_60 + 32] = nodeNumberOf[address(arg1)][idx].field_0
            t = _60 + 32
            u = sha3(mem[0])
            while _60 + (uint255(nodeNumberOf[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = epochs[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_53] = _60
            mem[_53 + 32] = nodeNumberOf[address(arg1)][u].field_256
            mem[_53 + 64] = nodeNumberOf[address(arg1)][u].field_512
            mem[_53 + 96] = nodeNumberOf[address(arg1)][u].field_768
            mem[t] = _53
            t = t + 32
            u = u + 1
            continue 
        if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        if nodeNumberOf[address(arg1)][idx].field_1 % 128:
            if 31 >= nodeNumberOf[address(arg1)][idx].field_1 % 128:
                mem[_60 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                mem[_60 + 32] = nodeNumberOf[address(arg1)][idx].field_0
                t = _60 + 32
                u = sha3(mem[0])
                while _60 + nodeNumberOf[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = epochs[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_53] = _60
        mem[_53 + 32] = nodeNumberOf[address(arg1)][idx].field_256
        mem[_53 + 64] = nodeNumberOf[address(arg1)][idx].field_512
        mem[_53 + 96] = nodeNumberOf[address(arg1)][idx].field_768
        mem[s] = _53
        s = s + 32
        idx = idx + 1
        continue 
    _50 = mem[96]
    _51 = mem[64]
    mem[64] = mem[64] + 128
    mem[_51] = 96
    mem[_51 + 32] = 0
    mem[_51 + 64] = 0
    mem[_51 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _56 = mem[mem[128] + 64]
    if not mem[mem[128] + 64]:
        _57 = mem[64]
        mem[64] = mem[64] + 64
        mem[_57] = 1
        mem[_57 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _59 = mem[64]
        mem[64] = mem[64] + 64
        mem[_59] = 1
        mem[_59 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _57
        t = _51
        while idx < _50:
            if idx >= mem[96]:
                revert with 0, 50
            _100 = mem[(32 * idx) + 128]
            _101 = mem[mem[(32 * idx) + 128] + 64]
            if not mem[mem[(32 * idx) + 128] + 64]:
                _103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_103] = 1
                mem[_103 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _104 = mem[64]
                _107 = mem[s]
                t = 0
                while t < _107:
                    mem[t + _104 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_107) <= _107:
                    _203 = mem[_59]
                    s = 0
                    while s < _203:
                        mem[s + _104 + _107 + 32] = mem[s + _59 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_203) <= _203:
                        _355 = mem[_103]
                        s = 0
                        while s < _355:
                            mem[s + _104 + _107 + _203 + 32] = mem[s + _103 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_355) <= _355:
                            _493 = mem[64]
                            mem[mem[64]] = _355 + _104 + _107 + _203 - mem[64]
                            mem[64] = _355 + _104 + _107 + _203 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _493
                            t = _100
                            continue 
                        mem[_355 + _104 + _107 + _203 + 32] = 0
                        _494 = mem[64]
                        mem[mem[64]] = _355 + _104 + _107 + _203 - mem[64]
                        mem[64] = _355 + _104 + _107 + _203 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _494
                        t = _100
                        continue 
                    mem[_203 + _104 + _107 + 32] = 0
                    _356 = mem[_103]
                    s = 0
                    while s < _356:
                        mem[s + _104 + _107 + _203 + 32] = mem[s + _103 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_356) <= _356:
                        _495 = mem[64]
                        mem[mem[64]] = _356 + _104 + _107 + _203 - mem[64]
                        mem[64] = _356 + _104 + _107 + _203 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _495
                        t = _100
                        continue 
                    mem[_356 + _104 + _107 + _203 + 32] = 0
                    _496 = mem[64]
                    mem[mem[64]] = _356 + _104 + _107 + _203 - mem[64]
                    mem[64] = _356 + _104 + _107 + _203 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _496
                    t = _100
                    continue 
                mem[_107 + _104 + 32] = 0
                _204 = mem[_59]
                s = 0
                while s < _204:
                    mem[s + _104 + _107 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_204) <= _204:
                    _357 = mem[_103]
                    s = 0
                    while s < _357:
                        mem[s + _104 + _107 + _204 + 32] = mem[s + _103 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_357) <= _357:
                        _497 = mem[64]
                        mem[mem[64]] = _357 + _104 + _107 + _204 - mem[64]
                        mem[64] = _357 + _104 + _107 + _204 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _497
                        t = _100
                        continue 
                    mem[_357 + _104 + _107 + _204 + 32] = 0
                    _498 = mem[64]
                    mem[mem[64]] = _357 + _104 + _107 + _204 - mem[64]
                    mem[64] = _357 + _104 + _107 + _204 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _498
                    t = _100
                    continue 
                mem[_204 + _104 + _107 + 32] = 0
                _358 = mem[_103]
                s = 0
                while s < _358:
                    mem[s + _104 + _107 + _204 + 32] = mem[s + _103 + 32]
                    s = s + 32
                    continue 
                if ceil32(_358) <= _358:
                    _499 = mem[64]
                    mem[mem[64]] = _358 + _104 + _107 + _204 - mem[64]
                    mem[64] = _358 + _104 + _107 + _204 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _499
                    t = _100
                    continue 
                mem[_358 + _104 + _107 + _204 + 32] = 0
                _500 = mem[64]
                mem[mem[64]] = _358 + _104 + _107 + _204 - mem[64]
                mem[64] = _358 + _104 + _107 + _204 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _500
                t = _100
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 64]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _202 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _101
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_202]:
                        revert with 0, 50
                    mem[v + _202 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _349 = mem[64]
                _353 = mem[s]
                t = 0
                while t < _353:
                    mem[t + _349 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_353) <= _353:
                    _485 = mem[_59]
                    s = 0
                    while s < _485:
                        mem[s + _349 + _353 + 32] = mem[s + _59 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_485) <= _485:
                        _693 = mem[_202]
                        s = 0
                        while s < _693:
                            mem[s + _349 + _353 + _485 + 32] = mem[s + _202 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_693) <= _693:
                            _881 = mem[64]
                            mem[mem[64]] = _693 + _349 + _353 + _485 - mem[64]
                            mem[64] = _693 + _349 + _353 + _485 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _881
                            t = _100
                            continue 
                        mem[_693 + _349 + _353 + _485 + 32] = 0
                        _882 = mem[64]
                        mem[mem[64]] = _693 + _349 + _353 + _485 - mem[64]
                        mem[64] = _693 + _349 + _353 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _882
                        t = _100
                        continue 
                    mem[_485 + _349 + _353 + 32] = 0
                    _694 = mem[_202]
                    s = 0
                    while s < _694:
                        mem[s + _349 + _353 + _485 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_694) <= _694:
                        _883 = mem[64]
                        mem[mem[64]] = _694 + _349 + _353 + _485 - mem[64]
                        mem[64] = _694 + _349 + _353 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _883
                        t = _100
                        continue 
                    mem[_694 + _349 + _353 + _485 + 32] = 0
                    _884 = mem[64]
                    mem[mem[64]] = _694 + _349 + _353 + _485 - mem[64]
                    mem[64] = _694 + _349 + _353 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    t = _100
                    continue 
                mem[_353 + _349 + 32] = 0
                _486 = mem[_59]
                s = 0
                while s < _486:
                    mem[s + _349 + _353 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_486) <= _486:
                    _695 = mem[_202]
                    s = 0
                    while s < _695:
                        mem[s + _349 + _353 + _486 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_695) <= _695:
                        _885 = mem[64]
                        mem[mem[64]] = _695 + _349 + _353 + _486 - mem[64]
                        mem[64] = _695 + _349 + _353 + _486 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _885
                        t = _100
                        continue 
                    mem[_695 + _349 + _353 + _486 + 32] = 0
                    _886 = mem[64]
                    mem[mem[64]] = _695 + _349 + _353 + _486 - mem[64]
                    mem[64] = _695 + _349 + _353 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _886
                    t = _100
                    continue 
                mem[_486 + _349 + _353 + 32] = 0
                _696 = mem[_202]
                s = 0
                while s < _696:
                    mem[s + _349 + _353 + _486 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_696) <= _696:
                    _887 = mem[64]
                    mem[mem[64]] = _696 + _349 + _353 + _486 - mem[64]
                    mem[64] = _696 + _349 + _353 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _887
                    t = _100
                    continue 
                mem[_696 + _349 + _353 + _486 + 32] = 0
                _888 = mem[64]
                mem[mem[64]] = _696 + _349 + _353 + _486 - mem[64]
                mem[64] = _696 + _349 + _353 + _486 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _888
                t = _100
                continue 
            mem[_202 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _101
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_202]:
                    revert with 0, 50
                mem[v + _202 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _354 = mem[s]
            t = 0
            while t < _354:
                mem[t + _350 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_354) <= _354:
                _487 = mem[_59]
                s = 0
                while s < _487:
                    mem[s + _350 + _354 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_487) <= _487:
                    _697 = mem[_202]
                    idx = 0
                    while idx < _697:
                        mem[idx + _350 + _354 + _487 + 32] = mem[idx + _202 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _889 = mem[64]
                        mem[mem[64]] = _697 + _350 + _354 + _487 - mem[64]
                        mem[64] = _697 + _350 + _354 + _487 + 32
                        if ceil32(_487) == -1:
                            revert with 0, 17
                        s = ceil32(_487) + 1
                        s = _889
                        t = _100
                        continue 
                    mem[_697 + _350 + _354 + _487 + 32] = 0
                    _890 = mem[64]
                    mem[mem[64]] = _697 + _350 + _354 + _487 - mem[64]
                    mem[64] = _697 + _350 + _354 + _487 + 32
                    if ceil32(_487) == -1:
                        revert with 0, 17
                    s = ceil32(_487) + 1
                    s = _890
                    t = _100
                    continue 
                mem[_487 + _350 + _354 + 32] = 0
                _698 = mem[_202]
                idx = 0
                while idx < _698:
                    mem[idx + _350 + _354 + _487 + 32] = mem[idx + _202 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_698) <= _698:
                    _891 = mem[64]
                    mem[mem[64]] = _698 + _350 + _354 + _487 - mem[64]
                    mem[64] = _698 + _350 + _354 + _487 + 32
                    if ceil32(_487) == -1:
                        revert with 0, 17
                    s = ceil32(_487) + 1
                    s = _891
                    t = _100
                    continue 
                mem[_698 + _350 + _354 + _487 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _698 + _350 + _354 + _487 - mem[64]
                mem[64] = _698 + _350 + _354 + _487 + 32
                if ceil32(_487) == -1:
                    revert with 0, 17
                s = ceil32(_487) + 1
                s = _892
                t = _100
                continue 
            mem[_354 + _350 + 32] = 0
            _488 = mem[_59]
            s = 0
            while s < _488:
                mem[s + _350 + _354 + 32] = mem[s + _59 + 32]
                s = s + 32
                continue 
            if ceil32(_488) <= _488:
                _699 = mem[_202]
                idx = 0
                while idx < _699:
                    mem[idx + _350 + _354 + _488 + 32] = mem[idx + _202 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_699) <= _699:
                    _893 = mem[64]
                    mem[mem[64]] = _699 + _350 + _354 + _488 - mem[64]
                    mem[64] = _699 + _350 + _354 + _488 + 32
                    if ceil32(_488) == -1:
                        revert with 0, 17
                    s = ceil32(_488) + 1
                    s = _893
                    t = _100
                    continue 
                mem[_699 + _350 + _354 + _488 + 32] = 0
                _894 = mem[64]
                mem[mem[64]] = _699 + _350 + _354 + _488 - mem[64]
                mem[64] = _699 + _350 + _354 + _488 + 32
                if ceil32(_488) == -1:
                    revert with 0, 17
                s = ceil32(_488) + 1
                s = _894
                t = _100
                continue 
            mem[_488 + _350 + _354 + 32] = 0
            _700 = mem[_202]
            idx = 0
            while idx < _700:
                mem[idx + _350 + _354 + _488 + 32] = mem[idx + _202 + 32]
                idx = idx + 32
                continue 
            if ceil32(_700) <= _700:
                _895 = mem[64]
                mem[mem[64]] = _700 + _350 + _354 + _488 - mem[64]
                mem[64] = _700 + _350 + _354 + _488 + 32
                if ceil32(_488) == -1:
                    revert with 0, 17
                s = ceil32(_488) + 1
                s = _895
                t = _100
                continue 
            mem[_700 + _350 + _354 + _488 + 32] = 0
            _896 = mem[64]
            mem[mem[64]] = _700 + _350 + _354 + _488 - mem[64]
            mem[64] = _700 + _350 + _354 + _488 + 32
            if ceil32(_488) == -1:
                revert with 0, 17
            s = ceil32(_488) + 1
            s = _896
            t = _100
            continue 
        _99 = mem[64]
        mem[mem[64]] = 32
        _102 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_102)] = mem[s + 32 len ceil32(_102)]
        if ceil32(_102) <= _102:
            return 32, mem[mem[64] + 32 len ceil32(_102) + 32]
        mem[_102 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_102) + _99 + -mem[64] + 64
    u = 0
    t = mem[mem[128] + 64]
    while t:
        if u == -1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _98 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _56
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_98]:
                revert with 0, 50
            mem[s + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 1
        mem[_200 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _98
        u = _51
        while idx < _50:
            if idx >= mem[96]:
                revert with 0, 50
            _344 = mem[(32 * idx) + 128]
            _345 = mem[mem[(32 * idx) + 128] + 64]
            if not mem[mem[(32 * idx) + 128] + 64]:
                _359 = mem[64]
                mem[64] = mem[64] + 64
                mem[_359] = 1
                mem[_359 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _361 = mem[64]
                _364 = mem[t]
                u = 0
                while u < _364:
                    mem[u + _361 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_364) <= _364:
                    _481 = mem[_200]
                    t = 0
                    while t < _481:
                        mem[t + _361 + _364 + 32] = mem[t + _200 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_481) <= _481:
                        _683 = mem[_359]
                        s = 0
                        while s < _683:
                            mem[s + _361 + _364 + _481 + 32] = mem[s + _359 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_683) <= _683:
                            _865 = mem[64]
                            mem[mem[64]] = _683 + _361 + _364 + _481 - mem[64]
                            mem[64] = _683 + _361 + _364 + _481 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _865
                            u = _344
                            continue 
                        mem[_683 + _361 + _364 + _481 + 32] = 0
                        _866 = mem[64]
                        mem[mem[64]] = _683 + _361 + _364 + _481 - mem[64]
                        mem[64] = _683 + _361 + _364 + _481 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _866
                        u = _344
                        continue 
                    mem[_481 + _361 + _364 + 32] = 0
                    _684 = mem[_359]
                    s = 0
                    while s < _684:
                        mem[s + _361 + _364 + _481 + 32] = mem[s + _359 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_684) <= _684:
                        _867 = mem[64]
                        mem[mem[64]] = _684 + _361 + _364 + _481 - mem[64]
                        mem[64] = _684 + _361 + _364 + _481 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _867
                        u = _344
                        continue 
                    mem[_684 + _361 + _364 + _481 + 32] = 0
                    _868 = mem[64]
                    mem[mem[64]] = _684 + _361 + _364 + _481 - mem[64]
                    mem[64] = _684 + _361 + _364 + _481 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _868
                    u = _344
                    continue 
                mem[_364 + _361 + 32] = 0
                _482 = mem[_200]
                t = 0
                while t < _482:
                    mem[t + _361 + _364 + 32] = mem[t + _200 + 32]
                    t = t + 32
                    continue 
                if ceil32(_482) <= _482:
                    _685 = mem[_359]
                    s = 0
                    while s < _685:
                        mem[s + _361 + _364 + _482 + 32] = mem[s + _359 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_685) <= _685:
                        _869 = mem[64]
                        mem[mem[64]] = _685 + _361 + _364 + _482 - mem[64]
                        mem[64] = _685 + _361 + _364 + _482 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _869
                        u = _344
                        continue 
                    mem[_685 + _361 + _364 + _482 + 32] = 0
                    _870 = mem[64]
                    mem[mem[64]] = _685 + _361 + _364 + _482 - mem[64]
                    mem[64] = _685 + _361 + _364 + _482 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _870
                    u = _344
                    continue 
                mem[_482 + _361 + _364 + 32] = 0
                _686 = mem[_359]
                s = 0
                while s < _686:
                    mem[s + _361 + _364 + _482 + 32] = mem[s + _359 + 32]
                    s = s + 32
                    continue 
                if ceil32(_686) <= _686:
                    _871 = mem[64]
                    mem[mem[64]] = _686 + _361 + _364 + _482 - mem[64]
                    mem[64] = _686 + _361 + _364 + _482 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _871
                    u = _344
                    continue 
                mem[_686 + _361 + _364 + _482 + 32] = 0
                _872 = mem[64]
                mem[mem[64]] = _686 + _361 + _364 + _482 - mem[64]
                mem[64] = _686 + _361 + _364 + _482 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _872
                u = _344
                continue 
            u = 0
            s = mem[mem[(32 * idx) + 128] + 64]
            while s:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _479 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _345
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_479]:
                        revert with 0, 50
                    mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _677 = mem[64]
                _681 = mem[t]
                s = 0
                while s < _681:
                    mem[s + _677 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_681) <= _681:
                    _857 = mem[_200]
                    s = 0
                    while s < _857:
                        mem[s + _677 + _681 + 32] = mem[s + _200 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_857) <= _857:
                        _977 = mem[_479]
                        s = 0
                        while s < _977:
                            mem[s + _677 + _681 + _857 + 32] = mem[s + _479 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_977) <= _977:
                            _1057 = mem[64]
                            mem[mem[64]] = _977 + _677 + _681 + _857 - mem[64]
                            mem[64] = _977 + _677 + _681 + _857 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1057
                            u = _344
                            continue 
                        mem[_977 + _677 + _681 + _857 + 32] = 0
                        _1058 = mem[64]
                        mem[mem[64]] = _977 + _677 + _681 + _857 - mem[64]
                        mem[64] = _977 + _677 + _681 + _857 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1058
                        u = _344
                        continue 
                    mem[_857 + _677 + _681 + 32] = 0
                    _978 = mem[_479]
                    s = 0
                    while s < _978:
                        mem[s + _677 + _681 + _857 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_978) <= _978:
                        _1059 = mem[64]
                        mem[mem[64]] = _978 + _677 + _681 + _857 - mem[64]
                        mem[64] = _978 + _677 + _681 + _857 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1059
                        u = _344
                        continue 
                    mem[_978 + _677 + _681 + _857 + 32] = 0
                    _1060 = mem[64]
                    mem[mem[64]] = _978 + _677 + _681 + _857 - mem[64]
                    mem[64] = _978 + _677 + _681 + _857 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1060
                    u = _344
                    continue 
                mem[_681 + _677 + 32] = 0
                _858 = mem[_200]
                s = 0
                while s < _858:
                    mem[s + _677 + _681 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_858) <= _858:
                    _979 = mem[_479]
                    s = 0
                    while s < _979:
                        mem[s + _677 + _681 + _858 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_979) <= _979:
                        _1061 = mem[64]
                        mem[mem[64]] = _979 + _677 + _681 + _858 - mem[64]
                        mem[64] = _979 + _677 + _681 + _858 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1061
                        u = _344
                        continue 
                    mem[_979 + _677 + _681 + _858 + 32] = 0
                    _1062 = mem[64]
                    mem[mem[64]] = _979 + _677 + _681 + _858 - mem[64]
                    mem[64] = _979 + _677 + _681 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1062
                    u = _344
                    continue 
                mem[_858 + _677 + _681 + 32] = 0
                _980 = mem[_479]
                s = 0
                while s < _980:
                    mem[s + _677 + _681 + _858 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_980) <= _980:
                    _1063 = mem[64]
                    mem[mem[64]] = _980 + _677 + _681 + _858 - mem[64]
                    mem[64] = _980 + _677 + _681 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1063
                    u = _344
                    continue 
                mem[_980 + _677 + _681 + _858 + 32] = 0
                _1064 = mem[64]
                mem[mem[64]] = _980 + _677 + _681 + _858 - mem[64]
                mem[64] = _980 + _677 + _681 + _858 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1064
                u = _344
                continue 
            mem[_479 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _345
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_479]:
                    revert with 0, 50
                mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _678 = mem[64]
            _682 = mem[t]
            s = 0
            while s < _682:
                mem[s + _678 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_682) <= _682:
                _859 = mem[_200]
                s = 0
                while s < _859:
                    mem[s + _678 + _682 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_859) <= _859:
                    _981 = mem[_479]
                    idx = 0
                    while idx < _981:
                        mem[idx + _678 + _682 + _859 + 32] = mem[idx + _479 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1065 = mem[64]
                        mem[mem[64]] = _981 + _678 + _682 + _859 - mem[64]
                        mem[64] = _981 + _678 + _682 + _859 + 32
                        if ceil32(_859) == -1:
                            revert with 0, 17
                        s = ceil32(_859) + 1
                        t = _1065
                        u = _344
                        continue 
                    mem[_981 + _678 + _682 + _859 + 32] = 0
                    _1066 = mem[64]
                    mem[mem[64]] = _981 + _678 + _682 + _859 - mem[64]
                    mem[64] = _981 + _678 + _682 + _859 + 32
                    if ceil32(_859) == -1:
                        revert with 0, 17
                    s = ceil32(_859) + 1
                    t = _1066
                    u = _344
                    continue 
                mem[_859 + _678 + _682 + 32] = 0
                _982 = mem[_479]
                idx = 0
                while idx < _982:
                    mem[idx + _678 + _682 + _859 + 32] = mem[idx + _479 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_982) <= _982:
                    _1067 = mem[64]
                    mem[mem[64]] = _982 + _678 + _682 + _859 - mem[64]
                    mem[64] = _982 + _678 + _682 + _859 + 32
                    if ceil32(_859) == -1:
                        revert with 0, 17
                    s = ceil32(_859) + 1
                    t = _1067
                    u = _344
                    continue 
                mem[_982 + _678 + _682 + _859 + 32] = 0
                _1068 = mem[64]
                mem[mem[64]] = _982 + _678 + _682 + _859 - mem[64]
                mem[64] = _982 + _678 + _682 + _859 + 32
                if ceil32(_859) == -1:
                    revert with 0, 17
                s = ceil32(_859) + 1
                t = _1068
                u = _344
                continue 
            mem[_682 + _678 + 32] = 0
            _860 = mem[_200]
            s = 0
            while s < _860:
                mem[s + _678 + _682 + 32] = mem[s + _200 + 32]
                s = s + 32
                continue 
            if ceil32(_860) <= _860:
                _983 = mem[_479]
                idx = 0
                while idx < _983:
                    mem[idx + _678 + _682 + _860 + 32] = mem[idx + _479 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_983) <= _983:
                    _1069 = mem[64]
                    mem[mem[64]] = _983 + _678 + _682 + _860 - mem[64]
                    mem[64] = _983 + _678 + _682 + _860 + 32
                    if ceil32(_860) == -1:
                        revert with 0, 17
                    s = ceil32(_860) + 1
                    t = _1069
                    u = _344
                    continue 
                mem[_983 + _678 + _682 + _860 + 32] = 0
                _1070 = mem[64]
                mem[mem[64]] = _983 + _678 + _682 + _860 - mem[64]
                mem[64] = _983 + _678 + _682 + _860 + 32
                if ceil32(_860) == -1:
                    revert with 0, 17
                s = ceil32(_860) + 1
                t = _1070
                u = _344
                continue 
            mem[_860 + _678 + _682 + 32] = 0
            _984 = mem[_479]
            idx = 0
            while idx < _984:
                mem[idx + _678 + _682 + _860 + 32] = mem[idx + _479 + 32]
                idx = idx + 32
                continue 
            if ceil32(_984) <= _984:
                _1071 = mem[64]
                mem[mem[64]] = _984 + _678 + _682 + _860 - mem[64]
                mem[64] = _984 + _678 + _682 + _860 + 32
                if ceil32(_860) == -1:
                    revert with 0, 17
                s = ceil32(_860) + 1
                t = _1071
                u = _344
                continue 
            mem[_984 + _678 + _682 + _860 + 32] = 0
            _1072 = mem[64]
            mem[mem[64]] = _984 + _678 + _682 + _860 - mem[64]
            mem[64] = _984 + _678 + _682 + _860 + 32
            if ceil32(_860) == -1:
                revert with 0, 17
            s = ceil32(_860) + 1
            t = _1072
            u = _344
            continue 
        mem[mem[64]] = 32
        _351 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_351)] = mem[t + 32 len ceil32(_351)]
        if ceil32(_351) > _351:
            mem[_351 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_351) + 32]
    mem[_98 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _56
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_98]:
            revert with 0, 50
        mem[s + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _201 = mem[64]
    mem[64] = mem[64] + 64
    mem[_201] = 1
    mem[_201 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _98
    u = _51
    while idx < _50:
        if idx >= mem[96]:
            revert with 0, 50
        _347 = mem[(32 * idx) + 128]
        _348 = mem[mem[(32 * idx) + 128] + 64]
        if not mem[mem[(32 * idx) + 128] + 64]:
            _360 = mem[64]
            mem[64] = mem[64] + 64
            mem[_360] = 1
            mem[_360 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _362 = mem[64]
            _366 = mem[t]
            u = 0
            while u < _366:
                mem[u + _362 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_366) <= _366:
                _483 = mem[_201]
                t = 0
                while t < _483:
                    mem[t + _362 + _366 + 32] = mem[t + _201 + 32]
                    t = t + 32
                    continue 
                if ceil32(_483) <= _483:
                    _689 = mem[_360]
                    s = 0
                    while s < _689:
                        mem[s + _362 + _366 + _483 + 32] = mem[s + _360 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_689) <= _689:
                        _873 = mem[64]
                        mem[mem[64]] = _689 + _362 + _366 + _483 - mem[64]
                        mem[64] = _689 + _362 + _366 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _873
                        u = _347
                        continue 
                    mem[_689 + _362 + _366 + _483 + 32] = 0
                    _874 = mem[64]
                    mem[mem[64]] = _689 + _362 + _366 + _483 - mem[64]
                    mem[64] = _689 + _362 + _366 + _483 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _874
                    u = _347
                    continue 
                mem[_483 + _362 + _366 + 32] = 0
                _690 = mem[_360]
                s = 0
                while s < _690:
                    mem[s + _362 + _366 + _483 + 32] = mem[s + _360 + 32]
                    s = s + 32
                    continue 
                if ceil32(_690) <= _690:
                    _875 = mem[64]
                    mem[mem[64]] = _690 + _362 + _366 + _483 - mem[64]
                    mem[64] = _690 + _362 + _366 + _483 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _875
                    u = _347
                    continue 
                mem[_690 + _362 + _366 + _483 + 32] = 0
                _876 = mem[64]
                mem[mem[64]] = _690 + _362 + _366 + _483 - mem[64]
                mem[64] = _690 + _362 + _366 + _483 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _876
                u = _347
                continue 
            mem[_366 + _362 + 32] = 0
            _484 = mem[_201]
            t = 0
            while t < _484:
                mem[t + _362 + _366 + 32] = mem[t + _201 + 32]
                t = t + 32
                continue 
            if ceil32(_484) <= _484:
                _691 = mem[_360]
                s = 0
                while s < _691:
                    mem[s + _362 + _366 + _484 + 32] = mem[s + _360 + 32]
                    s = s + 32
                    continue 
                if ceil32(_691) <= _691:
                    _877 = mem[64]
                    mem[mem[64]] = _691 + _362 + _366 + _484 - mem[64]
                    mem[64] = _691 + _362 + _366 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _877
                    u = _347
                    continue 
                mem[_691 + _362 + _366 + _484 + 32] = 0
                _878 = mem[64]
                mem[mem[64]] = _691 + _362 + _366 + _484 - mem[64]
                mem[64] = _691 + _362 + _366 + _484 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _878
                u = _347
                continue 
            mem[_484 + _362 + _366 + 32] = 0
            _692 = mem[_360]
            s = 0
            while s < _692:
                mem[s + _362 + _366 + _484 + 32] = mem[s + _360 + 32]
                s = s + 32
                continue 
            if ceil32(_692) <= _692:
                _879 = mem[64]
                mem[mem[64]] = _692 + _362 + _366 + _484 - mem[64]
                mem[64] = _692 + _362 + _366 + _484 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _879
                u = _347
                continue 
            mem[_692 + _362 + _366 + _484 + 32] = 0
            _880 = mem[64]
            mem[mem[64]] = _692 + _362 + _366 + _484 - mem[64]
            mem[64] = _692 + _362 + _366 + _484 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _880
            u = _347
            continue 
        u = 0
        s = mem[mem[(32 * idx) + 128] + 64]
        while s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _480 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _348
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_480]:
                    revert with 0, 50
                mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _679 = mem[64]
            _687 = mem[t]
            s = 0
            while s < _687:
                mem[s + _679 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_687) <= _687:
                _861 = mem[_201]
                s = 0
                while s < _861:
                    mem[s + _679 + _687 + 32] = mem[s + _201 + 32]
                    s = s + 32
                    continue 
                if ceil32(_861) <= _861:
                    _985 = mem[_480]
                    s = 0
                    while s < _985:
                        mem[s + _679 + _687 + _861 + 32] = mem[s + _480 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1073 = mem[64]
                        mem[mem[64]] = _985 + _679 + _687 + _861 - mem[64]
                        mem[64] = _985 + _679 + _687 + _861 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1073
                        u = _347
                        continue 
                    mem[_985 + _679 + _687 + _861 + 32] = 0
                    _1074 = mem[64]
                    mem[mem[64]] = _985 + _679 + _687 + _861 - mem[64]
                    mem[64] = _985 + _679 + _687 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1074
                    u = _347
                    continue 
                mem[_861 + _679 + _687 + 32] = 0
                _986 = mem[_480]
                s = 0
                while s < _986:
                    mem[s + _679 + _687 + _861 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1075 = mem[64]
                    mem[mem[64]] = _986 + _679 + _687 + _861 - mem[64]
                    mem[64] = _986 + _679 + _687 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1075
                    u = _347
                    continue 
                mem[_986 + _679 + _687 + _861 + 32] = 0
                _1076 = mem[64]
                mem[mem[64]] = _986 + _679 + _687 + _861 - mem[64]
                mem[64] = _986 + _679 + _687 + _861 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1076
                u = _347
                continue 
            mem[_687 + _679 + 32] = 0
            _862 = mem[_201]
            s = 0
            while s < _862:
                mem[s + _679 + _687 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_862) <= _862:
                _987 = mem[_480]
                s = 0
                while s < _987:
                    mem[s + _679 + _687 + _862 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_987) <= _987:
                    _1077 = mem[64]
                    mem[mem[64]] = _987 + _679 + _687 + _862 - mem[64]
                    mem[64] = _987 + _679 + _687 + _862 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1077
                    u = _347
                    continue 
                mem[_987 + _679 + _687 + _862 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _987 + _679 + _687 + _862 - mem[64]
                mem[64] = _987 + _679 + _687 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1078
                u = _347
                continue 
            mem[_862 + _679 + _687 + 32] = 0
            _988 = mem[_480]
            s = 0
            while s < _988:
                mem[s + _679 + _687 + _862 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_988) <= _988:
                _1079 = mem[64]
                mem[mem[64]] = _988 + _679 + _687 + _862 - mem[64]
                mem[64] = _988 + _679 + _687 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1079
                u = _347
                continue 
            mem[_988 + _679 + _687 + _862 + 32] = 0
            _1080 = mem[64]
            mem[mem[64]] = _988 + _679 + _687 + _862 - mem[64]
            mem[64] = _988 + _679 + _687 + _862 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1080
            u = _347
            continue 
        mem[_480 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _348
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_480]:
                revert with 0, 50
            mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _680 = mem[64]
        _688 = mem[t]
        s = 0
        while s < _688:
            mem[s + _680 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_688) <= _688:
            _863 = mem[_201]
            s = 0
            while s < _863:
                mem[s + _680 + _688 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_863) <= _863:
                _989 = mem[_480]
                idx = 0
                while idx < _989:
                    mem[idx + _680 + _688 + _863 + 32] = mem[idx + _480 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1081 = mem[64]
                    mem[mem[64]] = _989 + _680 + _688 + _863 - mem[64]
                    mem[64] = _989 + _680 + _688 + _863 + 32
                    if ceil32(_863) == -1:
                        revert with 0, 17
                    s = ceil32(_863) + 1
                    t = _1081
                    u = _347
                    continue 
                mem[_989 + _680 + _688 + _863 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _989 + _680 + _688 + _863 - mem[64]
                mem[64] = _989 + _680 + _688 + _863 + 32
                if ceil32(_863) == -1:
                    revert with 0, 17
                s = ceil32(_863) + 1
                t = _1082
                u = _347
                continue 
            mem[_863 + _680 + _688 + 32] = 0
            _990 = mem[_480]
            idx = 0
            while idx < _990:
                mem[idx + _680 + _688 + _863 + 32] = mem[idx + _480 + 32]
                idx = idx + 32
                continue 
            if ceil32(_990) <= _990:
                _1083 = mem[64]
                mem[mem[64]] = _990 + _680 + _688 + _863 - mem[64]
                mem[64] = _990 + _680 + _688 + _863 + 32
                if ceil32(_863) == -1:
                    revert with 0, 17
                s = ceil32(_863) + 1
                t = _1083
                u = _347
                continue 
            mem[_990 + _680 + _688 + _863 + 32] = 0
            _1084 = mem[64]
            mem[mem[64]] = _990 + _680 + _688 + _863 - mem[64]
            mem[64] = _990 + _680 + _688 + _863 + 32
            if ceil32(_863) == -1:
                revert with 0, 17
            s = ceil32(_863) + 1
            t = _1084
            u = _347
            continue 
        mem[_688 + _680 + 32] = 0
        _864 = mem[_201]
        s = 0
        while s < _864:
            mem[s + _680 + _688 + 32] = mem[s + _201 + 32]
            s = s + 32
            continue 
        if ceil32(_864) <= _864:
            _991 = mem[_480]
            idx = 0
            while idx < _991:
                mem[idx + _680 + _688 + _864 + 32] = mem[idx + _480 + 32]
                idx = idx + 32
                continue 
            if ceil32(_991) <= _991:
                _1085 = mem[64]
                mem[mem[64]] = _991 + _680 + _688 + _864 - mem[64]
                mem[64] = _991 + _680 + _688 + _864 + 32
                if ceil32(_864) == -1:
                    revert with 0, 17
                s = ceil32(_864) + 1
                t = _1085
                u = _347
                continue 
            mem[_991 + _680 + _688 + _864 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _991 + _680 + _688 + _864 - mem[64]
            mem[64] = _991 + _680 + _688 + _864 + 32
            if ceil32(_864) == -1:
                revert with 0, 17
            s = ceil32(_864) + 1
            t = _1086
            u = _347
            continue 
        mem[_864 + _680 + _688 + 32] = 0
        _992 = mem[_480]
        idx = 0
        while idx < _992:
            mem[idx + _680 + _688 + _864 + 32] = mem[idx + _480 + 32]
            idx = idx + 32
            continue 
        if ceil32(_992) <= _992:
            _1087 = mem[64]
            mem[mem[64]] = _992 + _680 + _688 + _864 - mem[64]
            mem[64] = _992 + _680 + _688 + _864 + 32
            if ceil32(_864) == -1:
                revert with 0, 17
            s = ceil32(_864) + 1
            t = _1087
            u = _347
            continue 
        mem[_992 + _680 + _688 + _864 + 32] = 0
        _1088 = mem[64]
        mem[mem[64]] = _992 + _680 + _688 + _864 - mem[64]
        mem[64] = _992 + _680 + _688 + _864 + 32
        if ceil32(_864) == -1:
            revert with 0, 17
        s = ceil32(_864) + 1
        t = _1088
        u = _347
        continue 
    mem[mem[64]] = 32
    _352 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_352)] = mem[t + 32 len ceil32(_352)]
    if ceil32(_352) > _352:
        mem[_352 + mem[64] + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_352) + 32]
}

function getNodesCreationTime(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    mem[32] = 0
    mem[64] = (32 * nodeNumberOf[address(arg1)].field_0) + 128
    mem[96] = nodeNumberOf[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < nodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _53 = mem[64]
        mem[64] = mem[64] + 128
        if bool(nodeNumberOf[address(arg1)][idx].field_0):
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _58 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_58] = uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5
            if bool(nodeNumberOf[address(arg1)][idx].field_0):
                if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, nodeNumberOf[address(arg1)][idx].field_0):
                    if 31 >= uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                        mem[_58 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                        mem[_58 + 32] = nodeNumberOf[address(arg1)][idx].field_0
                        t = _58 + 32
                        u = sha3(mem[0])
                        while _58 + (uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = epochs[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_53] = _58
                mem[_53 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_53 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_53 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not nodeNumberOf[address(arg1)][idx].field_1 % 128:
                mem[_53] = _58
                mem[_53 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_53 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_53 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= nodeNumberOf[address(arg1)][idx].field_1 % 128:
                mem[_58 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                mem[_53] = _58
                mem[_53 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_53 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_53 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_58 + 32] = nodeNumberOf[address(arg1)][idx].field_0
            t = _58 + 32
            u = sha3(mem[0])
            while _58 + nodeNumberOf[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = epochs[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_53] = _58
            mem[_53 + 32] = nodeNumberOf[address(arg1)][u].field_256
            mem[_53 + 64] = nodeNumberOf[address(arg1)][u].field_512
            mem[_53 + 96] = nodeNumberOf[address(arg1)][u].field_768
            mem[t] = _53
            t = t + 32
            u = u + 1
            continue 
        if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        _60 = mem[64]
        mem[64] = mem[64] + ceil32(nodeNumberOf[address(arg1)][idx].field_1 % 128) + 32
        mem[_60] = nodeNumberOf[address(arg1)][idx].field_1 % 128
        if bool(nodeNumberOf[address(arg1)][idx].field_0):
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, nodeNumberOf[address(arg1)][idx].field_0):
                mem[_53] = _60
                mem[_53 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_53 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_53 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                mem[_60 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                mem[_53] = _60
                mem[_53 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_53 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_53 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _53
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_60 + 32] = nodeNumberOf[address(arg1)][idx].field_0
            t = _60 + 32
            u = sha3(mem[0])
            while _60 + (uint255(nodeNumberOf[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = epochs[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_53] = _60
            mem[_53 + 32] = nodeNumberOf[address(arg1)][u].field_256
            mem[_53 + 64] = nodeNumberOf[address(arg1)][u].field_512
            mem[_53 + 96] = nodeNumberOf[address(arg1)][u].field_768
            mem[t] = _53
            t = t + 32
            u = u + 1
            continue 
        if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        if nodeNumberOf[address(arg1)][idx].field_1 % 128:
            if 31 >= nodeNumberOf[address(arg1)][idx].field_1 % 128:
                mem[_60 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                mem[_60 + 32] = nodeNumberOf[address(arg1)][idx].field_0
                t = _60 + 32
                u = sha3(mem[0])
                while _60 + nodeNumberOf[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = epochs[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_53] = _60
        mem[_53 + 32] = nodeNumberOf[address(arg1)][idx].field_256
        mem[_53 + 64] = nodeNumberOf[address(arg1)][idx].field_512
        mem[_53 + 96] = nodeNumberOf[address(arg1)][idx].field_768
        mem[s] = _53
        s = s + 32
        idx = idx + 1
        continue 
    _50 = mem[96]
    _51 = mem[64]
    mem[64] = mem[64] + 128
    mem[_51] = 96
    mem[_51 + 32] = 0
    mem[_51 + 64] = 0
    mem[_51 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    _56 = mem[mem[128] + 32]
    if not mem[mem[128] + 32]:
        _57 = mem[64]
        mem[64] = mem[64] + 64
        mem[_57] = 1
        mem[_57 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _59 = mem[64]
        mem[64] = mem[64] + 64
        mem[_59] = 1
        mem[_59 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _57
        t = _51
        while idx < _50:
            if idx >= mem[96]:
                revert with 0, 50
            _100 = mem[(32 * idx) + 128]
            _101 = mem[mem[(32 * idx) + 128] + 32]
            if not mem[mem[(32 * idx) + 128] + 32]:
                _103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_103] = 1
                mem[_103 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _104 = mem[64]
                _107 = mem[s]
                t = 0
                while t < _107:
                    mem[t + _104 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_107) <= _107:
                    _203 = mem[_59]
                    s = 0
                    while s < _203:
                        mem[s + _104 + _107 + 32] = mem[s + _59 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_203) <= _203:
                        _355 = mem[_103]
                        s = 0
                        while s < _355:
                            mem[s + _104 + _107 + _203 + 32] = mem[s + _103 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_355) <= _355:
                            _493 = mem[64]
                            mem[mem[64]] = _355 + _104 + _107 + _203 - mem[64]
                            mem[64] = _355 + _104 + _107 + _203 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _493
                            t = _100
                            continue 
                        mem[_355 + _104 + _107 + _203 + 32] = 0
                        _494 = mem[64]
                        mem[mem[64]] = _355 + _104 + _107 + _203 - mem[64]
                        mem[64] = _355 + _104 + _107 + _203 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _494
                        t = _100
                        continue 
                    mem[_203 + _104 + _107 + 32] = 0
                    _356 = mem[_103]
                    s = 0
                    while s < _356:
                        mem[s + _104 + _107 + _203 + 32] = mem[s + _103 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_356) <= _356:
                        _495 = mem[64]
                        mem[mem[64]] = _356 + _104 + _107 + _203 - mem[64]
                        mem[64] = _356 + _104 + _107 + _203 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _495
                        t = _100
                        continue 
                    mem[_356 + _104 + _107 + _203 + 32] = 0
                    _496 = mem[64]
                    mem[mem[64]] = _356 + _104 + _107 + _203 - mem[64]
                    mem[64] = _356 + _104 + _107 + _203 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _496
                    t = _100
                    continue 
                mem[_107 + _104 + 32] = 0
                _204 = mem[_59]
                s = 0
                while s < _204:
                    mem[s + _104 + _107 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_204) <= _204:
                    _357 = mem[_103]
                    s = 0
                    while s < _357:
                        mem[s + _104 + _107 + _204 + 32] = mem[s + _103 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_357) <= _357:
                        _497 = mem[64]
                        mem[mem[64]] = _357 + _104 + _107 + _204 - mem[64]
                        mem[64] = _357 + _104 + _107 + _204 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _497
                        t = _100
                        continue 
                    mem[_357 + _104 + _107 + _204 + 32] = 0
                    _498 = mem[64]
                    mem[mem[64]] = _357 + _104 + _107 + _204 - mem[64]
                    mem[64] = _357 + _104 + _107 + _204 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _498
                    t = _100
                    continue 
                mem[_204 + _104 + _107 + 32] = 0
                _358 = mem[_103]
                s = 0
                while s < _358:
                    mem[s + _104 + _107 + _204 + 32] = mem[s + _103 + 32]
                    s = s + 32
                    continue 
                if ceil32(_358) <= _358:
                    _499 = mem[64]
                    mem[mem[64]] = _358 + _104 + _107 + _204 - mem[64]
                    mem[64] = _358 + _104 + _107 + _204 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _499
                    t = _100
                    continue 
                mem[_358 + _104 + _107 + _204 + 32] = 0
                _500 = mem[64]
                mem[mem[64]] = _358 + _104 + _107 + _204 - mem[64]
                mem[64] = _358 + _104 + _107 + _204 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _500
                t = _100
                continue 
            u = 0
            t = mem[mem[(32 * idx) + 128] + 32]
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _202 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = _101
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_202]:
                        revert with 0, 50
                    mem[v + _202 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _349 = mem[64]
                _353 = mem[s]
                t = 0
                while t < _353:
                    mem[t + _349 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_353) <= _353:
                    _485 = mem[_59]
                    s = 0
                    while s < _485:
                        mem[s + _349 + _353 + 32] = mem[s + _59 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_485) <= _485:
                        _693 = mem[_202]
                        s = 0
                        while s < _693:
                            mem[s + _349 + _353 + _485 + 32] = mem[s + _202 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_693) <= _693:
                            _881 = mem[64]
                            mem[mem[64]] = _693 + _349 + _353 + _485 - mem[64]
                            mem[64] = _693 + _349 + _353 + _485 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _881
                            t = _100
                            continue 
                        mem[_693 + _349 + _353 + _485 + 32] = 0
                        _882 = mem[64]
                        mem[mem[64]] = _693 + _349 + _353 + _485 - mem[64]
                        mem[64] = _693 + _349 + _353 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _882
                        t = _100
                        continue 
                    mem[_485 + _349 + _353 + 32] = 0
                    _694 = mem[_202]
                    s = 0
                    while s < _694:
                        mem[s + _349 + _353 + _485 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_694) <= _694:
                        _883 = mem[64]
                        mem[mem[64]] = _694 + _349 + _353 + _485 - mem[64]
                        mem[64] = _694 + _349 + _353 + _485 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _883
                        t = _100
                        continue 
                    mem[_694 + _349 + _353 + _485 + 32] = 0
                    _884 = mem[64]
                    mem[mem[64]] = _694 + _349 + _353 + _485 - mem[64]
                    mem[64] = _694 + _349 + _353 + _485 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _884
                    t = _100
                    continue 
                mem[_353 + _349 + 32] = 0
                _486 = mem[_59]
                s = 0
                while s < _486:
                    mem[s + _349 + _353 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_486) <= _486:
                    _695 = mem[_202]
                    s = 0
                    while s < _695:
                        mem[s + _349 + _353 + _486 + 32] = mem[s + _202 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_695) <= _695:
                        _885 = mem[64]
                        mem[mem[64]] = _695 + _349 + _353 + _486 - mem[64]
                        mem[64] = _695 + _349 + _353 + _486 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _885
                        t = _100
                        continue 
                    mem[_695 + _349 + _353 + _486 + 32] = 0
                    _886 = mem[64]
                    mem[mem[64]] = _695 + _349 + _353 + _486 - mem[64]
                    mem[64] = _695 + _349 + _353 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _886
                    t = _100
                    continue 
                mem[_486 + _349 + _353 + 32] = 0
                _696 = mem[_202]
                s = 0
                while s < _696:
                    mem[s + _349 + _353 + _486 + 32] = mem[s + _202 + 32]
                    s = s + 32
                    continue 
                if ceil32(_696) <= _696:
                    _887 = mem[64]
                    mem[mem[64]] = _696 + _349 + _353 + _486 - mem[64]
                    mem[64] = _696 + _349 + _353 + _486 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _887
                    t = _100
                    continue 
                mem[_696 + _349 + _353 + _486 + 32] = 0
                _888 = mem[64]
                mem[mem[64]] = _696 + _349 + _353 + _486 - mem[64]
                mem[64] = _696 + _349 + _353 + _486 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _888
                t = _100
                continue 
            mem[_202 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = _101
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_202]:
                    revert with 0, 50
                mem[v + _202 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _350 = mem[64]
            _354 = mem[s]
            t = 0
            while t < _354:
                mem[t + _350 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_354) <= _354:
                _487 = mem[_59]
                s = 0
                while s < _487:
                    mem[s + _350 + _354 + 32] = mem[s + _59 + 32]
                    s = s + 32
                    continue 
                if ceil32(_487) <= _487:
                    _697 = mem[_202]
                    idx = 0
                    while idx < _697:
                        mem[idx + _350 + _354 + _487 + 32] = mem[idx + _202 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_697) <= _697:
                        _889 = mem[64]
                        mem[mem[64]] = _697 + _350 + _354 + _487 - mem[64]
                        mem[64] = _697 + _350 + _354 + _487 + 32
                        if ceil32(_487) == -1:
                            revert with 0, 17
                        s = ceil32(_487) + 1
                        s = _889
                        t = _100
                        continue 
                    mem[_697 + _350 + _354 + _487 + 32] = 0
                    _890 = mem[64]
                    mem[mem[64]] = _697 + _350 + _354 + _487 - mem[64]
                    mem[64] = _697 + _350 + _354 + _487 + 32
                    if ceil32(_487) == -1:
                        revert with 0, 17
                    s = ceil32(_487) + 1
                    s = _890
                    t = _100
                    continue 
                mem[_487 + _350 + _354 + 32] = 0
                _698 = mem[_202]
                idx = 0
                while idx < _698:
                    mem[idx + _350 + _354 + _487 + 32] = mem[idx + _202 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_698) <= _698:
                    _891 = mem[64]
                    mem[mem[64]] = _698 + _350 + _354 + _487 - mem[64]
                    mem[64] = _698 + _350 + _354 + _487 + 32
                    if ceil32(_487) == -1:
                        revert with 0, 17
                    s = ceil32(_487) + 1
                    s = _891
                    t = _100
                    continue 
                mem[_698 + _350 + _354 + _487 + 32] = 0
                _892 = mem[64]
                mem[mem[64]] = _698 + _350 + _354 + _487 - mem[64]
                mem[64] = _698 + _350 + _354 + _487 + 32
                if ceil32(_487) == -1:
                    revert with 0, 17
                s = ceil32(_487) + 1
                s = _892
                t = _100
                continue 
            mem[_354 + _350 + 32] = 0
            _488 = mem[_59]
            s = 0
            while s < _488:
                mem[s + _350 + _354 + 32] = mem[s + _59 + 32]
                s = s + 32
                continue 
            if ceil32(_488) <= _488:
                _699 = mem[_202]
                idx = 0
                while idx < _699:
                    mem[idx + _350 + _354 + _488 + 32] = mem[idx + _202 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_699) <= _699:
                    _893 = mem[64]
                    mem[mem[64]] = _699 + _350 + _354 + _488 - mem[64]
                    mem[64] = _699 + _350 + _354 + _488 + 32
                    if ceil32(_488) == -1:
                        revert with 0, 17
                    s = ceil32(_488) + 1
                    s = _893
                    t = _100
                    continue 
                mem[_699 + _350 + _354 + _488 + 32] = 0
                _894 = mem[64]
                mem[mem[64]] = _699 + _350 + _354 + _488 - mem[64]
                mem[64] = _699 + _350 + _354 + _488 + 32
                if ceil32(_488) == -1:
                    revert with 0, 17
                s = ceil32(_488) + 1
                s = _894
                t = _100
                continue 
            mem[_488 + _350 + _354 + 32] = 0
            _700 = mem[_202]
            idx = 0
            while idx < _700:
                mem[idx + _350 + _354 + _488 + 32] = mem[idx + _202 + 32]
                idx = idx + 32
                continue 
            if ceil32(_700) <= _700:
                _895 = mem[64]
                mem[mem[64]] = _700 + _350 + _354 + _488 - mem[64]
                mem[64] = _700 + _350 + _354 + _488 + 32
                if ceil32(_488) == -1:
                    revert with 0, 17
                s = ceil32(_488) + 1
                s = _895
                t = _100
                continue 
            mem[_700 + _350 + _354 + _488 + 32] = 0
            _896 = mem[64]
            mem[mem[64]] = _700 + _350 + _354 + _488 - mem[64]
            mem[64] = _700 + _350 + _354 + _488 + 32
            if ceil32(_488) == -1:
                revert with 0, 17
            s = ceil32(_488) + 1
            s = _896
            t = _100
            continue 
        _99 = mem[64]
        mem[mem[64]] = 32
        _102 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_102)] = mem[s + 32 len ceil32(_102)]
        if ceil32(_102) <= _102:
            return 32, mem[mem[64] + 32 len ceil32(_102) + 32]
        mem[_102 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_102) + _99 + -mem[64] + 64
    u = 0
    t = mem[mem[128] + 32]
    while t:
        if u == -1:
            revert with 0, 17
        u = u + 1
        t = t / 10
        continue 
    if u > test266151307():
        revert with 0, 65
    _98 = mem[64]
    mem[mem[64]] = u
    mem[64] = mem[64] + ceil32(u) + 32
    if not u:
        s = u
        idx = _56
        while idx:
            if s < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if s - 1 >= mem[_98]:
                revert with 0, 50
            mem[s + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            s = s - 1
            idx = idx / 10
            continue 
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 1
        mem[_200 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        t = _98
        u = _51
        while idx < _50:
            if idx >= mem[96]:
                revert with 0, 50
            _344 = mem[(32 * idx) + 128]
            _345 = mem[mem[(32 * idx) + 128] + 32]
            if not mem[mem[(32 * idx) + 128] + 32]:
                _359 = mem[64]
                mem[64] = mem[64] + 64
                mem[_359] = 1
                mem[_359 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _361 = mem[64]
                _364 = mem[t]
                u = 0
                while u < _364:
                    mem[u + _361 + 32] = mem[u + t + 32]
                    u = u + 32
                    continue 
                if ceil32(_364) <= _364:
                    _481 = mem[_200]
                    t = 0
                    while t < _481:
                        mem[t + _361 + _364 + 32] = mem[t + _200 + 32]
                        t = t + 32
                        continue 
                    if ceil32(_481) <= _481:
                        _683 = mem[_359]
                        s = 0
                        while s < _683:
                            mem[s + _361 + _364 + _481 + 32] = mem[s + _359 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_683) <= _683:
                            _865 = mem[64]
                            mem[mem[64]] = _683 + _361 + _364 + _481 - mem[64]
                            mem[64] = _683 + _361 + _364 + _481 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _865
                            u = _344
                            continue 
                        mem[_683 + _361 + _364 + _481 + 32] = 0
                        _866 = mem[64]
                        mem[mem[64]] = _683 + _361 + _364 + _481 - mem[64]
                        mem[64] = _683 + _361 + _364 + _481 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _866
                        u = _344
                        continue 
                    mem[_481 + _361 + _364 + 32] = 0
                    _684 = mem[_359]
                    s = 0
                    while s < _684:
                        mem[s + _361 + _364 + _481 + 32] = mem[s + _359 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_684) <= _684:
                        _867 = mem[64]
                        mem[mem[64]] = _684 + _361 + _364 + _481 - mem[64]
                        mem[64] = _684 + _361 + _364 + _481 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _867
                        u = _344
                        continue 
                    mem[_684 + _361 + _364 + _481 + 32] = 0
                    _868 = mem[64]
                    mem[mem[64]] = _684 + _361 + _364 + _481 - mem[64]
                    mem[64] = _684 + _361 + _364 + _481 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _868
                    u = _344
                    continue 
                mem[_364 + _361 + 32] = 0
                _482 = mem[_200]
                t = 0
                while t < _482:
                    mem[t + _361 + _364 + 32] = mem[t + _200 + 32]
                    t = t + 32
                    continue 
                if ceil32(_482) <= _482:
                    _685 = mem[_359]
                    s = 0
                    while s < _685:
                        mem[s + _361 + _364 + _482 + 32] = mem[s + _359 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_685) <= _685:
                        _869 = mem[64]
                        mem[mem[64]] = _685 + _361 + _364 + _482 - mem[64]
                        mem[64] = _685 + _361 + _364 + _482 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _869
                        u = _344
                        continue 
                    mem[_685 + _361 + _364 + _482 + 32] = 0
                    _870 = mem[64]
                    mem[mem[64]] = _685 + _361 + _364 + _482 - mem[64]
                    mem[64] = _685 + _361 + _364 + _482 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _870
                    u = _344
                    continue 
                mem[_482 + _361 + _364 + 32] = 0
                _686 = mem[_359]
                s = 0
                while s < _686:
                    mem[s + _361 + _364 + _482 + 32] = mem[s + _359 + 32]
                    s = s + 32
                    continue 
                if ceil32(_686) <= _686:
                    _871 = mem[64]
                    mem[mem[64]] = _686 + _361 + _364 + _482 - mem[64]
                    mem[64] = _686 + _361 + _364 + _482 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _871
                    u = _344
                    continue 
                mem[_686 + _361 + _364 + _482 + 32] = 0
                _872 = mem[64]
                mem[mem[64]] = _686 + _361 + _364 + _482 - mem[64]
                mem[64] = _686 + _361 + _364 + _482 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _872
                u = _344
                continue 
            u = 0
            s = mem[mem[(32 * idx) + 128] + 32]
            while s:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                s = s / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _479 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                s = _345
                while s:
                    if v < 1:
                        revert with 0, 17
                    if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if s < 10 * s / 10:
                        revert with 0, 17
                    if 48 > -uint8(s - (10 * s / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_479]:
                        revert with 0, 50
                    mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                    v = v - 1
                    s = s / 10
                    continue 
                _677 = mem[64]
                _681 = mem[t]
                s = 0
                while s < _681:
                    mem[s + _677 + 32] = mem[s + t + 32]
                    s = s + 32
                    continue 
                if ceil32(_681) <= _681:
                    _857 = mem[_200]
                    s = 0
                    while s < _857:
                        mem[s + _677 + _681 + 32] = mem[s + _200 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_857) <= _857:
                        _977 = mem[_479]
                        s = 0
                        while s < _977:
                            mem[s + _677 + _681 + _857 + 32] = mem[s + _479 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_977) <= _977:
                            _1057 = mem[64]
                            mem[mem[64]] = _977 + _677 + _681 + _857 - mem[64]
                            mem[64] = _977 + _677 + _681 + _857 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            t = _1057
                            u = _344
                            continue 
                        mem[_977 + _677 + _681 + _857 + 32] = 0
                        _1058 = mem[64]
                        mem[mem[64]] = _977 + _677 + _681 + _857 - mem[64]
                        mem[64] = _977 + _677 + _681 + _857 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1058
                        u = _344
                        continue 
                    mem[_857 + _677 + _681 + 32] = 0
                    _978 = mem[_479]
                    s = 0
                    while s < _978:
                        mem[s + _677 + _681 + _857 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_978) <= _978:
                        _1059 = mem[64]
                        mem[mem[64]] = _978 + _677 + _681 + _857 - mem[64]
                        mem[64] = _978 + _677 + _681 + _857 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1059
                        u = _344
                        continue 
                    mem[_978 + _677 + _681 + _857 + 32] = 0
                    _1060 = mem[64]
                    mem[mem[64]] = _978 + _677 + _681 + _857 - mem[64]
                    mem[64] = _978 + _677 + _681 + _857 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1060
                    u = _344
                    continue 
                mem[_681 + _677 + 32] = 0
                _858 = mem[_200]
                s = 0
                while s < _858:
                    mem[s + _677 + _681 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_858) <= _858:
                    _979 = mem[_479]
                    s = 0
                    while s < _979:
                        mem[s + _677 + _681 + _858 + 32] = mem[s + _479 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_979) <= _979:
                        _1061 = mem[64]
                        mem[mem[64]] = _979 + _677 + _681 + _858 - mem[64]
                        mem[64] = _979 + _677 + _681 + _858 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1061
                        u = _344
                        continue 
                    mem[_979 + _677 + _681 + _858 + 32] = 0
                    _1062 = mem[64]
                    mem[mem[64]] = _979 + _677 + _681 + _858 - mem[64]
                    mem[64] = _979 + _677 + _681 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1062
                    u = _344
                    continue 
                mem[_858 + _677 + _681 + 32] = 0
                _980 = mem[_479]
                s = 0
                while s < _980:
                    mem[s + _677 + _681 + _858 + 32] = mem[s + _479 + 32]
                    s = s + 32
                    continue 
                if ceil32(_980) <= _980:
                    _1063 = mem[64]
                    mem[mem[64]] = _980 + _677 + _681 + _858 - mem[64]
                    mem[64] = _980 + _677 + _681 + _858 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1063
                    u = _344
                    continue 
                mem[_980 + _677 + _681 + _858 + 32] = 0
                _1064 = mem[64]
                mem[mem[64]] = _980 + _677 + _681 + _858 - mem[64]
                mem[64] = _980 + _677 + _681 + _858 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1064
                u = _344
                continue 
            mem[_479 + 32 len u] = call.data[calldata.size len u]
            v = u
            s = _345
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_479]:
                    revert with 0, 50
                mem[v + _479 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _678 = mem[64]
            _682 = mem[t]
            s = 0
            while s < _682:
                mem[s + _678 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_682) <= _682:
                _859 = mem[_200]
                s = 0
                while s < _859:
                    mem[s + _678 + _682 + 32] = mem[s + _200 + 32]
                    s = s + 32
                    continue 
                if ceil32(_859) <= _859:
                    _981 = mem[_479]
                    idx = 0
                    while idx < _981:
                        mem[idx + _678 + _682 + _859 + 32] = mem[idx + _479 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_981) <= _981:
                        _1065 = mem[64]
                        mem[mem[64]] = _981 + _678 + _682 + _859 - mem[64]
                        mem[64] = _981 + _678 + _682 + _859 + 32
                        if ceil32(_859) == -1:
                            revert with 0, 17
                        s = ceil32(_859) + 1
                        t = _1065
                        u = _344
                        continue 
                    mem[_981 + _678 + _682 + _859 + 32] = 0
                    _1066 = mem[64]
                    mem[mem[64]] = _981 + _678 + _682 + _859 - mem[64]
                    mem[64] = _981 + _678 + _682 + _859 + 32
                    if ceil32(_859) == -1:
                        revert with 0, 17
                    s = ceil32(_859) + 1
                    t = _1066
                    u = _344
                    continue 
                mem[_859 + _678 + _682 + 32] = 0
                _982 = mem[_479]
                idx = 0
                while idx < _982:
                    mem[idx + _678 + _682 + _859 + 32] = mem[idx + _479 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_982) <= _982:
                    _1067 = mem[64]
                    mem[mem[64]] = _982 + _678 + _682 + _859 - mem[64]
                    mem[64] = _982 + _678 + _682 + _859 + 32
                    if ceil32(_859) == -1:
                        revert with 0, 17
                    s = ceil32(_859) + 1
                    t = _1067
                    u = _344
                    continue 
                mem[_982 + _678 + _682 + _859 + 32] = 0
                _1068 = mem[64]
                mem[mem[64]] = _982 + _678 + _682 + _859 - mem[64]
                mem[64] = _982 + _678 + _682 + _859 + 32
                if ceil32(_859) == -1:
                    revert with 0, 17
                s = ceil32(_859) + 1
                t = _1068
                u = _344
                continue 
            mem[_682 + _678 + 32] = 0
            _860 = mem[_200]
            s = 0
            while s < _860:
                mem[s + _678 + _682 + 32] = mem[s + _200 + 32]
                s = s + 32
                continue 
            if ceil32(_860) <= _860:
                _983 = mem[_479]
                idx = 0
                while idx < _983:
                    mem[idx + _678 + _682 + _860 + 32] = mem[idx + _479 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_983) <= _983:
                    _1069 = mem[64]
                    mem[mem[64]] = _983 + _678 + _682 + _860 - mem[64]
                    mem[64] = _983 + _678 + _682 + _860 + 32
                    if ceil32(_860) == -1:
                        revert with 0, 17
                    s = ceil32(_860) + 1
                    t = _1069
                    u = _344
                    continue 
                mem[_983 + _678 + _682 + _860 + 32] = 0
                _1070 = mem[64]
                mem[mem[64]] = _983 + _678 + _682 + _860 - mem[64]
                mem[64] = _983 + _678 + _682 + _860 + 32
                if ceil32(_860) == -1:
                    revert with 0, 17
                s = ceil32(_860) + 1
                t = _1070
                u = _344
                continue 
            mem[_860 + _678 + _682 + 32] = 0
            _984 = mem[_479]
            idx = 0
            while idx < _984:
                mem[idx + _678 + _682 + _860 + 32] = mem[idx + _479 + 32]
                idx = idx + 32
                continue 
            if ceil32(_984) <= _984:
                _1071 = mem[64]
                mem[mem[64]] = _984 + _678 + _682 + _860 - mem[64]
                mem[64] = _984 + _678 + _682 + _860 + 32
                if ceil32(_860) == -1:
                    revert with 0, 17
                s = ceil32(_860) + 1
                t = _1071
                u = _344
                continue 
            mem[_984 + _678 + _682 + _860 + 32] = 0
            _1072 = mem[64]
            mem[mem[64]] = _984 + _678 + _682 + _860 - mem[64]
            mem[64] = _984 + _678 + _682 + _860 + 32
            if ceil32(_860) == -1:
                revert with 0, 17
            s = ceil32(_860) + 1
            t = _1072
            u = _344
            continue 
        mem[mem[64]] = 32
        _351 = mem[t]
        mem[mem[64] + 32] = mem[t]
        mem[mem[64] + 64 len ceil32(_351)] = mem[t + 32 len ceil32(_351)]
        if ceil32(_351) > _351:
            mem[_351 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_351) + 32]
    mem[_98 + 32 len u] = call.data[calldata.size len u]
    s = u
    idx = _56
    while idx:
        if s < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if s - 1 >= mem[_98]:
            revert with 0, 50
        mem[s + _98 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        s = s - 1
        idx = idx / 10
        continue 
    _201 = mem[64]
    mem[64] = mem[64] + 64
    mem[_201] = 1
    mem[_201 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    t = _98
    u = _51
    while idx < _50:
        if idx >= mem[96]:
            revert with 0, 50
        _347 = mem[(32 * idx) + 128]
        _348 = mem[mem[(32 * idx) + 128] + 32]
        if not mem[mem[(32 * idx) + 128] + 32]:
            _360 = mem[64]
            mem[64] = mem[64] + 64
            mem[_360] = 1
            mem[_360 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _362 = mem[64]
            _366 = mem[t]
            u = 0
            while u < _366:
                mem[u + _362 + 32] = mem[u + t + 32]
                u = u + 32
                continue 
            if ceil32(_366) <= _366:
                _483 = mem[_201]
                t = 0
                while t < _483:
                    mem[t + _362 + _366 + 32] = mem[t + _201 + 32]
                    t = t + 32
                    continue 
                if ceil32(_483) <= _483:
                    _689 = mem[_360]
                    s = 0
                    while s < _689:
                        mem[s + _362 + _366 + _483 + 32] = mem[s + _360 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_689) <= _689:
                        _873 = mem[64]
                        mem[mem[64]] = _689 + _362 + _366 + _483 - mem[64]
                        mem[64] = _689 + _362 + _366 + _483 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _873
                        u = _347
                        continue 
                    mem[_689 + _362 + _366 + _483 + 32] = 0
                    _874 = mem[64]
                    mem[mem[64]] = _689 + _362 + _366 + _483 - mem[64]
                    mem[64] = _689 + _362 + _366 + _483 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _874
                    u = _347
                    continue 
                mem[_483 + _362 + _366 + 32] = 0
                _690 = mem[_360]
                s = 0
                while s < _690:
                    mem[s + _362 + _366 + _483 + 32] = mem[s + _360 + 32]
                    s = s + 32
                    continue 
                if ceil32(_690) <= _690:
                    _875 = mem[64]
                    mem[mem[64]] = _690 + _362 + _366 + _483 - mem[64]
                    mem[64] = _690 + _362 + _366 + _483 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _875
                    u = _347
                    continue 
                mem[_690 + _362 + _366 + _483 + 32] = 0
                _876 = mem[64]
                mem[mem[64]] = _690 + _362 + _366 + _483 - mem[64]
                mem[64] = _690 + _362 + _366 + _483 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _876
                u = _347
                continue 
            mem[_366 + _362 + 32] = 0
            _484 = mem[_201]
            t = 0
            while t < _484:
                mem[t + _362 + _366 + 32] = mem[t + _201 + 32]
                t = t + 32
                continue 
            if ceil32(_484) <= _484:
                _691 = mem[_360]
                s = 0
                while s < _691:
                    mem[s + _362 + _366 + _484 + 32] = mem[s + _360 + 32]
                    s = s + 32
                    continue 
                if ceil32(_691) <= _691:
                    _877 = mem[64]
                    mem[mem[64]] = _691 + _362 + _366 + _484 - mem[64]
                    mem[64] = _691 + _362 + _366 + _484 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _877
                    u = _347
                    continue 
                mem[_691 + _362 + _366 + _484 + 32] = 0
                _878 = mem[64]
                mem[mem[64]] = _691 + _362 + _366 + _484 - mem[64]
                mem[64] = _691 + _362 + _366 + _484 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _878
                u = _347
                continue 
            mem[_484 + _362 + _366 + 32] = 0
            _692 = mem[_360]
            s = 0
            while s < _692:
                mem[s + _362 + _366 + _484 + 32] = mem[s + _360 + 32]
                s = s + 32
                continue 
            if ceil32(_692) <= _692:
                _879 = mem[64]
                mem[mem[64]] = _692 + _362 + _366 + _484 - mem[64]
                mem[64] = _692 + _362 + _366 + _484 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _879
                u = _347
                continue 
            mem[_692 + _362 + _366 + _484 + 32] = 0
            _880 = mem[64]
            mem[mem[64]] = _692 + _362 + _366 + _484 - mem[64]
            mem[64] = _692 + _362 + _366 + _484 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _880
            u = _347
            continue 
        u = 0
        s = mem[mem[(32 * idx) + 128] + 32]
        while s:
            if u == -1:
                revert with 0, 17
            u = u + 1
            s = s / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _480 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            s = _348
            while s:
                if v < 1:
                    revert with 0, 17
                if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if s < 10 * s / 10:
                    revert with 0, 17
                if 48 > -uint8(s - (10 * s / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_480]:
                    revert with 0, 50
                mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
                v = v - 1
                s = s / 10
                continue 
            _679 = mem[64]
            _687 = mem[t]
            s = 0
            while s < _687:
                mem[s + _679 + 32] = mem[s + t + 32]
                s = s + 32
                continue 
            if ceil32(_687) <= _687:
                _861 = mem[_201]
                s = 0
                while s < _861:
                    mem[s + _679 + _687 + 32] = mem[s + _201 + 32]
                    s = s + 32
                    continue 
                if ceil32(_861) <= _861:
                    _985 = mem[_480]
                    s = 0
                    while s < _985:
                        mem[s + _679 + _687 + _861 + 32] = mem[s + _480 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_985) <= _985:
                        _1073 = mem[64]
                        mem[mem[64]] = _985 + _679 + _687 + _861 - mem[64]
                        mem[64] = _985 + _679 + _687 + _861 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        t = _1073
                        u = _347
                        continue 
                    mem[_985 + _679 + _687 + _861 + 32] = 0
                    _1074 = mem[64]
                    mem[mem[64]] = _985 + _679 + _687 + _861 - mem[64]
                    mem[64] = _985 + _679 + _687 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1074
                    u = _347
                    continue 
                mem[_861 + _679 + _687 + 32] = 0
                _986 = mem[_480]
                s = 0
                while s < _986:
                    mem[s + _679 + _687 + _861 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_986) <= _986:
                    _1075 = mem[64]
                    mem[mem[64]] = _986 + _679 + _687 + _861 - mem[64]
                    mem[64] = _986 + _679 + _687 + _861 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1075
                    u = _347
                    continue 
                mem[_986 + _679 + _687 + _861 + 32] = 0
                _1076 = mem[64]
                mem[mem[64]] = _986 + _679 + _687 + _861 - mem[64]
                mem[64] = _986 + _679 + _687 + _861 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1076
                u = _347
                continue 
            mem[_687 + _679 + 32] = 0
            _862 = mem[_201]
            s = 0
            while s < _862:
                mem[s + _679 + _687 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_862) <= _862:
                _987 = mem[_480]
                s = 0
                while s < _987:
                    mem[s + _679 + _687 + _862 + 32] = mem[s + _480 + 32]
                    s = s + 32
                    continue 
                if ceil32(_987) <= _987:
                    _1077 = mem[64]
                    mem[mem[64]] = _987 + _679 + _687 + _862 - mem[64]
                    mem[64] = _987 + _679 + _687 + _862 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    t = _1077
                    u = _347
                    continue 
                mem[_987 + _679 + _687 + _862 + 32] = 0
                _1078 = mem[64]
                mem[mem[64]] = _987 + _679 + _687 + _862 - mem[64]
                mem[64] = _987 + _679 + _687 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1078
                u = _347
                continue 
            mem[_862 + _679 + _687 + 32] = 0
            _988 = mem[_480]
            s = 0
            while s < _988:
                mem[s + _679 + _687 + _862 + 32] = mem[s + _480 + 32]
                s = s + 32
                continue 
            if ceil32(_988) <= _988:
                _1079 = mem[64]
                mem[mem[64]] = _988 + _679 + _687 + _862 - mem[64]
                mem[64] = _988 + _679 + _687 + _862 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                t = _1079
                u = _347
                continue 
            mem[_988 + _679 + _687 + _862 + 32] = 0
            _1080 = mem[64]
            mem[mem[64]] = _988 + _679 + _687 + _862 - mem[64]
            mem[64] = _988 + _679 + _687 + _862 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            t = _1080
            u = _347
            continue 
        mem[_480 + 32 len u] = call.data[calldata.size len u]
        v = u
        s = _348
        while s:
            if v < 1:
                revert with 0, 17
            if s / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if s < 10 * s / 10:
                revert with 0, 17
            if 48 > -uint8(s - (10 * s / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_480]:
                revert with 0, 50
            mem[v + _480 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 1), ('mul', -10, ('div', ('var', 1), 10)))))), 0) - 256
            v = v - 1
            s = s / 10
            continue 
        _680 = mem[64]
        _688 = mem[t]
        s = 0
        while s < _688:
            mem[s + _680 + 32] = mem[s + t + 32]
            s = s + 32
            continue 
        if ceil32(_688) <= _688:
            _863 = mem[_201]
            s = 0
            while s < _863:
                mem[s + _680 + _688 + 32] = mem[s + _201 + 32]
                s = s + 32
                continue 
            if ceil32(_863) <= _863:
                _989 = mem[_480]
                idx = 0
                while idx < _989:
                    mem[idx + _680 + _688 + _863 + 32] = mem[idx + _480 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_989) <= _989:
                    _1081 = mem[64]
                    mem[mem[64]] = _989 + _680 + _688 + _863 - mem[64]
                    mem[64] = _989 + _680 + _688 + _863 + 32
                    if ceil32(_863) == -1:
                        revert with 0, 17
                    s = ceil32(_863) + 1
                    t = _1081
                    u = _347
                    continue 
                mem[_989 + _680 + _688 + _863 + 32] = 0
                _1082 = mem[64]
                mem[mem[64]] = _989 + _680 + _688 + _863 - mem[64]
                mem[64] = _989 + _680 + _688 + _863 + 32
                if ceil32(_863) == -1:
                    revert with 0, 17
                s = ceil32(_863) + 1
                t = _1082
                u = _347
                continue 
            mem[_863 + _680 + _688 + 32] = 0
            _990 = mem[_480]
            idx = 0
            while idx < _990:
                mem[idx + _680 + _688 + _863 + 32] = mem[idx + _480 + 32]
                idx = idx + 32
                continue 
            if ceil32(_990) <= _990:
                _1083 = mem[64]
                mem[mem[64]] = _990 + _680 + _688 + _863 - mem[64]
                mem[64] = _990 + _680 + _688 + _863 + 32
                if ceil32(_863) == -1:
                    revert with 0, 17
                s = ceil32(_863) + 1
                t = _1083
                u = _347
                continue 
            mem[_990 + _680 + _688 + _863 + 32] = 0
            _1084 = mem[64]
            mem[mem[64]] = _990 + _680 + _688 + _863 - mem[64]
            mem[64] = _990 + _680 + _688 + _863 + 32
            if ceil32(_863) == -1:
                revert with 0, 17
            s = ceil32(_863) + 1
            t = _1084
            u = _347
            continue 
        mem[_688 + _680 + 32] = 0
        _864 = mem[_201]
        s = 0
        while s < _864:
            mem[s + _680 + _688 + 32] = mem[s + _201 + 32]
            s = s + 32
            continue 
        if ceil32(_864) <= _864:
            _991 = mem[_480]
            idx = 0
            while idx < _991:
                mem[idx + _680 + _688 + _864 + 32] = mem[idx + _480 + 32]
                idx = idx + 32
                continue 
            if ceil32(_991) <= _991:
                _1085 = mem[64]
                mem[mem[64]] = _991 + _680 + _688 + _864 - mem[64]
                mem[64] = _991 + _680 + _688 + _864 + 32
                if ceil32(_864) == -1:
                    revert with 0, 17
                s = ceil32(_864) + 1
                t = _1085
                u = _347
                continue 
            mem[_991 + _680 + _688 + _864 + 32] = 0
            _1086 = mem[64]
            mem[mem[64]] = _991 + _680 + _688 + _864 - mem[64]
            mem[64] = _991 + _680 + _688 + _864 + 32
            if ceil32(_864) == -1:
                revert with 0, 17
            s = ceil32(_864) + 1
            t = _1086
            u = _347
            continue 
        mem[_864 + _680 + _688 + 32] = 0
        _992 = mem[_480]
        idx = 0
        while idx < _992:
            mem[idx + _680 + _688 + _864 + 32] = mem[idx + _480 + 32]
            idx = idx + 32
            continue 
        if ceil32(_992) <= _992:
            _1087 = mem[64]
            mem[mem[64]] = _992 + _680 + _688 + _864 - mem[64]
            mem[64] = _992 + _680 + _688 + _864 + 32
            if ceil32(_864) == -1:
                revert with 0, 17
            s = ceil32(_864) + 1
            t = _1087
            u = _347
            continue 
        mem[_992 + _680 + _688 + _864 + 32] = 0
        _1088 = mem[64]
        mem[mem[64]] = _992 + _680 + _688 + _864 - mem[64]
        mem[64] = _992 + _680 + _688 + _864 + 32
        if ceil32(_864) == -1:
            revert with 0, 17
        s = ceil32(_864) + 1
        t = _1088
        u = _347
        continue 
    mem[mem[64]] = 32
    _352 = mem[t]
    mem[mem[64] + 32] = mem[t]
    mem[mem[64] + 64 len ceil32(_352)] = mem[t + 32 len ceil32(_352)]
    if ceil32(_352) > _352:
        mem[_352 + mem[64] + 64] = 0
    return 32, mem[mem[64] + 32 len ceil32(_352) + 32]
}

function sub_6c95b0a2(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    mem[0] = address(arg1)
    mem[32] = 0
    mem[64] = (32 * nodeNumberOf[address(arg1)].field_0) + 128
    mem[96] = nodeNumberOf[address(arg1)].field_0
    s = 128
    idx = 0
    while idx < nodeNumberOf[address(arg1)].field_0:
        mem[0] = sha3(address(arg1), 0)
        _59 = mem[64]
        mem[64] = mem[64] + 128
        if bool(nodeNumberOf[address(arg1)][idx].field_0):
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            _63 = mem[64]
            mem[64] = mem[64] + ceil32(uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5) + 32
            mem[_63] = uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5
            if bool(nodeNumberOf[address(arg1)][idx].field_0):
                if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                    revert with 0, 34
                if Mask(256, -1, nodeNumberOf[address(arg1)][idx].field_0):
                    if 31 >= uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                        mem[_63 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                    else:
                        mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                        mem[_63 + 32] = nodeNumberOf[address(arg1)][idx].field_0
                        t = _63 + 32
                        u = sha3(mem[0])
                        while _63 + (uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5) > t:
                            mem[t + 32] = epochs[u].field_0
                            t = t + 32
                            u = u + 1
                            continue 
                mem[_59] = _63
                mem[_59 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_59 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_59 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
                revert with 0, 34
            if not nodeNumberOf[address(arg1)][idx].field_1 % 128:
                mem[_59] = _63
                mem[_59 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_59 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_59 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= nodeNumberOf[address(arg1)][idx].field_1 % 128:
                mem[_63 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                mem[_59] = _63
                mem[_59 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_59 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_59 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_63 + 32] = nodeNumberOf[address(arg1)][idx].field_0
            t = _63 + 32
            u = sha3(mem[0])
            while _63 + nodeNumberOf[address(arg1)][u].field_1 % 128 > t:
                mem[t + 32] = epochs[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _63
            mem[_59 + 32] = nodeNumberOf[address(arg1)][u].field_256
            mem[_59 + 64] = nodeNumberOf[address(arg1)][u].field_512
            mem[_59 + 96] = nodeNumberOf[address(arg1)][u].field_768
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        _65 = mem[64]
        mem[64] = mem[64] + ceil32(nodeNumberOf[address(arg1)][idx].field_1 % 128) + 32
        mem[_65] = nodeNumberOf[address(arg1)][idx].field_1 % 128
        if bool(nodeNumberOf[address(arg1)][idx].field_0):
            if bool(nodeNumberOf[address(arg1)][idx].field_0) == uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5 < 32:
                revert with 0, 34
            if not Mask(256, -1, nodeNumberOf[address(arg1)][idx].field_0):
                mem[_59] = _65
                mem[_59 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_59 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_59 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            if 31 >= uint255(nodeNumberOf[address(arg1)][idx].field_0) * 0.5:
                mem[_65 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
                mem[_59] = _65
                mem[_59 + 32] = nodeNumberOf[address(arg1)][idx].field_256
                mem[_59 + 64] = nodeNumberOf[address(arg1)][idx].field_512
                mem[_59 + 96] = nodeNumberOf[address(arg1)][idx].field_768
                mem[s] = _59
                s = s + 32
                idx = idx + 1
                continue 
            mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
            mem[_65 + 32] = nodeNumberOf[address(arg1)][idx].field_0
            t = _65 + 32
            u = sha3(mem[0])
            while _65 + (uint255(nodeNumberOf[address(arg1)][u].field_0) * 0.5) > t:
                mem[t + 32] = epochs[u].field_0
                t = t + 32
                u = u + 1
                continue 
            mem[_59] = _65
            mem[_59 + 32] = nodeNumberOf[address(arg1)][u].field_256
            mem[_59 + 64] = nodeNumberOf[address(arg1)][u].field_512
            mem[_59 + 96] = nodeNumberOf[address(arg1)][u].field_768
            mem[t] = _59
            t = t + 32
            u = u + 1
            continue 
        if bool(nodeNumberOf[address(arg1)][idx].field_0) == nodeNumberOf[address(arg1)][idx].field_1 % 128 < 32:
            revert with 0, 34
        if nodeNumberOf[address(arg1)][idx].field_1 % 128:
            if 31 >= nodeNumberOf[address(arg1)][idx].field_1 % 128:
                mem[_65 + 32] = 256 * Mask(248, 0, nodeNumberOf[address(arg1)][idx].field_8)
            else:
                mem[0] = (4 * idx) + sha3(sha3(address(arg1), 0))
                mem[_65 + 32] = nodeNumberOf[address(arg1)][idx].field_0
                t = _65 + 32
                u = sha3(mem[0])
                while _65 + nodeNumberOf[address(arg1)][idx].field_1 % 128 > t:
                    mem[t + 32] = epochs[u].field_0
                    t = t + 32
                    u = u + 1
                    continue 
        mem[_59] = _65
        mem[_59 + 32] = nodeNumberOf[address(arg1)][idx].field_256
        mem[_59 + 64] = nodeNumberOf[address(arg1)][idx].field_512
        mem[_59 + 96] = nodeNumberOf[address(arg1)][idx].field_768
        mem[s] = _59
        s = s + 32
        idx = idx + 1
        continue 
    _56 = mem[96]
    _57 = mem[64]
    mem[64] = mem[64] + 128
    mem[_57] = 96
    mem[_57 + 32] = 0
    mem[_57 + 64] = 0
    mem[_57 + 96] = 0
    if 0 >= mem[96]:
        revert with 0, 50
    idx = mem[mem[128] + 64]
    s = 0
    t = 0
    while idx <= sub_72333db7:
        mem[0] = idx
        mem[32] = 1
        if block.number <= epochs[idx].field_256:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s
            t = t
            continue 
        mem[0] = idx
        mem[32] = 1
        if t > !epochs[idx].field_0:
            revert with 0, 17
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = idx
        t = t + epochs[idx].field_0
        continue 
    if not t:
        _111 = mem[64]
        mem[64] = mem[64] + 64
        mem[_111] = 1
        mem[_111 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
        _112 = mem[64]
        mem[64] = mem[64] + 64
        mem[_112] = 1
        mem[_112 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _111
        u = t
        u = _57
        while idx < _56:
            if idx >= mem[96]:
                revert with 0, 50
            _152 = mem[(32 * idx) + 128]
            if 0 >= mem[96]:
                revert with 0, 50
            t = mem[mem[128] + 64]
            u = 0
            v = 0
            while t <= sub_72333db7:
                mem[0] = t
                mem[32] = 1
                if block.number <= epochs[t].field_256:
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    u = u
                    v = v
                    continue 
                mem[0] = t
                mem[32] = 1
                if v > !epochs[t].field_0:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                t = t + 1
                u = t
                v = v + epochs[t].field_0
                continue 
            if not v:
                _271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_271] = 1
                mem[_271 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _278 = mem[64]
                _285 = mem[s]
                t = 0
                while t < _285:
                    mem[t + _278 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_285) <= _285:
                    _383 = mem[_112]
                    s = 0
                    while s < _383:
                        mem[s + _278 + _285 + 32] = mem[s + _112 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_383) <= _383:
                        _521 = mem[_271]
                        s = 0
                        while s < _521:
                            mem[s + _278 + _285 + _383 + 32] = mem[s + _271 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_521) <= _521:
                            _651 = mem[64]
                            mem[mem[64]] = _521 + _278 + _285 + _383 - mem[64]
                            mem[64] = _521 + _278 + _285 + _383 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _651
                            u = v
                            u = _152
                            continue 
                        mem[_521 + _278 + _285 + _383 + 32] = 0
                        _652 = mem[64]
                        mem[mem[64]] = _521 + _278 + _285 + _383 - mem[64]
                        mem[64] = _521 + _278 + _285 + _383 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _652
                        u = v
                        u = _152
                        continue 
                    mem[_383 + _278 + _285 + 32] = 0
                    _522 = mem[_271]
                    s = 0
                    while s < _522:
                        mem[s + _278 + _285 + _383 + 32] = mem[s + _271 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_522) <= _522:
                        _653 = mem[64]
                        mem[mem[64]] = _522 + _278 + _285 + _383 - mem[64]
                        mem[64] = _522 + _278 + _285 + _383 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _653
                        u = v
                        u = _152
                        continue 
                    mem[_522 + _278 + _285 + _383 + 32] = 0
                    _654 = mem[64]
                    mem[mem[64]] = _522 + _278 + _285 + _383 - mem[64]
                    mem[64] = _522 + _278 + _285 + _383 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _654
                    u = v
                    u = _152
                    continue 
                mem[_285 + _278 + 32] = 0
                _384 = mem[_112]
                s = 0
                while s < _384:
                    mem[s + _278 + _285 + 32] = mem[s + _112 + 32]
                    s = s + 32
                    continue 
                if ceil32(_384) <= _384:
                    _523 = mem[_271]
                    s = 0
                    while s < _523:
                        mem[s + _278 + _285 + _384 + 32] = mem[s + _271 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_523) <= _523:
                        _655 = mem[64]
                        mem[mem[64]] = _523 + _278 + _285 + _384 - mem[64]
                        mem[64] = _523 + _278 + _285 + _384 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _655
                        u = v
                        u = _152
                        continue 
                    mem[_523 + _278 + _285 + _384 + 32] = 0
                    _656 = mem[64]
                    mem[mem[64]] = _523 + _278 + _285 + _384 - mem[64]
                    mem[64] = _523 + _278 + _285 + _384 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _656
                    u = v
                    u = _152
                    continue 
                mem[_384 + _278 + _285 + 32] = 0
                _524 = mem[_271]
                s = 0
                while s < _524:
                    mem[s + _278 + _285 + _384 + 32] = mem[s + _271 + 32]
                    s = s + 32
                    continue 
                if ceil32(_524) <= _524:
                    _657 = mem[64]
                    mem[mem[64]] = _524 + _278 + _285 + _384 - mem[64]
                    mem[64] = _524 + _278 + _285 + _384 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _657
                    u = v
                    u = _152
                    continue 
                mem[_524 + _278 + _285 + _384 + 32] = 0
                _658 = mem[64]
                mem[mem[64]] = _524 + _278 + _285 + _384 - mem[64]
                mem[64] = _524 + _278 + _285 + _384 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _658
                u = v
                u = _152
                continue 
            u = 0
            t = v
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _376 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                w = u
                t = v
                while t:
                    if w < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if w - 1 >= mem[_376]:
                        revert with 0, 50
                    mem[w + _376 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    w = w - 1
                    t = t / 10
                    continue 
                _517 = mem[64]
                _519 = mem[s]
                t = 0
                while t < _519:
                    mem[t + _517 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_519) <= _519:
                    _647 = mem[_112]
                    s = 0
                    while s < _647:
                        mem[s + _517 + _519 + 32] = mem[s + _112 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_647) <= _647:
                        _851 = mem[_376]
                        idx = 0
                        while idx < _851:
                            mem[idx + _517 + _519 + _647 + 32] = mem[idx + _376 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_851) <= _851:
                            _1039 = mem[64]
                            mem[mem[64]] = _851 + _517 + _519 + _647 - mem[64]
                            mem[64] = _851 + _517 + _519 + _647 + 32
                            if ceil32(_647) == -1:
                                revert with 0, 17
                            s = ceil32(_647) + 1
                            s = _1039
                            u = v
                            u = _152
                            continue 
                        mem[_851 + _517 + _519 + _647 + 32] = 0
                        _1040 = mem[64]
                        mem[mem[64]] = _851 + _517 + _519 + _647 - mem[64]
                        mem[64] = _851 + _517 + _519 + _647 + 32
                        if ceil32(_647) == -1:
                            revert with 0, 17
                        s = ceil32(_647) + 1
                        s = _1040
                        u = v
                        u = _152
                        continue 
                    mem[_647 + _517 + _519 + 32] = 0
                    _852 = mem[_376]
                    idx = 0
                    while idx < _852:
                        mem[idx + _517 + _519 + _647 + 32] = mem[idx + _376 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_852) <= _852:
                        _1041 = mem[64]
                        mem[mem[64]] = _852 + _517 + _519 + _647 - mem[64]
                        mem[64] = _852 + _517 + _519 + _647 + 32
                        if ceil32(_647) == -1:
                            revert with 0, 17
                        s = ceil32(_647) + 1
                        s = _1041
                        u = v
                        u = _152
                        continue 
                    mem[_852 + _517 + _519 + _647 + 32] = 0
                    _1042 = mem[64]
                    mem[mem[64]] = _852 + _517 + _519 + _647 - mem[64]
                    mem[64] = _852 + _517 + _519 + _647 + 32
                    if ceil32(_647) == -1:
                        revert with 0, 17
                    s = ceil32(_647) + 1
                    s = _1042
                    u = v
                    u = _152
                    continue 
                mem[_519 + _517 + 32] = 0
                _648 = mem[_112]
                s = 0
                while s < _648:
                    mem[s + _517 + _519 + 32] = mem[s + _112 + 32]
                    s = s + 32
                    continue 
                if ceil32(_648) <= _648:
                    _853 = mem[_376]
                    idx = 0
                    while idx < _853:
                        mem[idx + _517 + _519 + _648 + 32] = mem[idx + _376 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_853) <= _853:
                        _1043 = mem[64]
                        mem[mem[64]] = _853 + _517 + _519 + _648 - mem[64]
                        mem[64] = _853 + _517 + _519 + _648 + 32
                        if ceil32(_648) == -1:
                            revert with 0, 17
                        s = ceil32(_648) + 1
                        s = _1043
                        u = v
                        u = _152
                        continue 
                    mem[_853 + _517 + _519 + _648 + 32] = 0
                    _1044 = mem[64]
                    mem[mem[64]] = _853 + _517 + _519 + _648 - mem[64]
                    mem[64] = _853 + _517 + _519 + _648 + 32
                    if ceil32(_648) == -1:
                        revert with 0, 17
                    s = ceil32(_648) + 1
                    s = _1044
                    u = v
                    u = _152
                    continue 
                mem[_648 + _517 + _519 + 32] = 0
                _854 = mem[_376]
                idx = 0
                while idx < _854:
                    mem[idx + _517 + _519 + _648 + 32] = mem[idx + _376 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_854) <= _854:
                    _1045 = mem[64]
                    mem[mem[64]] = _854 + _517 + _519 + _648 - mem[64]
                    mem[64] = _854 + _517 + _519 + _648 + 32
                    if ceil32(_648) == -1:
                        revert with 0, 17
                    s = ceil32(_648) + 1
                    s = _1045
                    u = v
                    u = _152
                    continue 
                mem[_854 + _517 + _519 + _648 + 32] = 0
                _1046 = mem[64]
                mem[mem[64]] = _854 + _517 + _519 + _648 - mem[64]
                mem[64] = _854 + _517 + _519 + _648 + 32
                if ceil32(_648) == -1:
                    revert with 0, 17
                s = ceil32(_648) + 1
                s = _1046
                u = v
                u = _152
                continue 
            mem[_376 + 32 len u] = call.data[calldata.size len u]
            w = u
            t = v
            while t:
                if w < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if w - 1 >= mem[_376]:
                    revert with 0, 50
                mem[w + _376 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                w = w - 1
                t = t / 10
                continue 
            _518 = mem[64]
            _520 = mem[s]
            t = 0
            while t < _520:
                mem[t + _518 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_520) <= _520:
                _649 = mem[_112]
                s = 0
                while s < _649:
                    mem[s + _518 + _520 + 32] = mem[s + _112 + 32]
                    s = s + 32
                    continue 
                if ceil32(_649) <= _649:
                    _855 = mem[_376]
                    s = 0
                    while s < _855:
                        mem[s + _518 + _520 + _649 + 32] = mem[s + _376 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_855) <= _855:
                        _1047 = mem[64]
                        mem[mem[64]] = _855 + _518 + _520 + _649 - mem[64]
                        mem[64] = _855 + _518 + _520 + _649 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1047
                        u = v
                        u = _152
                        continue 
                    mem[_855 + _518 + _520 + _649 + 32] = 0
                    _1048 = mem[64]
                    mem[mem[64]] = _855 + _518 + _520 + _649 - mem[64]
                    mem[64] = _855 + _518 + _520 + _649 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1048
                    u = v
                    u = _152
                    continue 
                mem[_649 + _518 + _520 + 32] = 0
                _856 = mem[_376]
                s = 0
                while s < _856:
                    mem[s + _518 + _520 + _649 + 32] = mem[s + _376 + 32]
                    s = s + 32
                    continue 
                if ceil32(_856) <= _856:
                    _1049 = mem[64]
                    mem[mem[64]] = _856 + _518 + _520 + _649 - mem[64]
                    mem[64] = _856 + _518 + _520 + _649 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1049
                    u = v
                    u = _152
                    continue 
                mem[_856 + _518 + _520 + _649 + 32] = 0
                _1050 = mem[64]
                mem[mem[64]] = _856 + _518 + _520 + _649 - mem[64]
                mem[64] = _856 + _518 + _520 + _649 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1050
                u = v
                u = _152
                continue 
            mem[_520 + _518 + 32] = 0
            _650 = mem[_112]
            s = 0
            while s < _650:
                mem[s + _518 + _520 + 32] = mem[s + _112 + 32]
                s = s + 32
                continue 
            if ceil32(_650) <= _650:
                _857 = mem[_376]
                s = 0
                while s < _857:
                    mem[s + _518 + _520 + _650 + 32] = mem[s + _376 + 32]
                    s = s + 32
                    continue 
                if ceil32(_857) <= _857:
                    _1051 = mem[64]
                    mem[mem[64]] = _857 + _518 + _520 + _650 - mem[64]
                    mem[64] = _857 + _518 + _520 + _650 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1051
                    u = v
                    u = _152
                    continue 
                mem[_857 + _518 + _520 + _650 + 32] = 0
                _1052 = mem[64]
                mem[mem[64]] = _857 + _518 + _520 + _650 - mem[64]
                mem[64] = _857 + _518 + _520 + _650 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1052
                u = v
                u = _152
                continue 
            mem[_650 + _518 + _520 + 32] = 0
            _858 = mem[_376]
            s = 0
            while s < _858:
                mem[s + _518 + _520 + _650 + 32] = mem[s + _376 + 32]
                s = s + 32
                continue 
            if ceil32(_858) <= _858:
                _1053 = mem[64]
                mem[mem[64]] = _858 + _518 + _520 + _650 - mem[64]
                mem[64] = _858 + _518 + _520 + _650 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1053
                u = v
                u = _152
                continue 
            mem[_858 + _518 + _520 + _650 + 32] = 0
            _1054 = mem[64]
            mem[mem[64]] = _858 + _518 + _520 + _650 - mem[64]
            mem[64] = _858 + _518 + _520 + _650 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1054
            u = v
            u = _152
            continue 
        _151 = mem[64]
        mem[mem[64]] = 32
        _154 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_154)] = mem[s + 32 len ceil32(_154)]
        if ceil32(_154) <= _154:
            return 32, mem[mem[64] + 32 len ceil32(_154) + 32]
        mem[_154 + mem[64] + 64] = 0
        return memory
          from mem[64]
           len ceil32(_154) + _151 + -mem[64] + 64
    s = 0
    idx = t
    while idx:
        if s == -1:
            revert with 0, 17
        s = s + 1
        idx = idx / 10
        continue 
    if s > test266151307():
        revert with 0, 65
    _150 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        u = s
        idx = t
        while idx:
            if u < 1:
                revert with 0, 17
            if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if idx < 10 * idx / 10:
                revert with 0, 17
            if 48 > -uint8(idx - (10 * idx / 10)) + 255:
                revert with 0, 17
            if u - 1 >= mem[_150]:
                revert with 0, 50
            mem[u + _150 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
            u = u - 1
            idx = idx / 10
            continue 
        _264 = mem[64]
        mem[64] = mem[64] + 64
        mem[_264] = 1
        mem[_264 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
        idx = 1
        s = _150
        v = t
        v = _57
        while idx < _56:
            if idx >= mem[96]:
                revert with 0, 50
            _371 = mem[(32 * idx) + 128]
            if 0 >= mem[96]:
                revert with 0, 50
            t = mem[mem[128] + 64]
            v = 0
            w = 0
            while t <= sub_72333db7:
                mem[0] = t
                mem[32] = 1
                if block.number <= epochs[t].field_256:
                    if t == -1:
                        revert with 0, 17
                    t = t + 1
                    v = v
                    w = w
                    continue 
                mem[0] = t
                mem[32] = 1
                if w > !epochs[t].field_0:
                    revert with 0, 17
                if t == -1:
                    revert with 0, 17
                t = t + 1
                v = t
                w = w + epochs[t].field_0
                continue 
            if not w:
                _527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_527] = 1
                mem[_527 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
                _531 = mem[64]
                _533 = mem[s]
                t = 0
                while t < _533:
                    mem[t + _531 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_533) <= _533:
                    _643 = mem[_264]
                    s = 0
                    while s < _643:
                        mem[s + _531 + _533 + 32] = mem[s + _264 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_643) <= _643:
                        _841 = mem[_527]
                        s = 0
                        while s < _841:
                            mem[s + _531 + _533 + _643 + 32] = mem[s + _527 + 32]
                            s = s + 32
                            continue 
                        if ceil32(_841) <= _841:
                            _1023 = mem[64]
                            mem[mem[64]] = _841 + _531 + _533 + _643 - mem[64]
                            mem[64] = _841 + _531 + _533 + _643 + 32
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = _1023
                            v = w
                            v = _371
                            continue 
                        mem[_841 + _531 + _533 + _643 + 32] = 0
                        _1024 = mem[64]
                        mem[mem[64]] = _841 + _531 + _533 + _643 - mem[64]
                        mem[64] = _841 + _531 + _533 + _643 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1024
                        v = w
                        v = _371
                        continue 
                    mem[_643 + _531 + _533 + 32] = 0
                    _842 = mem[_527]
                    s = 0
                    while s < _842:
                        mem[s + _531 + _533 + _643 + 32] = mem[s + _527 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_842) <= _842:
                        _1025 = mem[64]
                        mem[mem[64]] = _842 + _531 + _533 + _643 - mem[64]
                        mem[64] = _842 + _531 + _533 + _643 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1025
                        v = w
                        v = _371
                        continue 
                    mem[_842 + _531 + _533 + _643 + 32] = 0
                    _1026 = mem[64]
                    mem[mem[64]] = _842 + _531 + _533 + _643 - mem[64]
                    mem[64] = _842 + _531 + _533 + _643 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1026
                    v = w
                    v = _371
                    continue 
                mem[_533 + _531 + 32] = 0
                _644 = mem[_264]
                s = 0
                while s < _644:
                    mem[s + _531 + _533 + 32] = mem[s + _264 + 32]
                    s = s + 32
                    continue 
                if ceil32(_644) <= _644:
                    _843 = mem[_527]
                    s = 0
                    while s < _843:
                        mem[s + _531 + _533 + _644 + 32] = mem[s + _527 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_843) <= _843:
                        _1027 = mem[64]
                        mem[mem[64]] = _843 + _531 + _533 + _644 - mem[64]
                        mem[64] = _843 + _531 + _533 + _644 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1027
                        v = w
                        v = _371
                        continue 
                    mem[_843 + _531 + _533 + _644 + 32] = 0
                    _1028 = mem[64]
                    mem[mem[64]] = _843 + _531 + _533 + _644 - mem[64]
                    mem[64] = _843 + _531 + _533 + _644 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1028
                    v = w
                    v = _371
                    continue 
                mem[_644 + _531 + _533 + 32] = 0
                _844 = mem[_527]
                s = 0
                while s < _844:
                    mem[s + _531 + _533 + _644 + 32] = mem[s + _527 + 32]
                    s = s + 32
                    continue 
                if ceil32(_844) <= _844:
                    _1029 = mem[64]
                    mem[mem[64]] = _844 + _531 + _533 + _644 - mem[64]
                    mem[64] = _844 + _531 + _533 + _644 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1029
                    v = w
                    v = _371
                    continue 
                mem[_844 + _531 + _533 + _644 + 32] = 0
                _1030 = mem[64]
                mem[mem[64]] = _844 + _531 + _533 + _644 - mem[64]
                mem[64] = _844 + _531 + _533 + _644 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1030
                v = w
                v = _371
                continue 
            u = 0
            t = w
            while t:
                if u == -1:
                    revert with 0, 17
                u = u + 1
                t = t / 10
                continue 
            if u > test266151307():
                revert with 0, 65
            _641 = mem[64]
            mem[mem[64]] = u
            mem[64] = mem[64] + ceil32(u) + 32
            if not u:
                v = u
                t = w
                while t:
                    if v < 1:
                        revert with 0, 17
                    if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                        revert with 0, 17
                    if t < 10 * t / 10:
                        revert with 0, 17
                    if 48 > -uint8(t - (10 * t / 10)) + 255:
                        revert with 0, 17
                    if v - 1 >= mem[_641]:
                        revert with 0, 50
                    mem[v + _641 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                    v = v - 1
                    t = t / 10
                    continue 
                _835 = mem[64]
                _839 = mem[s]
                t = 0
                while t < _839:
                    mem[t + _835 + 32] = mem[t + s + 32]
                    t = t + 32
                    continue 
                if ceil32(_839) <= _839:
                    _1015 = mem[_264]
                    s = 0
                    while s < _1015:
                        mem[s + _835 + _839 + 32] = mem[s + _264 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1015) <= _1015:
                        _1135 = mem[_641]
                        idx = 0
                        while idx < _1135:
                            mem[idx + _835 + _839 + _1015 + 32] = mem[idx + _641 + 32]
                            idx = idx + 32
                            continue 
                        if ceil32(_1135) <= _1135:
                            _1215 = mem[64]
                            mem[mem[64]] = _1135 + _835 + _839 + _1015 - mem[64]
                            mem[64] = _1135 + _835 + _839 + _1015 + 32
                            if ceil32(_1015) == -1:
                                revert with 0, 17
                            s = ceil32(_1015) + 1
                            s = _1215
                            v = w
                            v = _371
                            continue 
                        mem[_1135 + _835 + _839 + _1015 + 32] = 0
                        _1216 = mem[64]
                        mem[mem[64]] = _1135 + _835 + _839 + _1015 - mem[64]
                        mem[64] = _1135 + _835 + _839 + _1015 + 32
                        if ceil32(_1015) == -1:
                            revert with 0, 17
                        s = ceil32(_1015) + 1
                        s = _1216
                        v = w
                        v = _371
                        continue 
                    mem[_1015 + _835 + _839 + 32] = 0
                    _1136 = mem[_641]
                    idx = 0
                    while idx < _1136:
                        mem[idx + _835 + _839 + _1015 + 32] = mem[idx + _641 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1136) <= _1136:
                        _1217 = mem[64]
                        mem[mem[64]] = _1136 + _835 + _839 + _1015 - mem[64]
                        mem[64] = _1136 + _835 + _839 + _1015 + 32
                        if ceil32(_1015) == -1:
                            revert with 0, 17
                        s = ceil32(_1015) + 1
                        s = _1217
                        v = w
                        v = _371
                        continue 
                    mem[_1136 + _835 + _839 + _1015 + 32] = 0
                    _1218 = mem[64]
                    mem[mem[64]] = _1136 + _835 + _839 + _1015 - mem[64]
                    mem[64] = _1136 + _835 + _839 + _1015 + 32
                    if ceil32(_1015) == -1:
                        revert with 0, 17
                    s = ceil32(_1015) + 1
                    s = _1218
                    v = w
                    v = _371
                    continue 
                mem[_839 + _835 + 32] = 0
                _1016 = mem[_264]
                s = 0
                while s < _1016:
                    mem[s + _835 + _839 + 32] = mem[s + _264 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1016) <= _1016:
                    _1137 = mem[_641]
                    idx = 0
                    while idx < _1137:
                        mem[idx + _835 + _839 + _1016 + 32] = mem[idx + _641 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1137) <= _1137:
                        _1219 = mem[64]
                        mem[mem[64]] = _1137 + _835 + _839 + _1016 - mem[64]
                        mem[64] = _1137 + _835 + _839 + _1016 + 32
                        if ceil32(_1016) == -1:
                            revert with 0, 17
                        s = ceil32(_1016) + 1
                        s = _1219
                        v = w
                        v = _371
                        continue 
                    mem[_1137 + _835 + _839 + _1016 + 32] = 0
                    _1220 = mem[64]
                    mem[mem[64]] = _1137 + _835 + _839 + _1016 - mem[64]
                    mem[64] = _1137 + _835 + _839 + _1016 + 32
                    if ceil32(_1016) == -1:
                        revert with 0, 17
                    s = ceil32(_1016) + 1
                    s = _1220
                    v = w
                    v = _371
                    continue 
                mem[_1016 + _835 + _839 + 32] = 0
                _1138 = mem[_641]
                idx = 0
                while idx < _1138:
                    mem[idx + _835 + _839 + _1016 + 32] = mem[idx + _641 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1138) <= _1138:
                    _1221 = mem[64]
                    mem[mem[64]] = _1138 + _835 + _839 + _1016 - mem[64]
                    mem[64] = _1138 + _835 + _839 + _1016 + 32
                    if ceil32(_1016) == -1:
                        revert with 0, 17
                    s = ceil32(_1016) + 1
                    s = _1221
                    v = w
                    v = _371
                    continue 
                mem[_1138 + _835 + _839 + _1016 + 32] = 0
                _1222 = mem[64]
                mem[mem[64]] = _1138 + _835 + _839 + _1016 - mem[64]
                mem[64] = _1138 + _835 + _839 + _1016 + 32
                if ceil32(_1016) == -1:
                    revert with 0, 17
                s = ceil32(_1016) + 1
                s = _1222
                v = w
                v = _371
                continue 
            mem[_641 + 32 len u] = call.data[calldata.size len u]
            v = u
            t = w
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_641]:
                    revert with 0, 50
                mem[v + _641 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _836 = mem[64]
            _840 = mem[s]
            t = 0
            while t < _840:
                mem[t + _836 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_840) <= _840:
                _1017 = mem[_264]
                s = 0
                while s < _1017:
                    mem[s + _836 + _840 + 32] = mem[s + _264 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1017) <= _1017:
                    _1139 = mem[_641]
                    s = 0
                    while s < _1139:
                        mem[s + _836 + _840 + _1017 + 32] = mem[s + _641 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_1139) <= _1139:
                        _1223 = mem[64]
                        mem[mem[64]] = _1139 + _836 + _840 + _1017 - mem[64]
                        mem[64] = _1139 + _836 + _840 + _1017 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1223
                        v = w
                        v = _371
                        continue 
                    mem[_1139 + _836 + _840 + _1017 + 32] = 0
                    _1224 = mem[64]
                    mem[mem[64]] = _1139 + _836 + _840 + _1017 - mem[64]
                    mem[64] = _1139 + _836 + _840 + _1017 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1224
                    v = w
                    v = _371
                    continue 
                mem[_1017 + _836 + _840 + 32] = 0
                _1140 = mem[_641]
                s = 0
                while s < _1140:
                    mem[s + _836 + _840 + _1017 + 32] = mem[s + _641 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1140) <= _1140:
                    _1225 = mem[64]
                    mem[mem[64]] = _1140 + _836 + _840 + _1017 - mem[64]
                    mem[64] = _1140 + _836 + _840 + _1017 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1225
                    v = w
                    v = _371
                    continue 
                mem[_1140 + _836 + _840 + _1017 + 32] = 0
                _1226 = mem[64]
                mem[mem[64]] = _1140 + _836 + _840 + _1017 - mem[64]
                mem[64] = _1140 + _836 + _840 + _1017 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1226
                v = w
                v = _371
                continue 
            mem[_840 + _836 + 32] = 0
            _1018 = mem[_264]
            s = 0
            while s < _1018:
                mem[s + _836 + _840 + 32] = mem[s + _264 + 32]
                s = s + 32
                continue 
            if ceil32(_1018) <= _1018:
                _1141 = mem[_641]
                s = 0
                while s < _1141:
                    mem[s + _836 + _840 + _1018 + 32] = mem[s + _641 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1141) <= _1141:
                    _1227 = mem[64]
                    mem[mem[64]] = _1141 + _836 + _840 + _1018 - mem[64]
                    mem[64] = _1141 + _836 + _840 + _1018 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1227
                    v = w
                    v = _371
                    continue 
                mem[_1141 + _836 + _840 + _1018 + 32] = 0
                _1228 = mem[64]
                mem[mem[64]] = _1141 + _836 + _840 + _1018 - mem[64]
                mem[64] = _1141 + _836 + _840 + _1018 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1228
                v = w
                v = _371
                continue 
            mem[_1018 + _836 + _840 + 32] = 0
            _1142 = mem[_641]
            s = 0
            while s < _1142:
                mem[s + _836 + _840 + _1018 + 32] = mem[s + _641 + 32]
                s = s + 32
                continue 
            if ceil32(_1142) <= _1142:
                _1229 = mem[64]
                mem[mem[64]] = _1142 + _836 + _840 + _1018 - mem[64]
                mem[64] = _1142 + _836 + _840 + _1018 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1229
                v = w
                v = _371
                continue 
            mem[_1142 + _836 + _840 + _1018 + 32] = 0
            _1230 = mem[64]
            mem[mem[64]] = _1142 + _836 + _840 + _1018 - mem[64]
            mem[64] = _1142 + _836 + _840 + _1018 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1230
            v = w
            v = _371
            continue 
        mem[mem[64]] = 32
        _377 = mem[s]
        mem[mem[64] + 32] = mem[s]
        mem[mem[64] + 64 len ceil32(_377)] = mem[s + 32 len ceil32(_377)]
        if ceil32(_377) > _377:
            mem[_377 + mem[64] + 64] = 0
        return 32, mem[mem[64] + 32 len ceil32(_377) + 32]
    mem[_150 + 32 len s] = call.data[calldata.size len s]
    u = s
    idx = t
    while idx:
        if u < 1:
            revert with 0, 17
        if idx / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
            revert with 0, 17
        if idx < 10 * idx / 10:
            revert with 0, 17
        if 48 > -uint8(idx - (10 * idx / 10)) + 255:
            revert with 0, 17
        if u - 1 >= mem[_150]:
            revert with 0, 50
        mem[u + _150 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 0), ('mul', -10, ('div', ('var', 0), 10)))))), 0) - 256
        u = u - 1
        idx = idx / 10
        continue 
    _265 = mem[64]
    mem[64] = mem[64] + 64
    mem[_265] = 1
    mem[_265 + 32] = 0x2300000000000000000000000000000000000000000000000000000000000000
    idx = 1
    s = _150
    v = t
    v = _57
    while idx < _56:
        if idx >= mem[96]:
            revert with 0, 50
        _374 = mem[(32 * idx) + 128]
        if 0 >= mem[96]:
            revert with 0, 50
        t = mem[mem[128] + 64]
        v = 0
        w = 0
        while t <= sub_72333db7:
            mem[0] = t
            mem[32] = 1
            if block.number <= epochs[t].field_256:
                if t == -1:
                    revert with 0, 17
                t = t + 1
                v = v
                w = w
                continue 
            mem[0] = t
            mem[32] = 1
            if w > !epochs[t].field_0:
                revert with 0, 17
            if t == -1:
                revert with 0, 17
            t = t + 1
            v = t
            w = w + epochs[t].field_0
            continue 
        if not w:
            _530 = mem[64]
            mem[64] = mem[64] + 64
            mem[_530] = 1
            mem[_530 + 32] = 0x3000000000000000000000000000000000000000000000000000000000000000
            _532 = mem[64]
            _534 = mem[s]
            t = 0
            while t < _534:
                mem[t + _532 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_534) <= _534:
                _645 = mem[_265]
                s = 0
                while s < _645:
                    mem[s + _532 + _534 + 32] = mem[s + _265 + 32]
                    s = s + 32
                    continue 
                if ceil32(_645) <= _645:
                    _847 = mem[_530]
                    s = 0
                    while s < _847:
                        mem[s + _532 + _534 + _645 + 32] = mem[s + _530 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_847) <= _847:
                        _1031 = mem[64]
                        mem[mem[64]] = _847 + _532 + _534 + _645 - mem[64]
                        mem[64] = _847 + _532 + _534 + _645 + 32
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = _1031
                        v = w
                        v = _374
                        continue 
                    mem[_847 + _532 + _534 + _645 + 32] = 0
                    _1032 = mem[64]
                    mem[mem[64]] = _847 + _532 + _534 + _645 - mem[64]
                    mem[64] = _847 + _532 + _534 + _645 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1032
                    v = w
                    v = _374
                    continue 
                mem[_645 + _532 + _534 + 32] = 0
                _848 = mem[_530]
                s = 0
                while s < _848:
                    mem[s + _532 + _534 + _645 + 32] = mem[s + _530 + 32]
                    s = s + 32
                    continue 
                if ceil32(_848) <= _848:
                    _1033 = mem[64]
                    mem[mem[64]] = _848 + _532 + _534 + _645 - mem[64]
                    mem[64] = _848 + _532 + _534 + _645 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1033
                    v = w
                    v = _374
                    continue 
                mem[_848 + _532 + _534 + _645 + 32] = 0
                _1034 = mem[64]
                mem[mem[64]] = _848 + _532 + _534 + _645 - mem[64]
                mem[64] = _848 + _532 + _534 + _645 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1034
                v = w
                v = _374
                continue 
            mem[_534 + _532 + 32] = 0
            _646 = mem[_265]
            s = 0
            while s < _646:
                mem[s + _532 + _534 + 32] = mem[s + _265 + 32]
                s = s + 32
                continue 
            if ceil32(_646) <= _646:
                _849 = mem[_530]
                s = 0
                while s < _849:
                    mem[s + _532 + _534 + _646 + 32] = mem[s + _530 + 32]
                    s = s + 32
                    continue 
                if ceil32(_849) <= _849:
                    _1035 = mem[64]
                    mem[mem[64]] = _849 + _532 + _534 + _646 - mem[64]
                    mem[64] = _849 + _532 + _534 + _646 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1035
                    v = w
                    v = _374
                    continue 
                mem[_849 + _532 + _534 + _646 + 32] = 0
                _1036 = mem[64]
                mem[mem[64]] = _849 + _532 + _534 + _646 - mem[64]
                mem[64] = _849 + _532 + _534 + _646 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1036
                v = w
                v = _374
                continue 
            mem[_646 + _532 + _534 + 32] = 0
            _850 = mem[_530]
            s = 0
            while s < _850:
                mem[s + _532 + _534 + _646 + 32] = mem[s + _530 + 32]
                s = s + 32
                continue 
            if ceil32(_850) <= _850:
                _1037 = mem[64]
                mem[mem[64]] = _850 + _532 + _534 + _646 - mem[64]
                mem[64] = _850 + _532 + _534 + _646 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1037
                v = w
                v = _374
                continue 
            mem[_850 + _532 + _534 + _646 + 32] = 0
            _1038 = mem[64]
            mem[mem[64]] = _850 + _532 + _534 + _646 - mem[64]
            mem[64] = _850 + _532 + _534 + _646 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1038
            v = w
            v = _374
            continue 
        u = 0
        t = w
        while t:
            if u == -1:
                revert with 0, 17
            u = u + 1
            t = t / 10
            continue 
        if u > test266151307():
            revert with 0, 65
        _642 = mem[64]
        mem[mem[64]] = u
        mem[64] = mem[64] + ceil32(u) + 32
        if not u:
            v = u
            t = w
            while t:
                if v < 1:
                    revert with 0, 17
                if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                    revert with 0, 17
                if t < 10 * t / 10:
                    revert with 0, 17
                if 48 > -uint8(t - (10 * t / 10)) + 255:
                    revert with 0, 17
                if v - 1 >= mem[_642]:
                    revert with 0, 50
                mem[v + _642 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
                v = v - 1
                t = t / 10
                continue 
            _837 = mem[64]
            _845 = mem[s]
            t = 0
            while t < _845:
                mem[t + _837 + 32] = mem[t + s + 32]
                t = t + 32
                continue 
            if ceil32(_845) <= _845:
                _1019 = mem[_265]
                s = 0
                while s < _1019:
                    mem[s + _837 + _845 + 32] = mem[s + _265 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1019) <= _1019:
                    _1143 = mem[_642]
                    idx = 0
                    while idx < _1143:
                        mem[idx + _837 + _845 + _1019 + 32] = mem[idx + _642 + 32]
                        idx = idx + 32
                        continue 
                    if ceil32(_1143) <= _1143:
                        _1231 = mem[64]
                        mem[mem[64]] = _1143 + _837 + _845 + _1019 - mem[64]
                        mem[64] = _1143 + _837 + _845 + _1019 + 32
                        if ceil32(_1019) == -1:
                            revert with 0, 17
                        s = ceil32(_1019) + 1
                        s = _1231
                        v = w
                        v = _374
                        continue 
                    mem[_1143 + _837 + _845 + _1019 + 32] = 0
                    _1232 = mem[64]
                    mem[mem[64]] = _1143 + _837 + _845 + _1019 - mem[64]
                    mem[64] = _1143 + _837 + _845 + _1019 + 32
                    if ceil32(_1019) == -1:
                        revert with 0, 17
                    s = ceil32(_1019) + 1
                    s = _1232
                    v = w
                    v = _374
                    continue 
                mem[_1019 + _837 + _845 + 32] = 0
                _1144 = mem[_642]
                idx = 0
                while idx < _1144:
                    mem[idx + _837 + _845 + _1019 + 32] = mem[idx + _642 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1144) <= _1144:
                    _1233 = mem[64]
                    mem[mem[64]] = _1144 + _837 + _845 + _1019 - mem[64]
                    mem[64] = _1144 + _837 + _845 + _1019 + 32
                    if ceil32(_1019) == -1:
                        revert with 0, 17
                    s = ceil32(_1019) + 1
                    s = _1233
                    v = w
                    v = _374
                    continue 
                mem[_1144 + _837 + _845 + _1019 + 32] = 0
                _1234 = mem[64]
                mem[mem[64]] = _1144 + _837 + _845 + _1019 - mem[64]
                mem[64] = _1144 + _837 + _845 + _1019 + 32
                if ceil32(_1019) == -1:
                    revert with 0, 17
                s = ceil32(_1019) + 1
                s = _1234
                v = w
                v = _374
                continue 
            mem[_845 + _837 + 32] = 0
            _1020 = mem[_265]
            s = 0
            while s < _1020:
                mem[s + _837 + _845 + 32] = mem[s + _265 + 32]
                s = s + 32
                continue 
            if ceil32(_1020) <= _1020:
                _1145 = mem[_642]
                idx = 0
                while idx < _1145:
                    mem[idx + _837 + _845 + _1020 + 32] = mem[idx + _642 + 32]
                    idx = idx + 32
                    continue 
                if ceil32(_1145) <= _1145:
                    _1235 = mem[64]
                    mem[mem[64]] = _1145 + _837 + _845 + _1020 - mem[64]
                    mem[64] = _1145 + _837 + _845 + _1020 + 32
                    if ceil32(_1020) == -1:
                        revert with 0, 17
                    s = ceil32(_1020) + 1
                    s = _1235
                    v = w
                    v = _374
                    continue 
                mem[_1145 + _837 + _845 + _1020 + 32] = 0
                _1236 = mem[64]
                mem[mem[64]] = _1145 + _837 + _845 + _1020 - mem[64]
                mem[64] = _1145 + _837 + _845 + _1020 + 32
                if ceil32(_1020) == -1:
                    revert with 0, 17
                s = ceil32(_1020) + 1
                s = _1236
                v = w
                v = _374
                continue 
            mem[_1020 + _837 + _845 + 32] = 0
            _1146 = mem[_642]
            idx = 0
            while idx < _1146:
                mem[idx + _837 + _845 + _1020 + 32] = mem[idx + _642 + 32]
                idx = idx + 32
                continue 
            if ceil32(_1146) <= _1146:
                _1237 = mem[64]
                mem[mem[64]] = _1146 + _837 + _845 + _1020 - mem[64]
                mem[64] = _1146 + _837 + _845 + _1020 + 32
                if ceil32(_1020) == -1:
                    revert with 0, 17
                s = ceil32(_1020) + 1
                s = _1237
                v = w
                v = _374
                continue 
            mem[_1146 + _837 + _845 + _1020 + 32] = 0
            _1238 = mem[64]
            mem[mem[64]] = _1146 + _837 + _845 + _1020 - mem[64]
            mem[64] = _1146 + _837 + _845 + _1020 + 32
            if ceil32(_1020) == -1:
                revert with 0, 17
            s = ceil32(_1020) + 1
            s = _1238
            v = w
            v = _374
            continue 
        mem[_642 + 32 len u] = call.data[calldata.size len u]
        v = u
        t = w
        while t:
            if v < 1:
                revert with 0, 17
            if t / 10 > 0x1999999999999999999999999999999999999999999999999999999999999999:
                revert with 0, 17
            if t < 10 * t / 10:
                revert with 0, 17
            if 48 > -uint8(t - (10 * t / 10)) + 255:
                revert with 0, 17
            if v - 1 >= mem[_642]:
                revert with 0, 50
            mem[v + _642 + 31 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 8, 0, 0, ('add', ('var', 2), ('mul', -10, ('div', ('var', 2), 10)))))), 0) - 256
            v = v - 1
            t = t / 10
            continue 
        _838 = mem[64]
        _846 = mem[s]
        t = 0
        while t < _846:
            mem[t + _838 + 32] = mem[t + s + 32]
            t = t + 32
            continue 
        if ceil32(_846) <= _846:
            _1021 = mem[_265]
            s = 0
            while s < _1021:
                mem[s + _838 + _846 + 32] = mem[s + _265 + 32]
                s = s + 32
                continue 
            if ceil32(_1021) <= _1021:
                _1147 = mem[_642]
                s = 0
                while s < _1147:
                    mem[s + _838 + _846 + _1021 + 32] = mem[s + _642 + 32]
                    s = s + 32
                    continue 
                if ceil32(_1147) <= _1147:
                    _1239 = mem[64]
                    mem[mem[64]] = _1147 + _838 + _846 + _1021 - mem[64]
                    mem[64] = _1147 + _838 + _846 + _1021 + 32
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = _1239
                    v = w
                    v = _374
                    continue 
                mem[_1147 + _838 + _846 + _1021 + 32] = 0
                _1240 = mem[64]
                mem[mem[64]] = _1147 + _838 + _846 + _1021 - mem[64]
                mem[64] = _1147 + _838 + _846 + _1021 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1240
                v = w
                v = _374
                continue 
            mem[_1021 + _838 + _846 + 32] = 0
            _1148 = mem[_642]
            s = 0
            while s < _1148:
                mem[s + _838 + _846 + _1021 + 32] = mem[s + _642 + 32]
                s = s + 32
                continue 
            if ceil32(_1148) <= _1148:
                _1241 = mem[64]
                mem[mem[64]] = _1148 + _838 + _846 + _1021 - mem[64]
                mem[64] = _1148 + _838 + _846 + _1021 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1241
                v = w
                v = _374
                continue 
            mem[_1148 + _838 + _846 + _1021 + 32] = 0
            _1242 = mem[64]
            mem[mem[64]] = _1148 + _838 + _846 + _1021 - mem[64]
            mem[64] = _1148 + _838 + _846 + _1021 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1242
            v = w
            v = _374
            continue 
        mem[_846 + _838 + 32] = 0
        _1022 = mem[_265]
        s = 0
        while s < _1022:
            mem[s + _838 + _846 + 32] = mem[s + _265 + 32]
            s = s + 32
            continue 
        if ceil32(_1022) <= _1022:
            _1149 = mem[_642]
            s = 0
            while s < _1149:
                mem[s + _838 + _846 + _1022 + 32] = mem[s + _642 + 32]
                s = s + 32
                continue 
            if ceil32(_1149) <= _1149:
                _1243 = mem[64]
                mem[mem[64]] = _1149 + _838 + _846 + _1022 - mem[64]
                mem[64] = _1149 + _838 + _846 + _1022 + 32
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = _1243
                v = w
                v = _374
                continue 
            mem[_1149 + _838 + _846 + _1022 + 32] = 0
            _1244 = mem[64]
            mem[mem[64]] = _1149 + _838 + _846 + _1022 - mem[64]
            mem[64] = _1149 + _838 + _846 + _1022 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1244
            v = w
            v = _374
            continue 
        mem[_1022 + _838 + _846 + 32] = 0
        _1150 = mem[_642]
        s = 0
        while s < _1150:
            mem[s + _838 + _846 + _1022 + 32] = mem[s + _642 + 32]
            s = s + 32
            continue 
        if ceil32(_1150) <= _1150:
            _1245 = mem[64]
            mem[mem[64]] = _1150 + _838 + _846 + _1022 - mem[64]
            mem[64] = _1150 + _838 + _846 + _1022 + 32
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = _1245
            v = w
            v = _374
            continue 
        mem[_1150 + _838 + _846 + _1022 + 32] = 0
        _1246 = mem[64]
        mem[mem[64]] = _1150 + _838 + _846 + _1022 - mem[64]
        mem[64] = _1150 + _838 + _846 + _1022 + 32
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = _1246
        v = w
        v = _374
        continue 
    _373 = mem[64]
    mem[mem[64]] = 32
    _380 = mem[s]
    mem[mem[64] + 32] = mem[s]
    mem[mem[64] + 64 len ceil32(_380)] = mem[s + 32 len ceil32(_380)]
    if ceil32(_380) <= _380:
        return 32, mem[mem[64] + 32 len ceil32(_380) + 32]
    mem[_380 + mem[64] + 64] = 0
    return memory
      from mem[64]
       len ceil32(_380) + _373 + -mem[64] + 64
}



}
