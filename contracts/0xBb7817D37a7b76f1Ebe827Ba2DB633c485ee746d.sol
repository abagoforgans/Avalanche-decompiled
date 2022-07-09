contract main {




// =====================  Runtime code  =====================


#
#  - initialize(string arg1, string arg2, address arg3)
#  - delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6)
#
const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const MAX_SUPPLY = 2000000000 * 10^18

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
array of struct stor154;
array of struct stor155;
uint8 decimals;
mapping of uint8 stor157;
array of address sub_2a29ad14;
address sub_64210fa9Address;
uint8 stor204; offset 160
address sub_964bca5fAddress;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function totalSupply() payable {
    return totalSupply
}

function sub_2a29ad14(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_2a29ad14.length
    return sub_2a29ad14[arg1]
}

function decimals() payable {
    return decimals
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[address(arg1)]
}

function sub_64210fa9(?) payable {
    return sub_64210fa9Address
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

function _setBot(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor157[address(arg1)] = uint8(arg2)
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not numCheckpoints[address(arg1)]:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 0, 17
    return checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256
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
        revert with 0, 32, 37, code.data[11585 len 37], mem[165 len 27] >> 40, 0
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
    require not stor157[address(msg.sender)]
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 32, 38, code.data[11450 len 38], mem[166 len 26] >> 48, 0
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

function sub_6331e9ae(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor204:
        revert with 0, 'only can mint once'
    if not address(arg1):
        revert with 0, '!_address'
    stor204 = 1
    require not stor157[0]
    if totalSupply > 0xfffffffffffffffffffffffffffffffffffffffffdbcf93bf687a63bc3ffffff:
        revert with 0, 17
    if totalSupply + 700000000 * 10^18 < totalSupply:
        revert with 0, 'SafeMath: addition overflow'
    totalSupply += 700000000 * 10^18
    if balanceOf[address(arg1)] > 0xfffffffffffffffffffffffffffffffffffffffffdbcf93bf687a63bc3ffffff:
        revert with 0, 17
    if balanceOf[address(arg1)] + 700000000 * 10^18 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += 700000000 * 10^18
    emit Transfer(700000000 * 10^18, 0, address(arg1));
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    require not stor157[address(arg1)]
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, code.data[11450 len 38], mem[166 len 26] >> 48, 0
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
        revert with 0, 32, 40, code.data[11488 len 40], mem[264 len 24] >> 64, 0
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
    if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 <= arg2:
        if numCheckpoints[address(arg1)] < 1:
            revert with 0, 17
        return checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256
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
        mem[32] = sha3(address(arg1), 206)
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = checkpoints[address(arg1)][uint32(stor207[address(arg1)] - 1) - (uint32(uint32(stor207[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0
        mem[_33 + 32] = checkpoints[address(arg1)][uint32(stor207[address(arg1)] - 1) - (uint32(uint32(stor207[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_256
        if arg2 == checkpoints[address(arg1)][uint32(stor207[address(arg1)] - 1) - (uint32(uint32(stor207[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0:
            return checkpoints[address(arg1)][uint32(stor207[address(arg1)] - 1) - (uint32(uint32(stor207[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_256
        if arg2 > checkpoints[address(arg1)][uint32(stor207[address(arg1)] - 1) - (uint32(uint32(stor207[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0:
            idx = uint32(numCheckpoints[address(arg1)] - 1) - (uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2)
            continue 
        if uint32(uint32(numCheckpoints[address(arg1)] - 1) - (uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2)) < 1:
            revert with 0, 17
        idx = idx
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function name() payable {
    if bool(stor154.length):
        if bool(stor154.length) == uint255(stor154.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor154.length):
            if bool(stor154.length) == uint255(stor154.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor154.length):
                if 31 < uint255(stor154.length) * 0.5:
                    mem[128] = uint256(stor154.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor154.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor154[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor154.length), data=mem[128 len ceil32(uint255(stor154.length) * 0.5)])
                mem[128] = 256 * stor154.length.field_8
        else:
            if bool(stor154.length) == stor154.length.field_1 < 32:
                revert with 0, 34
            if stor154.length.field_1:
                if 31 < stor154.length.field_1:
                    mem[128] = uint256(stor154.field_0)
                    idx = 128
                    s = 0
                    while stor154.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor154[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor154.length), data=mem[128 len ceil32(uint255(stor154.length) * 0.5)])
                mem[128] = 256 * stor154.length.field_8
        mem[ceil32(uint255(stor154.length) * 0.5) + 192 len ceil32(uint255(stor154.length) * 0.5)] = mem[128 len ceil32(uint255(stor154.length) * 0.5)]
        if ceil32(uint255(stor154.length) * 0.5) > uint255(stor154.length) * 0.5:
            mem[ceil32(uint255(stor154.length) * 0.5) + (uint255(stor154.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor154.length), data=mem[128 len ceil32(uint255(stor154.length) * 0.5)], mem[(2 * ceil32(uint255(stor154.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor154.length) * 0.5)]), 
    if bool(stor154.length) == stor154.length.field_1 < 32:
        revert with 0, 34
    if bool(stor154.length):
        if bool(stor154.length) == uint255(stor154.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor154.length):
            if 31 < uint255(stor154.length) * 0.5:
                mem[128] = uint256(stor154.field_0)
                idx = 128
                s = 0
                while (uint255(stor154.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor154[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor154.length % 128, data=mem[128 len ceil32(stor154.length.field_1)])
            mem[128] = 256 * stor154.length.field_8
    else:
        if bool(stor154.length) == stor154.length.field_1 < 32:
            revert with 0, 34
        if stor154.length.field_1:
            if 31 < stor154.length.field_1:
                mem[128] = uint256(stor154.field_0)
                idx = 128
                s = 0
                while stor154.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor154[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor154.length % 128, data=mem[128 len ceil32(stor154.length.field_1)])
            mem[128] = 256 * stor154.length.field_8
    mem[ceil32(stor154.length.field_1) + 192 len ceil32(stor154.length.field_1)] = mem[128 len ceil32(stor154.length.field_1)]
    if ceil32(stor154.length.field_1) > stor154.length.field_1:
        mem[ceil32(stor154.length.field_1) + stor154.length.field_1 + 192] = 0
    return Array(len=stor154.length % 128, data=mem[128 len ceil32(stor154.length.field_1)], mem[(2 * ceil32(stor154.length.field_1)) + 192 len 2 * ceil32(stor154.length.field_1)]), 
}

function symbol() payable {
    if bool(stor155.length):
        if bool(stor155.length) == uint255(stor155.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor155.length):
            if bool(stor155.length) == uint255(stor155.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor155.length):
                if 31 < uint255(stor155.length) * 0.5:
                    mem[128] = uint256(stor155.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor155.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor155[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor155.length), data=mem[128 len ceil32(uint255(stor155.length) * 0.5)])
                mem[128] = 256 * stor155.length.field_8
        else:
            if bool(stor155.length) == stor155.length.field_1 < 32:
                revert with 0, 34
            if stor155.length.field_1:
                if 31 < stor155.length.field_1:
                    mem[128] = uint256(stor155.field_0)
                    idx = 128
                    s = 0
                    while stor155.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor155[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor155.length), data=mem[128 len ceil32(uint255(stor155.length) * 0.5)])
                mem[128] = 256 * stor155.length.field_8
        mem[ceil32(uint255(stor155.length) * 0.5) + 192 len ceil32(uint255(stor155.length) * 0.5)] = mem[128 len ceil32(uint255(stor155.length) * 0.5)]
        if ceil32(uint255(stor155.length) * 0.5) > uint255(stor155.length) * 0.5:
            mem[ceil32(uint255(stor155.length) * 0.5) + (uint255(stor155.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor155.length), data=mem[128 len ceil32(uint255(stor155.length) * 0.5)], mem[(2 * ceil32(uint255(stor155.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor155.length) * 0.5)]), 
    if bool(stor155.length) == stor155.length.field_1 < 32:
        revert with 0, 34
    if bool(stor155.length):
        if bool(stor155.length) == uint255(stor155.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor155.length):
            if 31 < uint255(stor155.length) * 0.5:
                mem[128] = uint256(stor155.field_0)
                idx = 128
                s = 0
                while (uint255(stor155.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor155[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor155.length % 128, data=mem[128 len ceil32(stor155.length.field_1)])
            mem[128] = 256 * stor155.length.field_8
    else:
        if bool(stor155.length) == stor155.length.field_1 < 32:
            revert with 0, 34
        if stor155.length.field_1:
            if 31 < stor155.length.field_1:
                mem[128] = uint256(stor155.field_0)
                idx = 128
                s = 0
                while stor155.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor155[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor155.length % 128, data=mem[128 len ceil32(stor155.length.field_1)])
            mem[128] = 256 * stor155.length.field_8
    mem[ceil32(stor155.length.field_1) + 192 len ceil32(stor155.length.field_1)] = mem[128 len ceil32(stor155.length.field_1)]
    if ceil32(stor155.length.field_1) > stor155.length.field_1:
        mem[ceil32(stor155.length.field_1) + stor155.length.field_1 + 192] = 0
    return Array(len=stor155.length % 128, data=mem[128 len ceil32(stor155.length.field_1)], mem[(2 * ceil32(stor155.length.field_1)) + 192 len 2 * ceil32(stor155.length.field_1)]), 
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
                            revert with 0, 32, 57, code.data[11528 len 57], mem[185 len 7] >> 200, 0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 0, 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[address(arg1)] < 1:
                            revert with 0, 17
                        if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 32, 57, code.data[11528 len 57], mem[185 len 7] >> 200, 0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 0, 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
            else:
                if not numCheckpoints[stor205[address(msg.sender)]]:
                    if 0 < balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 32, 57, code.data[11528 len 57], mem[185 len 7] >> 200, 0
                    if numCheckpoints[stor205[address(msg.sender)]] <= 0:
                        checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        if 1 > -numCheckpoints[stor205[address(msg.sender)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor205[address(msg.sender)]] = uint32(numCheckpoints[stor205[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)]:
                                if 0 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 32, 57, code.data[11528 len 57], mem[345 len 7] >> 200, 0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 32, 57, code.data[11528 len 57], mem[345 len 7] >> 200, 0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[stor205[address(msg.sender)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor205[address(msg.sender)]] < 1:
                                revert with 0, 17
                            checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11528 len 57], mem[281 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11528 len 57], mem[281 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[stor205[address(msg.sender)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor205[address(msg.sender)]] = uint32(numCheckpoints[stor205[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11528 len 57], mem[345 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11528 len 57], mem[345 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                else:
                    if numCheckpoints[stor205[address(msg.sender)]] < 1:
                        revert with 0, 17
                    if checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]] - 1 << 224].field_256 < balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 32, 57, code.data[11528 len 57], mem[185 len 7] >> 200, 0
                    if numCheckpoints[stor205[address(msg.sender)]] <= 0:
                        checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]]].field_256 = checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        if 1 > -numCheckpoints[stor205[address(msg.sender)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor205[address(msg.sender)]] = uint32(numCheckpoints[stor205[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)]:
                                if 0 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 32, 57, code.data[11528 len 57], mem[345 len 7] >> 200, 0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 32, 57, code.data[11528 len 57], mem[345 len 7] >> 200, 0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[stor205[address(msg.sender)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor205[address(msg.sender)]] < 1:
                                revert with 0, 17
                            checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11528 len 57], mem[281 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11528 len 57], mem[281 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]]].field_256 = checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[stor205[address(msg.sender)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor205[address(msg.sender)]] = uint32(numCheckpoints[stor205[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor205[address(msg.sender)]][stor207[stor205[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11528 len 57], mem[345 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 32, 57, code.data[11528 len 57], mem[345 len 7] >> 200, 0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor207[address(arg1)]].field_256 = checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor207[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
}



}
