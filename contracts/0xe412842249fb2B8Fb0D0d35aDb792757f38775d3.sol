contract main {




// =====================  Runtime code  =====================


const decimals = 18


mapping of uint256 nodeNumberOf;
mapping of struct epochs;
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
uint8 sub_1732cded;
address MIMAddress; offset 16
address liquidityManagerAddress;
address paymentSplitterAddress;
address owner;
mapping of uint8 stor21;
mapping of uint256 sub_f6f27ba4;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor26;
array of struct stor27;
uint8 sub_95148e9f;

function sub_02612634(?) payable {
    return bool(uint8(stor6.field_8))
}

function uniswapV2Router() payable {
    return uniswapV2RouterAddress
}

function sub_1732cded(?) payable {
    return bool(sub_1732cded)
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

function sub_95148e9f(?) payable {
    return bool(sub_95148e9f)
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
    require arg1 == arg1
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
    return nodeNumberOf[address(arg1)]
}

function isBlacklisted(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor21[arg1])
}

function init() payable {
  stop
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setPaused(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor6.field_0) = uint8(arg1)
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
    require arg2 == arg2
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
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function getRewardAmountOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = arg1
    idx = 0
    while idx < nodeNumberOf[address(arg1)]:
        mem[0] = sha3(address(arg1), 0)
        s = stor[(4 * idx) + sha3(mem[0]) + 2]
        t = 0
        u = 0
        while s <= sub_72333db7:
            mem[0] = s
            mem[32] = 1
            if block.number <= epochs[s].field_256:
                if s == -1:
                    revert with 'NH{q', 17
                s = s + 1
                t = t
                u = u
                continue 
            mem[0] = s
            mem[32] = 1
            if u > -epochs[s].field_0 - 1:
                revert with 'NH{q', 17
            if s == -1:
                revert with 'NH{q', 17
            s = s + 1
            t = s
            u = u + epochs[s].field_0
            continue 
        if 0 > -u - 1:
            revert with 'NH{q', 17
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    return 0
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if uint8(stor6.field_0):
        revert with 0, 'token transfers are paused'
    if bool(uint8(stor6.field_8)) == 1:
        if msg.sender == uniswapV2PairAddress:
            stor21[address(arg1)] = 1
    if sub_95148e9f:
        if msg.sender == uniswapV2PairAddress:
            require msg.sender == owner
        else:
            if arg1 == uniswapV2PairAddress:
                require msg.sender == owner
    if balanceOf[address(msg.sender)] < arg2:
        revert with 'NH{q', 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if uint8(stor6.field_0):
        revert with 0, 'token transfers are paused'
    if bool(uint8(stor6.field_8)) == 1:
        if arg1 == uniswapV2PairAddress:
            stor21[address(arg2)] = 1
    if sub_95148e9f:
        if arg1 == uniswapV2PairAddress:
            require arg1 == owner
        else:
            if arg2 == uniswapV2PairAddress:
                require arg1 == owner
    if balanceOf[address(arg1)] < arg3:
        revert with 'NH{q', 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] > -arg3 - 1:
        revert with 'NH{q', 17
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 'NH{q', 17
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function name() payable {
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor26.length):
            if bool(stor26.length) == uint255(stor26.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor26.length.field_1):
                if 31 < uint255(stor26.length.field_1):
                    mem[128] = uint256(stor26.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor26.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor26[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor26.length.field_1)), data=mem[128 len ceil32(uint255(stor26.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor26.length.field_8)
        else:
            if bool(stor26.length) == stor26.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor26.length.field_1)), data=mem[128 len ceil32(uint255(stor26.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor26.length.field_8)
        mem[ceil32(uint255(stor26.length.field_1)) + 192 len ceil32(uint255(stor26.length.field_1))] = mem[128 len ceil32(uint255(stor26.length.field_1))]
        if ceil32(uint255(stor26.length.field_1)) > uint255(stor26.length.field_1):
            mem[ceil32(uint255(stor26.length.field_1)) + uint255(stor26.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor26.length.field_1)), data=mem[128 len ceil32(uint255(stor26.length.field_1))], mem[(2 * ceil32(uint255(stor26.length.field_1))) + 192 len 2 * ceil32(uint255(stor26.length.field_1))]), 
    if bool(stor26.length) == stor26.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor26.length):
        if bool(stor26.length) == uint255(stor26.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor26.length.field_1):
            if 31 < uint255(stor26.length.field_1):
                mem[128] = uint256(stor26.field_0)
                idx = 128
                s = 0
                while uint255(stor26.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor26[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor26.length.field_8)
    else:
        if bool(stor26.length) == stor26.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor26.length.field_1 % 128) + stor26.length.field_1 % 128 + 192] = 0
    return Array(len=stor26.length % 128, data=mem[128 len ceil32(stor26.length.field_1 % 128)], mem[(2 * ceil32(stor26.length.field_1 % 128)) + 192 len 2 * ceil32(stor26.length.field_1 % 128)]), 
}

function symbol() payable {
    if bool(stor27.length):
        if bool(stor27.length) == uint255(stor27.length.field_1) < 32:
            revert with 'NH{q', 34
        if bool(stor27.length):
            if bool(stor27.length) == uint255(stor27.length.field_1) < 32:
                revert with 'NH{q', 34
            if uint255(stor27.length.field_1):
                if 31 < uint255(stor27.length.field_1):
                    mem[128] = uint256(stor27.field_0)
                    idx = 128
                    s = 0
                    while uint255(stor27.length.field_1) + 96 > idx:
                        mem[idx + 32] = stor27[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, uint255(stor27.length.field_1)), data=mem[128 len ceil32(uint255(stor27.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor27.length.field_8)
        else:
            if bool(stor27.length) == stor27.length.field_1 % 128 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, uint255(stor27.length.field_1)), data=mem[128 len ceil32(uint255(stor27.length.field_1))])
                mem[128] = 256 * Mask(248, 0, stor27.length.field_8)
        mem[ceil32(uint255(stor27.length.field_1)) + 192 len ceil32(uint255(stor27.length.field_1))] = mem[128 len ceil32(uint255(stor27.length.field_1))]
        if ceil32(uint255(stor27.length.field_1)) > uint255(stor27.length.field_1):
            mem[ceil32(uint255(stor27.length.field_1)) + uint255(stor27.length.field_1) + 192] = 0
        return Array(len=2 * Mask(256, -1, uint255(stor27.length.field_1)), data=mem[128 len ceil32(uint255(stor27.length.field_1))], mem[(2 * ceil32(uint255(stor27.length.field_1))) + 192 len 2 * ceil32(uint255(stor27.length.field_1))]), 
    if bool(stor27.length) == stor27.length.field_1 % 128 < 32:
        revert with 'NH{q', 34
    if bool(stor27.length):
        if bool(stor27.length) == uint255(stor27.length.field_1) < 32:
            revert with 'NH{q', 34
        if uint255(stor27.length.field_1):
            if 31 < uint255(stor27.length.field_1):
                mem[128] = uint256(stor27.field_0)
                idx = 128
                s = 0
                while uint255(stor27.length.field_1) + 96 > idx:
                    mem[idx + 32] = stor27[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor27.length % 128, data=mem[128 len ceil32(stor27.length.field_1 % 128)])
            mem[128] = 256 * Mask(248, 0, stor27.length.field_8)
    else:
        if bool(stor27.length) == stor27.length.field_1 % 128 < 32:
            revert with 'NH{q', 34
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
        mem[ceil32(stor27.length.field_1 % 128) + stor27.length.field_1 % 128 + 192] = 0
    return Array(len=stor27.length % 128, data=mem[128 len ceil32(stor27.length.field_1 % 128)], mem[(2 * ceil32(stor27.length.field_1 % 128)) + 192 len 2 * ceil32(stor27.length.field_1 % 128)]), 
}



}
