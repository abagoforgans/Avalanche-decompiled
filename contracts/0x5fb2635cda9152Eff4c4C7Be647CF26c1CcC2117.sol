contract main {




// =====================  Runtime code  =====================


#
#  - initialize()
#  - delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#
const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const MAX_SUPPLY = 200000000 * 10^18

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor104;
array of struct stor105;
uint8 decimals;
address owner;
uint8 doOnce;
address sub_964bca5fAddress; offset 8
address sub_b2ce514bAddress;
address investTokenAddress;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function doOnce() payable {
    return bool(doOnce)
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[address(arg1)]
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

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return nonces[arg1]
}

function owner() payable {
    return owner
}

function sub_964bca5f(?) payable {
    return sub_964bca5fAddress
}

function sub_b2ce514b(?) payable {
    return sub_b2ce514bAddress
}

function investToken() payable {
    return investTokenAddress
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
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

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not numCheckpoints[address(arg1)]:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 0, 17
    return checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256
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
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, code.data[11185 len 37], mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, code.data[11050 len 38], mem[166 len 26] >> 48, 0
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 17
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[arg1] > !arg2:
        revert with 0, 17
    if balanceOf[arg1] + arg2 < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = balanceOf[arg1] + arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, code.data[11050 len 38], mem[166 len 26] >> 48, 0
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg3
    if balanceOf[arg2] > !arg3:
        revert with 0, 17
    if balanceOf[arg2] + arg3 < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = balanceOf[arg2] + arg3
    emit Transfer(arg3, arg1, arg2);
    if arg3 > allowance[address(arg1)][msg.sender]:
        revert with 0, 32, 40, code.data[11088 len 40], mem[264 len 24] >> 64, 0
    if allowance[address(arg1)][msg.sender] < arg3:
        revert with 0, 17
    if not arg1:
        revert with 0, 'ERC20: approve from the zero address'
    if not msg.sender:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(arg1)][address(msg.sender)] = allowance[address(arg1)][msg.sender] - arg3
    emit Approval((allowance[address(arg1)][msg.sender] - arg3), arg1, msg.sender);
    return 1
}

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FarmToken::getPriorVotes: not yet determined'
    if not numCheckpoints[address(arg1)]:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 0, 17
    if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 <= arg2:
        if numCheckpoints[address(arg1)] < 1:
            revert with 0, 17
        return checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256
    if arg2 < checkpoints[address(arg1)][0].field_0:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 0, 17
    idx = 0
    while uint32(numCheckpoints[address(arg1)] - 1) > uint32(idx):
        if uint32(numCheckpoints[address(arg1)] - 1) < uint32(idx):
            revert with 0, 17
        if uint32(numCheckpoints[address(arg1)] - 1) < uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2:
            revert with 0, 17
        mem[0] = uint32(uint32(numCheckpoints[address(arg1)] - 1) - (uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2))
        mem[32] = sha3(address(arg1), 205)
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = checkpoints[address(arg1)][uint32(stor206[address(arg1)] - 1) - (uint32(uint32(stor206[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0
        mem[_33 + 32] = checkpoints[address(arg1)][uint32(stor206[address(arg1)] - 1) - (uint32(uint32(stor206[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_256
        if arg2 == checkpoints[address(arg1)][uint32(stor206[address(arg1)] - 1) - (uint32(uint32(stor206[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0:
            return checkpoints[address(arg1)][uint32(stor206[address(arg1)] - 1) - (uint32(uint32(stor206[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_256
        if arg2 > checkpoints[address(arg1)][uint32(stor206[address(arg1)] - 1) - (uint32(uint32(stor206[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0:
            idx = uint32(numCheckpoints[address(arg1)] - 1) - (uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2)
            continue 
        if uint32(uint32(numCheckpoints[address(arg1)] - 1) - (uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2)) < 1:
            revert with 0, 17
        idx = idx
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function name() payable {
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor104.length):
            if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor104.length):
                if 31 < uint255(stor104.length) * 0.5:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor104.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)])
                mem[128] = 256 * stor104.length.field_8
        else:
            if bool(stor104.length) == stor104.length.field_1 < 32:
                revert with 0, 34
            if stor104.length.field_1:
                if 31 < stor104.length.field_1:
                    mem[128] = uint256(stor104.field_0)
                    idx = 128
                    s = 0
                    while stor104.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor104[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)])
                mem[128] = 256 * stor104.length.field_8
        mem[ceil32(uint255(stor104.length) * 0.5) + 192 len ceil32(uint255(stor104.length) * 0.5)] = mem[128 len ceil32(uint255(stor104.length) * 0.5)]
        if ceil32(uint255(stor104.length) * 0.5) > uint255(stor104.length) * 0.5:
            mem[ceil32(uint255(stor104.length) * 0.5) + (uint255(stor104.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor104.length), data=mem[128 len ceil32(uint255(stor104.length) * 0.5)], mem[(2 * ceil32(uint255(stor104.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor104.length) * 0.5)]), 
    if bool(stor104.length) == stor104.length.field_1 < 32:
        revert with 0, 34
    if bool(stor104.length):
        if bool(stor104.length) == uint255(stor104.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor104.length):
            if 31 < uint255(stor104.length) * 0.5:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while (uint255(stor104.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    else:
        if bool(stor104.length) == stor104.length.field_1 < 32:
            revert with 0, 34
        if stor104.length.field_1:
            if 31 < stor104.length.field_1:
                mem[128] = uint256(stor104.field_0)
                idx = 128
                s = 0
                while stor104.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor104[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)])
            mem[128] = 256 * stor104.length.field_8
    mem[ceil32(stor104.length.field_1) + 192 len ceil32(stor104.length.field_1)] = mem[128 len ceil32(stor104.length.field_1)]
    if ceil32(stor104.length.field_1) > stor104.length.field_1:
        mem[ceil32(stor104.length.field_1) + stor104.length.field_1 + 192] = 0
    return Array(len=stor104.length % 128, data=mem[128 len ceil32(stor104.length.field_1)], mem[(2 * ceil32(stor104.length.field_1)) + 192 len 2 * ceil32(stor104.length.field_1)]), 
}

function symbol() payable {
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor105.length):
            if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor105.length):
                if 31 < uint255(stor105.length) * 0.5:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor105.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)])
                mem[128] = 256 * stor105.length.field_8
        else:
            if bool(stor105.length) == stor105.length.field_1 < 32:
                revert with 0, 34
            if stor105.length.field_1:
                if 31 < stor105.length.field_1:
                    mem[128] = uint256(stor105.field_0)
                    idx = 128
                    s = 0
                    while stor105.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor105[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)])
                mem[128] = 256 * stor105.length.field_8
        mem[ceil32(uint255(stor105.length) * 0.5) + 192 len ceil32(uint255(stor105.length) * 0.5)] = mem[128 len ceil32(uint255(stor105.length) * 0.5)]
        if ceil32(uint255(stor105.length) * 0.5) > uint255(stor105.length) * 0.5:
            mem[ceil32(uint255(stor105.length) * 0.5) + (uint255(stor105.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor105.length), data=mem[128 len ceil32(uint255(stor105.length) * 0.5)], mem[(2 * ceil32(uint255(stor105.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor105.length) * 0.5)]), 
    if bool(stor105.length) == stor105.length.field_1 < 32:
        revert with 0, 34
    if bool(stor105.length):
        if bool(stor105.length) == uint255(stor105.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor105.length):
            if 31 < uint255(stor105.length) * 0.5:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while (uint255(stor105.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    else:
        if bool(stor105.length) == stor105.length.field_1 < 32:
            revert with 0, 34
        if stor105.length.field_1:
            if 31 < stor105.length.field_1:
                mem[128] = uint256(stor105.field_0)
                idx = 128
                s = 0
                while stor105.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor105[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)])
            mem[128] = 256 * stor105.length.field_8
    mem[ceil32(stor105.length.field_1) + 192 len ceil32(stor105.length.field_1)] = mem[128 len ceil32(stor105.length.field_1)]
    if ceil32(stor105.length.field_1) > stor105.length.field_1:
        mem[ceil32(stor105.length.field_1) + stor105.length.field_1 + 192] = 0
    return Array(len=stor105.length % 128, data=mem[128 len ceil32(stor105.length.field_1)], mem[(2 * ceil32(stor105.length.field_1)) + 192 len 2 * ceil32(stor105.length.field_1)]), 
}

function sub_6331e9ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if doOnce:
        revert with 0, 'only can mint once'
    if not address(arg1):
        revert with 0, '!_address'
    doOnce = 1
    if totalSupply > 0xffffffffffffffffffffffffffffffffffffffffff9cbd02f70ff09c87ffffff:
        revert with 0, 17
    if totalSupply + 120000000 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 120000000 * 10^18
    if balanceOf[address(arg1)] > 0xffffffffffffffffffffffffffffffffffffffffff9cbd02f70ff09c87ffffff:
        revert with 0, 17
    if balanceOf[address(arg1)] + 120000000 * 10^18 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += 120000000 * 10^18
    emit Transfer(120000000 * 10^18, 0, address(arg1));
    if delegates[address(arg1)] != 0:
        if delegates[address(arg1)]:
            if not numCheckpoints[stor204[address(arg1)]]:
                if block.number >= 4294967296:
                    revert with 0, 32, 57, code.data[11128 len 57], mem[185 len 7] >> 200, 0
                if numCheckpoints[stor204[address(arg1)]] <= 0:
                    checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]]].field_0 = uint32(block.number)
                    checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]]].field_256 = 120000000 * 10^18
                    if 1 > -numCheckpoints[stor204[address(arg1)]] + test266151307():
                        revert with 0, 17
                    numCheckpoints[stor204[address(arg1)]] = uint32(numCheckpoints[stor204[address(arg1)]] + 1)
                else:
                    if numCheckpoints[stor204[address(arg1)]] < 1:
                        revert with 0, 17
                    if checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                        if numCheckpoints[stor204[address(arg1)]] < 1:
                            revert with 0, 17
                        checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]] - 1 << 224].field_256 = 120000000 * 10^18
                    else:
                        checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]]].field_256 = 120000000 * 10^18
                        if 1 > -numCheckpoints[stor204[address(arg1)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor204[address(arg1)]] = uint32(numCheckpoints[stor204[address(arg1)]] + 1)
                emit DelegateVotesChanged(0, 120000000 * 10^18, delegates[address(arg1)]);
            else:
                if numCheckpoints[stor204[address(arg1)]] < 1:
                    revert with 0, 17
                if checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]] - 1 << 224].field_256 > 0xffffffffffffffffffffffffffffffffffffffffff9cbd02f70ff09c87ffffff:
                    revert with 0, 17
                if block.number >= 4294967296:
                    revert with 0, 32, 57, code.data[11128 len 57], mem[185 len 7] >> 200, 0
                if numCheckpoints[stor204[address(arg1)]] <= 0:
                    checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]]].field_0 = uint32(block.number)
                    checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]]].field_256 = checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]] - 1 << 224].field_256 + 120000000 * 10^18
                    if 1 > -numCheckpoints[stor204[address(arg1)]] + test266151307():
                        revert with 0, 17
                    numCheckpoints[stor204[address(arg1)]] = uint32(numCheckpoints[stor204[address(arg1)]] + 1)
                else:
                    if numCheckpoints[stor204[address(arg1)]] < 1:
                        revert with 0, 17
                    if checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                        if numCheckpoints[stor204[address(arg1)]] < 1:
                            revert with 0, 17
                        checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]] - 1 << 224].field_256 += 120000000 * 10^18
                    else:
                        checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]]].field_256 = checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]] - 1 << 224].field_256 + 120000000 * 10^18
                        if 1 > -numCheckpoints[stor204[address(arg1)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor204[address(arg1)]] = uint32(numCheckpoints[stor204[address(arg1)]] + 1)
                emit DelegateVotesChanged(checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]] - 1 << 224].field_256, checkpoints[stor204[address(arg1)]][stor206[stor204[address(arg1)]] - 1 << 224].field_256 + 120000000 * 10^18, delegates[address(arg1)]);
}

function delegate(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    delegates[address(msg.sender)] = arg1
    emit DelegateChanged(msg.sender, delegates[address(msg.sender)], arg1);
    if delegates[address(msg.sender)] != arg1:
        if balanceOf[address(msg.sender)] > 0:
            if not delegates[address(msg.sender)]:
                if arg1:
                    if not numCheckpoints[address(arg1)]:
                        if 0 > !balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 32, 57, code.data[11128 len 57], mem[185 len 7] >> 200, 0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 0, 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[address(arg1)] < 1:
                            revert with 0, 17
                        if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 32, 57, code.data[11128 len 57], mem[185 len 7] >> 200, 0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 0, 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
            else:
                if not numCheckpoints[stor204[address(msg.sender)]]:
                    if 0 < balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 32, 57, code.data[11128 len 57], mem[185 len 7] >> 200, 0
                    if numCheckpoints[stor204[address(msg.sender)]] <= 0:
                        checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        if 1 > -numCheckpoints[stor204[address(msg.sender)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor204[address(msg.sender)]] = uint32(numCheckpoints[stor204[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)]:
                                if 0 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 32, 57, code.data[11128 len 57], mem[345 len 7] >> 200, 0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 32, 57, code.data[11128 len 57], mem[345 len 7] >> 200, 0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[stor204[address(msg.sender)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor204[address(msg.sender)]] < 1:
                                revert with 0, 17
                            checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11128 len 57], mem[281 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11128 len 57], mem[281 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[stor204[address(msg.sender)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor204[address(msg.sender)]] = uint32(numCheckpoints[stor204[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11128 len 57], mem[345 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11128 len 57], mem[345 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                else:
                    if numCheckpoints[stor204[address(msg.sender)]] < 1:
                        revert with 0, 17
                    if checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]] - 1 << 224].field_256 < balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 32, 57, code.data[11128 len 57], mem[185 len 7] >> 200, 0
                    if numCheckpoints[stor204[address(msg.sender)]] <= 0:
                        checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]]].field_256 = checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        if 1 > -numCheckpoints[stor204[address(msg.sender)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor204[address(msg.sender)]] = uint32(numCheckpoints[stor204[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)]:
                                if 0 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 32, 57, code.data[11128 len 57], mem[345 len 7] >> 200, 0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 32, 57, code.data[11128 len 57], mem[345 len 7] >> 200, 0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[stor204[address(msg.sender)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor204[address(msg.sender)]] < 1:
                                revert with 0, 17
                            checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11128 len 57], mem[281 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11128 len 57], mem[281 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]]].field_256 = checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[stor204[address(msg.sender)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor204[address(msg.sender)]] = uint32(numCheckpoints[stor204[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor204[address(msg.sender)]][stor206[stor204[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11128 len 57], mem[345 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11128 len 57], mem[345 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor206[address(arg1)]].field_256 = checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor206[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
}



}
