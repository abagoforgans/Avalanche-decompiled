contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transferAll(address arg1)
#  - transfer(address arg1, uint256 arg2)
#
const DOMAIN_TYPEHASH = 0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866

const DELEGATION_TYPEHASH = 0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 circulatingSupply;
array of struct stor3;
array of struct stor4;
uint8 decimals;
address owner; offset 8
address previousOwner;
mapping of uint8 stor7;
uint256 cap;
uint256 lockedSupply;
uint256 lockFromBlock;
uint256 lockToBlock;
uint256 manualMintLimit;
uint256 manualMinted;
uint256 minimumSupply;
address disPoolAddress;
uint256 burnPercent;
uint256 disPercent;
uint256 sub_18325c3a;
uint256 sub_19956001;
uint256 sub_a00c9503;
mapping of uint256 lockOf;
mapping of uint256 lastUnlockBlock;
mapping of uint8 stor23;
mapping of uint8 stor24;
mapping of address delegates;
mapping of struct checkpoints;
mapping of uint32 numCheckpoints;
mapping of uint256 nonces;

function burnPercent() payable {
    return burnPercent
}

function totalSupply() payable {
    return circulatingSupply
}

function sub_18325c3a(?) payable {
    return sub_18325c3a
}

function sub_19956001(?) payable {
    return sub_19956001
}

function disPool() payable {
    return disPoolAddress
}

function decimals() payable {
    return decimals
}

function cap() payable {
    return cap
}

function totalLock() payable {
    return lockedSupply
}

function delegates(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return delegates[address(arg1)]
}

function lockOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lockOf[address(arg1)]
}

function isWhitelistedTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor23[arg1])
}

function lockFromBlock() payable {
    return lockFromBlock
}

function previousOwner() payable {
    return previousOwner
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

function minimumSupply() payable {
    return minimumSupply
}

function lastUnlockBlock(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return lastUnlockBlock[address(arg1)]
}

function owner() payable {
    return owner
}

function lockToBlock() payable {
    return lockToBlock
}

function circulatingSupply() payable {
    return circulatingSupply
}

function sub_a00c9503(?) payable {
    return sub_a00c9503
}

function authorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[arg1])
}

function disPercent() payable {
    return disPercent
}

function isWhitelistedFrom(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor24[arg1])
}

function lockedSupply() payable {
    return lockedSupply
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function manualMinted() payable {
    return manualMinted
}

function checkpoints(address arg1, uint32 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return checkpoints[arg1][arg2].field_0, checkpoints[arg1][arg2].field_256
}

function manualMintLimit() payable {
    return manualMintLimit
}

function _fallback() payable {
    revert
}

function unlockedSupply() payable {
    if circulatingSupply < lockedSupply:
        revert with 0, 17
    return (circulatingSupply - lockedSupply)
}

function sub_8cdbcdc6(?) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        require msg.sender == owner
    disPercent = arg1
}

function capUpdate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        require msg.sender == owner
    cap = arg1
}

function sub_c7c8db3e(?) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        require msg.sender == owner
    burnPercent = arg1
}

function sub_3b6b8183(?) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        require msg.sender == owner
    sub_a00c9503 = arg1
}

function sub_84036fb9(?) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        require msg.sender == owner
    sub_18325c3a = arg1
}

function sub_f0f8f356(?) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        require msg.sender == owner
    sub_19956001 = arg1
}

function sub_e7c5372c(?) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        require msg.sender == owner
    minimumSupply = arg1
}

function lockToUpdate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        require msg.sender == owner
    lockToBlock = arg1
}

function lockFromUpdate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor7[msg.sender]:
        require msg.sender == owner
    lockFromBlock = arg1
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function sub_4b30c23e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not stor7[msg.sender]:
        require msg.sender == owner
    disPoolAddress = address(arg1)
}

function addAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor7[address(arg1)] = 1
}

function totalBalanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if lockOf[address(arg1)] > !balanceOf[address(arg1)]:
        revert with 0, 17
    return (lockOf[address(arg1)] + balanceOf[address(arg1)])
}

function removeAuthorized(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != msg.sender
    stor7[address(arg1)] = 0
}

function setWhitelistedTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7[msg.sender]:
        require msg.sender == owner
    if stor23[address(arg1)]:
        revert with 0, 'whitelisted Address'
    stor23[address(arg1)] = 1
}

function setWhitelistedFrom(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7[msg.sender]:
        require msg.sender == owner
    if stor24[address(arg1)]:
        revert with 0, 'whitelisted Address'
    stor24[address(arg1)] = 1
}

function removeWhitelistedTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7[msg.sender]:
        require msg.sender == owner
    if not stor23[address(arg1)]:
        revert with 0, 'Non whitelisted Address'
    stor23[address(arg1)] = 0
}

function removeWhitelistedFrom(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor7[msg.sender]:
        require msg.sender == owner
    if not stor24[address(arg1)]:
        revert with 0, 'Non whitelisted Address'
    stor24[address(arg1)] = 0
}

function getCurrentVotes(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not numCheckpoints[address(arg1)]:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 0, 17
    return checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256
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

function reclaimOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if previousOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: caller is not the previous owner'
    if previousOwner != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner must be previous owner'
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
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
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

function canUnlockAmount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if block.number < lockFromBlock:
        return 0
    if block.number >= lockToBlock:
        return lockOf[address(arg1)]
    if block.number < lastUnlockBlock[address(arg1)]:
        revert with 0, 17
    if lockToBlock < lastUnlockBlock[address(arg1)]:
        revert with 0, 17
    if lockOf[address(arg1)] and block.number - lastUnlockBlock[address(arg1)] > -1 / lockOf[address(arg1)]:
        revert with 0, 17
    if not lockToBlock - lastUnlockBlock[address(arg1)]:
        revert with 0, 18
    return ((block.number * lockOf[address(arg1)]) - (lastUnlockBlock[address(arg1)] * lockOf[address(arg1)]) / lockToBlock - lastUnlockBlock[address(arg1)])
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

function getPriorVotes(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 >= block.number:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BAVA::getPriorVotes: not yet determined'
    if not numCheckpoints[address(arg1)]:
        return 0
    if numCheckpoints[address(arg1)] < 1:
        revert with 0, 17
    if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 <= arg2:
        if numCheckpoints[address(arg1)] < 1:
            revert with 0, 17
        return checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256
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
        mem[32] = sha3(address(arg1), 26)
        _33 = mem[64]
        mem[64] = mem[64] + 64
        mem[_33] = checkpoints[address(arg1)][uint32(stor27[address(arg1)] - 1) - (uint32(uint32(stor27[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0
        mem[_33 + 32] = checkpoints[address(arg1)][uint32(stor27[address(arg1)] - 1) - (uint32(uint32(stor27[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_256
        if arg2 == checkpoints[address(arg1)][uint32(stor27[address(arg1)] - 1) - (uint32(uint32(stor27[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0:
            return checkpoints[address(arg1)][uint32(stor27[address(arg1)] - 1) - (uint32(uint32(stor27[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_256
        if arg2 > checkpoints[address(arg1)][uint32(stor27[address(arg1)] - 1) - (uint32(uint32(stor27[address(arg1)] - 1) - uint32(idx)) / 2) << 224].field_0:
            idx = uint32(numCheckpoints[address(arg1)] - 1) - (uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2)
            continue 
        if uint32(uint32(numCheckpoints[address(arg1)] - 1) - (uint32(uint32(numCheckpoints[address(arg1)] - 1) - uint32(idx)) / 2)) < 1:
            revert with 0, 17
        idx = idx
        continue 
    return checkpoints[address(arg1)][idx << 224].field_256
}

function name() payable {
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 < uint255(stor3.length) * 0.5:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 < stor3.length.field_1:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)])
                mem[128] = 256 * stor3.length.field_8
        mem[ceil32(uint255(stor3.length) * 0.5) + 192 len ceil32(uint255(stor3.length) * 0.5)] = mem[128 len ceil32(uint255(stor3.length) * 0.5)]
        if ceil32(uint255(stor3.length) * 0.5) > uint255(stor3.length) * 0.5:
            mem[ceil32(uint255(stor3.length) * 0.5) + (uint255(stor3.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor3.length), data=mem[128 len ceil32(uint255(stor3.length) * 0.5)], mem[(2 * ceil32(uint255(stor3.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor3.length) * 0.5)]), 
    if bool(stor3.length) == stor3.length.field_1 < 32:
        revert with 0, 34
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor3.length):
            if 31 < uint255(stor3.length) * 0.5:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while (uint255(stor3.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if stor3.length.field_1:
            if 31 < stor3.length.field_1:
                mem[128] = uint256(stor3.field_0)
                idx = 128
                s = 0
                while stor3.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor3[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)])
            mem[128] = 256 * stor3.length.field_8
    mem[ceil32(stor3.length.field_1) + 192 len ceil32(stor3.length.field_1)] = mem[128 len ceil32(stor3.length.field_1)]
    if ceil32(stor3.length.field_1) > stor3.length.field_1:
        mem[ceil32(stor3.length.field_1) + stor3.length.field_1 + 192] = 0
    return Array(len=stor3.length % 128, data=mem[128 len ceil32(stor3.length.field_1)], mem[(2 * ceil32(stor3.length.field_1)) + 192 len 2 * ceil32(stor3.length.field_1)]), 
}

function symbol() payable {
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor4.length):
            if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor4.length):
                if 31 < uint255(stor4.length) * 0.5:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor4.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        else:
            if bool(stor4.length) == stor4.length.field_1 < 32:
                revert with 0, 34
            if stor4.length.field_1:
                if 31 < stor4.length.field_1:
                    mem[128] = uint256(stor4.field_0)
                    idx = 128
                    s = 0
                    while stor4.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)])
                mem[128] = 256 * stor4.length.field_8
        mem[ceil32(uint255(stor4.length) * 0.5) + 192 len ceil32(uint255(stor4.length) * 0.5)] = mem[128 len ceil32(uint255(stor4.length) * 0.5)]
        if ceil32(uint255(stor4.length) * 0.5) > uint255(stor4.length) * 0.5:
            mem[ceil32(uint255(stor4.length) * 0.5) + (uint255(stor4.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor4.length), data=mem[128 len ceil32(uint255(stor4.length) * 0.5)], mem[(2 * ceil32(uint255(stor4.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor4.length) * 0.5)]), 
    if bool(stor4.length) == stor4.length.field_1 < 32:
        revert with 0, 34
    if bool(stor4.length):
        if bool(stor4.length) == uint255(stor4.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor4.length):
            if 31 < uint255(stor4.length) * 0.5:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while (uint255(stor4.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    else:
        if bool(stor4.length) == stor4.length.field_1 < 32:
            revert with 0, 34
        if stor4.length.field_1:
            if 31 < stor4.length.field_1:
                mem[128] = uint256(stor4.field_0)
                idx = 128
                s = 0
                while stor4.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)])
            mem[128] = 256 * stor4.length.field_8
    mem[ceil32(stor4.length.field_1) + 192 len ceil32(stor4.length.field_1)] = mem[128 len ceil32(stor4.length.field_1)]
    if ceil32(stor4.length.field_1) > stor4.length.field_1:
        mem[ceil32(stor4.length.field_1) + stor4.length.field_1 + 192] = 0
    return Array(len=stor4.length % 128, data=mem[128 len ceil32(stor4.length.field_1)], mem[(2 * ceil32(stor4.length.field_1)) + 192 len 2 * ceil32(stor4.length.field_1)]), 
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor7[msg.sender]:
        require msg.sender == owner
    if not arg1:
        revert with 0, 'ERC20: mint to the zero address'
    if circulatingSupply > !arg2:
        revert with 0, 17
    if circulatingSupply + arg2 > cap:
        revert with 0, 'ERC20Capped: cap exceeded'
    if circulatingSupply > !arg2:
        revert with 0, 17
    if circulatingSupply + arg2 < circulatingSupply:
        revert with 0, 'SafeMath: addition overflow'
    circulatingSupply += arg2
    if balanceOf[address(arg1)] > !arg2:
        revert with 0, 17
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    if delegates[address(arg1)] != 0:
        if arg2 > 0:
            if delegates[address(arg1)]:
                if not numCheckpoints[stor25[address(arg1)]]:
                    if 0 > !arg2:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                    0
                    if numCheckpoints[stor25[address(arg1)]] <= 0:
                        checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_256 = arg2
                        if 1 > -numCheckpoints[stor25[address(arg1)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor25[address(arg1)]] = uint32(numCheckpoints[stor25[address(arg1)]] + 1)
                    else:
                        if numCheckpoints[stor25[address(arg1)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor25[address(arg1)]] < 1:
                                revert with 0, 17
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 = arg2
                        else:
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_256 = arg2
                            if 1 > -numCheckpoints[stor25[address(arg1)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[address(arg1)]] = uint32(numCheckpoints[stor25[address(arg1)]] + 1)
                    emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                else:
                    if numCheckpoints[stor25[address(arg1)]] < 1:
                        revert with 0, 17
                    if checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 > !arg2:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                    0
                    if numCheckpoints[stor25[address(arg1)]] <= 0:
                        checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_256 = checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 + arg2
                        if 1 > -numCheckpoints[stor25[address(arg1)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor25[address(arg1)]] = uint32(numCheckpoints[stor25[address(arg1)]] + 1)
                    else:
                        if numCheckpoints[stor25[address(arg1)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor25[address(arg1)]] < 1:
                                revert with 0, 17
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 += arg2
                        else:
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_256 = checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 + arg2
                            if 1 > -numCheckpoints[stor25[address(arg1)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[address(arg1)]] = uint32(numCheckpoints[stor25[address(arg1)]] + 1)
                    emit DelegateVotesChanged(checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256, checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
}

function manualMint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor7[msg.sender]:
        require msg.sender == owner
    if manualMinted < manualMintLimit:
        if not arg1:
            revert with 0, 'ERC20: mint to the zero address'
        if circulatingSupply > !arg2:
            revert with 0, 17
        if circulatingSupply + arg2 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
        if circulatingSupply > !arg2:
            revert with 0, 17
        if circulatingSupply + arg2 < circulatingSupply:
            revert with 0, 'SafeMath: addition overflow'
        circulatingSupply += arg2
        if balanceOf[address(arg1)] > !arg2:
            revert with 0, 17
        if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, 0, arg1);
        if delegates[address(arg1)] != 0:
            if arg2 > 0:
                if delegates[address(arg1)]:
                    if not numCheckpoints[stor25[address(arg1)]]:
                        if 0 > !arg2:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                        0
                        if numCheckpoints[stor25[address(arg1)]] <= 0:
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_256 = arg2
                            if 1 > -numCheckpoints[stor25[address(arg1)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[address(arg1)]] = uint32(numCheckpoints[stor25[address(arg1)]] + 1)
                        else:
                            if numCheckpoints[stor25[address(arg1)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor25[address(arg1)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_256 = arg2
                                if 1 > -numCheckpoints[stor25[address(arg1)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor25[address(arg1)]] = uint32(numCheckpoints[stor25[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[address(arg1)]);
                    else:
                        if numCheckpoints[stor25[address(arg1)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 > !arg2:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                        0
                        if numCheckpoints[stor25[address(arg1)]] <= 0:
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_256 = checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 + arg2
                            if 1 > -numCheckpoints[stor25[address(arg1)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[address(arg1)]] = uint32(numCheckpoints[stor25[address(arg1)]] + 1)
                        else:
                            if numCheckpoints[stor25[address(arg1)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor25[address(arg1)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_0 = uint32(block.number)
                                checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_256 = checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 + arg2
                                if 1 > -numCheckpoints[stor25[address(arg1)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor25[address(arg1)]] = uint32(numCheckpoints[stor25[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256, checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 + arg2, delegates[address(arg1)]);
        if manualMinted > !arg2:
            revert with 0, 17
        manualMinted += arg2
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
                            revert with 0, 
                                        32,
                                        52,
                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 0, 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[address(arg1)] < 1:
                            revert with 0, 17
                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                        0
                        if numCheckpoints[address(arg1)] <= 0:
                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                revert with 0, 17
                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                            else:
                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
            else:
                if not numCheckpoints[stor25[address(msg.sender)]]:
                    if 0 < balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                    0
                    if numCheckpoints[stor25[address(msg.sender)]] <= 0:
                        checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                        if 1 > -numCheckpoints[stor25[address(msg.sender)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor25[address(msg.sender)]] = uint32(numCheckpoints[stor25[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)]:
                                if 0 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[stor25[address(msg.sender)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor25[address(msg.sender)]] < 1:
                                revert with 0, 17
                            checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]] - 1 << 224].field_256 = -balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]]].field_256 = -balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[stor25[address(msg.sender)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[address(msg.sender)]] = uint32(numCheckpoints[stor25[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                else:
                    if numCheckpoints[stor25[address(msg.sender)]] < 1:
                        revert with 0, 17
                    if checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]] - 1 << 224].field_256 < balanceOf[address(msg.sender)]:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[180 len 12] >> 160,
                                    0
                    if numCheckpoints[stor25[address(msg.sender)]] <= 0:
                        checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]]].field_0 = uint32(block.number)
                        checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]]].field_256 = checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                        if 1 > -numCheckpoints[stor25[address(msg.sender)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor25[address(msg.sender)]] = uint32(numCheckpoints[stor25[address(msg.sender)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                        if arg1:
                            if not numCheckpoints[address(arg1)]:
                                if 0 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                0
                                if numCheckpoints[address(arg1)] <= 0:
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                    else:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                    else:
                        if numCheckpoints[stor25[address(msg.sender)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor25[address(msg.sender)]] < 1:
                                revert with 0, 17
                            checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]] - 1 << 224].field_256 -= balanceOf[address(msg.sender)]
                            emit DelegateVotesChanged(checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
                        else:
                            checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]]].field_0 = uint32(block.number)
                            checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]]].field_256 = checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)]
                            if 1 > -numCheckpoints[stor25[address(msg.sender)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[address(msg.sender)]] = uint32(numCheckpoints[stor25[address(msg.sender)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]] - 1 << 224].field_256, checkpoints[stor25[address(msg.sender)]][stor27[stor25[address(msg.sender)]] - 1 << 224].field_256 - balanceOf[address(msg.sender)], delegates[address(msg.sender)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(msg.sender)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[340 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(msg.sender)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(msg.sender)], arg1);
}

function lock(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor7[msg.sender]:
        require msg.sender == owner
    if not arg1:
        revert with 0, 'ERC20: lock to the zero address'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 'ERC20: lock amount over blance'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
    if not arg1:
        if circulatingSupply > !arg2:
            revert with 0, 17
        if circulatingSupply + arg2 > cap:
            revert with 0, 'ERC20Capped: cap exceeded'
    if arg2 > balanceOf[address(arg1)]:
        revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 17
    balanceOf[address(arg1)] -= arg2
    if balanceOf[this.address] > !arg2:
        revert with 0, 17
    if balanceOf[this.address] + arg2 < balanceOf[this.address]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(this.address)] = balanceOf[this.address] + arg2
    emit Transfer(arg2, arg1, this.address);
    if delegates[address(arg1)] != delegates[this.address]:
        if arg2 > 0:
            if not delegates[address(arg1)]:
                if delegates[this.address]:
                    if not numCheckpoints[stor25[this.address]]:
                        if 0 > !arg2:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                        0
                        if numCheckpoints[stor25[this.address]] <= 0:
                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                            if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                        else:
                            if numCheckpoints[stor25[this.address]] < 1:
                                revert with 0, 17
                            if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor25[this.address]] < 1:
                                    revert with 0, 17
                                checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 = arg2
                            else:
                                checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                                if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                        emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                    else:
                        if numCheckpoints[stor25[this.address]] < 1:
                            revert with 0, 17
                        if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 > !arg2:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                        0
                        if numCheckpoints[stor25[this.address]] <= 0:
                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                            if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                        else:
                            if numCheckpoints[stor25[this.address]] < 1:
                                revert with 0, 17
                            if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor25[this.address]] < 1:
                                    revert with 0, 17
                                checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 += arg2
                            else:
                                checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                                if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256, checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2, delegates[this.address]);
            else:
                if not numCheckpoints[stor25[address(arg1)]]:
                    if 0 < arg2:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                    0
                    if numCheckpoints[stor25[address(arg1)]] <= 0:
                        checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_256 = -arg2
                        if 1 > -numCheckpoints[stor25[address(arg1)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor25[address(arg1)]] = uint32(numCheckpoints[stor25[address(arg1)]] + 1)
                        emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                        if delegates[this.address]:
                            if not numCheckpoints[stor25[this.address]]:
                                if 0 > !arg2:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[this.address]] <= 0:
                                    checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                                    if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                else:
                                    if numCheckpoints[stor25[this.address]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[this.address]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                                        if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                            else:
                                if numCheckpoints[stor25[this.address]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 > !arg2:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[this.address]] <= 0:
                                    checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                                    if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                else:
                                    if numCheckpoints[stor25[this.address]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[this.address]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                                        if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256, checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2, delegates[this.address]);
                    else:
                        if numCheckpoints[stor25[address(arg1)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor25[address(arg1)]] < 1:
                                revert with 0, 17
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 = -arg2
                            emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                            if delegates[this.address]:
                                if not numCheckpoints[stor25[this.address]]:
                                    if 0 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[this.address]] <= 0:
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                                        if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    else:
                                        if numCheckpoints[stor25[this.address]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[this.address]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                else:
                                    if numCheckpoints[stor25[this.address]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[this.address]] <= 0:
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                                        if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    else:
                                        if numCheckpoints[stor25[this.address]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[this.address]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256, checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2, delegates[this.address]);
                        else:
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_256 = -arg2
                            if 1 > -numCheckpoints[stor25[address(arg1)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[address(arg1)]] = uint32(numCheckpoints[stor25[address(arg1)]] + 1)
                            emit DelegateVotesChanged(0, -arg2, delegates[address(arg1)]);
                            if delegates[this.address]:
                                if not numCheckpoints[stor25[this.address]]:
                                    if 0 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[this.address]] <= 0:
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                                        if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    else:
                                        if numCheckpoints[stor25[this.address]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[this.address]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                else:
                                    if numCheckpoints[stor25[this.address]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[this.address]] <= 0:
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                                        if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    else:
                                        if numCheckpoints[stor25[this.address]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[this.address]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256, checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2, delegates[this.address]);
                else:
                    if numCheckpoints[stor25[address(arg1)]] < 1:
                        revert with 0, 17
                    if checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 < arg2:
                        revert with 0, 17
                    if block.number >= 4294967296:
                        revert with 0, 
                                    32,
                                    52,
                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                    0
                    if numCheckpoints[stor25[address(arg1)]] <= 0:
                        checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_0 = uint32(block.number)
                        checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_256 = checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 - arg2
                        if 1 > -numCheckpoints[stor25[address(arg1)]] + test266151307():
                            revert with 0, 17
                        numCheckpoints[stor25[address(arg1)]] = uint32(numCheckpoints[stor25[address(arg1)]] + 1)
                        emit DelegateVotesChanged(checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256, checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                        if delegates[this.address]:
                            if not numCheckpoints[stor25[this.address]]:
                                if 0 > !arg2:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[this.address]] <= 0:
                                    checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                                    if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                else:
                                    if numCheckpoints[stor25[this.address]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[this.address]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 = arg2
                                    else:
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                                        if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                            else:
                                if numCheckpoints[stor25[this.address]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 > !arg2:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[this.address]] <= 0:
                                    checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                                    if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                else:
                                    if numCheckpoints[stor25[this.address]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[this.address]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 += arg2
                                    else:
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                                        if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256, checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2, delegates[this.address]);
                    else:
                        if numCheckpoints[stor25[address(arg1)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_0 == uint32(block.number):
                            if numCheckpoints[stor25[address(arg1)]] < 1:
                                revert with 0, 17
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 -= arg2
                            emit DelegateVotesChanged(checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256, checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                            if delegates[this.address]:
                                if not numCheckpoints[stor25[this.address]]:
                                    if 0 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[this.address]] <= 0:
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                                        if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    else:
                                        if numCheckpoints[stor25[this.address]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[this.address]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                else:
                                    if numCheckpoints[stor25[this.address]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[this.address]] <= 0:
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                                        if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    else:
                                        if numCheckpoints[stor25[this.address]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[this.address]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256, checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2, delegates[this.address]);
                        else:
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_0 = uint32(block.number)
                            checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]]].field_256 = checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 - arg2
                            if 1 > -numCheckpoints[stor25[address(arg1)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[address(arg1)]] = uint32(numCheckpoints[stor25[address(arg1)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256, checkpoints[stor25[address(arg1)]][stor27[stor25[address(arg1)]] - 1 << 224].field_256 - arg2, delegates[address(arg1)]);
                            if delegates[this.address]:
                                if not numCheckpoints[stor25[this.address]]:
                                    if 0 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[this.address]] <= 0:
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                                        if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    else:
                                        if numCheckpoints[stor25[this.address]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[this.address]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 = arg2
                                        else:
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = arg2
                                            if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    emit DelegateVotesChanged(0, arg2, delegates[this.address]);
                                else:
                                    if numCheckpoints[stor25[this.address]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 > !arg2:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[this.address]] <= 0:
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                                        if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    else:
                                        if numCheckpoints[stor25[this.address]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[this.address]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 += arg2
                                        else:
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[this.address]][stor27[stor25[this.address]]].field_256 = checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2
                                            if 1 > -numCheckpoints[stor25[this.address]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[this.address]] = uint32(numCheckpoints[stor25[this.address]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256, checkpoints[stor25[this.address]][stor27[stor25[this.address]] - 1 << 224].field_256 + arg2, delegates[this.address]);
    if lockOf[address(arg1)] > !arg2:
        revert with 0, 17
    lockOf[address(arg1)] += arg2
    if lockedSupply > !arg2:
        revert with 0, 17
    lockedSupply += arg2
    if lastUnlockBlock[address(arg1)] < lockFromBlock:
        lastUnlockBlock[address(arg1)] = lockFromBlock
    emit Lock(arg2, arg1);
}

function delegateBySig(address arg1, uint256 arg2, uint256 arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) payable {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg4 == arg4
    if bool(stor3.length):
        if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 >= uint255(stor3.length) * 0.5:
                    mem[128] = 256 * stor3.length.field_8
                else:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 >= stor3.length.field_1:
                    mem[128] = 256 * stor3.length.field_8
                else:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[128 len uint255(stor3.length) * 0.5]), chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'BAVA::delegateBySig: invalid signature'
        if nonces[address(signer)] == -1:
            revert with 0, 17
        nonces[address(signer)]++
        if arg2 != nonces[address(signer)]:
            revert with 0, 'BAVA::delegateBySig: invalid nonce'
        if block.timestamp > arg3:
            revert with 0, 'BAVA::delegateBySig: signature expired'
        delegates[address(signer)] = arg1
        emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
        if delegates[address(signer)] != arg1:
            if balanceOf[address(signer)] > 0:
                if not delegates[address(signer)]:
                    if arg1:
                        if not numCheckpoints[address(arg1)]:
                            if 0 > !balanceOf[address(signer)]:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(96, 0, arg5) >> 160,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                else:
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(96, 0, arg5) >> 160,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                else:
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                else:
                    if not numCheckpoints[stor25[address(signer)]]:
                        if 0 < balanceOf[address(signer)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(96, 0, arg5) >> 160,
                                        0
                        if numCheckpoints[stor25[address(signer)]] <= 0:
                            checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            if 1 > -numCheckpoints[stor25[address(signer)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[address(signer)]] = uint32(numCheckpoints[stor25[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 822 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 822 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[stor25[address(signer)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor25[address(signer)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                                emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 758 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 758 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_0 = uint32(block.number)
                                checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_256 = -balanceOf[address(signer)]
                                if 1 > -numCheckpoints[stor25[address(signer)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor25[address(signer)]] = uint32(numCheckpoints[stor25[address(signer)]] + 1)
                                emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 822 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 822 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                    else:
                        if numCheckpoints[stor25[address(signer)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 < balanceOf[address(signer)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(96, 0, arg5) >> 160,
                                        0
                        if numCheckpoints[stor25[address(signer)]] <= 0:
                            checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_256 = checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            if 1 > -numCheckpoints[stor25[address(signer)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[address(signer)]] = uint32(numCheckpoints[stor25[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256, checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 822 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 822 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[stor25[address(signer)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor25[address(signer)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                                emit DelegateVotesChanged(checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256, checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 758 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 758 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_0 = uint32(block.number)
                                checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_256 = checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                                if 1 > -numCheckpoints[stor25[address(signer)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor25[address(signer)]] = uint32(numCheckpoints[stor25[address(signer)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256, checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 822 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(uint255(stor3.length) * 0.5) + 822 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
    else:
        if bool(stor3.length) == stor3.length.field_1 < 32:
            revert with 0, 34
        if bool(stor3.length):
            if bool(stor3.length) == uint255(stor3.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor3.length):
                if 31 >= uint255(stor3.length) * 0.5:
                    mem[128] = 256 * stor3.length.field_8
                else:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor3.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        else:
            if bool(stor3.length) == stor3.length.field_1 < 32:
                revert with 0, 34
            if stor3.length.field_1:
                if 31 >= stor3.length.field_1:
                    mem[128] = 256 * stor3.length.field_8
                else:
                    mem[128] = uint256(stor3.field_0)
                    idx = 128
                    s = 0
                    while stor3.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor3[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
        signer = erecover(sha3(0, sha3(0x8cad95687ba82c2ce50e74f7b754645e5117c3a5bec8151c0726d5857980a866, sha3(mem[128 len stor3.length.field_1]), chainid, this.address), sha3(0xe48329057bfd03d55e49b547132e39cffd9c1820ad7b9d4c5307691425d15adf, address(arg1), arg2, arg3)), arg4 << 248, arg5, arg6) 
        if not erecover.result:
            revert with ext_call.return_data[0 len return_data.size]
        if not address(signer):
            revert with 0, 'BAVA::delegateBySig: invalid signature'
        if nonces[address(signer)] == -1:
            revert with 0, 17
        nonces[address(signer)]++
        if arg2 != nonces[address(signer)]:
            revert with 0, 'BAVA::delegateBySig: invalid nonce'
        if block.timestamp > arg3:
            revert with 0, 'BAVA::delegateBySig: signature expired'
        delegates[address(signer)] = arg1
        emit DelegateChanged(address(signer), delegates[address(signer)], arg1);
        if delegates[address(signer)] != arg1:
            if balanceOf[address(signer)] > 0:
                if not delegates[address(signer)]:
                    if arg1:
                        if not numCheckpoints[address(arg1)]:
                            if 0 > !balanceOf[address(signer)]:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(96, 0, arg5) >> 160,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                else:
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[address(arg1)] < 1:
                                revert with 0, 17
                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(96, 0, arg5) >> 160,
                                            0
                            if numCheckpoints[address(arg1)] <= 0:
                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            else:
                                if numCheckpoints[address(arg1)] < 1:
                                    revert with 0, 17
                                if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                else:
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                    checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                    if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                            emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                else:
                    if not numCheckpoints[stor25[address(signer)]]:
                        if 0 < balanceOf[address(signer)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(96, 0, arg5) >> 160,
                                        0
                        if numCheckpoints[stor25[address(signer)]] <= 0:
                            checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_256 = -balanceOf[address(signer)]
                            if 1 > -numCheckpoints[stor25[address(signer)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[address(signer)]] = uint32(numCheckpoints[stor25[address(signer)]] + 1)
                            emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 822 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 822 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[stor25[address(signer)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor25[address(signer)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 = -balanceOf[address(signer)]
                                emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 758 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 758 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_0 = uint32(block.number)
                                checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_256 = -balanceOf[address(signer)]
                                if 1 > -numCheckpoints[stor25[address(signer)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor25[address(signer)]] = uint32(numCheckpoints[stor25[address(signer)]] + 1)
                                emit DelegateVotesChanged(0, -balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 822 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 822 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                    else:
                        if numCheckpoints[stor25[address(signer)]] < 1:
                            revert with 0, 17
                        if checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 < balanceOf[address(signer)]:
                            revert with 0, 17
                        if block.number >= 4294967296:
                            revert with 0, 
                                        32,
                                        52,
                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, Mask(96, 0, arg5) >> 160,
                                        0
                        if numCheckpoints[stor25[address(signer)]] <= 0:
                            checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_0 = uint32(block.number)
                            checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_256 = checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                            if 1 > -numCheckpoints[stor25[address(signer)]] + test266151307():
                                revert with 0, 17
                            numCheckpoints[stor25[address(signer)]] = uint32(numCheckpoints[stor25[address(signer)]] + 1)
                            emit DelegateVotesChanged(checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256, checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                            if arg1:
                                if not numCheckpoints[address(arg1)]:
                                    if 0 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 822 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                else:
                                    if numCheckpoints[address(arg1)] < 1:
                                        revert with 0, 17
                                    if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 822 len 12] >> 160,
                                                    0
                                    if numCheckpoints[address(arg1)] <= 0:
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                        checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                        if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                        else:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                    emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                        else:
                            if numCheckpoints[stor25[address(signer)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_0 == uint32(block.number):
                                if numCheckpoints[stor25[address(signer)]] < 1:
                                    revert with 0, 17
                                checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 -= balanceOf[address(signer)]
                                emit DelegateVotesChanged(checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256, checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 758 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 758 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
                            else:
                                checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_0 = uint32(block.number)
                                checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]]].field_256 = checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)]
                                if 1 > -numCheckpoints[stor25[address(signer)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor25[address(signer)]] = uint32(numCheckpoints[stor25[address(signer)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256, checkpoints[stor25[address(signer)]][stor27[stor25[address(signer)]] - 1 << 224].field_256 - balanceOf[address(signer)], delegates[address(signer)]);
                                if arg1:
                                    if not numCheckpoints[address(arg1)]:
                                        if 0 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 822 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 = balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(signer)], arg1);
                                    else:
                                        if numCheckpoints[address(arg1)] < 1:
                                            revert with 0, 17
                                        if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 > !balanceOf[address(signer)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[ceil32(stor3.length.field_1) + 822 len 12] >> 160,
                                                        0
                                        if numCheckpoints[address(arg1)] <= 0:
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                            checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                            if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        else:
                                            if numCheckpoints[address(arg1)] < 1:
                                                revert with 0, 17
                                            if checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[address(arg1)] < 1:
                                                    revert with 0, 17
                                                checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 += balanceOf[address(signer)]
                                            else:
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_0 = uint32(block.number)
                                                checkpoints[address(arg1)][stor27[address(arg1)]].field_256 = checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)]
                                                if 1 > -numCheckpoints[address(arg1)] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[address(arg1)] = uint32(numCheckpoints[address(arg1)] + 1)
                                        emit DelegateVotesChanged(checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256, checkpoints[address(arg1)][stor27[address(arg1)] - 1 << 224].field_256 + balanceOf[address(signer)], arg1);
}

function unlock() payable {
    if not lockOf[msg.sender]:
        revert with 0, 'ERC20: cannot unlock'
    if block.number < lockFromBlock:
        if not this.address:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
        if 0 <= balanceOf[address(this.address)]:
            if not this.address:
                if circulatingSupply > -1:
                    revert with 0, 17
                if circulatingSupply > cap:
                    revert with 0, 'ERC20Capped: cap exceeded'
            if 0 > balanceOf[address(this.address)]:
                revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(this.address)] < 0:
                revert with 0, 17
            if balanceOf[msg.sender] > -1:
                revert with 0, 17
            if balanceOf[msg.sender] < balanceOf[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] = balanceOf[msg.sender]
            emit Transfer(0, this.address, msg.sender);
            if lockOf[msg.sender] < 0:
                revert with 0, 17
            lastUnlockBlock[msg.sender] = block.number
            if lockedSupply < 0:
                revert with 0, 17
        else:
            if not this.address:
                if circulatingSupply > !balanceOf[address(this.address)]:
                    revert with 0, 17
                if circulatingSupply + balanceOf[address(this.address)] > cap:
                    revert with 0, 'ERC20Capped: cap exceeded'
            if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
            if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                revert with 0, 17
            balanceOf[address(this.address)] = 0
            if balanceOf[msg.sender] > !balanceOf[address(this.address)]:
                revert with 0, 17
            if balanceOf[msg.sender] + balanceOf[address(this.address)] < balanceOf[msg.sender]:
                revert with 0, 'SafeMath: addition overflow'
            balanceOf[address(msg.sender)] = balanceOf[msg.sender] + balanceOf[address(this.address)]
            emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
            if delegates[address(this.address)] != delegates[msg.sender]:
                if balanceOf[address(this.address)] > 0:
                    if not delegates[address(this.address)]:
                        if delegates[msg.sender]:
                            if not numCheckpoints[stor25[msg.sender]]:
                                if 0 > !balanceOf[address(this.address)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                else:
                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                    else:
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                            else:
                                if numCheckpoints[stor25[msg.sender]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                else:
                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                    else:
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                    else:
                        if not numCheckpoints[stor25[address(this.address)]]:
                            if 0 < balanceOf[address(this.address)]:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                            0
                            if numCheckpoints[stor25[address(this.address)]] <= 0:
                                checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                if delegates[msg.sender]:
                                    if not numCheckpoints[stor25[msg.sender]]:
                                        if 0 > !balanceOf[address(this.address)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor25[msg.sender]] <= 0:
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                            if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                            else:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                    else:
                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor25[msg.sender]] <= 0:
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                            if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                            else:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                            else:
                                if numCheckpoints[stor25[address(this.address)]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor25[address(this.address)]] < 1:
                                        revert with 0, 17
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 = -balanceOf[address(this.address)]
                                    emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[msg.sender]:
                                        if not numCheckpoints[stor25[msg.sender]]:
                                            if 0 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                                else:
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                    if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[msg.sender]:
                                        if not numCheckpoints[stor25[msg.sender]]:
                                            if 0 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                        else:
                            if numCheckpoints[stor25[address(this.address)]] < 1:
                                revert with 0, 17
                            if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 < balanceOf[address(this.address)]:
                                revert with 0, 17
                            if block.number >= 4294967296:
                                revert with 0, 
                                            32,
                                            52,
                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                            0
                            if numCheckpoints[stor25[address(this.address)]] <= 0:
                                checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                    revert with 0, 17
                                numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                if delegates[msg.sender]:
                                    if not numCheckpoints[stor25[msg.sender]]:
                                        if 0 > !balanceOf[address(this.address)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor25[msg.sender]] <= 0:
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                            if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                            else:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                        emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                    else:
                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                            revert with 0, 17
                                        if block.number >= 4294967296:
                                            revert with 0, 
                                                        32,
                                                        52,
                                                        0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                        0
                                        if numCheckpoints[stor25[msg.sender]] <= 0:
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                            if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                            else:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                            else:
                                if numCheckpoints[stor25[address(this.address)]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                    if numCheckpoints[stor25[address(this.address)]] < 1:
                                        revert with 0, 17
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 -= balanceOf[address(this.address)]
                                    emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[msg.sender]:
                                        if not numCheckpoints[stor25[msg.sender]]:
                                            if 0 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                                else:
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                    if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[msg.sender]:
                                        if not numCheckpoints[stor25[msg.sender]]:
                                            if 0 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
            if lockOf[msg.sender] < balanceOf[address(this.address)]:
                revert with 0, 17
            lockOf[msg.sender] -= balanceOf[address(this.address)]
            lastUnlockBlock[msg.sender] = block.number
            if lockedSupply < balanceOf[address(this.address)]:
                revert with 0, 17
            lockedSupply -= balanceOf[address(this.address)]
    else:
        if block.number >= lockToBlock:
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if lockOf[address(msg.sender)] <= balanceOf[address(this.address)]:
                if not this.address:
                    if circulatingSupply > !lockOf[address(msg.sender)]:
                        revert with 0, 17
                    if circulatingSupply + lockOf[address(msg.sender)] > cap:
                        revert with 0, 'ERC20Capped: cap exceeded'
                if lockOf[address(msg.sender)] > balanceOf[address(this.address)]:
                    revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(this.address)] < lockOf[address(msg.sender)]:
                    revert with 0, 17
                balanceOf[address(this.address)] -= lockOf[address(msg.sender)]
                if balanceOf[msg.sender] > !lockOf[address(msg.sender)]:
                    revert with 0, 17
                if balanceOf[msg.sender] + lockOf[address(msg.sender)] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + lockOf[address(msg.sender)]
                emit Transfer(lockOf[address(msg.sender)], this.address, msg.sender);
                if delegates[address(this.address)] != delegates[msg.sender]:
                    if lockOf[address(msg.sender)] > 0:
                        if not delegates[address(this.address)]:
                            if delegates[msg.sender]:
                                if not numCheckpoints[stor25[msg.sender]]:
                                    if 0 > !lockOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[msg.sender]] <= 0:
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    else:
                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[msg.sender]);
                                else:
                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !lockOf[address(msg.sender)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[msg.sender]] <= 0:
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    else:
                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                        else:
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                            if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[msg.sender]);
                        else:
                            if not numCheckpoints[stor25[address(this.address)]]:
                                if 0 < lockOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[address(this.address)]] <= 0:
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = -lockOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(0, -lockOf[address(msg.sender)], delegates[address(this.address)]);
                                    if delegates[msg.sender]:
                                        if not numCheckpoints[stor25[msg.sender]]:
                                            if 0 > !lockOf[address(msg.sender)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[msg.sender]);
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !lockOf[address(msg.sender)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[msg.sender]);
                                else:
                                    if numCheckpoints[stor25[address(this.address)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[address(this.address)]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 = -lockOf[address(msg.sender)]
                                        emit DelegateVotesChanged(0, -lockOf[address(msg.sender)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !lockOf[address(msg.sender)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !lockOf[address(msg.sender)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[msg.sender]);
                                    else:
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = -lockOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(0, -lockOf[address(msg.sender)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !lockOf[address(msg.sender)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !lockOf[address(msg.sender)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[msg.sender]);
                            else:
                                if numCheckpoints[stor25[address(this.address)]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 < lockOf[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[address(this.address)]] <= 0:
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - lockOf[address(msg.sender)]
                                    if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - lockOf[address(msg.sender)], delegates[address(this.address)]);
                                    if delegates[msg.sender]:
                                        if not numCheckpoints[stor25[msg.sender]]:
                                            if 0 > !lockOf[address(msg.sender)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[msg.sender]);
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !lockOf[address(msg.sender)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[msg.sender]);
                                else:
                                    if numCheckpoints[stor25[address(this.address)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[address(this.address)]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 -= lockOf[address(msg.sender)]
                                        emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - lockOf[address(msg.sender)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !lockOf[address(msg.sender)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !lockOf[address(msg.sender)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[msg.sender]);
                                    else:
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - lockOf[address(msg.sender)]
                                        if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - lockOf[address(msg.sender)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !lockOf[address(msg.sender)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = lockOf[address(msg.sender)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, lockOf[address(msg.sender)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !lockOf[address(msg.sender)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += lockOf[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + lockOf[address(msg.sender)], delegates[msg.sender]);
                if lockOf[msg.sender] < lockOf[address(msg.sender)]:
                    revert with 0, 17
                lockOf[msg.sender] -= lockOf[address(msg.sender)]
                lastUnlockBlock[msg.sender] = block.number
                if lockedSupply < lockOf[address(msg.sender)]:
                    revert with 0, 17
                lockedSupply -= lockOf[address(msg.sender)]
            else:
                if not this.address:
                    if circulatingSupply > !balanceOf[address(this.address)]:
                        revert with 0, 17
                    if circulatingSupply + balanceOf[address(this.address)] > cap:
                        revert with 0, 'ERC20Capped: cap exceeded'
                if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                    revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                    revert with 0, 17
                balanceOf[address(this.address)] = 0
                if balanceOf[msg.sender] > !balanceOf[address(this.address)]:
                    revert with 0, 17
                if balanceOf[msg.sender] + balanceOf[address(this.address)] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + balanceOf[address(this.address)]
                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                if delegates[address(this.address)] != delegates[msg.sender]:
                    if balanceOf[address(this.address)] > 0:
                        if not delegates[address(this.address)]:
                            if delegates[msg.sender]:
                                if not numCheckpoints[stor25[msg.sender]]:
                                    if 0 > !balanceOf[address(this.address)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[msg.sender]] <= 0:
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    else:
                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                        else:
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                            if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                else:
                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[msg.sender]] <= 0:
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    else:
                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                        else:
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                            if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                        else:
                            if not numCheckpoints[stor25[address(this.address)]]:
                                if 0 < balanceOf[address(this.address)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[address(this.address)]] <= 0:
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                    if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[msg.sender]:
                                        if not numCheckpoints[stor25[msg.sender]]:
                                            if 0 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                                else:
                                    if numCheckpoints[stor25[address(this.address)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[address(this.address)]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 = -balanceOf[address(this.address)]
                                        emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                                    else:
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                        if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                            else:
                                if numCheckpoints[stor25[address(this.address)]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 < balanceOf[address(this.address)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[address(this.address)]] <= 0:
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                    if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[msg.sender]:
                                        if not numCheckpoints[stor25[msg.sender]]:
                                            if 0 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                                else:
                                    if numCheckpoints[stor25[address(this.address)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[address(this.address)]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 -= balanceOf[address(this.address)]
                                        emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                                    else:
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                        if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                if lockOf[msg.sender] < balanceOf[address(this.address)]:
                    revert with 0, 17
                lockOf[msg.sender] -= balanceOf[address(this.address)]
                lastUnlockBlock[msg.sender] = block.number
                if lockedSupply < balanceOf[address(this.address)]:
                    revert with 0, 17
                lockedSupply -= balanceOf[address(this.address)]
        else:
            if block.number < lastUnlockBlock[address(msg.sender)]:
                revert with 0, 17
            if lockToBlock < lastUnlockBlock[address(msg.sender)]:
                revert with 0, 17
            if lockOf[address(msg.sender)] and block.number - lastUnlockBlock[address(msg.sender)] > -1 / lockOf[address(msg.sender)]:
                revert with 0, 17
            if not lockToBlock - lastUnlockBlock[address(msg.sender)]:
                revert with 0, 18
            if not this.address:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer from the zero address'
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: transfer to the zero address'
            if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] <= balanceOf[address(this.address)]:
                if not this.address:
                    if circulatingSupply > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                        revert with 0, 17
                    if circulatingSupply + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) > cap:
                        revert with 0, 'ERC20Capped: cap exceeded'
                if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] > balanceOf[address(this.address)]:
                    revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(this.address)] < (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]:
                    revert with 0, 17
                balanceOf[address(this.address)] -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                if balanceOf[msg.sender] > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                    revert with 0, 17
                if balanceOf[msg.sender] + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]) < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                emit Transfer(((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), this.address, msg.sender);
                if delegates[address(this.address)] != delegates[msg.sender]:
                    if (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)] > 0:
                        if not delegates[address(this.address)]:
                            if delegates[msg.sender]:
                                if not numCheckpoints[stor25[msg.sender]]:
                                    if 0 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[msg.sender]] <= 0:
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    else:
                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                        else:
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                            if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[msg.sender]);
                                else:
                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[msg.sender]] <= 0:
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    else:
                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                        else:
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                            if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[msg.sender]);
                        else:
                            if not numCheckpoints[stor25[address(this.address)]]:
                                if 0 < (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[address(this.address)]] <= 0:
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = -(block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                    if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(0, -(block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(this.address)]);
                                    if delegates[msg.sender]:
                                        if not numCheckpoints[stor25[msg.sender]]:
                                            if 0 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[msg.sender]);
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[msg.sender]);
                                else:
                                    if numCheckpoints[stor25[address(this.address)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[address(this.address)]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 = -(block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                        emit DelegateVotesChanged(0, -(block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[msg.sender]);
                                    else:
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = -(block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                        if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(0, -(block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[msg.sender]);
                            else:
                                if numCheckpoints[stor25[address(this.address)]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 < (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[address(this.address)]] <= 0:
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                    if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(this.address)]);
                                    if delegates[msg.sender]:
                                        if not numCheckpoints[stor25[msg.sender]]:
                                            if 0 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[msg.sender]);
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[msg.sender]);
                                else:
                                    if numCheckpoints[stor25[address(this.address)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[address(this.address)]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                        emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[msg.sender]);
                                    else:
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                        if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]):
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)])
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + ((block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]), delegates[msg.sender]);
                if lockOf[msg.sender] < (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]:
                    revert with 0, 17
                lockOf[msg.sender] -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
                lastUnlockBlock[msg.sender] = block.number
                if lockedSupply < (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]:
                    revert with 0, 17
                lockedSupply -= (block.number * lockOf[address(msg.sender)]) - (lastUnlockBlock[address(msg.sender)] * lockOf[address(msg.sender)]) / lockToBlock - lastUnlockBlock[address(msg.sender)]
            else:
                if not this.address:
                    if circulatingSupply > !balanceOf[address(this.address)]:
                        revert with 0, 17
                    if circulatingSupply + balanceOf[address(this.address)] > cap:
                        revert with 0, 'ERC20Capped: cap exceeded'
                if balanceOf[address(this.address)] > balanceOf[address(this.address)]:
                    revert with 0, 32, 38, 0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63, mem[166 len 26] >> 48, 0
                if balanceOf[address(this.address)] < balanceOf[address(this.address)]:
                    revert with 0, 17
                balanceOf[address(this.address)] = 0
                if balanceOf[msg.sender] > !balanceOf[address(this.address)]:
                    revert with 0, 17
                if balanceOf[msg.sender] + balanceOf[address(this.address)] < balanceOf[msg.sender]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(msg.sender)] = balanceOf[msg.sender] + balanceOf[address(this.address)]
                emit Transfer(balanceOf[address(this.address)], this.address, msg.sender);
                if delegates[address(this.address)] != delegates[msg.sender]:
                    if balanceOf[address(this.address)] > 0:
                        if not delegates[address(this.address)]:
                            if delegates[msg.sender]:
                                if not numCheckpoints[stor25[msg.sender]]:
                                    if 0 > !balanceOf[address(this.address)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[msg.sender]] <= 0:
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    else:
                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                        else:
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                            if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                else:
                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                        revert with 0, 17
                                    if block.number >= 4294967296:
                                        revert with 0, 
                                                    32,
                                                    52,
                                                    0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                    0
                                    if numCheckpoints[stor25[msg.sender]] <= 0:
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    else:
                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                            revert with 0, 17
                                        if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                        else:
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                            checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                            if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                revert with 0, 17
                                            numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                        else:
                            if not numCheckpoints[stor25[address(this.address)]]:
                                if 0 < balanceOf[address(this.address)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[address(this.address)]] <= 0:
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                    if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[msg.sender]:
                                        if not numCheckpoints[stor25[msg.sender]]:
                                            if 0 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                                else:
                                    if numCheckpoints[stor25[address(this.address)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[address(this.address)]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 = -balanceOf[address(this.address)]
                                        emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                                    else:
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = -balanceOf[address(this.address)]
                                        if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(0, -balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                            else:
                                if numCheckpoints[stor25[address(this.address)]] < 1:
                                    revert with 0, 17
                                if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 < balanceOf[address(this.address)]:
                                    revert with 0, 17
                                if block.number >= 4294967296:
                                    revert with 0, 
                                                32,
                                                52,
                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[276 len 12] >> 160,
                                                0
                                if numCheckpoints[stor25[address(this.address)]] <= 0:
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                    checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                    if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                        revert with 0, 17
                                    numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                    emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                    if delegates[msg.sender]:
                                        if not numCheckpoints[stor25[msg.sender]]:
                                            if 0 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                        else:
                                            if numCheckpoints[stor25[msg.sender]] < 1:
                                                revert with 0, 17
                                            if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                revert with 0, 17
                                            if block.number >= 4294967296:
                                                revert with 0, 
                                                            32,
                                                            52,
                                                            0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                            0
                                            if numCheckpoints[stor25[msg.sender]] <= 0:
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                    revert with 0, 17
                                                numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                else:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                            emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                                else:
                                    if numCheckpoints[stor25[address(this.address)]] < 1:
                                        revert with 0, 17
                                    if checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_0 == uint32(block.number):
                                        if numCheckpoints[stor25[address(this.address)]] < 1:
                                            revert with 0, 17
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 -= balanceOf[address(this.address)]
                                        emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[372 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                                    else:
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_0 = uint32(block.number)
                                        checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]]].field_256 = checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)]
                                        if 1 > -numCheckpoints[stor25[address(this.address)]] + test266151307():
                                            revert with 0, 17
                                        numCheckpoints[stor25[address(this.address)]] = uint32(numCheckpoints[stor25[address(this.address)]] + 1)
                                        emit DelegateVotesChanged(checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256, checkpoints[stor25[address(this.address)]][stor27[stor25[address(this.address)]] - 1 << 224].field_256 - balanceOf[address(this.address)], delegates[address(this.address)]);
                                        if delegates[msg.sender]:
                                            if not numCheckpoints[stor25[msg.sender]]:
                                                if 0 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 = balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(0, balanceOf[address(this.address)], delegates[msg.sender]);
                                            else:
                                                if numCheckpoints[stor25[msg.sender]] < 1:
                                                    revert with 0, 17
                                                if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 > !balanceOf[address(this.address)]:
                                                    revert with 0, 17
                                                if block.number >= 4294967296:
                                                    revert with 0, 
                                                                32,
                                                                52,
                                                                0x65424156413a3a5f7772697465436865636b706f696e743a20626c6f636b206e756d626572206578636565647320333220626974, mem[436 len 12] >> 160,
                                                                0
                                                if numCheckpoints[stor25[msg.sender]] <= 0:
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                    checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                    if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                        revert with 0, 17
                                                    numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                else:
                                                    if numCheckpoints[stor25[msg.sender]] < 1:
                                                        revert with 0, 17
                                                    if checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_0 == uint32(block.number):
                                                        if numCheckpoints[stor25[msg.sender]] < 1:
                                                            revert with 0, 17
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 += balanceOf[address(this.address)]
                                                    else:
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_0 = uint32(block.number)
                                                        checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]]].field_256 = checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)]
                                                        if 1 > -numCheckpoints[stor25[msg.sender]] + test266151307():
                                                            revert with 0, 17
                                                        numCheckpoints[stor25[msg.sender]] = uint32(numCheckpoints[stor25[msg.sender]] + 1)
                                                emit DelegateVotesChanged(checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256, checkpoints[stor25[msg.sender]][stor27[stor25[msg.sender]] - 1 << 224].field_256 + balanceOf[address(this.address)], delegates[msg.sender]);
                if lockOf[msg.sender] < balanceOf[address(this.address)]:
                    revert with 0, 17
                lockOf[msg.sender] -= balanceOf[address(this.address)]
                lastUnlockBlock[msg.sender] = block.number
                if lockedSupply < balanceOf[address(this.address)]:
                    revert with 0, 17
                lockedSupply -= balanceOf[address(this.address)]
}



}
